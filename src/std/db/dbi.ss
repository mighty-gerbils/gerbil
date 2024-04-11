;;; -*- Gerbil -*-
;;; (C) vyzo
;;; Generic SQL database interface

(import (only-in :gerbil/gambit make-will)
        :std/sugar
        (only-in :std/io Closer)
        :std/iter
        :std/error
        :std/generic)
(export
  (struct-out connection statement SQLError)
  connection:::init!
  statement:::init!
  raise-sql-error
  sql-error?
  sql-connect sql-close sql-prepare
  sql-bind sql-clear sql-reset sql-reset/clear sql-finalize
  sql-eval sql-eval-query
  sql-exec sql-query in-sql-query sql-columns
  sql-txn-begin sql-txn-commit sql-txn-abort)

(deftype @statement statement)

;; SQL DB Driver interface
(interface (Driver Closer)
  ;; prepare an sql statment
  (prepare (sql : :string)) => @statement)

;; SQL (preared) Statement interface
(interface Statement
  ;; bind arguments to a statement
  (bind . args)
  ;; execute a statement
  (exec)
  ;; reset a statement
  (reset)
  ;; clear a statement
  (clear)
  ;; finalize a statement; it will no longer be used and should be discarded.
  (finalize)
  ;; start a query
  (query-start)
  ;; fetch the next row
  (query-fetch)
  ;; get the current row
  (query-row)
  ;; finish the query
  (query-fini)
  ;; query value metadata
  (columns))

(defstruct connection (e (driver :- Driver) txn-begin txn-commit txn-abort)
  constructor: :init!)
(defstruct statement (e (i :- Statement))
  constructor: :init!)

(defmethod {:init! connection}
  (lambda (self e)
    (set! self.e e)
    (set! self.driver (Driver self))))

(defmethod {:init! statement}
  (lambda (self e)
    (set! self.e e)
    (set! self.i (Statement self))))

(deferror-class SQLError () sql-error?)
(defraise/context (raise-sql-error where what irritants ...)
  (SQLError what irritants: [irritants ...]))

(def (sql-connect connect . args)
  (let (conn (apply connect args))
    (make-will conn sql-close)
    conn))

(def (sql-close (conn : connection))
  (when conn.e
    (try
     (when conn.txn-begin
       (with-catch void (lambda () (sql-finalize conn.txn-begin))))
     (when conn.txn-commit
       (with-catch void (lambda () (sql-finalize conn.txn-commit))))
     (when conn.txn-abort
       (with-catch void (lambda () (sql-finalize conn.txn-abort))))
     (conn.driver.close)
     (finally
      (set! conn.e #f)
      (set! conn.txn-begin #f)
      (set! conn.txn-commit #f)
      (set! conn.txn-abort #f)))))

(defmethod {destroy connection}
  sql-close)

(def (sql-txn-do (conn : connection)
                 (sql  : :string)
                 (getf : :procedure)
                 (setf : :procedure))
  (cond
   ((not conn.e)
    (raise-context-error sql-txn-do "invalid operation; connection closed" conn))
   ((getf conn) => sql-exec)
   (else
    (let (stmt (conn.driver.prepare sql))
      (setf conn stmt)
      (sql-exec stmt)))))

(def (sql-txn-begin conn)
  (sql-txn-do conn "BEGIN TRANSACTION" &connection-txn-begin &connection-txn-begin-set!))

(def (sql-txn-commit conn)
  (sql-txn-do conn "COMMIT" &connection-txn-commit &connection-txn-commit-set!))

(def (sql-txn-abort conn)
  (sql-txn-do conn "ROLLBACK" &connection-txn-abort &connection-txn-abort-set!))

(def (sql-prepare (conn : connection) (text : :string))
  => statement
  (if conn.e
    (let (stmt (conn.driver.prepare text))
      (make-will stmt sql-finalize)
      stmt)
    (raise-context-error sql-prepare "invalid operation; connection closed" conn)))

(def (sql-finalize (stmt : statement))
  (when stmt.e
    (try (stmt.i.finalize)
         (finally
          (set! stmt.e #f)))))

(defmethod {destroy statement}
  sql-finalize)

(def (sql-bind (stmt : statement) . args)
  (if stmt.e
    (apply &Statement-bind stmt.i args)
    (raise-context-error sql-bind "invalid operation; statement finalized" stmt)))

(def (sql-clear (stmt : statement))
  (if stmt.e
    (stmt.i.clear)
    (raise-context-error sql-clear "invalid operation; statement finalized" stmt)))

(def (sql-reset (stmt : statement))
  (if stmt.e
    (stmt.i.reset)
    (raise-context-error sql-reset "invalid operation; statement finalized" stmt)))

(def (sql-reset/clear (stmt : statement))
  (if stmt.e
    (begin
      (stmt.i.reset)
      (stmt.i.clear))
    (raise-context-error sql-reset/clear "invalid operation; statement finalized" stmt)))

(def (sql-eval-e (eval-e : :procedure)
                 (conn   : connection)
                 (sql    : :string)
                 (args   : :list))
  (let (stmt (sql-prepare conn sql))
    (try
      (unless (null? args)
        (apply sql-bind stmt args))
      (eval-e stmt)
      (finally (sql-finalize stmt)))))

(def (sql-eval (conn : connection) (sql : :string) . args)
  (sql-eval-e sql-exec conn sql args))

(def (sql-eval-query (conn : connection) (sql : :string) . args)
  (sql-eval-e sql-query conn sql args))

(def (sql-exec (stmt : statement))
  (if stmt.e
    (begin
      (stmt.i.exec)
      (stmt.i.reset)
      (void))
    (raise-context-error sql-exec "invalid operation; statement finalized" stmt)))

(def (sql-query stmt)
  (for/collect (row (in-sql-query stmt)) row))

;;; iterators
(defmethod (:iter (stmt statement))
  (in-sql-query stmt))

(def (in-sql-query (stmt : statement))
  (def (next it)
    (using ((it :- iterator)
            (i it.e :- Statement))
      (let (r (i.query-fetch))
        (if (iter-end? r)
          iter-end
          (i.query-row)))))

  (def (fini it)
    (using ((it :- iterator)
            (i it.e :- Statement))
      (when i
        (i.query-fini)
        (set! it.e #f))))

  (if stmt.e
    (let (it (make-iterator stmt.i next fini))
      (make-will it fini)
      (stmt.i.query-start)
      it)
    (raise-context-error in-sql-query "invalid operation; statement finalized" stmt)))

;;; metadata
(def (sql-columns (stmt : statement))
  (if stmt.e
    (stmt.i.columns)
    (raise-context-error sql-columns "invalid operation; statement finalized" stmt)))
