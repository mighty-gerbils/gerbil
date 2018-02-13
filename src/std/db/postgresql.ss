;;; -*- Gerbil -*-
;;; (C) vyzo
;;; PostgreSQL dbi interface
package: std/db

(import :std/db/dbi
        :std/db/postgresql-driver
        :std/iter
        :std/srfi/19)
(export postgresql-connect defcatalog)

(defstruct (postgresql-connection connection) ()
  final: #t)
(defstruct (postgresql-statement statement) (conn params cols bind row inp)
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
      (postgresql-close-statement! conn name)
      (postgresql-statement::reset self))))

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
       ((hash-get +pg-catalog-serialize+ type-oid)
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
    (set! (postgresql-statement-inp self) #f)
    (set! (postgresql-statement-row self) #f)))

(defmethod {exec postgresql-statement}
  (lambda (self)
    (with ((postgresql-statement name conn _ _ bind) self)
      (postgresql-exec! conn name (or bind [])))))

(defmethod {query-start postgresql-statement}
  (lambda (self)
    (with ((postgresql-statement name conn _ _ bind) self)
      (let (inp (postgresql-query! conn name (or bind [])))
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
       ((hash-get +pg-catalog-deserialize+ type-oid)
        => (cut <> res))
       (else res)))

    (cond
     ((postgresql-statement-inp self)
      => (lambda (inp)
           (let again ()
             (let (next (read inp))
               (cond
                ((eof-object? next)
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
(def +pg-catalog-serialize+
  (make-hash-table-eq))
(def +pg-catalog-deserialize+
  (make-hash-table-eq))

(defrules defcatalog ()
  ((_ (oids serialize deserialize) ...)
   (begin
     (defcatalog-type oids serialize deserialize) ...)))

(defrules defcatalog-type ()
  ((_ (oid ...) serialize deserialize)
   (begin
     (hash-put! +pg-catalog-serialize+ oid serialize) ...
     (hash-put! +pg-catalog-deserialize+ oid deserialize) ...)))

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

(defcatalog
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
