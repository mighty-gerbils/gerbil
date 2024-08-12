;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble servers
(import :std/error
        :std/sugar
        :std/iter
        :std/logger
        ./message
        ./proto
        ./server
        ./server-identifier
        ./ensemble
        ./cookie
        ./tls
        ./admin
        ./path
        ./loader)
(export #t)

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
                                known-servers: (known-servers #f)
                                supervisor:    (supervisor #f)
                                registry-id:   (registry #f)
                                registry-addrs: (registry-addrs #f))
  (current-logger-options log-level)
  (parameterize ((ensemble-domain domain))
    (when log-file
      (let (path
            (if (equal? log-file "-")
              (path-expand "log" (ensemble-server-path server-id))
              (path-expand log-file)))
        (create-directory* (path-strip-directory path))
        (start-logger! path)))
    (let* ((tls-context (or maybe-tls-context (get-actor-tls-context server-id)))
           (registry (or registry (cons 'registry domain)))
           (known-servers
            (cond
             (known-servers known-servers)
             ((or (memq 'registry roles) (memq 'supervisor roles))
              (hash))
             (registry-addrs
              (hash (,(cons registry domain) registry-addrs)))
             (else
              (hash (,(cons registry domain) (default-registry-addresses))))))
           (unix-addr (ensemble-server-unix-addr server-id))
           (listen-addrs
            (cons unix-addr listen-addrs))
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
         (display "*** ERROR " (current-error-port))
         (display-exception e (current-error-port))))
      (thread-join! (current-actor-server))
      ;; clean up unix sockets
      (for (addr listen-addrs)
        (match addr
          ([unix: _ path]
           (delete-file path))
          (else (void))))
      ;; remove the server from the ensemble if we are not supervised
      (unless (or supervisor (memq 'registry roles) (memq 'supervisor roles))
        (remove-from-registry! cookie known-servers server-id)))))

(def (remove-from-registry! cookie known-servers server-id)
  (start-actor-server! cookie: cookie known-servers: known-servers identifier: server-id)
  (with-catch void (cut ensemble-remove-server! server-id))
  (stop-actor-server!))
