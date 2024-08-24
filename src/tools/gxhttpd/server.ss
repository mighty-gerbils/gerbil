;;; -*- Gerbil -*-
;;; © vyzo
;;; The Gerbil HTTP Daemon
(import :gerbil/expander
        :std/config
        :std/net/address
        :std/net/httpd
        :std/mime/types
        :std/iter
        :std/misc/ports
        :std/hash-table
        :std/logger
        (only-in :std/os/socket SO_REUSEADDR SO_REUSEPORT)
        (only-in :std/srfi/13 string-contains))
(export #t)

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
                (path-expand "httpd/request.log" logdir)))
          (else #f)))
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
      {self.__get-handler path}))))

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
    (hash-put! self.handlers path handler)))

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
          [(if content-type
             ["Content-Type" :: content-type]
             ["Content-Type" :: "application/octet-stream"])
           ["Last-Modified" :: (number->string (exact (floor (time->seconds (file-info-last-modification-time info)))))]
           ["Content-Length" :: (number->string (file-info-size info))]]))

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
             (http-response-file res headers path))
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
