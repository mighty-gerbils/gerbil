;;; -*- Gerbil -*-
;;; © vyzo
;;; The Gerbil HTTP Daemon
(import :gerbil/expander
        :std/net/http/server
        :std/iter
        :std/log
        :std/os/sockopt
        ./config)
(export #t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Server Implementation
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(def current-http-server-config
  (make-parameter #f))

(def (run-server! (cfg : Config))
    (let* ((sockopts [[SOL_SOCKET.SO_REUSEADDR . 1] [SOL_SOCKET.SO_REUSEPORT . 1]])
           (mux (new-mux cfg))
           (addresses cfg.listen))
    (parameterize ((current-http-server-config cfg))
      (using (srv (new-http-server
                   (ServerConfig
                    mux: (new-mux cfg)
                    log: (new-log-rotate-sink cfg.log)
                    listen: cfg.listen))
                  : Server)
        (srv.start!)
        (thread-sleep! +inf.0)))))

(def (new-mux cfg)
  (ServerMux (make-dynamic-mux cfg)))

(defstruct dynamic-mux ((root :- :string)
                        (handlers :- HashTable)
                        (servlets :- HashTable)
                        (mx :- :mutex)
                        (cache :- HashTable)
                        (cache-ttl :- :real)
                        (cache-max-size :- :fixnum))
  constructor: :init! final: #t)

(defstruct cache-entry ((handler :- RequestHandler)
                        (expire :- :flonum)
                        (preserve? :- :procedure))
  final: #t)

(defmethod {:init! dynamic-mux}
  (lambda (self (cfg : Config))
    (set! self.root cfg.root)
    (set! self.cache (make-hash-table-string))
    (set! self.cache-ttl (inexact cfg.cache-ttl))
    (set! self.cache-max-size cfg.cache-max-size)
    (set! self.handlers (make-hash-table-string))
    (when cfg.enable-servlets
      (set! self.servlets (make-hash-table-string))
      (set! self.mx (make-mutex 'mux-loader)))
    (for ([path . handler-module] cfg.handlers)
      (let* ((ctx (import-module handler-module #f #t))
             (init! (find-runtime-symbol ctx 'handler-init!))
             (request-handler (find-runtime-symbol ctx 'request-handler)))
          (unless request-handler
            (error "handler module does not export handle-request procedure"
              module: handler-module))
          (when init!
            ((: (eval init!) :procedure) cfg))
          (hash-put! self.handlers path
                     (: ((: (eval request-handler) :procedure))
                        RequestHandler))))))

(defmethod {request-handler dynamic-mux}
  (lambda (self req)
    ;; flush the cache if it gets too big
    (when (fx> (hash-length self.cache) self.cache-max-size)
      (set! self.cache (make-hash-table-string)))
    (: (cond
        ((hash-get self.cache req.url.path)
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
                  {self.__get-handler req.url.path})))))
        (else
         {self.__get-handler req.url.path}))
       RequestHandler))
  interface: ServerMux)

(defmethod {__get-handler dynamic-mux}
  (lambda (self (path :- :string))
    (defrule (not-found-cache-entry expire)
      (cache-entry Not-Found-handler expire (lambda () #f)))

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

(defstruct servlet ((handler   :- RequestHandler)
                    (path      :- :string)
                    (timestamp :- :flonum))
  final: #t)

(def (find-servlet-handler servlet-tab mx file-path)
  (def (load-servlet! file-path reload?)
    (let* ((load-time (time->seconds (current-time)))
           (ctx (with-lock mx (cut import-module file-path reload? #t)))
           (init! (find-runtime-symbol ctx 'handler-init!))
           (request-handler (find-runtime-symbol ctx 'request-handler)))
      (unless request-handler
        (error "servlet does not export request-handler" file-path))
      (when init!
        ((eval init!) (current-http-server-config)))
      (let* ((request-handler
              (: ((: (eval request-handler) :procedure))
                 RequestHandler))
             (srv (servlet request-handler file-path load-time)))
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
  => RequestHandler
  (let (info (file-info path #t))
    (if (eq? (file-info-type info) 'directory)
      (let (index-html-path (path-expand "index.html" path))
        (if (file-exists? index-html-path)
          (serve-file index-html-path (file-info index-html-path #t))
          Forbidden-handler))
      (serve-file path info))))

(def max-file-cache-size 32768) ; size of i/o buffer for http-response-file

(def (serve-file path info)
  => RequestHandler
  (new-caching-file-handler path))

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
