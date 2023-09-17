;;; -*- Gerbil -*-
;;; © vyzo
;;; actor ensemble registry
(import :gerbil/gambit/threads
        :std/error
        :std/sugar
        :std/iter
        :std/interface
        :std/sort
        :std/misc/symbol
        ./logger
        ./message
        ./proto
        ./server
        ./path)
(export #t)

(interface Registry
  (add-server id addrs roles)
  (remove-server id)
  (lookup-server id)
  (lookup-servers/role role)
  (list-servers)
  (flush)
  (close))

(def (default-registry-path)
  (path-expand "registry.data" (ensemble-server-path 'registry)))

;; starts an ensemble server registry
(def (start-ensemble-registry! (path (default-registry-path)) (srv (current-actor-server)))
  (let (registry (Registry (make-registry path)))
    (spawn/name 'registry ensemble-registry srv registry)))

;;; Internals
(def (ensemble-registry srv registry)
  (with-exception-stack-trace (cut ensemble-registry-main srv registry)))

(def (ensemble-registry-main srv registry)
  (register-actor! 'registry srv)
  (infof "starting registry ...")

  (def (authorized-for? actor server-id)
    (or (actor-authorized? actor)
        (and (handle? actor)
             (eq? (reference-server (handle-ref actor)) server-id))))

  (def (sort-server-list lst)
    (sort lst (lambda (a b) (symbol<? (car a) (car b)))))
  (def flush-ticker
    (spawn/name 'ticker ticker (current-thread)))

  (let/cc exit
    (while #t
      (<-
       ((!ensemble-add-server id addrs roles)
        (if (authorized-for? @source id)
          (begin
            (infof "adding server ~a ~a at ~a" id roles addrs)
            (&Registry-add-server registry id addrs roles)
            (--> (!ok (void))))
          (--> (!error "not authorized"))))

       ((!ensemble-remove-server id)
        (if (authorized-for? @source id)
          (begin
            (infof "removing server ~a" id)
            (&Registry-remove-server registry id)
            (--> (!ok (void))))
          (--> (!error "not authorized"))))

       ((!ensemble-lookup-server id role)
        (cond
         (id
          (debugf "looking up server ~a for ~a" id @source)
          (cond
           ((&Registry-lookup-server registry id)
            => (lambda (value) (--> (!ok value))))
           (else
            (--> (!error "unknown server")))))
         (role
          (debugf "looking up servers by role ~a for ~a" role @source)
          (let* ((result (&Registry-lookup-servers/role registry role))
                 (result (sort-server-list result)))
            (--> (!ok result))))
         (else
          (debugf "listing servers for ~a" @source)
          (let* ((result (&Registry-list-servers registry))
                 (result (sort-server-list result)))
            (--> (!ok result))))))

       ((!tick)
        (&Registry-flush registry))

       ,(@shutdown
         (infof "registry shutting down ...")
         (&Registry-close registry)
         (-> flush-ticker (!shutdown))
         (exit 'shutdown))
       ,(@ping)
       ,(@unexpected warnf)))))

;; registry implementation
(defstruct registry (path servers roles dirty?)
  final: #t unchecked: #t
  constructor: :init!)

(defmethod {:init! registry}
  (lambda (self path)
    (let (path (path-expand path))
      (create-directory* (path-directory path))
      (set! (&registry-path self) path)
      (set! (&registry-servers self) (make-hash-table-eq))
      (set! (&registry-roles self) (make-hash-table-eq))
      (when (file-exists? path)
        (call-with-input-file path
          (lambda (file)
            (let lp ()
              (let (next (read file))
                (unless (eof-object? next)
                  (match next
                    ([id roles . addrs]
                     (registry::add-server self id addrs roles)
                     (lp))))))))
        (set! (&registry-dirty? self) #f)))))

(defmethod {add-server registry}
  (lambda (self id addrs roles)
    ;; is it an update? if so remove first
    (when (hash-key? (&registry-servers self) id)
      (registry::remove-server self id))
    ;; and now add it
    (hash-put! (&registry-servers self) id (cons roles addrs))
    (when roles
      (for (role roles)
        (hash-update! (&registry-roles self) role (cut cons id <>) [])))
    (set! (&registry-dirty? self) #t)))

(defmethod {remove-server registry}
  (lambda (self id)
    (cond
     ((hash-get (&registry-servers self) id)
      => (lambda (entry)
           (for (role (car entry))
             (hash-update! (&registry-roles self) role (cut remq id <>) []))
           (hash-remove! (&registry-servers self) id)
           (set! (&registry-dirty? self) #t))))))

(defmethod {lookup-server registry}
  (lambda (self id)
    (alet (entry (hash-get (&registry-servers self) id))
      (cdr entry))))

(defmethod {lookup-servers/role registry}
  (lambda (self role)
    (let (servers (hash-ref (&registry-roles self) role []))
      (map (lambda (id) (cons id (cdr (hash-ref (&registry-servers self) id []))))
           servers))))

(defmethod {list-servers registry}
  (lambda (self)
    (hash->list (&registry-servers self))))

(defmethod {flush registry}
  (lambda (self)
    (when (&registry-dirty? self)
      (let* ((path (&registry-path self))
             (tmp (string-append path ".tmp")))
        (call-with-output-file tmp
          (lambda (file)
            (for (entry (hash->list (&registry-servers self)))
              (write entry file)
              (newline file))))
        (rename-file tmp path)
        (set! (&registry-dirty? self) #f)))))

(defmethod {close registry}
  (lambda (self)
    (registry::flush self)))
