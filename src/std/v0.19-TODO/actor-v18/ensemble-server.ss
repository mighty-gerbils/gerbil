;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble servers
(import :std/error
        :std/sugar
        :std/iter
        :std/logger
        :std/config
        (only-in :std/logger current-log-directory)
        ./message
        ./proto
        ./server
        ./server-identifier
        ./ensemble
        ./ensemble-config
        ./cookie
        ./tls
        ./admin
        ./path
        ./loader)
(export become-ensemble-server!
        call-with-ensemble-server)

;;; cfg: <ensemble-server-config>
(def (become-ensemble-server! cfg thunk)
  (check-ensemble-server-config! cfg)
  (let (logdir (config-get! cfg log-dir:))
    (create-directory* logdir)
    (parameterize ((current-log-directory logdir)
                   (current-ensemble-server-config cfg))
      (call-with-ensemble-server
       (config-get! cfg identifier:) thunk
       domain:        (config-get! cfg domain:)
       supervisor:    (config-get cfg supervisor:)
       registry:      (config-get cfg registry:)
       cookie:        (get-actor-server-cookie
                       (config-get! cfg cookie:))
       admin:         (alet (admin-path (config-get cfg admin:))
                        (and (file-exists? admin-path)
                             (get-admin-pubkey admin-path)))
       roles:         (cons (config-get! cfg role:) (config-get cfg secondary-roles: []))
       log-level:     (config-get! cfg log-level:)
       log-file:      (config-get! cfg log-file:)
       listen:        (config-get! cfg addresses:)
       known-servers: (cond
                       ((config-get cfg known-servers:)
                        => (lambda (known-servers)
                             (list->hash-table known-servers)))
                       (else (ensemble-known-servers)))))))

;; call a thunk in the context of an ensemble server
;; this is the programmatic equivalent of gxensemble run
(def (call-with-ensemble-server server-id thunk
                                log-level:     (log-level 'INFO)
                                log-file:      (log-file #f)
                                listen:        (listen-addrs [])
                                announce:      (public-addrs #f)
                                roles:         (roles [])
                                domain:        (domain (ensemble-domain))
                                tls-context:   (maybe-tls-context #f)
                                cookie:        (cookie (get-actor-server-cookie))
                                admin:         (admin (get-admin-pubkey))
                                auth:          (auth #f)
                                known-servers: (known-servers (ensemble-known-servers))
                                supervisor:    (supervisor #f)
                                registry:      (registry #f)
                                registry-addrs: (registry-addrs #f))
  (parameterize ((ensemble-domain domain)
                 (current-logger-options log-level))
    (when log-file
      (let* ((path
              (if (equal? log-file "-")
                (path-expand "log" (ensemble-server-path server-id))
                (path-expand log-file)))
             (dir (path-directory path)))
        (unless (file-exists? dir)
          (create-directory* dir))
        (start-logger! path)))
    (let* ((tls-context (or maybe-tls-context (get-actor-tls-context server-id)))
           (registry (or registry (cons 'registry domain)))
           (known-servers
            (cond
             (known-servers known-servers)
             ((or (memq 'registry roles) (memq 'supervisor roles))
              (hash))
             (registry-addrs
              (hash (,registry registry-addrs)))
             (else
              (hash (,registry (default-registry-addresses))))))
           (unix-addr (ensemble-server-unix-addr server-id))
           (listen-addrs
            (or listen-addrs [(ensemble-server-unix-addr server-id)]))
           (public-addrs
            (or public-addrs
                listen-addrs)))
      ;; start the actor server
      (start-actor-server! identifier: server-id
                           roles: roles
                           tls-context: tls-context
                           cookie: cookie
                           admin:  admin
                           auth: auth
                           addresses: listen-addrs
                           known-servers: known-servers
                           supervisor: supervisor
                           registry: registry)
      ;; start the loader
      (start-loader!)
      ;; add the server to the ensemble
      (unless (or supervisor (memq 'registry roles) (memq 'supervisor roles))
        (ensemble-add-server! server-id public-addrs roles))
      ;; run it!
      (try
       (thunk)
       (catch (e)
         (errorf "error executing actor server services: ~a" e)
         (stop-actor-server! (current-actor-server))))
      (thread-join! (current-actor-server))
      ;; clean up unix sockets
      (for (addr listen-addrs)
        (match addr
          ([unix: _ path]
           (when (file-exists? path)
             (delete-file path)))
          (else (void))))
      ;; remove the server from the ensemble if we are not supervised
      (unless (or supervisor (memq 'registry roles) (memq 'supervisor roles))
        (remove-from-registry! cookie known-servers server-id)))))

(def (remove-from-registry! cookie known-servers server-id)
  (start-actor-server! cookie: cookie known-servers: known-servers identifier: server-id)
  (with-catch void (cut ensemble-remove-server! server-id))
  (stop-actor-server!))
