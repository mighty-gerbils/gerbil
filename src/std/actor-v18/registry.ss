;;; -*- Gerbil -*-
;;; © vyzo
;;; actor ensemble registry
(import :std/error
        :std/contract
        :std/interface
        :std/sugar
        :std/iter
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

  (using (registry :- Registry)
    (let/cc exit
      (while #t
        (<-
         ((!ensemble-add-server id addrs roles)
          (if (authorized-for? @source id)
            (begin
              (infof "adding server ~a ~a at ~a" id roles addrs)
              (registry.add-server id addrs roles)
              (--> (!ok (void))))
            (--> (!error "not authorized"))))

         ((!ensemble-remove-server id)
          (if (authorized-for? @source id)
            (begin
              (infof "removing server ~a" id)
              (registry.remove-server id)
              (--> (!ok (void))))
            (--> (!error "not authorized"))))

         ((!ensemble-lookup-server id role)
          (cond
           (id
            (debugf "looking up server ~a for ~a" id @source)
            (cond
             ((registry.lookup-server id)
              => (lambda (value) (--> (!ok value))))
             (else
              (--> (!error "unknown server")))))
           (role
            (debugf "looking up servers by role ~a for ~a" role @source)
            (let* ((result (registry.lookup-servers/role role))
                   (result (sort-server-list result)))
              (--> (!ok result))))
           (else
            (debugf "listing servers for ~a" @source)
            (let* ((result (registry.list-servers))
                   (result (sort-server-list result)))
              (--> (!ok result))))))

         ((!tick)
          (registry.flush))

         ,(@shutdown
           (infof "registry shutting down ...")
           (registry.close)
           (-> flush-ticker (!shutdown))
           (exit 'shutdown))
         ,(@ping)
         ,(@unexpected warnf))))))

;; registry implementation
(defstruct registry (path servers roles dirty?)
  final: #t unchecked: #t
  constructor: :init!)

(defmethod {:init! registry}
  (lambda (self path)
    (using (self :- registry)
      (let (path (path-expand path))
        (create-directory* (path-directory path))
        (set! self.path path)
        (set! self.servers (make-hash-table-eq))
        (set! self.roles (make-hash-table-eq))
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
          (set! self.dirty? #f))))))

(defmethod {add-server registry}
  (lambda (self id addrs roles)
    (using (self :- registry)
      ;; is it an update? if so remove first
      (when (hash-key? self.servers id)
        (registry::remove-server self id))
      ;; and now add it
      (hash-put! self.servers id (cons roles addrs))
      (when roles
        (for (role roles)
          (hash-update! self.roles role (cut cons id <>) [])))
      (set! self.dirty? #t))))

(defmethod {remove-server registry}
  (lambda (self id)
    (using (self :- registry)
      (cond
       ((hash-get self.servers id)
        => (lambda (entry)
             (for (role (car entry))
               (hash-update! self.roles role (cut remq id <>) []))
             (hash-remove! self.servers id)
             (set! self.dirty? #t)))))))

(defmethod {lookup-server registry}
  (lambda (self id)
    (using (self :- registry)
      (alet (entry (hash-get self.servers id))
        (cdr entry)))))

(defmethod {lookup-servers/role registry}
  (lambda (self role)
    (using (self :- registry)
      (let (servers (hash-ref self.roles role []))
        (map (lambda (id) (cons id (cdr (hash-ref self.servers id []))))
             servers)))))

(defmethod {list-servers registry}
  (lambda (self)
    (using (self :- registry)
      (hash->list self.servers))))

(defmethod {flush registry}
  (lambda (self)
    (using (self :- registry)
      (when self.dirty?
        (let (tmp (string-append self.path ".tmp"))
          (call-with-output-file tmp
            (lambda (file)
              (for (entry (hash->list self.servers))
                (write entry file)
                (newline file))))
          (rename-file tmp self.path)
          (set! self.dirty? #f))))))

(defmethod {close registry}
  registry::flush)
