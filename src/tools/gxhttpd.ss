;;; -*- Gerbil -*-
;;; © vyzo
;;; The Gerbil HTTP Daemon
;;;
(import :std/sugar
        :std/config
        :std/cli/getopt
        :std/net/address
        :std/net/httpd
        :std/mime/types
        :std/actor
        :std/iter
        :std/misc/ports
        :std/hash-table
        (only-in :std/logger start-logger! deflogger current-logger-options current-log-directory)
        (only-in :std/os/socket SO_REUSEADDR SO_REUSEPORT)
        (only-in :std/srfi/13 string-contains)
        :gerbil/expander
        ./env)
(export main)

(def (main . args)
  (call-with-getopt gxhttpd-main args
    program: "gxhttpd"
    help: "The Gerbil HTTP Daemon"
    global-env-flag
    server-cmd
    ensemble-cmd
    config-cmd))

(def server-config-option
  (option 'config "-c" "--config"
    help: "location of the httpd configuration; when running as a standalone server it defaults to $GERBIL_PATH/httpd/config; when running as part of an ensemble this option is ignored"))

(def ensemble-config-option
  (option 'config "-c" "--config"
    help: "location of the httpd ensemble configuration; it defaults to $GERBIL_PATH/ensemble/config"))

(def server-id-optional-argument
  (optional-argument 'server-id
    value: string->object
    help: "when running as part of an ensemble, this is the ensemble server id"))

(def server-cmd
  (command 'server
    server-config-option
    server-id-optional-argument
    help: "runs a single httpd server"))

(def ensemble-cmd
  (command 'ensemble
    ensemble-config-option
    help: "runs a supervied httpd server ensemble"))

(def config-ensemble-flag
  (flag 'ensemble "--ensemble"
    help: "configure the httpd ensemble"))

(def config-print-flag
  (flag 'print "-p" "--print"
    help: "print the configuration"))

(def config-set-flag
  (flag 'set "--set"
    help: "override the configuration instead of merging"))

(def config-path-option
  (option 'config "-c" "--config"
    help: "specify the configuration path"))

(def config-httpd-root-option
  (option 'root "--root"
    default: "www"
    help: "specify the httpd server's content root path"))

(def config-httpd-listen-option
  (option 'listen "--listen"
    value: string->object
    default: '("0.0.0.0:8080")
    help: "specify the httpd server's listen addresses"))

(def config-httpd-handlers-option
  (option 'handlers "--handlers"
    value: string->object
    default: []
    help: "specify the httpd server's handler list"))

(def config-httpd-servlets-flag
  (flag 'enable-servlets "--enable-servlets"
    help: "enable servlets"))

(def config-httpd-log-option
  (option 'log-dir "--log-dir"
    help: "specify the httpd log directory"))

(def config-httpd-max-token-length-option
  (option 'max-token-length "--max-token-length"
    value: string->integer
    help: "specify the httpd max token length"))

(def config-ensemble-workers-option
  (option 'workers "-n" "--workers"
    value: string->integer
    help: "specify the preloaded number of httpd workers in the ensemble"))

(def config-ensemble-domain-option
  (option 'ensemble-domain "-D" "--ensemble-domain"
    value: string->symbol
    default: '/
    help: "specify the ensemble domain"))

(def config-ensemble-worker-domain-option
  (option 'worker-domain  "--worker-domain"
    value: string->symbol
    default: 'www
    help: "specify the httpd ensemble worker (sub) domain"))

(def config-ensemble-root-option
  (option 'ensemble-root "--ensemble-root"
    help: "specify the ensemble root directory"))

(def config-cmd
  (command 'config
    config-ensemble-flag
    config-set-flag
    config-print-flag
    config-path-option
    ;; server configuration options
    config-httpd-root-option
    config-httpd-listen-option
    config-httpd-handlers-option
    config-httpd-servlets-flag
    config-httpd-log-option
    config-httpd-max-token-length-option
    ;; ensemble configuration options
    config-ensemble-domain-option
    config-ensemble-root-option
    config-ensemble-workers-option
    config-ensemble-worker-domain-option
    ;; help!
    help: "edit httpd server or ensemble configuration"))

