;;; -*- Gerbil -*-
;;; © vyzo
;;; actor ensemble registry
(import :gerbil/gambit/threads
        :std/sugar
        :std/iter
        :std/interface
        :std/sort
        :std/misc/symbol
        ./logger
        ./message
        ./proto
        ./server)
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
  (path-expand "ensemble/registry" (getenv "GERBIL_PATH" "~/.gerbil")))

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

  (def (sort-server-list lst)
    (sort lst (lambda (a b) (symbol<? (car a) (car b)))))
  (def flush-ticker
    (spawn/name 'ticker ticker (current-thread)))

  (let/cc exit
    (while #t
      (<-
       ((!ensemble-add-server id addrs roles)
        (infof "adding server ~a ~a at ~a" id roles addrs)
        (&Registry-add-server registry id addrs roles)
        (-> @source (!ok (void)) replyto: @nonce))

       ((!ensemble-remove-server id)
        (infof "removing server ~a" id)
        (&Registry-remove-server registry id)
        (-> @source (!ok (void)) replyto: @nonce))

       ((!ensemble-lookup-server id role)
        (cond
         (id
          (debugf "looking up server ~a for ~a" id @source)
          (cond
           ((&Registry-lookup-server registry id)
            => (lambda (value)
                 (-> @source (!ok value) replyto: @nonce)))
           (else
            (-> @source (!error "unknown server") replyto: @nonce))))
         (role
          (debugf "looking up servers by role ~a for ~a" role @source)
          (let* ((result (&Registry-lookup-servers/role registry role))
                 (result (sort-server-list result)))
            (-> @source (!ok result) replyto: @nonce)))
         (else
          (debugf "listing servers for ~a" @source)
          (let* ((result (&Registry-list-servers registry))
                 (result (sort-server-list result)))
            (-> @source (!ok result) replyto: @nonce)))))
       ((!shutdown)
        (infof "shutting down ...")
        (-> flush-ticker (!shutdown))
        (&Registry-close registry)
        (exit 'shutdown))

       ((!tick)
        (&Registry-flush registry))

       (unexpected
        (warnf "unexpected message from ~a: ~a" @source @message))))))

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
    (for (role roles)
      (hash-update! (&registry-roles self) role (cut cons id <>) []))
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
