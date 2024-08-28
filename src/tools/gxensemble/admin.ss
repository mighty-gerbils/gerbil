;;; -*- Gerbil -*-
;;; © vyzo
;;; actor ensemble management tool
(import :std/actor
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
  (error "FIXME: do-admin-authorize")
  (start-actor-server-with-options! opt)
  (let ((server-id (hash-ref opt 'server-id))
        (authorized-server-id (hash-ref opt 'authorized-server-id))
        (capabilities (hash-ref opt 'capabilities)))
    (admin-authorize (get-privkey) server-id authorized-server-id
                     capabilities: capabilities)))

(def (do-admin-retract opt)
  (error "FIXME: do-admin-retract")
  (start-actor-server-with-options! opt)
  (let ((server-id (hash-ref opt 'server-id))
        (authorized-server-id (hash-ref opt 'authorized-server-id)))
    (maybe-authorize! server-id)
    (admin-retract server-id authorized-server-id)))