(def (gxhttpd-main cmd opt)
  (setup-local-env! opt)
  (let-hash opt
    (case cmd
      ;; run a server
      ((server)
       (if .?server-id
         ;; run as part of an ensemble
         (let (cfg (load-ensemble-server-config .server-id))
           (become-ensemble-server! cfg (cut run-ensemble-server! cfg)))
         ;; run standalone
         (let (cfg (get-httpd-config opt))
           (run-server! cfg))))
      ;; run an ensemble of httpds
      ((ensemble)
       (let (cfg (get-ensemble-config opt))
         (prepare-ensemble-filesystem! cfg)
         (become-ensemble-supervisor! cfg)))
      ;; configure the server or the ensemble
      ((config)
       (do-config opt)))))

(def (prepare-ensemble-filesystem! cfg)
  (let* ((root (config-get cfg root: (current-directory)))
         (root (path-normalize root))
         (fs   (path-expand "fs" root))
         (www  (config-get!
                (agetq 'httpd
                       (config-get!
                        (config-get!
                         (agetq 'httpd (config-get! cfg roles:))
                         server-config:)
                        application:))
                root:)))
    (unless (file-exists? www)
      (error "httpd content root directory doesn't exist" www))
    (unless (string-prefix? "/" www)
      (let (fs/www (path-expand www fs))
        (create-directory* (path-directory fs/www))
        (unless (file-exists? fs/www)
          (create-symbolic-link www fs/www))))))

(def (run-ensemble-server! cfg)
  (cond
   ((agetq 'httpd (config-get! cfg application:))
    => run-server!)
   (else
    (error "missing httpd configuration" cfg))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Server Config: a flat (keyword) plist with the following keys
;;; User is free to have additional configuration, interpreted by handlers
;;;-----------------------------------------------------------------
;;; ;;; config: httpd-v0
;;; config: httpd-v0
;;; ;;; root: the root for serving files
;;; root: "path/to/server/root"
;;; ;;; handlers: alist mapping server paths to handler modules
;;; ;;; a handler module is a module that exports a `handle-request` procedure,
;;; ;;; with the signature of a request handler.
;;; ;;; if the module also exports a handler-init! procedure, it will be invoked
;;; ;;; with the current config after loading the module.
;;; handlers: (("/path/to/handler" . module) ...)
;;; ;;; servlets: a boolean indicating whether servlets are enabled
;;; enable-servlets: #t | #f
;;; ;;; request-log: [optional] the file path for logging requests
;;; request-log: "path/to/request-log-file" | #f
;;; ;;; listen: a list of addresses where the server should listen
;;; ;;; use (ssl: path-to-cert inet-address) for https
;;; listen: (server-address ...)
;;; ;;; max-token-length: The request handler parser buffer size
;;; max-token-length: integer
;;;----------------------------------------------------------------

(def (do-config opt)
  (let-hash opt
    (cond
     (.?print
      (if .?ensemble
        (write-config (get-ensemble-config opt) pretty: #t)
        (write-config (get-httpd-config opt) pretty: #t)))
     (.?ensemble
      (cond
       (.?set
        (do-ensemble-config opt (empty-ensemble-config)))
       (else
        (do-ensemble-config opt (get-ensemble-config opt)))))
     (.?set
      (do-httpd-config opt (empty-httpd-config)))
     (else
      (do-httpd-config opt (get-httpd-config opt))))))


(def (do-ensemble-config opt cfg)
  (let (cfg (set-ensemble-config! opt cfg))
    (save-config! cfg (or (hash-get opt 'config) (ensemble-config-path)))))

(def (do-httpd-config opt cfg)
  (let (cfg (set-httpd-config! opt cfg))
    (save-config! cfg (or (hash-get opt 'config) (httpd-config-path)))))

(def (set-ensemble-config! opt cfg)
  (let-hash opt
    (let* ((domain .ensemble-domain)
           (worker-domain (ensemble-subdomain (or .?worker-domain 'www) domain))
           (role 'httpd)
           (role-alist (config-get cfg roles: []))
           (role-cfg   (agetq role role-alist []))
           (httpd-server-cfg
            (config-get role-cfg server-config: (empty-ensemble-server-config)))
           (httpd-app-alist
            (config-get httpd-server-cfg application: []))
           (httpd-cfg
            (agetq role httpd-app-alist (empty-httpd-config)))
           (preload-cfg (config-get cfg preload: []))
           (worker-alist (config-get preload-cfg workers: []))
           (worker-cfg   (agetq worker-domain worker-alist [])))

      (set! httpd-cfg (set-httpd-config! opt httpd-cfg))
      (cond
       ((assq role httpd-app-alist)
        => (lambda (p)
             (set-cdr! p httpd-cfg)))
       (else
        (set! httpd-app-alist [[role httpd-cfg ...] httpd-app-alist ...])))
      (config-push! httpd-server-cfg application: httpd-app-alist)
      (config-push! httpd-server-cfg env: #f)
      (config-push! role-cfg server-config: httpd-server-cfg)

      (config-push! role-cfg exe: "gerbil")
      (config-push! role-cfg prefix: '("httpd" "server"))
      (config-push! role-cfg policy: 'restart)
      (cond
       ((assq role role-alist)
        => (lambda (p)
             (set-cdr! p role-cfg)))
       (else
        (set! role-alist [[role role-cfg ...] role-alist ...])))
      (config-push! cfg roles: role-alist)

      (config-push! worker-cfg prefix: 'httpd)
      (config-push! worker-cfg role: role)
      (cond
         (.?workers => (cut config-push! worker-cfg servers: <>))
         ((not (config-get worker-cfg servers:))
          (config-push! worker-cfg servers: 1)))
      (cond
       ((assq worker-domain worker-alist)
        => (lambda (p)
             (set-cdr! p worker-cfg)))
       (else
        (set! worker-alist [[worker-domain worker-cfg ...] worker-alist ...])))
      (config-push! preload-cfg workers: worker-alist)
      (config-push! cfg preload: preload-cfg)
      (config-push! cfg domain: domain)
      (cond (.ensemble-root => (cut config-push! cfg root: <>))))
    cfg))

(def (set-httpd-config! opt cfg)
  (let-hash opt
    (cond (.?root             => (cut config-push! cfg root: <>)))
    (cond (.?listen           => (cut config-push! cfg listen: <>)))
    (cond (.?handlers         => (cut config-push! cfg handlers: <>)))
    (cond (.?enable-servlets  => (cut config-push! cfg enable-servlets: <>)))
    (cond (.?log-dir          => (cut config-push! cfg log-dir: <>)))
    (cond (.?max-token-length => (cut config-push! cfg max-token-length: <>))))
  cfg)

(def (empty-httpd-config)
  [config: 'httpd-v0])

(def (load-httpd-config path)
  (load-config path 'httpd-v0))

(def (load-default-httpd-config)
  (load-httpd-config (httpd-config-path)))

(def (load-default-server-config)
  (load-httpd-config (httpd-config-path)))

(def (httpd-config-path (base (gerbil-path)))
  (path-expand "httpd/config" (gerbil-path)))

(def (get-ensemble-config opt)
  (let (path (or (hash-get opt 'config) (ensemble-config-path)))
    (if (file-exists? path)
      (load-ensemble-config-file path)
      (empty-ensemble-config))))

(def (get-httpd-config opt)
  (let (path (or (hash-get opt 'config) (httpd-config-path)))
    (load-httpd-config path)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Server Implementation
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(def current-http-server-config
  (make-parameter #f))

(def (run-server! cfg)
  (let* ((sockopts [SO_REUSEADDR SO_REUSEPORT])
         (mux (make-mux cfg))
         (request-logger (get-request-logger cfg))
         (addresses (config-get! cfg listen:))
         (max-token-length (: (config-get cfg max-token-length: 1024) :fixnum)))
    (set-httpd-max-token-length! max-token-length)
    (parameterize ((current-http-server-config cfg))
      (let (srv (apply start-http-server!
                  mux: mux
                  sockopts: sockopts
                  request-logger: request-logger
                  addresses))
        (thread-join! srv)))))

(def (get-request-logger cfg)
  (alet (path
         (cond
          ((config-get cfg request-log:))
          ((current-log-directory)
           => (lambda (logdir)
                (path-expand "httpd/request.log" logdir)))))
    (make-request-logger path)))

(def (make-mux cfg)
  (Mux (make-dynamic-mux cfg)))

(defstruct dynamic-mux ((root :- :string)
                        (handlers :- HashTable)
                        (servlets :- HashTable)
                        (mx :- :mutex)
                        (cache :- HashTable)
                        (cache-ttl :- :real)
                        (cache-max-size :- :fixnum))
  constructor: :init! final: #t)

(defstruct cache-entry ((handler :- :procedure)
                        (expire :- :flonum)
                        (preserve? :- :procedure))
  final: #t)

(defmethod {:init! dynamic-mux}
  (lambda (self cfg)
    (let ((root (: (config-get! cfg root:) :string))
          (handlers (: (config-get cfg handlers: []) :list))
          (servlets? (: (config-get cfg enable-servlets:) :boolean)))
      (set! self.root root)
      (set! self.cache (make-hash-table-string))
      (set! self.cache-ttl (: (inexact (config-get cfg cache-ttl: 120)) :real))
      (set! self.cache-max-size (: (config-get cfg cache-max-size: 16384) :fixnum))
      (set! self.handlers (make-hash-table-string))
      (when servlets?
        (set! self.servlets (make-hash-table-string))
        (set! self.mx (make-mutex 'mux-loader)))
      (for ([path . handler-module] handlers)
        (let* ((ctx (import-module handler-module #f #t))
               (init! (find-runtime-symbol ctx 'handler-init!))
               (handle-request (find-runtime-symbol ctx 'handle-request)))
          (unless handle-request
            (error "handler module does not export handle-request procedure"
              module: handler-module))
          (when init!
            ((: (eval init!) :procedure) cfg))
          (hash-put! self.handlers path (: (eval handle-request) :procedure)))))))

(defmethod {get-handler dynamic-mux}
  (lambda (self host (path :- :string))
    ;; flush the cache if it gets too big
    (when (fx> (hash-length self.cache) self.cache-max-size)
      (set! self.cache (make-hash-table-string)))
    (cond
     ((hash-get self.cache path)
      => (lambda (cache-entry)
           (let (now (##current-time-point))
             (cond
              ((fl< now (&cache-entry-expire cache-entry))
               (&cache-entry-handler cache-entry))
              (((&cache-entry-preserve? cache-entry))
               (set! (&cache-entry-expire cache-entry)
                 (fl+ now self.cache-ttl))
               (&cache-entry-handler cache-entry))
              (else
               {self.__get-handler path})))))
     (else
      {self.__get-handler path})))
  interface: Mux)

(defmethod {__get-handler dynamic-mux}
  (lambda (self (path :- :string))
    (defrule (not-found-cache-entry expire)
      (cache-entry not-found-handler expire (lambda () #f)))

    (defrule (file-cache-entry file-path expire created handler)
      (let (preserve?
            (lambda ()
              (and (file-exists? file-path)
                   (fl< (time->seconds
                         (file-info-last-modification-time
                          (file-info file-path #t)))
                        created))))
        (cache-entry handler expire preserve?)))

    (let* ((now (##current-time-point))
           (expire (+ now self.cache-ttl))
           (entry
            (let (server-path (server-request-path path))
              (cond
               ((not server-path)
                (not-found-cache-entry expire))
               ((find-handler self.handlers server-path)
                => (lambda (handler)
                     (cache-entry handler expire (lambda () #t))))
               (else
                (let (file-path (string-append self.root server-path))
                  (if (file-exists? file-path)
                    (if (and self.servlets (equal? ".ss" (path-extension file-path)))
                      (file-cache-entry file-path expire now
                                        (find-servlet-handler self.servlets self.mx file-path))
                      (file-cache-entry file-path expire now
                                        (file-handler file-path)))
                    (not-found-cache-entry expire))))))))
      (hash-put! self.cache path entry)
      (&cache-entry-handler entry))))

(defmethod {put-handler! dynamic-mux}
  (lambda (self host (path :- :string) (handler :- :procedure))
    (hash-put! self.handlers path handler))
  interface: Mux)

(def (not-found-handler req res)
  (http-response-write-condition res Not-Found))

(def (forbidden-handler req res)
  (http-response-write-condition res Forbidden))

(defstruct servlet ((handler   :- :procedure)
                    (path      :- :string)
                    (timestamp :- :flonum))
  final: #t)

(def (find-servlet-handler servlet-tab mx file-path)
  (def (load-servlet! file-path reload?)
    (let* ((load-time (time->seconds (current-time)))
           (ctx (with-lock mx (cut import-module file-path reload? #t)))
           (init! (find-runtime-symbol ctx 'handler-init!))
           (handle-request (find-runtime-symbol ctx 'handle-request)))
      (unless handle-request
        (error "servlet does not export handle-request" file-path))
      (when init!
        ((eval init!) (current-http-server-config)))
      (let* ((handle-request (: (eval handle-request) :procedure))
             (srv (servlet handle-request file-path load-time)))
        (hash-put! servlet-tab file-path srv)
        srv)))

  (cond
   ((hash-get servlet-tab file-path)
    => (lambda (srv)
         (using (srv :- servlet)
           (let (modtime
                 (time->seconds
                  (file-info-last-modification-time
                   (file-info file-path #t))))
             (if (> modtime srv.timestamp)
               (servlet-handler (load-servlet! file-path #t))
               srv.handler)))))
   (else
    (servlet-handler (load-servlet! file-path #f)))))

(def (file-handler path)
  => :procedure
  (let (info (file-info path #t))
    (if (eq? (file-info-type info) 'directory)
      (let (index-html-path (path-expand "index.html" path))
        (if (file-exists? index-html-path)
          (serve-file index-html-path (file-info index-html-path #t))
          forbidden-handler))
      (serve-file path info))))

(def max-file-cache-size 32768) ; size of i/o buffer for http-response-file

(def (serve-file path info)
  => :procedure
  (let* ((content-type (path-extension->mime-type-name path))
         (headers
          [["Content-Length" :: (number->string (file-info-size info))]
	   (if content-type
             ["Content-Type" :: content-type]
             ["Content-Type" :: "application/octet-stream"])
           ["Last-Modified" :: (number->string (exact (floor (time->seconds (file-info-last-modification-time info)))))]]))

    (if (fx<= (file-info-size info) max-file-cache-size)
      ;; cache the content
      (let (buf (read-file-u8vector path))
        (lambda (req res)
          (using (req :- http-request)
            (case req.method
              ((GET)
               (http-response-write res 200 headers buf))
              ((HEAD)
               (http-response-write res 200 headers #f))
              (else
               (http-response-write-condition res Forbidden))))))
      ;; don't cache
      (lambda (req res)
        (using (req :- http-request)
          (case req.method
            ((GET)
	     ;; RFC 9112 states that "a sender (server) MUST NOT send
	     ;; a Content-Length header field in any message that
	     ;; contains a Transfer-Encoding header field.".
             (http-response-file res (cdr headers) path))
            ((HEAD)
             (http-response-write res 200 headers #f))
            (else
             (http-response-write-condition res Forbidden))))))))


(def (find-handler tab server-path)
  (let loop ((path server-path))
    (cond
     ((string-empty? path) #f)
     ((hash-get tab path))
     ((string-rindex path #\/)
      => (lambda (index) (loop (substring path 0 index))))
     (else #f))))

(def (server-request-path path)
  (let (components (string-split path #\/))
    (let loop ((rest components) (r []))
      (match rest
        ([hd . rest]
         (case hd
           (("" ".") (loop rest r))
           (("..")
            (if (null? r)
              #f                        ; invalid, out of root bounds
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
