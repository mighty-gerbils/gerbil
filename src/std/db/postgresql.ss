;;; -*- Gerbil -*-
;;; (C) vyzo, drewc
;;; PostgreSQL dbi interface

(import :std/error
        :std/db/dbi
        :std/db/postgresql-driver
        :std/iter
        :std/misc/channel
        :std/misc/list
        :std/srfi/19)
(export postgresql-connect
        (struct-out postgresql-command
                    postgresql-statement
                    postgresql-query)
        defcatalog
        defcatalog-default
        default-catalog
        current-catalog)

(defstruct (postgresql-connection connection) (host port user db)
  print: (host port user db)
  constructor: :init!
  final: #t unchecked: #t)

(defmethod {:init! postgresql-connection}
  (lambda (self driver host port user db)
    (connection:::init! self driver)
    (set! (&postgresql-connection-host self) host)
    (set! (&postgresql-connection-port self) port)
    (set! (&postgresql-connection-user self) user)
    (set! (&postgresql-connection-db self) db)))

(def (postgresql-connect host: (host "127.0.0.1")
                         port: (port 5432)
                         user: user
                         passwd: passwd
                         db: (db #f))
  (let (driver (postgresql-connect! host port user passwd db))
    (make-postgresql-connection driver host port user db)))

(defmethod {close postgresql-connection}
  postgresql-close!)

(defstruct (postgresql-command statement) (conn complete notices input token)
  constructor: :init!
  unchecked: #t
  print: (complete))

(defstruct !unnamed () final: t)
(def unnamed-command (make-!unnamed))

(defmethod {:init! postgresql-command}
  (lambda (self conn name: (name unnamed-command) complete: (complete #f))
    (statement:::init! self name)
    (set! (&postgresql-command-conn self) conn)
    (set! (&postgresql-command-complete self) complete)
    (set! (&postgresql-command-notices self) [])))

(defmethod {bind postgresql-command} void)
(defmethod {exec postgresql-command} void)
(defmethod {clear postgresql-command} void)
(defmethod {finalize postgresql-command} void)
(defmethod {query-start postgresql-command} void)
(defmethod {query-fini postgresql-command} postgresql-command::reset)
(defmethod {query-fetch postgresql-command} (lambda _ iter-end))
(defmethod {query-row postgresql-command} postgresql-command-complete)
(defmethod {columns postgresql-command} (lambda _ '()))

(def (wrap-notice-handler cmd thunk)
  (with-postgresql-notice-handler
   (postgresql-command-conn cmd)
   (lambda args
     (push! args (postgresql-command-notices cmd)))
   thunk))

(defmethod {reset postgresql-command}
  (lambda (self)
    (alet (token (&postgresql-command-token self))
      (postgresql-reset! (&postgresql-command-conn self) token)
      (set! (&postgresql-command-token self) #f)
      (set! (&postgresql-command-input self) #f))))

(defstruct (postgresql-statement postgresql-command) (cols params bind row)
  constructor: :init!
  final: #t unchecked: #t)

(defalias postgresql-statement-name statement-e)

(defmethod {:init! postgresql-statement}
  (lambda (self conn name: (name unnamed-command)
           cols params: (params []))
    (postgresql-command:::init! self conn name: name)
    (set! (&postgresql-statement-cols self) cols)
    (set! (&postgresql-statement-params self) params)))

(defmethod {query-row postgresql-statement}
  (lambda (self)
    (&postgresql-statement-row self)))

(defmethod {columns postgresql-statement}
   (lambda (self)
     (map car (&postgresql-statement-cols self))))

(defmethod {query-fini postgresql-statement}
   postgresql-statement::reset)

(def (postgresql-statement-in-query? stmt)
  (!unnamed? (statement-e stmt)))

(defmethod {query-start postgresql-statement}
  (lambda (self)
    (wrap-notice-handler
     self
     (cut unless (postgresql-statement-in-query? self)
          (with ((postgresql-statement name _ conn _ _ _ _ _ _ bind) self)
            (let ((values inp token) (postgresql-query! conn name (or bind [])))
              (set! (&postgresql-command-token self) token)
              (set! (&postgresql-command-input self) inp)
              (set! (&postgresql-statement-row self) #f)))))))

(defmethod {query-fetch postgresql-statement}
  (lambda (self)
    (def (result->row cols)
      (let (res (map result->value cols (&postgresql-statement-cols self)))
        (cond
         ((null? res) #f)
         ((null? (cdr res))
          (car res))
         (else
          (list->vector res)))))

    (def (result->value res col)
      (and res ; NULL is #f
           (let (type-oid (list-ref col 3))
             (value-e res type-oid))))

    (def (value-e res type-oid)
      (cond
       ((catalog-deserializer (current-catalog) type-oid)
        => (cut <> res))
       (else res)))

    (cond
     ((&postgresql-command-input self)
      => (lambda (inp)
           (let again ()
             (let (next (channel-get inp))
               (cond
                ((or (eof-object? next) (postgresql-CommandComplete? next))
                 (when (postgresql-CommandComplete? next)
                     (set! (&postgresql-command-complete self)
                       (postgresql-message-args next)))
                 (set! (&postgresql-command-token self) #f)
                 (set! (&postgresql-command-input self) #f)
                 (set! (&postgresql-statement-row self) #f)
                 iter-end)
                ((exception? next)
                 (raise next))
                ((query-token? next)
                 (postgresql-continue! (&postgresql-command-conn self) next)
                 (again))
                (else
                 (let (row (result->row next))
                   (set! (&postgresql-statement-row self) row)
                   (void))))))))
     (else iter-end))))

(defmethod {prepare postgresql-connection}
  (lambda (self sql)
    (let* ((name (symbol->string (gensym 'stmt)))
           ((values params cols)
            (postgresql-prepare-statement! self name sql)))
      (make-postgresql-statement self name: name cols params: params))))

(defmethod {bind postgresql-statement}
  (lambda (self . args)
    (def (value->binding type-oid arg)
      (cond
       ((not arg)
        ;; #f is NULL normally ... unless it's a BOOL
        (if (fx= type-oid 16)
          (serialize-boolean arg)
          #f))
       ((string? arg) arg)
       ((catalog-serializer (current-catalog) type-oid)
        => (cut <> arg))
       (else
        (raise-bad-argument 'postgresql "catalog parameter: unknown" type-oid arg))))
    (let* ((params (&postgresql-statement-params self))
           (bind (map value->binding params args)))
      (set! (&postgresql-statement-bind self) bind)
      (void))))

(defmethod {clear postgresql-statement}
  (lambda (self)
    (set! (&postgresql-statement-bind self) #f)))

(defmethod {exec postgresql-statement}
  (lambda (self)
    (with ((postgresql-statement name _ conn _ _ _ _ _ _ bind) self)
      (wrap-notice-handler self
       (cut let (comp (postgresql-exec! conn name (or bind [])))
                (begin0 comp
                  (set! (&postgresql-command-complete self) comp)))))))
(defmethod {finalize postgresql-statement}
  (lambda (self)
    (with ((postgresql-statement name _ conn) self)
      (postgresql-statement::reset self)
      (set! (&postgresql-command-complete self) #f)
      (postgresql-close-statement! conn name))))

(defmethod {reset postgresql-statement}
  (lambda (self)
    (postgresql-command::reset self)
    (set! (&postgresql-statement-row self) #f)))

(defstruct (postgresql-query postgresql-command) (str cmd greedy)
  constructor: :init!
  print: (greedy str)
  final: #t unchecked: #t)

(defmethod {:init! postgresql-query}
  (lambda (self conn str greedy: (greedy #t))
    (postgresql-command:::init! self conn name: unnamed-command)
    (set! (&postgresql-query-str self) str)
    (set! (&postgresql-query-greedy self) greedy)))

(defmethod {exec postgresql-query}
  (lambda (self)
    (postgresql-query::query-start self)
    (wrap-notice-handler self
     (cut with ((postgresql-query _ conn _ _ _ _ token str) self)
          (postgresql-reset! conn token)))))

(defmethod {query-row postgresql-query} &postgresql-query-cmd)

(defmethod {query-start postgresql-query}
  (lambda (self)
    (wrap-notice-handler self
     (cut with ((postgresql-query _ _ conn _ _ _ _ str) self)
          (let ((values inp token) (postgresql-simple-query! conn str))
            (set! (&postgresql-command-token self) token)
            (set! (&postgresql-command-input self) inp))))))

(defmethod {query-fetch postgresql-query}
  (lambda (self)
    (def greedy-in #f)
    (wrap-notice-handler self
     (cut with ((postgresql-query _ _ conn _ _ inp token _ cmd greedy) self)
      (if (not inp) iter-end
          (let again ()
             (let (next (channel-get inp))
               (cond
                ((eof-object? next)
                 (set! (&postgresql-command-token self) #f)
                 (set! (&postgresql-command-input self) #f)
                 (set! (&postgresql-command-complete self) #t)
                 iter-end)
                ((exception? next)
                 (raise next))
                ((query-token? next)
                 (postgresql-continue! (&postgresql-command-conn self) next)
                 (again))
                ((postgresql-CommandComplete? next)
                 (let ((comp (postgresql-message-args next)))
                   (when (and cmd (not greedy))
                     (set! (&postgresql-command-input cmd) #f))
                   (when greedy-in
                     (channel-sync greedy-in next)
                     (set! greedy-in #f))
                   (cond ((or (not cmd) (&postgresql-command-complete cmd))
                          (set! (&postgresql-query-cmd self)
                            (make-postgresql-command conn complete: comp)))
                         (else
                          (set! (&postgresql-command-complete cmd) comp)))
                   (cond ((not greedy)
                            (set! (&postgresql-query-cmd self) #f)
                            (set! cmd #f)
                            (again))
                         (else
                          (void)))))
                ((postgresql-RowDescription? next)
                 (let (stmt (make-postgresql-statement
                             conn (postgresql-message-args next)))
                   (set! (&postgresql-query-cmd self) stmt)
                   (set! cmd stmt)
                   (cond ((not greedy)
                          (set! (&postgresql-command-input stmt) inp)
                          (void))
                         (else
                          (set! greedy-in (make-channel))
                          (set! (&postgresql-command-input stmt) greedy-in)
                          (again)))))
                (else
                 (when greedy-in (channel-sync greedy-in next))
                 (again))))))))))

;;; catalog/pg_type.h
(defstruct catalog (s d)
  constructor: :init!
  final: #t)

(defmethod {:init! catalog}
  (lambda (self . mixin)
    (let ((s (make-hash-table-eq))
          (d (make-hash-table-eq)))
      (for-each
        (lambda (mixin)
          (hash-merge! s (catalog-s mixin))
          (hash-merge! d (catalog-d mixin)))
        mixin)
      (struct-instance-init! self s d))))

(def (catalog-serializer c oid)
  (hash-get (catalog-s c) oid))

(def (catalog-deserializer c oid)
  (hash-get (catalog-d c) oid))

(defrules defcatalog ()
  ((_ (name mixin ...) (oids serialize deserialize) ...)
   (begin
     (def name (make-catalog mixin ...))
     (defcatalog-type name oids serialize deserialize) ...))
  ((recur name . body)
   (identifier? #'name)
   (recur (name) . body)))

(defrules defcatalog-type ()
  ((_ name (oid ...) serialize deserialize)
   (begin
     (hash-put! (catalog-s name) oid serialize) ...
     (hash-put! (catalog-d name) oid deserialize) ...)))

(defrules defcatalog-default ()
  ((_ clause ...)
   (begin
     (defcatalog-type default-catalog . clause)
     ...)))

(def (serialize-boolean arg)
  (if arg "t" "f"))

(def (deserialize-boolean str)
  (if (member str '("t" "true" "TRUE" "y" "yes" "on" "1")) #t #f))

(def (serialize-date date)
  (date->string date "~Y-~m-~d"))

(def (deserialize-date str)
  (string->date str "~Y-~m-~d"))

(def (serialize-timestamp date)
  (date->string date "~Y-~m-~d ~H:~M:~S"))

(def (deserialize-timestamp str)
  (string->date str "~Y-~m-~d ~H:~M:~S"))

(def (serialize-timestamptz date)
  (date->string date "~Y-~m-~d ~H:~M:~S~z"))

(def (deserialize-timestamptz str)
  (string->date str "~Y-~m-~d ~H:~M:~S~z"))

(def (identity-string obj)
  (if (string? obj) obj
      (raise-bad-argument 'postgresql "string" obj)))

(defcatalog default-catalog
  ;; BOOLOID
  ((16) serialize-boolean deserialize-boolean)
  ;; INT8OID INT2OID INT4OID FLOAT4OID FLOAT8OID NUMERICOID
  ((20 21 23 700 701 1700) number->string string->number)
  ;; CHAROID TEXTOID BPCHAROID VARCHAROID
  ((18 25 1042 1043) identity-string identity)
  ;; DATEOID
  ((1082) serialize-date deserialize-date)
  ;; TIMESTAMPOID
  ((1114) serialize-timestamp deserialize-timestamp)
  ;; TIMESTAMPTZOID
  ((1184) serialize-timestamptz deserialize-timestamptz)

  ;; Add more from the catalog here depending on actual needs...
  ;; - automagic json serialization/deserialization?
  ;;   add JSONOID with json-object->string string->json-object
  ;; - automagic uuid conversion?
  ;;   add UUIDOID with uuid->string string->uuid
  )

(def current-catalog
  (make-parameter default-catalog))
