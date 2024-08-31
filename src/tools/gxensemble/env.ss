;;; -*- Gerbil -*-
;;; © vyzo
;;; actor ensemble management tool
(import :std/actor
        :std/iter
        ./util)
(export #t)

;;; gerbil ensemble env
(def (do-env-known-servers opt)
  (def (write-known-servers! known-servers)
    (call-with-output-file [path: (ensemble-known-servers-path)
                                  create: 'maybe truncate: #t]
      (cut write (hash->list known-servers) <>)))
  (cond
   ((hash-get opt 'add)
    (let* ((server-id (hash-get opt 'server-id))
           (server-addrs (hash-get opt 'server-addresses))
           (server-addrs
            (if (null? server-addrs)
              [(ensemble-server-unix-addr server-id)]
              server-addrs)))
      (unless server-id
        (error "missing server id"))
      (let* ((known-servers
              (or (ensemble-known-servers)
                  (make-hash-table)))
             (current-addrs
              (hash-ref known-servers server-id [])))
        (for (addr server-addrs)
          (unless (member addr current-addrs)
            (set! current-addrs (append current-addrs [addr]))))
        (hash-put! known-servers server-id current-addrs)
        (write-known-servers! known-servers))))
   ((hash-get opt 'remove)
    (let ((server-id (hash-get opt 'server-id))
          (server-addrs (hash-get opt 'server-addresses)))
      (unless server-id
        (error "missing server id"))
      (alet (known-servers (ensemble-known-servers))
        (if server-addrs
          (let* ((current-addrs
                  (hash-ref known-servers server-id []))
                 (new-addrs
                  (filter (lambda (addr) (not (member addr current-addrs)))
                          current-addrs)))
            (if (null? new-addrs)
              (hash-remove! known-servers server-id)
              (hash-put! known-servers server-id new-addrs)))
          (hash-remove! known-servers server-id))
        (write-known-servers! known-servers))))
   ((hash-get opt 'set)
    (let ((server-id (hash-get opt 'server-id))
          (server-addrs (hash-get opt 'server-addresses)))
      (unless server-id
        (error "missing server id"))
      (let (known-servers
            (or (ensemble-known-servers)
                (make-hash-table)))
        (hash-put! known-servers server-id server-addrs)
        (write-known-servers! known-servers))))
   ((hash-get opt 'server-id)
    => (lambda (server-id)
         (unless (null? (hash-get opt 'server-addresses))
           (error "unexpected addresses"))
         (alet* ((known-servers (ensemble-known-servers))
                 (addrs (hash-get known-servers server-id)))
           (write-result opt addrs))))
   (else
    (alet (known-servers (ensemble-known-servers))
      (write-result opt (hash->list known-servers))))))

(def (do-env-domain opt)
  (let (path (ensemble-domain-file-path))
  (cond
   ((hash-get opt 'domain)
    => (lambda (domain)
         (call-with-output-file [path: path create: 'maybe truncate: #t]
           (cut write domain <>))))
   (else
    (displayln (get-ensemble-domain opt))))))

(def (do-env-supervisor opt)
  (let (path (ensemble-domain-supervisor-path))
    (cond
     ((hash-get opt 'server-id)
      => (lambda (server-id)
           (call-with-output-file [path: path create: 'maybe truncate: #t]
             (cut write server-id <>))))
     (else
      (displayln (ensemble-domain-supervisor))))))
