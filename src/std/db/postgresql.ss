;;; -*- Gerbil -*-
;;; (C) vyzo
;;; PostgreSQL dbi interface
package: std/db

(import :std/db/dbi
        :std/db/postgresql-driver
        :std/iter
        :std/misc/channel
        :std/srfi/19)
(export postgresql-connect
        defcatalog
        defcatalog-default
        default-catalog
        current-catalog)

(defstruct (postgresql-connection connection) ()
  final: #t)
(defstruct (postgresql-statement statement) (conn params cols bind row inp token)
  constructor: :init!
  final: #t)

(defmethod {:init! postgresql-statement}
  (lambda (self name conn params cols)
    (struct-instance-init! self name conn params cols)))

(def (postgresql-connect host: (host "127.0.0.1")
                         port: (port 5432)
                         user: user
                         passwd: passwd
                         db: (db #f))
  (let (driver (postgresql-connect! host port user passwd db))
    (make-postgresql-connection driver)))

(defmethod {close postgresql-connection}
  (lambda (self)
    (postgresql-close! self)))

(defmethod {prepare postgresql-connection}
  (lambda (self sql)
    (let* ((name (symbol->string (gensym 'stmt)))
           ((values params cols)
            (postgresql-prepare-statement! self name sql)))
      (make-postgresql-statement name self params cols))))

(defmethod {finalize postgresql-statement}
  (lambda (self)
    (with ((postgresql-statement name conn) self)
      (postgresql-statement::reset self)
      (postgresql-close-statement! conn name))))

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
        (error "Cannot bind; unknown parameter type" type-oid arg))))

    (let* ((params (postgresql-statement-params self))
           (bind (map value->binding params args)))
      (set! (postgresql-statement-bind self) bind)
      (void))))

(defmethod {clear postgresql-statement}
  (lambda (self)
    (set! (postgresql-statement-bind self) #f)))

(defmethod {reset postgresql-statement}
  (lambda (self)
    (alet (token (postgresql-statement-token self))
      (postgresql-reset! (postgresql-statement-conn self) token)
      (set! (postgresql-statement-token self) #f)
      (set! (postgresql-statement-inp self) #f)
      (set! (postgresql-statement-row self) #f))))

(defmethod {exec postgresql-statement}
  (lambda (self)
    (with ((postgresql-statement name conn _ _ bind) self)
      (postgresql-exec! conn name (or bind [])))))

(defmethod {query-start postgresql-statement}
  (lambda (self)
    (with ((postgresql-statement name conn _ _ bind) self)
      (let ((values inp token) (postgresql-query! conn name (or bind [])))
        (set! (postgresql-statement-token self) token)
        (set! (postgresql-statement-inp self) inp)
        (set! (postgresql-statement-row self) #f)))))

(defmethod {query-fetch postgresql-statement}
  (lambda (self)
    (def (result->row cols)
      (let (res (map result->value cols (postgresql-statement-cols self)))
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
     ((postgresql-statement-inp self)
      => (lambda (inp)
           (let again ()
             (let (next (channel-get inp))
               (cond
                ((eof-object? next)
                 (set! (postgresql-statement-token self) #f)
                 (set! (postgresql-statement-inp self) #f)
                 (set! (postgresql-statement-row self) #f)
                 iter-end)
                ((exception? next)
                 (raise next))
                ((query-token? next)
                 (postgresql-continue! (postgresql-statement-conn self) next)
                 (again))
                (else
                 (let (row (result->row next))
                   (set! (postgresql-statement-row self) row)
                   (void))))))))
     (else iter-end))))

(defmethod {query-row postgresql-statement}
  (lambda (self)
    (postgresql-statement-row self)))

(defmethod {query-fini postgresql-statement}
  postgresql-statement::reset)

(defmethod {columns postgresql-statement}
  (lambda (self)
    (map car (postgresql-statement-cols self))))

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
      (error "Bad argument; expected string" obj)))

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
