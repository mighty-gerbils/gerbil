;;; -*- Gerbil -*-
;;; © vyzo
;;; The Gerbil HTTP Daemon
;;;
(import :std/format
        :std/serde/interface
        :std/serde/deserialize
        :std/log
        :std/io
        :std/hash/misc
        :std/interface)
(export #t)

(defclass Config
  (;; path to server root
   (root : :string)
   ;; list of handler modules, prefixed by mux rules
   ;; the rule format is the same as the static mux set, except
   ;; that the handler is a module that exports a procedure
   ;; named http-handler that returns a RequestHandler
   (handlers : :list)
   ;; whether to enable servlets of not
   (enable-servlets : :boolean)
   ;; a list of listen addresses with the same (textual) format
   ;; understood by new-server
   (listen : :list)
   ;; the log options
   (log : LogRotateOpt)
   ;; cache control
   (cache-ttl : :real)
   (cache-max-size : :fixnum)
   ;; app specific config
   (app : :t := #f)
   ))

(defobject-untaint Config)

(def (do-config opt)
  (let-hash opt
    (cond
     (.?print
      ;; (if .?ensemble
      ;;   (write-config (get-ensemble-config opt) pretty: #t)
      ;;   (write-config (get-httpd-config opt) pretty: #t))
      (write-config (get-httpd-config opt)))
     ;; (.?ensemble
     ;;  (cond
     ;;   (.?set
     ;;    (do-ensemble-config opt (empty-ensemble-config)))
     ;;   (else
     ;;    (do-ensemble-config opt (get-ensemble-config opt)))))
     (.?set
      (do-httpd-config opt (default-httpd-config)))
     (else
      (do-httpd-config opt (get-httpd-config opt))))))


;; (def (do-ensemble-config opt cfg)
;;   (let (cfg (set-ensemble-config! opt cfg))
;;     (save-config! cfg (or (hash-get opt 'config) (ensemble-config-path)))))

(def (do-httpd-config opt cfg)
  (let (cfg (set-httpd-config! opt cfg))
    (save-config! cfg (or (hash-get opt 'config) (httpd-config-path)))))

;; (def (set-ensemble-config! opt cfg)
;;   (let-hash opt
;;     (let* ((domain .ensemble-domain)
;;            (worker-domain (ensemble-subdomain (or .?worker-domain 'www) domain))
;;            (role 'httpd)
;;            (role-alist (config-get cfg roles: []))
;;            (role-cfg   (agetq role role-alist []))
;;            (httpd-server-cfg
;;             (config-get role-cfg server-config: (empty-ensemble-server-config)))
;;            (httpd-app-alist
;;             (config-get httpd-server-cfg application: []))
;;            (httpd-cfg
;;             (agetq role httpd-app-alist (empty-httpd-config)))
;;            (preload-cfg (config-get cfg preload: []))
;;            (worker-alist (config-get preload-cfg workers: []))
;;            (worker-cfg   (agetq worker-domain worker-alist [])))

;;       (set! httpd-cfg (set-httpd-config! opt httpd-cfg))
;;       (cond
;;        ((assq role httpd-app-alist)
;;         => (lambda (p)
;;              (set-cdr! p httpd-cfg)))
;;        (else
;;         (set! httpd-app-alist [[role httpd-cfg ...] httpd-app-alist ...])))
;;       (config-push! httpd-server-cfg application: httpd-app-alist)
;;       (config-push! httpd-server-cfg env: #f)
;;       (config-push! role-cfg server-config: httpd-server-cfg)

;;       (config-push! role-cfg exe: "gerbil")
;;       (config-push! role-cfg prefix: '("httpd" "server"))
;;       (config-push! role-cfg policy: 'restart)
;;       (cond
;;        ((assq role role-alist)
;;         => (lambda (p)
;;              (set-cdr! p role-cfg)))
;;        (else
;;         (set! role-alist [[role role-cfg ...] role-alist ...])))
;;       (config-push! cfg roles: role-alist)

;;       (config-push! worker-cfg prefix: 'httpd)
;;       (config-push! worker-cfg role: role)
;;       (cond
;;          (.?workers => (cut config-push! worker-cfg servers: <>))
;;          ((not (config-get worker-cfg servers:))
;;           (config-push! worker-cfg servers: 1)))
;;       (cond
;;        ((assq worker-domain worker-alist)
;;         => (lambda (p)
;;              (set-cdr! p worker-cfg)))
;;        (else
;;         (set! worker-alist [[worker-domain worker-cfg ...] worker-alist ...])))
;;       (config-push! preload-cfg workers: worker-alist)
;;       (config-push! cfg preload: preload-cfg)
;;       (config-push! cfg domain: domain)
;;       (cond (.ensemble-root => (cut config-push! cfg root: <>))))
;;     cfg))

(def (save-config! cfg path)
  (call-with-file-writer path
    (lambda (writer)
      (using (buffered (open-buffered-writer writer) : BufferedWriter)
        (write-object writer cfg)
        (buffered.flush)))))

(def (write-config cfg)
  ;; TODO pretty print
  (printf "%s\n" cfg))

(def (set-httpd-config! opt (cfg : Config))
  (let-hash opt
    (cond (.?root             => (cut Config-root-set! cfg <>)))
    (cond (.?listen           => (cut Config-listen-set! cfg <>)))
    (cond (.?handlers         => (cut Config-handlers-set! cfg <>)))
    (cond (.?enable-servlets  => (cut Config-enable-servlets-set! cfg <>)))
    (cond (.?log-dir          => (lambda (dir) (set! cfg.log.dir dir)))))
  cfg)

(def (load-httpd-config path)
  (: (call-with-file-reader path read-object)
     Config))

(def (load-default-server-config)
  (load-httpd-config (httpd-config-path)))

(def (httpd-config-path (base (gerbil-path)))
  (path-expand "httpd/config" (gerbil-path)))

;; (def (get-ensemble-config opt)
;;   (let (path (or (hash-get opt 'config) (ensemble-config-path)))
;;     (if (file-exists? path)
;;       (load-ensemble-config-file path)
;;       (empty-ensemble-config))))

(def (get-httpd-config opt)
  (let (path (or (hash-get opt 'config) (httpd-config-path)))
    (if (file-exists? path)
      (load-httpd-config path)
      (default-httpd-config))))

;; run in place
(def (default-httpd-root)
  (path-normalize "."))

;; in localhost:8080
(def (default-httpd-listen)
  ["inet4:127.0.0.1:8080"])

;; and log in the gerbil path
(def (default-httpd-log-dir)
  (path-expand "httpd/log" (gerbil-path)))

(def (default-httpd-config)
  (Config root: (default-httpd-root)
          handlers: []
          enable-servlets: #t
          listen: (default-httpd-listen)
          log: (LogRotateOpt
                name: "/net/httpd"
                level: INFO
                file: "request.log"
                dir: (default-httpd-log-dir))
          cache-ttl: 120.0
          cache-max-size: 16384))
