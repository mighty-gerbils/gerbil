;;; -*- Gerbil -*-
;;; © vyzo
;;; The Gerbil HTTP Daemon
;;;
(import :std/sugar
        :std/contract
        :std/cli/getopt
        :std/net/address
        :std/net/httpd
        :std/actor
        :std/format
        :std/iter
        (only-in :std/srfi/19 current-date date->string)
        (only-in :std/logger start-logger! deflogger current-logger-options)
        (only-in :std/os/socket SO_REUSEADDR SO_REUSEPORT)
        :gerbil/expander
        :gerbil/gambit
        ./env)
(export main)

(def (main . args)
  (call-with-getopt gxhttpd-main args
    program: "gxhttpd"
    help: "The Gerbil HTTP Daemon"
    global-env-flag
    config-option
    ensemble-flag
    ))

(def config-option
  (option 'config "-c" "--config"
          help: "location of configuration file; defaults to $GERBIL_PATH/httpd/config for single server configuration and $GERBIL_PATH/ensemble/httpd-ensemble/config for ensemble configuration"))

(def ensemble-flag
  (flag 'ensemble "-e" "--ensemble"
        help: "run an ensemble of httpds with SO_REUSEPORT."))

(def (gxhttpd-main opt)
  (setup-local-env! opt)
  (let-hash opt
    (if .?ensembe
      (let (cfg
            (cond
             (.?config => load-ensemble-config)
             (else (load-default-ensemble-config))))
        (run-ensemble! cfg))
      (let (cfg
            (cond
             (.?config => load-server-config)
             (else (load-default-server-config))))
        (run-server! cfg)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Server Config: a flat (keyword) plist with the following required keys
;;; User is free to have additional configuration, interpreted by handlers
;;;-----------------------------------------------------------------
;;; ;;; config: config versioned type, current is httpd-v0
;;; config: httpd-v0
;;; ;;; root: the root for serving files
;;; root: "path/to/server/root"
;;; ;;; handlers: alist mapping server paths to handler modules
;;; ;;; a handler module is a module that exports a `handle-request` procedure,
;;; ;;; with the signature of a request handler.
;;; ;;; if the module also exports a handler-init! procedure, it will be invoked
;;; ;;; with the current config after loading the module.
;;; handlers: (("path/to/handler" . module) ...)
;;; ;;; servlets: a boolean indicating whether servlets are enabled
;;; enable-servlets: #t | #f
;;; ;;; request-log: the file path for logging requests
;;; request-log: "path/to/request-log-file"
;;; ;;; server-log: the file path for the server logger
;;; server-log:  "path/to/server-log-file"
;;; ;;; listen: a list of addresses where the server should listen
;;; ;;; use (ssl: path-to-cert inet-address) for https
;;; listen: (server-address ...)
;;; ;;; reuse-port: whether to bind with SO_REUSEPORT; used for ensembles
;;; reuse-port: #t|#f
;;; ;;; log-level: [optional] log level
;;; log-level: symbol
;;; ;;; ensemble-server-id: [optional] run as an ensemble server with the given id
;;; ensemble-server-id: symbol|#f
;;; ;;; ensemble-supervisor-id: [optional] ensemble supervisor id to authorize
;;; ensemble-supervisor-id: symbol|#f
;;; ;;; ensemble-registry: [optional] list of registry addresses
;;; ensemble-registry: (actor-address ...)
;;;----------------------------------------------------------------

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Ensemble Config: a flat (keyword) plist with the following keys
;;; Additional configuration keys are _ignored_
;;;----------------------------------------------------------------
;;; ;;; config: config versioned type, current is httpd-ensemble-v0
;;; config: httpd-ensemble-v0
;;; ;;; ensemble-supervisor-id: [optional] id of the ensemble supervisor.
;;; ;;; defaults to httpd-ensemble
;;; ensemble-supervisor-id: symbol | #f
;;; ;;; servers: list of httpd server ids to start in the ensemble
;;; ensemble-servers: (symbol ...)
;;; ;;; ensemble-registry: [optional] list of registry addresses for the ensemble
;;; ensemble-registry: (actor-address ...) | #f
;;; ;;; ensemble-listen: [optional] list of supervisor listen addresses
;;; ensemble-listen: (actor-address ...)
;;; ;;; ensemble-announce: [optional] list of supervisor announced addresses
;;; ensemble-announce: (actor-address ...) | #f
;;; ;;; server-configuration: the server specific configuration
;;; server-configuration: (key: value ...)
;;; ;;; log-level: [optional] log level
;;; log-level: symbol
;;;-------------------------------------------------------------------

(def (load-ensemble-config path)
  (load-config path 'httpd-ensemble-v0))

(def (load-default-ensemble-config)
  (load-ensemble-config
   (path-expand "config" (ensemble-server-path 'httpd-ensemble))))

(def (load-server-config path)
  (load-config path 'httpd-v0))

(def (load-default-server-config)
  (load-server-config
   (path-expand "httpd/config" (gerbil-path))))

(def (load-config path type)
  (let (cfg (call-with-input-file path read-all))
    (unless (eq? type (config-get! cfg config:))
      (error "Bad configuration file; configuration type mismatch" path type cfg))
    cfg))

(def (config-get cfg key (default #f))
  (pgetq key cfg default))

(def (config-get! cfg key)
  (or (pgetq key cfg)
      (error "missing configuration key" key: key config: cfg)))

(def (config-set! cfg key val)
  (cond
   ((memq key cfg)
    => (lambda (pos) (set-car! (cdr pos) val)))
   (else
    (append cfg [key val]))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Ensemble Supervisor Implementation
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(def (run-ensemble! cfg)
  (create-ensemble-paths! cfg)
  (let ((log-level (config-get cfg log-level: 'INFO))
        (server-id (config-get cfg ensemble-supervisor-id: 'httpd-ensemble)))
  (let (run-ensemble
        (lambda ()
          (let (srv (start-httpd-ensemble! cfg))
            (thread-join! srv))))
    (call-with-ensemble-server
     server-id run-ensemble
     log-level: log-level
     log-file: "-"
     listen: (config-get cfg ensemble-listen: [])
     announce: (config-get cfg ensemble-announce:)
     registry: (config-get cfg ensemble-registry:)
     roles: '(httpd-supervisor)
     ;; for testing mostly
     auth: (alet (auth (config-get cfg ensemble-auth:))
             (list->hash-table-eq auth))))))

(def (start-httpd-ensemble! cfg)
  (let (thread (spawn 'ensemble-supervisor ensemble-supervisor cfg))
    (thread-join! thread)))

(def (ensemble-supervisor cfg)
  (register-actor! 'ensemble-supervisor)
  (let/cc exit
    (deflogger supervisor)
    (def servers (make-hash-table-symbolic))

    (def (start-server! srv-id)
      (let* ((config-path (path-expand "config" (ensemble-server-path srv-id)))
             (process (open-process [path: "gerbil"
                                           arguments: ["httpd" "-c" config-path]])))
        (hash-put! servers srv-id process)
        (spawn process-monitor (current-thread) srv-id process)))

    (def (shutdown!)
      (for ((values srv-id process) (hash-keys servers))
        (try
         (infof "shutting down ~a" srv-id)
         (remote-stop-server! srv-id)
         ;; TODO maybe kill it after a second or two?
         (catch (e)
           (warnf "error shutting down ~a: ~a" srv-id e)))))

    (try
     (for (srv-id (config-get! cfg ensemble-servers:))
       (start-server! srv-id))
     (catch (e)
       (errorf "error starting httpd server: ~a" e)
       (shutdown!)
       (exit 'error)))

    (while #t
      (<-
       ((process-dead srv-id status)
        (warnf "http server ~a has exited with status ~a; restarting" srv-id status)
        ;; TODO maybe delay restarting and have an adaptive policy for too many
        ;;      crashes?
        (start-server! srv-id))
       ,(@shutdown
         (infof "shutting down httpd ensemble...")
         (shutdown!)
         (exit 'shutdown))
       ,(@ping)
       ,(@unexpected warnf)))))

(defmessage process-dead (srv-id status))

(def (process-monitor supervisor srv-id process)
  (let (status (process-status process))
    (-> supervisor (process-dead srv-id status))))

(def (create-ensemble-paths! cfg)
  (create-directory* (ensemble-server-path (config-get ensemble-supervisor-id: 'httpd-ensemble)))
  (for (srv-id (config-get! cfg ensemble-servers:))
    (let* ((srv-path (ensemble-server-path srv-id))
           (srv-config-path (path-expand "config" srv-path))
           (srv-config (make-ensemble-server-config cfg srv-id)))
      (create-directory* srv-path)
      (call-with-output-file [path: srv-config-path create: #t truncate: #t]
        (lambda (output)
          (for (el srv-config)
            (write el output)
            (newline output)))))))

(def (make-ensemble-server-config cfg srv-id)
  (let (srv-path (ensemble-server-path srv-id))
    `(config:
      httpd-v0
      request-log: ,(path-expand "request.log" srv-path)
      server-log: ,(path-expand "server.log" srv-path)
      listen: ,(config-get! cfg server-listen:)
      reuse-port: #t
      log-level: ,(config-get cfg log-level: 'INFO)
      ensemble-server-id: ,srv-id
      ensemble-supervisor-id: ,(config-get cfg ensemble-supervisor-id: 'httpd-ensemble)
      ensemble-registry: ,(config-get cfg ensemble-registry:)
      ,@(config-get cfg server-configuration: []))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Server Implementation
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(def current-http-server-config
  (make-parameter #f))

(def (run-server! cfg)
  (create-server-paths! cfg)
  (current-logger-options (config-get cfg log-level: 'INFO))
  (start-logger! (config-get! cfg server-log:))
  (let* ((sockopts
          (if (config-get cfg reuse-port:)
            [SO_REUSEADDR SO_REUSEPORT]
            [SO_REUSEADDR]))
         (mux (make-mux cfg))
         (request-logger (make-request-logger cfg))
         (addresses (config-get! cfg listen:))
         (run-httpd
          (lambda ()
            (parameterize ((current-http-server-config cfg))
              (let (srv (apply start-http-server!
                          mux: mux
                          sockopts: sockopts
                          request-logger: request-logger
                          addresses))
                (thread-join! srv))))))
    (cond
     ((config-get cfg ensemble-server-id:)
      => (lambda (server-id)
           (call-with-ensemble-server
            server-id run-httpd
            registry: (config-get cfg ensemble-registry:)
            roles: '(httpd)
            auth: (hash-eq (,(config-get cfg ensemble-supervisor-id:
                                         'httpd-ensemble)
                            '(admin))))))
     (else
      (run-httpd)))))

(def (create-server-paths! cfg)
  (create-directory* (config-get! cfg root:))
  (create-directory* (path-directory (config-get! cfg request-log:)))
  (create-directory* (path-directory (config-get! cfg server-log:))))

(def (make-request-logger cfg)
  (let* ((path (config-get! cfg request-log:))
         (file (open-output-file [path: path append: #t])))
    (lambda (req)
      (using (req : http-request)
        (fprintf file "~a ~a ~a ~a ~a~n"
                 (date->string (current-date) "~4")
                 (inet-address->string req.client)
                 req.proto
                 req.method
                 req.url)
        (force-output file)))))

(def (make-mux cfg)
  (Mux (make-dynamic-mux cfg)))

(defstruct dynamic-mux (root handlers servlets mx)
  constructor: :init! final: #t)

(defmethod {:init! dynamic-mux}
  (lambda (self cfg)
    (using (self :- dynamic-mux)
      (let ((root (config-get! cfg root:))
            (handlers (config-get cfg handlers: []))
            (servlets? (config-get cfg enable-servlets:)))
        (set! self.root root)
        (set! self.handlers (make-hash-table-string))
        (when servlets?
          (set! self.servlets (make-hash-table-string))
          (set! self.mx (make-mutex 'mux-loader)))
        (for ([path . handler-module] handlers)
          (let* ((ctx (import-module handler-module #f #t))
                 (init! (find-runtime-symbol ctx 'handler-init!))
                 (handle-request (find-runtime-symbol ctx 'handle-request)))
            (unless handle-request
              (error "handler module does not export handle-request"
                module: handler-module))
            (when init!
              ((eval init!) cfg))
            (hash-put! self.handlers path (eval handle-request))))))))

(defmethod {get-handler dynamic-mux}
  (lambda (self host path)
    (using (self :- dynamic-mux)
      (let (server-path (server-request-path path))
        (cond
         ((not server-path)
          not-found-handler)
         ((find-handler self.handlers server-path))
         (else
          (let (file-path (string-append self.root server-path))
            (if (file-exists? file-path)
              (let (info (file-info file-path #t))
                (cond
                 ((eq? (file-info-type info) 'directory)
                  (let (file-path (path-expand "index.html" file-path))
                    (if (file-exists? file-path)
                      (file-handler file-path (file-info file-path #t))
                      not-found-handler)))
                 ((and self.servlets (equal? ".ss" (path-extension file-path)))
                  (find-servlet-handler self.servlets self.mx file-path info))
                 (else
                  (file-handler file-path info))))
              not-found-handler))))))))

(defmethod {put-handler! dynamic-mux}
  (lambda (self host path handler)
    (using (self :- dynamic-mux)
      (hash-put! self.handlers path handler))))

(def (not-found-handler req res)
  (http-response-write-condition res Not-Found))

(defstruct servlet (handler path timestamp))

(def (find-servlet-handler servlet-tab mx file-path info)
  (def (load-servlet! file-path reload?)
    (let* ((load-time (time->seconds (current-time)))
           (ctx (with-lock mx (cut import-module file-path reload? #t)))
           (init! (find-runtime-symbol ctx 'handler-init!))
           (handle-request (find-runtime-symbol ctx 'handle-request)))
      (unless handle-request
        (error "servlet does not export handle-request" file-path))
      (when init!
        ((eval init!) (current-http-server-config)))
      (let* ((handle-request (eval handle-request))
             (srv (servlet handle-request file-path load-time)))
        (hash-put! servlet-tab file-path srv)
        srv)))

  (cond
   ((hash-get servlet-tab file-path)
    => (lambda (srv)
         (using (srv :- servlet)
           (let (modtime
                 (time->seconds
                  (file-info-last-modification-time info)))
             (if (> modtime srv.timestamp)
               (servlet-handler (load-servlet! file-path #t))
               srv.handler)))))
   (else
    (servlet-handler (load-servlet! file-path #f)))))

(def (file-handler path info)
  (lambda (req res)
    (using (req :- http-request)
      (case req.method
        ((GET)
         ;; TODO Headers!
         ;; Content-Type from extension
         (http-response-file res [] path))
        ((HEAD)
         ;; TODO Content-Type from extension
         ;;      format Last-Modified as date?
         (http-response-write
          res 200
          [["Content-Length" :: (file-info-size info)]
           ["Last-Modified" :: (exact (time->seconds (file-info-last-modification-time info)))]]
          #f))
        (else
         (http-response-write-condition res Forbidden))))))

(def (find-handler tab server-path)
  (let loop ((path server-path))
    (cond
     ((hash-get tab path))
     ((string-rindex path #\/)
      => (lambda (index) (loop (substring path 0 index))))
     (else #f))))

(def (server-request-path path)
  ;; process . and .. to confine the path within the server root
  (let (components (string-split path #\/))
    (let loop ((rest components) (r []))
      (match rest
        ([hd . rest]
         (case hd
           (("" ".") (loop rest r))
           (("..")
            (if (null? r)
              #f ; invalid
              (loop rest (cdr r))))
           (else
            (loop rest (cons hd r)))))
        (else
         (if (null? r)
           "/"
           (string-join (cons "" (reverse r)) "/")))))))

(def (find-runtime-symbol ctx id)
  (cond
   ((find-export-binding ctx id)
    => (lambda (bind)
         (unless (runtime-binding? bind)
           (error "export is not a runtime binding" symbol: id))
         (binding-id bind)))
   (else #f)))

(def (find-export-binding ctx id)
  (cond
   ((find (match <>
            ((? module-export? xport)
            (and (eqv? (module-export-phi xport) 0)
                 (eq? (module-export-name xport) id)))
            (else #f))
          (module-context-export ctx))
    => core-resolve-module-export)
   (else #f)))
