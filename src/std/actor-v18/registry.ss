;;; -*- Gerbil -*-
;;; © vyzo
;;; actor ensemble registry
(import :std/error
        :std/sugar
        :std/iter
        :std/sort
        :std/hash-table
        :std/misc/symbol
        ./logger
        ./message
        ./proto
        ./server
        ./server-identifier
        ./path)
(export #t)

(interface Registry
  (add-server id addrs roles) => :void
  (remove-server id) => :void
  (lookup-server id) => :list
  (lookup-servers/role role) => :list
  (list-servers) => :list
  (flush) => :void
  (close) => :void)

(def (default-registry-path)
  (path-expand "registry.data" (ensemble-server-path 'registry)))

;; starts an ensemble server registry
(def (start-ensemble-registry! (path (default-registry-path)) (srv (current-actor-server)))
  (let (registry (Registry (make-registry path)))
    (spawn/name 'registry ensemble-registry srv registry)))

;;; Internals
(def (ensemble-registry srv registry)
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
(defstruct registry ((path    :- :string)
                     (servers :- HashTable)
                     (roles   :- HashTable)
                     (dirty?  :- :boolean))
  final: #t
  constructor: :init!)

(defmethod {:init! registry}
  (lambda (self (path : :string))
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
                     (registry::__add-server self id addrs roles)
                     (lp))))))))
        (set! self.dirty? #f)))))

(defmethod {__add-server registry}
  (lambda (self id addrs roles)
    ;; is it an update? if so remove first
    (when (hash-key? self.servers id)
      (registry::__remove-server self id))
    ;; and now add it
    (hash-put! self.servers id (cons roles addrs))
    (when roles
      (for (role roles)
        (hash-update! self.roles role (cut cons id <>) [])))
    (set! self.dirty? #t)))

(defmethod {add-server registry}
  registry::__add-server
  interface: Registry)

(defmethod {__remove-server registry}
  (lambda (self id)
    (cond
     ((hash-get self.servers id)
      => (lambda (entry)
           (for (role (car entry))
             (hash-update! self.roles role (cut remq id <>) []))
           (hash-remove! self.servers id)
           (set! self.dirty? #t))))))

(defmethod {remove-server registry}
  registry::__remove-server
  interface: Registry)

(defmethod {lookup-server registry}
  (lambda (self id)
    (alet (entry (hash-get self.servers id))
      (cdr entry)))
  interface: Registry)

(defmethod {lookup-servers/role registry}
  (lambda (self role)
    (let (servers (hash-ref self.roles role []))
      (map (lambda (id) (cons id (cdr (hash-ref self.servers id []))))
           servers)))
  interface: Registry)

(defmethod {list-servers registry}
  (lambda (self)
    (hash->list self.servers))
  interface: Registry)

(defmethod {__flush registry}
  (lambda (self)
    (when self.dirty?
      (let (tmp (string-append self.path ".tmp"))
        (call-with-output-file tmp
          (lambda (file)
            (for (entry (hash->list self.servers))
              (write entry file)
              (newline file))))
        (move-file tmp self.path)
        (set! self.dirty? #f)))))

(defmethod {flush registry}
  registry::__flush
  interface: Registry)

(defmethod {close registry}
  registry::__flush
  interface: Registry)
