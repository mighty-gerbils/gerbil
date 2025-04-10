;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble supervisor actor
(import :std/sugar
        :std/config
        :std/iter
        :std/sort
        :std/misc/ports
        :std/misc/symbol
        ./logger
        ./path
        ./cookie
        ./admin
        ./message
        ./proto
        ./executor
        ./server
        ./server-identifier
        ./ensemble
        ./ensemble-config
        ./ensemble-util)
(export #t)

(defmessage !supervisor-list-servers (role domain))
(defmessage !supervisor-start-server (role domain server-id config))
(defmessage !supervisor-start-workers (role domain prefix count config))
(defmessage !supervisor-stop-servers (role domain server-ids))
(defmessage !supervisor-restart-servers (role domain server-ids))
(defmessage !supervisor-get-server-log (server-id file))
(defmessage !supervisor-get-server-config (server-id))
(defmessage !supervisor-update-server (server-id config mode restart?))
(defmessage !supervisor-get-config ())
(defmessage !supervisor-update-config (config mode))
(defmessage !supervisor-restart (services?))
(defmessage !supervisor-invoke (actor message))

(defclass Server (pid config state service start-time)
  final: #t)

(def (server-config-roles cfg)
  (cons (config-get! cfg role:)
        (config-get cfg secondary-roles: [])))

(def (server-role-includes? (server : Server) role)
  (memq role (server-config-roles server.config)))

(def supervisor-restarting-too-fast 1)

(def (start-ensemble-supervisor! cfg (srv (current-actor-server)))
  (spawn/name 'supervisor ensemble-supervisor cfg srv))

(def (ensemble-supervisor ensemble-cfg srv)
  (register-actor! 'supervisor srv)
  (infof "starting supervisor...")

  (let* ((root      (path-normalize (current-directory)))
         (root/env  (path-expand "env" root))
         (root/log  (path-expand "log" root)))

    (create-directory* root/env)
    (create-directory* root/log)

    (let/cc exit
      ;; server-identifier -> Server
      (def servers (make-hash-table))
      (def servers-by-pid (make-hash-table-eqv))

      (def @executor (handle srv (reference #f 'executor)))
      (def @filesystem (handle srv (reference #f 'filesystem)))

      (def @registry-config #f)

      (def (registry-config)
        (or @registry-config
            (let* ((services-cfg (config-get! ensemble-cfg services:))
                   (registry-cfg (config-get! services-cfg registry:))
                   (registry-id  (config-get! registry-cfg identifier:))
                   (base-cfg     (get-base-registry-config registry-id))
                   (cfg          (ensemble-server-config-merge base-cfg registry-cfg)))
              (set! @registry-config cfg)
              cfg)))

      (def (get-base-registry-config server-id)
        [config: 'ensemble-server-v0
                 ;; ensemble
                 domain: (cdr server-id)
                 identifier: server-id
                 supervisor: (actor-server-identifier)
                 cookie: (ensemble-cookie-path)
                 admin:  (ensemble-admin-pubkey-path)
                 ;; execution
                 role: 'registry
                 ;; logging
                 log-level: 'INFO
                 log-dir:   (get-server-log-dir server-id)
                 log-file:  (get-server-log-file server-id "server.log")
                 ;; bindings
                 addresses: (get-server-default-addresses server-id)
                 auth: [[(actor-server-identifier) 'admin]]
                 ])

      (def (registry-server-id)
        (config-get! (registry-config) identifier:))

      (def (registry-addrs)
        (config-get! (registry-config) addresses:))

      (def (get-base-server-config server-id)
        (let* ((self (actor-server-identifier))
               (self-addrs (get-server-default-addresses self)))
          [config: 'ensemble-server-v0
                   ;; ensemble
                   domain: (cdr server-id)
                   identifier: server-id
                   supervisor: self
                   registry: (registry-server-id)
                   cookie: (ensemble-cookie-path)
                   admin:  (ensemble-admin-pubkey-path)
                   policy: 'restart
                   ;; logging
                   log-level: 'INFO
                   log-dir:   (get-server-log-dir server-id)
                   log-file:  (get-server-log-file server-id "server.log")
                   ;; bindings
                   addresses: (get-server-default-addresses server-id)
                   known-servers: [[self self-addrs ...]
                                   [(registry-server-id) (registry-addrs) ...]]
                   auth: [[self 'admin]]
                   ]))

      (def (get-role-server-config role server-id)
        (alet* ((roles-alist (config-get ensemble-cfg roles:))
                (role-cfg (agetq role roles-alist)))
          (let* ((exe    (: (config-get! role-cfg exe:) :string))
                 (prefix (:~ (config-get role-cfg prefix: []) (list-of? string?)))
                 (suffix (:~ (config-get role-cfg suffix: []) (list-of? string?)))
                 (args (append prefix [(object->string server-id) suffix ...]))
                 (policy (: (config-get role-cfg prolicy: 'restart) :symbol))
                 (base-role-cfg
                  [config: 'ensemble-server-v0
                           role: role
                           exe: exe
                           args: args
                           policy: policy
                           env: "default"])
                 (role-server-cfg (config-get role-cfg server-config:)))
            (ensemble-server-config-merge base-role-cfg role-server-cfg))))

      (def (get-server-config role domain server-id)
        (let* ((domain (ensemble-subdomain domain))
               (server-id (server-identifier-at-domain server-id domain))
               (base-cfg  (get-base-server-config server-id))
               (role-cfg  (get-role-server-config role server-id)))
          (ensemble-server-config-merge base-cfg role-cfg)))

      (def (get-service-config role)
        (alet* ((service-plist (config-get ensemble-cfg services:))
                (service-cfg   (config-get service-plist role)))
          (let* ((server-id (config-get! service-cfg identifier:))
                 (server-id (server-identifier-at-domain server-id (ensemble-domain)))
                 (base-cfg (get-base-server-config server-id)))
            (ensemble-server-config-merge base-cfg service-cfg))))

      (def (get-server-log-dir server-id)
        (ensemble-server-log-directory server-id root/log))

      (def (get-server-log-file server-id file)
        (path-expand file (get-server-log-dir server-id)))

      (def (get-server-default-addresses server-id)
        [(ensemble-server-unix-addr server-id)])

      (def (get-server-list role domain server-ids)
        (if (null? server-ids)
          (if domain
            (let (server-list (get-server-list-by-domain domain))
              (if role
                (filter (lambda (server-id)
                          (using (server (hash-ref servers server-id) :- Server)
                            (server-role-includes? server role)))
                        server-list)
                server-list))
            (hash-keys servers))
          (filter (lambda (server-id) (hash-key? servers server-id))
                  server-ids)))

      (def (get-server-list-by-domain domain)
        (let* ((domain-str (symbol->string domain))
               (domain-prefix (string-append domain-str "/")))
          (filter (lambda (server-id)
                    (let (server-domain (cdr server-id))
                      (or (eq? server-domain domain)
                          (let (server-domain-str (symbol->string server-domain))
                            (string-prefix? domain-prefix server-domain-str)))))
                  (hash-keys servers))))

      (def (write-ensemble-config!)
        (call-with-output-file [path: (path-expand "config" (ensemble-base-path))
                                      create: 'maybe truncate: #t]
          (cut write-config ensemble-cfg <>)))

      (def (write-server-config! server-id server-cfg)
        (let* ((base-path
                (cond
                 ((config-get server-cfg env:)
                  => (cut path-expand <> root/env))
                 (else (gerbil-path))))
               (server-path (ensemble-server-path server-id #f base-path)))
          (create-directory* server-path)
          (call-with-output-file [path: (path-expand "config" server-path)
                                        create: 'maybe truncate: #t ]
            (cut write-config server-cfg <>))))

      (def (server-id<? s1 s2)
        (with (([id1 . dom1] s1)
               ([id2 . dom2] s2))
          (or (symbol<? id1 id2)
              (and (eq? id1 id2)
                   (symbol<? dom1 dom2)))))

      (def (list-servers role domain)
        (let (server-list (get-server-list role domain []))
          (!ok
           (sort
            (map (lambda (server-id)
                   (using (server (hash-ref servers server-id) :- Server)
                     [server-id server.pid server.state]))
                 server-list)
            (lambda (s1 s2) (server-id<? (car s1) (car s2)))))))

      (def (start-server! role domain server-id cfg)
        (with-error-handler "start-server"
          (let* ((server-cfg (get-server-config role domain server-id))
                 (server-cfg (ensemble-server-config-merge server-cfg cfg))
                 (server-id (config-get! server-cfg identifier:)))
            (do-start-server! server-id server-cfg))))

      (def (do-start-server! server-id server-cfg)
        (infof "start server ~a" server-id)
        (with-error-handler "start-server"
          (if (hash-key? servers server-id)
            (begin
              (infof "server ~a is running" server-id)
              (!error "server running"))
            (begin
              (infof "starting server ~a: ~a" server-id server-cfg)
              (write-server-config! server-id server-cfg)
              (match (->> @executor
                          (!executor-exec (config-get! server-cfg exe:)
                                          (config-get! server-cfg args:)
                                          (config-get  server-cfg env:)
                                          (config-get  server-cfg envvars: [])))
                ((!ok pid)
                 (infof "started server ~a: ~a" server-id pid)
                 (match (->> @executor (!executor-monitor pid))
                   ((!ok)
                    (hash-put! servers server-id
                               (Server pid: pid
                                       config: server-cfg
                                       state: 'running
                                       start-time: (##current-time-point)))
                    (hash-put! servers-by-pid pid server-id)
                    (unless (equal? server-id (registry-server-id))
                      (ensemble-add-server! server-id
                                            (config-get! server-cfg addresses:)
                                            (server-config-roles server-cfg)))
                    (!ok (cons server-id pid)))
                   ((!error what)
                    (warnf "failed to monitor process ~a: ~a" pid what)
                    (!error "monitor failure"))))
                (result result))))))

      (def (start-workers! role domain prefix count config)
        (infof "start-workers: ~a ~a ~a ~a" role domain prefix count)
        (with-error-handler "start-workers"
          (!ok
           (for/fold (r []) (i (in-range count))
             (let (server-id (make-symbol prefix "-" i))
               (unless (hash-get servers server-id)
                 (match (start-server! role domain server-id config)
                   ((!ok value)
                    (cons value r))
                   ((!error what)
                    (warnf "failed to start worker ~a: ~a" server-id what)
                    r))))))))

      (def (stop-servers! role domain server-ids)
        (with-error-handler "stop-servers"
          (let (server-list (get-server-list role domain server-ids))
            (!ok
             (if (null? server-list)
               []
               (do-stop-servers! server-list))))))

      (def (do-stop-servers! server-list)
        (infof "stop-servers ~a" server-list)
        (filter-map identity
          (map thread-join!
               (map (lambda (server-id)
                      (using (server (hash-ref servers server-id) :- Server)
                        (set! server.state 'stopping)
                        (spawn/name 'stop-server
                          (lambda ()
                            (try
                             (match (->> @executor (!executor-stop server.pid))
                               ((!ok pid) pid)
                               ((!error what)
                                (warnf "error stopping server ~a: ~a" server-id what)
                                #f))
                             (catch (e)
                               (warnf "error stopping server ~a: ~a" server-id e)
                               #f))))))
                    server-list))))

      (def (restart-servers! role domain server-ids)
        (with-error-handler "restart-servers"
          (do-restart-servers! (get-server-list role domain server-ids))))

      (def (do-restart-servers! server-list)
        (infof "restart-servers ~a" server-list)
        (!ok
         (filter-map identity
           (map (lambda (server-id)
                  (using (server (hash-ref servers server-id) :- Server)
                    (match (restart-server! server-id server)
                      ((!ok pid)
                       (cons server-id pid))
                      ((!error what)
                       (warnf "failed to restart server ~a: ~a" server-id what)
                       #f))))
                server-list))))

      (def (restart-server! server-id (server :- Server))
        (infof "restart-server ~a" server-id)
        (with-error-handler "restart-server"
          (set! server.state 'restart)
          (write-server-config! server-id server.config) ; might have changed from update
          (match (->> @executor (!executor-restart server.pid))
            ((!ok pid)
             (hash-remove! servers-by-pid server.pid)
             (hash-put! servers-by-pid pid server-id)
             (set! server.pid pid)
             (set! server.state 'running)
             (!ok pid))
            (result result))))

      (def (get-server-log server-id file)
        (with-error-handler "get-server-log"
          (let (log-file (get-server-log-file server-id (or file "server.log")))
            (if (file-exists? log-file)
              (!ok (read-file-string log-file))
              (!error "no log")))))

      (def (update-server! server-id config mode restart?)
        (infof "update server ~a" server-id)
        (with-error-handler "update-server"
          (cond
           ((hash-get servers server-id)
            => (lambda ((server :- Server))
                   (let (new-config
                         (if (eq? mode 'replace)
                           config
                           (ensemble-server-config-merge
                            (get-server-config
                             (config-get! server.config role:)
                             (config-get! server.config domain:)
                             server-id)
                            config)))
                     (set! server.config new-config)
                     (if restart?
                       (restart-server! server-id server)
                       (!ok (void))))))
           (else
            (warnf "unkown server ~a" server-id)
            (!error "unknown server")))))

      (def (server-config server-id)
        (with-error-handler "server-config"
          (cond
           ((hash-get servers server-id)
            => (lambda ((server :- Server))
                 (!ok server.config)))
           (else
            (!error "unknown server")))))

      (def (update-config! config mode)
        (let (new-config
              (if (eq? mode 'replace)
                config
                (ensemble-config-merge ensemble-cfg config)))
          (set! ensemble-cfg new-config)
          (set! @registry-config #f)
          (write-ensemble-config!)
          (!ok (void))))

      (def (get-config)
        (!ok ensemble-cfg))

      (def (notify! pid exit-code)
        (with-error-log "notify"
          (cond
           ((hash-get servers-by-pid pid)
            => (lambda (server-id)
                 (hash-remove! servers-by-pid pid)
                 (cond
                  ((hash-get servers server-id)
                   => (lambda ((server :- Server))
                        (infof "server ~a has stopped" server-id)
                        (hash-remove! servers server-id)
                        (when (eq? server.state 'running)
                          (case (config-get! server.config policy:)
                            ((restart)
                             (if (> (##current-time-point)
                                    (+ server.start-time supervisor-restarting-too-fast))
                               (match (do-start-server! server-id server.config)
                                 ((!ok p)
                                  (infof "restarted server ~a as ~a" server-id (cdr p)))
                                 ((!error what)
                                  (warnf "error restarting server ~a: ~a" server-id what)
                                  (unless (equal? server-id (registry-server-id))
                                    (with-catch void (cut ensemble-remove-server! server-id)))))
                               (begin
                                 (warnf "server ~a is restarting too fast; stay down" server-id)
                                 (unless (equal? server-id (registry-server-id))
                                   (with-catch void (cut ensemble-remove-server! server-id))))))))))
                  (else
                   (debugf "notification for unknown server ~a" server-id)))))
           (else
            (debugf "notification for unknown pid ~a" pid)))))

      (def (shutdown!)
        (do-shutdown!)
        (-> srv (!shutdown)))

      (def (do-shutdown!)
        (with-error-log "stop-servers"
          (infof "stopping application servers")
          (do-stop-servers! (get-application-servers))
          (wait-for-notifications (lambda () (> (length (get-application-servers)) 0))))
        (with-error-log "stop-services"
          (infof "stopping services")
          (do-stop-servers! (get-service-servers))
          (wait-for-notifications (lambda () (> (length (get-service-servers)) 0))))
        (with-error-log "stop-executor"
          (->> @executor (!shutdown)))
        (with-error-log "stop-filesystem"
          (->> @filesystem (!shutdown))))

      (def (wait-for-notifications wait?)
        (while (wait?)
          (let loop ()
            (<- ((!executor-notify pid exit-code)
                 (when (local-actor? @source 'executor)
                   (notify! pid exit-code)
                   (loop)))
                (else (void))))))

      (def (get-application-servers)
        (for/fold (r []) (([id . server] (hash->list servers)))
          (using (server :- Server)
            (if server.service r (cons id r)))))

      (def (get-service-servers)
        (for/fold (r []) (([id . server] (hash->list servers)))
          (using (server :- Server)
            (if server.service (cons id r) r))))

      (def (restart! services?)
        (with-error-handler "restart"
          (do-restart-servers!
           (if services?
             (hash-keys servers)
             (filter-map
              (lambda (p)
                (with ([server-id . server] p)
                  (using (server :- Server)
                    (and (not server.service)
                         server-id))))
              (hash->list servers))))))

      (def (start-services!)
        (for (role [registry: resolver: broadcast:])
          (alet (server-cfg (get-service-config role))
            (let (server-id (config-get! server-cfg identifier:))
              (infof "starting service ~a ~a" role server-id)
              (match (do-start-server! server-id server-cfg)
                ((!ok)
                 (using (server (hash-ref servers server-id) :- Server)
                   (set! server.service (keyword->symbol role))))
                ((!error what)
                 (errorf "error starting service ~a ~a" role what)))
              (wait-for-actor! (reference server-id (keyword->symbol role)))))))

      (def (start-preloaded!)
        (alet (preload-cfg (config-get ensemble-cfg preload:))
          (alet (servers-alist (config-get preload-cfg servers:))
            (for ([domain . cfg] servers-alist)
              (let* ((server-cfg
                      (get-server-config (config-get! cfg role:)
                                         domain
                                         (config-get! cfg server:)))
                     (server-cfg
                      (ensemble-server-config-merge server-cfg
                                                    (config-get cfg server-config)))
                     (server-id
                      (config-get! server-cfg identifier:)))
                (match (do-start-server! server-id server-cfg)
                  ((!ok) (void))
                  ((!error what)
                   (errorf "error starting preloaded server ~a: ~a" server-id what))))))
          (alet (workers-alist (config-get preload-cfg workers:))
            (for ([domain . cfg] workers-alist)
              (match (start-workers! (config-get! cfg role:)
                                     domain
                                     (config-get! cfg prefix:)
                                     (config-get! cfg servers:)
                                     (config-get  cfg server-config:))
                ((!ok) (void))
                ((!error what)
                 (errorf "error starting preloaded workers for ~a: ~a" domain what)))))))

      (infof "starting supervisory services")
      (try
       (start-services!)
       (catch (e)
         (errorf "error starting supervisor services: ~a" e)
         (exit 'error)))

      (infof "starting preloaded servers and workers")
      (try
       (start-preloaded!)
       (catch (e)
         (errorf "error starting preloaded servers: ~a" e)
         (do-shutdown!)
         (exit 'error)))

      (infof "supervisor running...")

      (while #t
        (<-
         ((!supervisor-list-servers role domain)
          (with-authorization 'supervisor
            (list-servers role domain)))

         ((!supervisor-start-server role domain server-id cfg)
          (with-authorization 'supervisor
            (start-server! role domain server-id cfg)))

         ((!supervisor-start-workers role domain prefix count config)
          (with-authorization 'supervisor
            (start-workers! role domain prefix count config)))

         ((!supervisor-stop-servers role domain server-ids)
          (with-authorization 'supervisor
            (stop-servers! role domain server-ids)))

         ((!supervisor-restart-servers role domain server-ids)
          (with-authorization 'supervisor
            (restart-servers! role domain server-ids)))

         ((!supervisor-get-server-log server-id file)
          (with-authorization 'supervisor
            (get-server-log server-id file)))

         ((!supervisor-update-server server-id config mode restart?)
          (with-authorization 'supervisor
            (update-server! server-id config mode restart?)))

         ((!supervisor-get-server-config server-id)
          (with-authorization 'supervisor
            (server-config server-id)))

         ((!supervisor-update-config config mode)
          (with-authorization 'supervisor
            (update-config! config mode)))

         ((!supervisor-get-config)
          (with-authorization 'supervisor
            (get-config)))

         ((!supervisor-restart services?)
          (with-authorization 'supervisor
            (restart! services?)))

         ((!supervisor-invoke actor msg)
          (if (actor-authorized? @source 'supervisor)
            (spawn/name 'invoke
              (lambda ()
                (try
                 (--> (->> (reference->handle actor) msg
                           expiry: @expiry))
                 (catch (e)
                   (debugf "actor invocation error: ~a: ~a" actor e)
                   (--> (!error (error-message e)))))))
            (--> (!error "not authorized"))))

         ((!executor-notify pid exit-code)
          (if (local-actor? @source 'executor)
            (notify! pid exit-code)
            (warnf "unexpected notification from ~a: ~a" @source pid)))

         ;; management protocol
         ,(@shutdown
           (infof "supervisor shutting down ...")
           (shutdown!)
           (exit 'shutdown))
         ,(@ping)
         ,(@unexpected warnf))))))
