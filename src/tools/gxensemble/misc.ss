;;; -*- Gerbil -*-
;;; © vyzo
;;; actor ensemble management tool
(import :std/actor
        :std/iter
        :std/misc/process
        ./util)
(export #t)

;;; misc commands
(def (do-lookup opt)
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
           (base-path   (ensemble-base-path))
           (server-path (ensemble-server-path server-id))
           (rebase-path
            (lambda (path)
              (if (string-prefix? base-path path)
                (path-expand (substring path (1+ (string-length base-path)) (string-length path))
                  "ensemble")
                (error "unexpected path: not a base subpath" base-path path))))
           (ensemble-rebase
            (lambda files
              (filter-map
               (lambda (file)
                 (and (file-exists? file)
                      (rebase-path file)))
               files)))
           (ensemble-file
            (lambda (file)
              (path-expand file base-path)))
           (server-file
            (lambda (file)
              (path-expand file server-path))))
      (current-directory (gerbil-path))
      (invoke "tar"
              ["cavf" output
               (ensemble-rebase
                (ensemble-file "cookie")
                (ensemble-file "admin.pub")
                (ensemble-file "tls/ca-certificates")
                (ensemble-file "tls/ca.pem")
                (ensemble-file "tls/caroot.pem")
                (ensemble-file "tls/domain")
                (server-file "tls/chain.pem")
                (server-file "tls/server.key"))
               ...]
              directory: (gerbil-path)))))

(def (do-shutdown opt)
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
  (start-actor-server-with-options! opt)
  (let (server-id (hash-ref opt 'server-id))
    (cond
     ((hash-get opt 'actor-id)
      => (lambda (actor-id)
           (displayln
            (ping-actor (reference server-id actor-id)))))
     (else
      (displayln
       (ping-server server-id))))))
