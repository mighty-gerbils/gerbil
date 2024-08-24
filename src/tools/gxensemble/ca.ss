;;; -*- Gerbil -*-
;;; © vyzo
;;; actor ensemble management tool
(import :std/actor
        :std/actor-v18/tls
        :std/misc/process
        :std/misc/ports
        :std/iter
        ./util)
(export #t)

;;; gerbil ensemble ca
(def (do-ca-setup opt)
  (cond
   ((hash-get opt 'view)
    (let* ((base-path (ensemble-tls-base-path))
           (ca-certificates (path-expand "ca-certificates" base-path)))
      (for (subject '("root-ca" "sub-ca"))
        (let (cert (path-expand (string-append subject ".crt") ca-certificates))
          (invoke "openssl" ["-text" "-in" cert])))))
   ((file-exists? (path-expand "caroot.pem" (ensemble-tls-base-path)))
    (displayln "caroot.pem already exists"))
   (else
    (let* ((root-passphrase (read-password prompt: "Enter root CA passphrase: "))
           (again           (read-password prompt: "Re-enter passphrase: ")))
      (unless (equal? root-passphrase again)
        (error "root CA passphrases don't match"))
      (generate-actor-tls-root-ca! root-passphrase
                                   domain: (hash-ref opt 'domain)
                                   country-name: (hash-ref opt 'subject/C)
                                   organization-name: (hash-ref opt 'subject/O))
      (let* ((sub-passphrase (read-password prompt: "Enter subordinate CA passphrase: "))
             (again          (read-password prompt: "Re-enter passphrase: ")))
      (unless (equal? sub-passphrase again)
        (error "subordinate CA passphrases don't match"))
      (generate-actor-tls-sub-ca! root-passphrase sub-passphrase
                                  country-name: (hash-ref opt 'subject/C)
                                  organization-name: (hash-ref opt 'subject/O))
      (generate-actor-tls-cafiles!)
      (generate-actor-tls-cert! sub-passphrase
                                server-id: '(console . /)
                                capabilities: '(admin)
                                country-name: (hash-ref opt 'subject/C)
                                organization-name: (hash-ref opt 'subject/O)
                                location: (hash-ref opt 'subject/L)))))))

(def (do-ca-cert opt)
  (parameterize ((ensemble-domain (get-ensemble-domain opt)))
    (let* ((server-id (hash-ref opt 'server-id))
           (base-path (ensemble-tls-server-path server-id)))
      (cond
       ((hash-get opt 'view)
        (let (cert (path-expand "server.crt" base-path))
          (invoke "openssl" ["-text" "-in" cert])))
       ((and (not (hash-get opt 'force))
             (file-exists?  (path-expand "server.crt" base-path)))
        (displayln "server.crt already exists; use --force to force certificate generation"))
       (else
        (let (sub-passphrase (read-password prompt: "Enter subordinate CA passphprase: "))
          (generate-actor-tls-cert! sub-passphrase
                                    server-id: server-id
                                    ensemble-domain: (ensemble-domain)
                                    capabilities: (hash-ref opt 'capabilities)
                                    country-name: (hash-ref opt 'subject/C)
                                    organization-name: (hash-ref opt 'subject/O)
                                    location: (hash-ref opt 'subject/L))))))))
