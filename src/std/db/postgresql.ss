;;; -*- Gerbil -*-
;;; (C) vyzo
;;; PostgreSQL driver and dbi interface
package: std/db

(import :gerbil/gambit/threads
        :std/db/dbi
        :std/iter
        :std/actor)
(export postgresql-connect)

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
                         passwd: (passwd #f)
                         db: (db #f))
  (let (driver (postgresql-connect! host port user passwd db))
    (make-postgresql-connection driver)))

;;; dbi
(defmethod {close postgresql-connection}
  (lambda (self)
    (postgreql-close! self)))

(defmethod {prepare postgresql-connection}
  (lambda (self sql)
    (let* ((name (symbol->string (gensym 'stmt)))
           ((values params cols)
            (postgresql-prepare-statement! self name)))
      (make-postgresql-statement name self params cols))))

(defmethod {finalize postgresql-statement}
  (lambda (self)
    (with ((postgresql-statement name conn) self)
      (postgresql-close-statement! conn name)
      (postgresql-statement::reset self))))

(defmethod {bind postgresql-statement}
  (lambda (self . args)
    (error "XXX IMPLEMENT ME: postgresql-statement::bind")))

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
    (cond
     ((postgresql-statement-inp self)
      => (lambda (inp)
           (let (row (read inp))
             (if (eof-object? row)
               (begin
                 (set! (postgresql-statement-inp self) #f)
                 (set! (postgresql-statement-row self) #f)
                 iter-end)
               (begin
                 (set! (postgresql-statement-row self) row)
                 (void))))))
     (else iter-end))))

(defmethod {query-row postgresql-statement}
  (lambda (self)
    (postgresql-statement-row self)))

(defmethod {query-fini postgresql-statement}
  (lambda (self)
    (alet (inp (postgresql-statement-inp self))
      (postgresql-drain! inp))
    (postgresql-statement::reset self)))

(defmethod {columns postgresql-statement}
  (lambda (self)
    (error "XXX IMPLEMENT ME: postgresql-statement::columns")))

;;; driver interface
(defproto postgresql
  (prepare name sql)
  (exec name params)
  (query name params)
  event:
  (close name)
  (shutdown))

(defrules with-driver ()
  ((_ conn driver body ...)
   (cond
    ((connection-e conn)
     => (lambda (driver) body ...))
    (else
     (error "connection has been closed" conn)))))

(def (postgresql-prepare-statement! conn name sql)
  (with-driver conn driver
    (!!postgresql.prepare driver name sql)))

(def (postgresql-close-statement! conn name)
  (alet (driver (connection-e conn))
    (!!postgresql.close driver name)))

(def (postgresql-exec! conn name bind)
  (with-driver conn driver
    (!!postgresql.exec driver name bind)))

(def (postgresql-query! conn name bind)
  (with-driver conn driver
    (!!postgresql.query driver name bind)))

(def (postgreql-close! conn)
  (alet (driver (connection-e conn))
    (!!postgresql.shutdown driver)))

(def (postgresql-drain! inp)
  (def (drain inp)
    (let lp ()
      (unless (eof-object? (read inp))
        (lp))))
  (spawn/name 'postgresql-drain drain inp))

;;; driver implementation
(def (postgresql-connect! host port user passwd db)
  (error "XXX IMPLEMENT ME: postgresql-connect!"))
