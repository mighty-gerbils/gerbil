;;; -*- Gerbil -*-
;;; © vyzo
;;; actor ensemble management tool
(import :std/actor
        :std/actor-v18/proto
        :std/text/hex
        :std/misc/ports
        ./util)
(export #t)

;;; gerbil ensemble admin
(def (do-admin-cookie opt)
  (if (hash-get opt 'view)
    (let (cookie (get-actor-server-cookie))
      (displayln (hex-encode cookie)))
    (generate-ensemble-cookie! force: (hash-get opt 'force))))

(def (do-admin-creds opt)
  (if (hash-get opt 'view)
    (let* ((pubk-path (ensemble-admin-pubkey-path))
           (pubk-raw (read-file-u8vector pubk-path)))
      (displayln (hex-encode pubk-raw)))
    (let* ((passphrase (read-password prompt: "Enter passphrase: "))
           (again      (read-password prompt: "Re-enter passphrase: ")))
      (unless (equal? passphrase again)
        (error "administrative passphrases don't match"))
      (generate-admin-keypair! passphrase force: (hash-get opt 'force)))))

(def (do-admin-authorize opt)
  (call-with-console-server opt
    (lambda (srv)
      (let ((server-id (hash-ref opt 'server-id))
            (authorized-server-id (hash-ref opt 'authorized-server-id))
            (cap (hash-ref opt 'capabilities)))
        (if (hash-get opt 'supervised)
          (let ((supervisor (or (hash-get opt 'supervisor) (ensemble-domain-supervisor)))
                (server-root-ref (reference server-id 0)))
            (ensemble-supervisor-invoke!
             supervisor: supervisor
             actor: server-root-ref
             message: (!admin-auth authorized-server-id cap)
             actor-server: srv))
          (begin
            (maybe-authorize! server-id)
            (admin-authorize (get-privkey) server-id authorized-server-id srv
                             capabilities: cap)))))))

(def (do-admin-retract opt)
  (call-with-console-server opt
    (lambda (srv)
      (let ((server-id (hash-ref opt 'server-id))
            (authorized-server-id (hash-ref opt 'authorized-server-id)))
        (if (hash-get opt 'supervised)
          (let ((supervisor (or (hash-get opt 'supervisor) (ensemble-domain-supervisor)))
                (server-root-ref (reference server-id 0)))
            (ensemble-supervisor-invoke!
             supervisor: supervisor
             actor: server-root-ref
             message: (!admin-retract authorized-server-id)
             actor-server: srv))
          (begin
            (maybe-authorize! server-id)
            (admin-retract server-id authorized-server-id srv)))))))
