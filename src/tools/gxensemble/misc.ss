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
  (let* ((server-id (hash-ref opt 'server-id))
         (output    (hash-ref opt 'output))
         (output    (path-expand output (current-directory)))
         (ensemble-base "ensemble/")
         (ensemble-rebase
          (lambda files
            (map (cut string-append ensemble-base <>) files)))
         (server-base
          (string-append ensemble-base
                         "server/"
                         (symbol->string server-id) "/"))
         (server-rebase
          (lambda files
            (map (cut string-append server-base <>) files))))

    (current-directory (gerbil-path))
    (invoke "tar"
            ["cavf" output
             (ensemble-rebase
              "cookie"
              "admin.pub"
              "tls/ca-certificates"
              "tls/ca.pem"
              "tls/caroot.pem"
              "tls/domain") ...
              (server-rebase "tls/chain.pem" "tls/server.key") ...])))

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
