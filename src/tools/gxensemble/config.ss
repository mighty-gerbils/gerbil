;;; -*- Gerbil -*-
;;; © vyzo
;;; actor ensemble management tool
(import :std/config
        :std/actor
        :std/sugar
        ./util)
(export #t)

;;; ensemble configuration commands
(def (do-config-ensemble opt)
  (let-hash opt
    (let (cfg (get-ensemble-config))
      (if .?view
        (write-config cfg pretty: .?pretty)
        (begin
          (cond (.?ensemble-domain         => (cut config-push! cfg domain: <>)))
          (cond (.?ensemble-root           => (cut config-push! cfg root: <>)))
          (cond (.?ensemble-public-address => (cut config-push! cfg public-address: <>)))
          (save-config! cfg (ensemble-config-path)))))))

(def (do-config-role opt)
  (let-hash opt
    (let* ((cfg (get-ensemble-config))
           (role       (or .?role (error "role must be specified")))
           (role-alist (config-get cfg roles: []))
           (role-cfg   (agetq role role-alist []))
           (role-server-cfg
            (config-get role-cfg server-config: (empty-ensemble-server-config))))
      (cond (.?exe           => (cut config-push! role-cfg exe: <>)))
      (cond (.?prefix        => (cut config-push! role-cfg prefix: <>)))
      (cond (.?suffix        => (cut config-push! role-cfg suffix: <>)))
      (cond (.?policy        => (cut config-push! role-cfg policy: <>)))
      (cond (.?env           => (cut config-push! role-server-cfg env: <>)))
      (cond (.?envvars       => (cut config-push! role-server-cfg envvars: <>)))
      (cond (.?known-servers => (cut config-push! role-server-cfg known-server: <>)))
      (cond (.?auth-servers  => (cut config-push! role-server-cfg auth: <>)))
      (when .?application
        (let (default-config-path
               (path-expand (symbol->string .application)
                 (path-expand "config"
                   (gerbil-path))))
          (unless (or .?config (file-exists? default-config-path))
            (error "application config must be specified"))
          (let* ((config-path (or .config default-config-path))
                 (app-config (call-with-input-file config-path read-config))
                 (app-alist  (config-get role-server-cfg application: [])))
            (cond
             ((assq .application app-alist)
              => (lambda (p) (set-cdr! p app-config)))
             (else
              (set! app-alist [[.application app-config ...] app-alist ...])))
            (config-push! role-server-cfg application: app-alist))))
      (config-push! role-cfg server-config: role-server-cfg)
      (cond
       ((assq role role-alist)
        => (lambda (p) (set-cdr! p role-cfg)))
       (else
        (set! role-alist [[role role-cfg ...] role-alist ...])))
      (config-push! cfg roles: role-alist)
      (save-config! cfg (ensemble-config-path)))))

(def (do-config-server opt)
  (error "TODO: configure preloaded server"))

(def (do-config-workers opt)
  (error "TODO: configure preloaded workers"))


(def (get-ensemble-config)
  (let (path (ensemble-config-path))
    (if (file-exists? path)
      (load-ensemble-config-file path)
      (empty-ensemble-config))))
