;;; -*- Gerbil -*-
;;; © vyzo
;;; The Gerbil HTTP Daemon
;;;
(import :std/sugar
        :std/contract
        :std/cli/getopt
        :std/net/address
        :std/net/httpd
        :std/format
        :std/srfi/19
        (only-in :std/logger start-logger!)
        (only-in :std/os/socket SO_REUSEADDR SO_REUSEPORT)
        :gerbil/expander
        :gerbil/gambit
        ./env)
(export main
        current-http-server-config
        config-get config-set!)

;; available for servlets to hace custom config
(def current-http-server-config
  (make-parameter #f))

(def (main . args)
  (call-with-getopt gxhttpd-main args
    program: "gxhttpd"
    help: "The Gerbil HTTP Daemon"
    global-env-flag
    config-option
    listen-address-option))

(def config-option
  (option 'config "-c" "--config"
          help: "location of configuration file. When absent, the default configuration listens at port 8080 on localhost and serves files from $GERBIL_PATH/httpd/root"))

(def listen-address-option
  (option 'listen "-l" "--listen"
          help: "address to listen to; overrides configuration"))

(def (gxhttpd-main opt)
  (setup-local-env! opt)
  (let-hash opt
    (let (cfg
          (cond
           (.?config => load-config)
           (else (default-config))))
      (cond
       (.?listen
        => (lambda (address)
             (config-set! cfg listen: [address])))
      (run-server! cfg)))))

(def (default-config)
  (let (default-config-path (path-expand "httpd/config" (gerbil-path)))
    (if (file-exists? default-config-path)
      (load-config default-config-path)
      `(config:
        httpd-v0
        ;; root: the root for serving files
        root: ,(path-expand "httpd/root" (gerbil-path))
        ;; alist mapping server paths to handler modules
        ;; a handler module is a module that exports a `handle-request` procedure,
        ;; with the signature of a request handler.
        ;; if the module also exports a handler-init! procedure, it will be invoked
        ;; with the current config after loading the module.
        handlers: ()
        ;; request-log: the file path for logging requests
        request-log: ,(path-expand "httpd/request.log" (gerbil-path))
        ;; server-log: the file path for the server logger
        server-log: ,(path-expand "httpd/server.log" (gerbil-path))
        ;; listen: a list of addresses
        ;; use (ssl: path-to-cert inet-address) for https
        listen: ("127.0.0.1:8080")
        ;; whether to start the server with SO_REUSPORT
        reuse-port: #f))))

(def (load-config path)
  (call-with-input-file path read-all))

(def (config-get cfg key)
  (pgetq key cfg))

(def (config-set! cfg key val)
  (cond
   ((memq key cfg)
    => (lambda (pos) (set-car! (cdr pos) val)))
   (else
    (append cfg [key val]))))

(def (run-server! cfg)
  (create-paths! cfg)
  (start-logger! (config-get cfg server-log:))
  (let* ((sockopts
          (if (config-get cfg reuse-port:)
            [SO_REUSEADDR SO_REUSEPORT]
            [SO_REUSEADDR]))
         (mux (make-mux cfg))
         (request-logger (make-request-logger cfg))
         (addresses (config-get cfg listen:))
         (srv (parameterize ((current-http-server-config cfg))
                (apply start-http-server!
                  mux: mux
                  sockopts: sockopts
                  request-logger: request-logger
                  addresses))))
    (thread-join! srv)))

(def (create-paths! cfg)
  (create-directory* (config-get cfg root:))
  (create-directory* (path-directory (config-get cfg request-log:)))
  (create-directory* (path-directory (config-get cfg server-log:))))

(def (make-request-logger cfg)
  (let* ((path (config-get cfg request-log:))
         (file (open-output-file [path: path append: #t create: #t])))
    (lambda (req)
      (using (req : http-request)
        (printf file "~a ~a ~a ~a"
                (date->string (current-date) "~4")
                req.proto
                req.method
                req.url)))))

(def (make-mux cfg)
  (Mux (make-dynamic-mux cfg)))

(defstruct dynamic-mux (root handlers)
  constructor: :init! final: #t)

(defmethod {:init! dynamic-mux}
  (lambda (self cfg)
    (using (self :- dynamic-mux)
      (let ((root (config-get cfg root:))
            (handlers (config-get cfg handlers:)))
        (set! self.root root)
        (set! self.handlers (make-hash-table-string))
        (for-each
          (lambda (p)
            (with ([path . handler-module] p)
              (let* ((ctx (import-module handler-module #f #t))
                     (init! (find-runtime-symbol ctx 'handler-init!))
                     (handle-request (find-runtime-symbol ctx 'handle-request)))
                (unless handle-request
                  (error "handler module does not export handle-request"
                    module: handler-module))
                (when init!
                  ((eval init!) cfg))
                (hash-put! self.handlers path (eval handle-request)))))
          handlers)))))

(defmethod {get-handler dynamic-mux}
  (lambda (self host path)
    (using (self :- dynamic-mux)
      (let (server-path (server-request-path path))
        (cond
         ((not server-path)
          not-found-handler)
         ((find-handler self.handlers server-path))
         (else
          (let* ((file-path (string-append self.root server-path))
                 (file-path
                  (if (eq? "/" (string-ref file-path (fx1- (string-length file-path))))
                    (string-append file-path "index.html")
                    file-path)))
            (if (file-exists? file-path)
              (file-handler file-path)
              not-found-handler))))))))

(defmethod {put-handler dynamic-mux}
  (lambda (self host path handler)
    (using (self :- dynamic-mux)
      (hash-put! self.handlers path handler))))

(def (not-found-handler req res)
  (http-response-write-condition res Not-Found))

(def (file-handler path)
  (lambda (req res)
    (using (req :- http-request)
      (case req.method
        ((GET)
         (http-response-file res req.headers path))
        ((HEAD)
         (let (info (file-info path #t))
           (http-response-write
            res 200
            [["Content-Length" :: (file-info-size info)]
             ["Last-Modified" :: (time->seconds (file-info-last-modification-time info))]]
            #f)))
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
