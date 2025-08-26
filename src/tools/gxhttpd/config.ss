;;; -*- Gerbil -*-
;;; © vyzo
;;; The Gerbil HTTP Daemon
;;;
(import :std/config
        :std/actor
        :std/sugar)
(export #t)

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
;;;
;;; ;;; servlets: a boolean indicating whether servlets are enabled
;;; enable-servlets: #t | #f
;;;
;;; ;;; request-log: [optional] the file path for logging requests
;;; request-log: "path/to/request-log-file" | #f
;;;
;;; ;;; listen: a list of addresses where the server should listen
;;; ;;; use (ssl: path-to-cert inet-address) for https
;;; listen: (server-address ...)
;;;
;;; ;;; max-token-length: The request handler parser buffer size
;;; max-token-length: integer
;;
;;; ;;; cache-ttl: A time in seconds for the cache to uncache/refresh
;;; ;;; a changed item
;;; cache-ttl: real
;;; ----------------------------------------------------------------

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

(def (load-default-server-config)
  (load-httpd-config (httpd-config-path)))

(def (httpd-config-path (base (gerbil-path)))
  (path-expand "config/httpd" (gerbil-path)))

(def (get-ensemble-config opt)
  (let (path (or (hash-get opt 'config) (ensemble-config-path)))
    (if (file-exists? path)
      (load-ensemble-config-file path)
      (empty-ensemble-config))))

(def (get-httpd-config opt)
  (let (path (or (hash-get opt 'config) (httpd-config-path)))
    (if (file-exists? path)
      (load-httpd-config path)
      (empty-httpd-config))))
