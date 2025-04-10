;;; -*- Gerbil -*-
;;; © vyzo
;;; actor ensemble management tool
(import :std/actor
        :std/actor-v18/server
        :std/misc/ports
        :std/sugar
        :std/logger
        :std/iter)
(export #t)

;;; utilities
(def (write-result opt result)
  (unless (void? result)
    (cond
     ((##values? result)
      (for (val (##values->list result))
        (write-result opt val)))
     ((hash-get opt 'pretty)
      (pretty-print result))
     (else
      (write result)
      (newline)))))

(def (display-result-list lst)
  (for (result lst)
    (display-result result)))

(def (display-result result)
    (write result)
    (newline))

(def (get-ensemble-domain opt)
  (cond
   ((hash-get opt 'ensemble-domain))
   ((file-exists? (ensemble-domain-file-path))
    (call-with-input-file (ensemble-domain-file-path) read))
   (else (ensemble-domain))))

(def (call-with-console-server opt proc)
  (parameterize ((ensemble-domain (get-ensemble-domain opt)))
    (let (srv (start-actor-server-with-options! opt))
      (maybe-authorize! (or (hash-get opt 'supervisor) (ensemble-domain-supervisor)))
      (with-catch display-exception (cut proc srv))
      (stop-actor-server! srv))))

(def (start-actor-server-with-options! opt)
  (parameterize ((ensemble-domain (get-ensemble-domain opt))
                 (current-logger-options (hash-ref opt 'logging 'WARN)))
    (let* ((known-servers (ensemble-known-servers))
           (known-servers
            (cond
             ((hash-get opt 'registry)
              => (lambda (addrs)
                   (let ((key (default-registry-server))
                         (addrs (append (default-registry-addresses) addrs)))
                     (if known-servers
                       (begin
                         (hash-put! known-servers key addrs)
                         known-servers)
                       (hash (,key addrs))))))
             ((not known-servers)
              (hash (,(default-registry-server) (default-registry-addresses))))
             (else known-servers)))
           (server-id
            (server-identifier (hash-ref opt 'console)))
           (listen-addrs
            (hash-ref opt 'listen []))
           (cookie (get-actor-server-cookie)))
      (start-actor-server! identifier: server-id
                           cookie: cookie
                           addresses: listen-addrs
                           known-servers: known-servers))))

(def +admin-privkey+ #f)
(def (get-privkey)
  (or +admin-privkey+
      (if (file-exists? (ensemble-admin-privkey-path))
        (let* ((passphrase (read-password prompt: "Enter administrative passphrase: "))
               (privk (get-admin-privkey passphrase)))
          (set! +admin-privkey+ privk)
          privk)
        (error "no administrative private key"))))

(def (maybe-authorize! server-id)
  (let (addr (connect-to-server! server-id))
    (unless (eq? tls: (car addr))
      (when (file-exists? (ensemble-admin-privkey-path))
        (let (privk (get-privkey))
          (admin-authorize +admin-privkey+ server-id (actor-server-identifier)))))))
