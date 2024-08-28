;;; -*- Gerbil -*-
;;; © vyzo
;;; actor ensemble management tool
(import :std/actor
        :std/iter
        :std/misc/process
        :std/os/temporaries
        ./util)
(export #t)

;;; misc commands
(def (do-lookup opt)
  (error "FIXME: do-lookup")
  (start-actor-server-with-options! opt)
  (let (what (hash-ref opt 'server-or-role))
    (display-result-list
     (if (hash-get opt 'role)
       (ensemble-lookup-servers/role what)
       (ensemble-lookup-server what))))
  (stop-actor-server!))

(def (do-package opt)
  (parameterize ((ensemble-domain (or (hash-get opt 'ensemble-domain) (ensemble-domain))))
    (let* ((server-id   (hash-ref opt 'server-id))
           (output      (hash-ref opt 'output))
           (output      (path-expand output (path-normalize (current-directory))))
           (top         (path-normalize (current-directory)))
           (base-path   (ensemble-base-path))
           (server-path (ensemble-server-path server-id))
           (rebase-path
            (lambda (base path)
              (if (string-prefix? base path)
                (path-expand (substring path (1+ (string-length base)) (string-length path))
                  "ensemble")
                (error "unexpected path: not a base subpath" base path))))
           (ensemble-rebase
            (lambda (base . files)
              (filter-map
               (lambda (file)
                 (and (file-exists? file)
                      (rebase-path base file)))
               files)))
           (ensemble-file
            (lambda (file (base #f))
              (if base
                (path-expand file (ensemble-base-path base))
                (path-expand file base-path))))
           (server-file
            (lambda (file (base #f))
              (if base
                (path-expand file (ensemble-server-path server-id (ensemble-domain) base))
                (path-expand file server-path))))
           (copy-to
            (lambda (base . files)
              (for (path files)
                (when (file-exists? path)
                  (let (target (path-expand path base))
                    (if (eq? 'directory (file-type path))
                      (begin
                        (create-directory* target)
                        (for (f (directory-files path))
                          ;; TODO preserve links
                          (copy-file (path-expand f path)
                                     (path-expand f target))))
                      (begin
                        (create-directory* (path-directory target))
                        (copy-file path target)))))))))
      (call-with-temporary-file-name "ensemble"
        (lambda (tmp)
          (create-directory tmp)
          (parameterize ((current-directory (gerbil-path)))
            (apply copy-to tmp
                   (ensemble-rebase base-path
                     (ensemble-file "cookie")
                     (ensemble-file "admin.pub")
                     (ensemble-file "tls/ca-certificates")
                     (ensemble-file "tls/ca.pem")
                     (ensemble-file "tls/caroot.pem")
                     (ensemble-file "tls/domain")
                     (server-file "tls/chain.pem")
                     (server-file "tls/server.key")))
            (let (config-path (path-expand "ensemble/config" tmp))
              (create-directory* (path-expand "ensemble" tmp))
              (cond
               ((hash-get opt 'config)
                => (lambda (path) (copy-file (path-expand path top) config-path)))
               ((file-exists? (ensemble-config-path))
                (copy-file (ensemble-config-path) config-path)))))
          (invoke "tar"
              ["cavf" output
               (ensemble-rebase (path-expand "ensemble" tmp)
                 (ensemble-file "config" tmp)
                 (ensemble-file "cookie" tmp)
                 (ensemble-file "admin.pub" tmp)
                 (ensemble-file "tls/ca-certificates" tmp)
                 (ensemble-file "tls/ca.pem" tmp)
                 (ensemble-file "tls/caroot.pem" tmp)
                 (ensemble-file "tls/domain" tmp)
                 (server-file "tls/chain.pem" tmp)
                 (server-file "tls/server.key" tmp))
               ...]
              directory: tmp)
          (delete-file-or-directory tmp #t))))))

(def (do-shutdown opt)
  (error "FIXME: do-shutdown")
  (start-actor-server-with-options! opt)
  (cond
   ((hash-get opt 'server-id)
    => (lambda (server-id)
         (cond
          ((hash-get opt 'actor-id)
           => (lambda (actor-id)
                (maybe-authorize! server-id)
                (displayln "... shutting down " actor-id "@" server-id)
                (stop-actor! (reference server-id actor-id))))
          (else
           (maybe-authorize! server-id)
           (displayln "... shutting down " server-id)
           (remote-stop-server! server-id)))))
   (else
    (let/cc nope
      (unless (hash-get opt 'force)
        (displayln "This will shutdown every server in the ensemble, including the registry. Proceed? [y/n]")
        (unless (memq (read) '(y yes Y YES))
          (nope (void))))

      (let (servers (ensemble-list-servers))
        (for (server-id (map car servers))
          (maybe-authorize! server-id)
          (displayln "... shutting down " server-id)
          (with-catch void (cut remote-stop-server! server-id)))
        ;; wait a second before shutting down the registry, so that servers can remove
        ;; themselves.
        (unless (null? servers)
          (thread-sleep! 3)))
      (displayln "... shutting down registry")
      (maybe-authorize! 'registry)
      (remote-stop-server! 'registry))))
  (stop-actor-server!))

(def (do-ping opt)
  (let* ((server-id (hash-ref opt 'server-id))
         (actor-ref
          (cond
           ((hash-get opt 'actor-id)
            => (lambda (actor-id) (reference server-id actor-id)))
           (else (reference server-id 0)))))
    (if (hash-get opt 'supervised)
      (let (supervisor (or (hash-get opt 'supervisor) (ensemble-domain-supervisor)))
        (call-with-console-server opt
          (lambda (srv)
            (let (result (ensemble-supervisor-invoke!
                          supervisor: supervisor
                          actor: actor-ref
                          message: (!ping)
                          actor-server: srv))
              (write-result opt result)))))
      (call-with-console-server opt
        (lambda (srv)
          (let (result (ping-actor actor-ref srv))
            (write-result opt result)))))))
