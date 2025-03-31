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

(defrule (config-server! opt cfg)
  (let-hash opt
    (cond (.?secondary-roles => (cut config-push! cfg secondary-roles: <>)))
    (cond (.?env             => (cut config-push! cfg env: <>)))
    (cond (.?envvars         => (cut config-push! cfg envvars: <>)))
    (cond (.?log-level       => (cut config-push! cfg log-level: <>)))
    (cond (.?addresses       => (cut config-push! cfg addresses: <>)))
    (cond (.?auth-servers    => (cut config-push! cfg auth: <>)))
    (cond (.?known-servers   => (cut config-push! cfg known-servers: <>)))
    (when .?application
      (let (default-app-config-path
             (path-expand (symbol->string .application)
                          (path-expand "config" (gerbil-path))))
        (unless (or .?config (file-exists? default-app-config-path))
          (error "no application configuration"))
        (let* ((app-config-path (or .?config default-app-config-path))
               (app-config (call-with-input-file app-config-path read-config))
               (app-alist  (config-get cfg application: [])))
          (cond
           ((assq .application app-alist)
            => (lambda (p) (set-cdr! p app-config)))
           (else
            (set! app-alist [[.application :: app-config] :: app-alist])))
          (config-push! cfg application: app-alist))))))

(def (do-config-role opt)
  (let-hash opt
    (let* ((cfg        (get-ensemble-config))
           (role       (or .?role (error "role must be specified")))
           (role-alist (config-get cfg roles: []))
           (role-cfg   (agetq role role-alist []))
           (role-server-cfg
            (config-get role-cfg server-config: (empty-ensemble-server-config))))
      (cond (.?exe           => (cut config-push! role-cfg exe: <>)))
      (cond (.?prefix        => (cut config-push! role-cfg prefix: <>)))
      (cond (.?suffix        => (cut config-push! role-cfg suffix: <>)))
      (cond (.?policy        => (cut config-push! role-cfg policy: <>)))
      (config-server! opt role-server-cfg)
      (config-push! role-cfg server-config: role-server-cfg)
      (cond
       ((assq role role-alist)
        => (lambda (p) (set-cdr! p role-cfg)))
       (else
        (set! role-alist [[role role-cfg ...] role-alist ...])))
      (config-push! cfg roles: role-alist)
      (save-config! cfg (ensemble-config-path)))))

(def (do-config-preload-server opt)
  (let-hash opt
    (let* ((cfg             (get-ensemble-config))
           (preload         (config-get cfg preload: []))
           (preload-servers (config-get preload servers: []))
           (server-id       .server-id)
           (server-domain   (or .?domain (ensemble-domain)))
           (server-cfg-path
            (or .?config (ensemble-server-config-path server-id server-domain)))
           (server-config
            (and (file-exists? server-cfg-path)
                 (load-ensemble-server-config-file server-cfg-path)))
           (preload-cfg-entry
            (find (lambda (p)
                    (with ([domain . preload-server-cfg] p)
                      (and (eq? server-domain domain)
                           (eq? server-id (config-get! preload-server-cfg server:)))))
                  preload-servers)))
      (if preload-cfg-entry
        (let (preload-cfg (cdr preload-cfg-entry))
          (cond (.?role => (cut config-push! preload-cfg role: <>)))
          (cond (server-config => (cut config-push! preload-cfg server-config: <>)))
          (set! (cdr preload-cfg-entry) preload-cfg))
        (let (preload-cfg [server: server-id])
          (cond (.?role => (cut config-push! preload-cfg role: <>)))
          (cond (server-config => (cut config-push! preload-cfg server-config: <>)))
          (set! preload-servers [[server-domain :: preload-cfg] :: preload-servers])
          (config-push! preload servers: preload-servers)
          (config-push! cfg preload preload:)))
      (save-config! cfg (ensemble-config-path)))))

(def (do-config-preload-workers opt)
  (let-hash opt
    (let* ((cfg             (get-ensemble-config))
           (preload         (config-get cfg preload: []))
           (preload-workers (config-get preload workers: []))
           (server-id       .server-id)
           (server-domain   (or .?domain (ensemble-domain)))
           (server-cfg-path
            (or .?config (ensemble-server-config-path server-id server-domain)))
           (server-config
            (and (file-exists? server-cfg-path)
                 (load-ensemble-server-config-file server-cfg-path)))
           (preload-cfg-entry
            (find (lambda (p)
                    (with ([domain . preload-server-cfg] p)
                      (and (eq? server-domain domain)
                           (eq? server-id (config-get! preload-server-cfg prefix:)))))
                  preload-workers)))
      (if preload-cfg-entry
        (let (preload-cfg (cdr preload-cfg-entry))
          (cond (.?role => (cut config-push! preload-cfg role: <>)))
          (cond (.?count => (cut config-push! preload-cfg servers: <>)))
          (cond (server-config => (cut config-push! preload-cfg server-config: <>)))
          (set! (cdr preload-cfg-entry) preload-cfg))
        (let (preload-cfg [prefix: server-id])
          (config-push! preload-cfg role: .role)
          (config-push! preload-cfg servers: .count)
          (cond (server-config => (cut config-push! preload-cfg server-config: <>)))
          (set! preload-workers [[server-domain :: preload-cfg] :: preload-workers])
          (config-push! preload workers: preload-workers)
          (config-push! cfg preload preload:)))
      (save-config! cfg (ensemble-config-path)))))

(def (do-config-server opt)
  (let-hash opt
    (let* ((server-id .server-id)
           (cfg-path (ensemble-server-config-path server-id))
           (cfg
            (if (file-exists? cfg-path)
              (load-ensemble-server-config-file cfg-path)
              (empty-ensemble-server-config))))
      (config-server! opt cfg)
      (save-config! cfg cfg-path))))

(def (get-ensemble-config)
  (let (path (ensemble-config-path))
    (if (file-exists? path)
      (load-ensemble-config-file path)
      (empty-ensemble-config))))
