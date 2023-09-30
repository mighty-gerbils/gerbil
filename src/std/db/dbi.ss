;;; -*- Gerbil -*-
;;; (C) vyzo
;;; Generic SQL database interface

(import (only-in :gerbil/gambit make-will)
        :std/sugar
        :std/interface
        :std/contract
        (only-in :std/io Closer)
        :std/iter
        :std/generic
        :std/error)
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

;; SQL DB Driver interface
(interface (Driver Closer)
  ;; prepare an sql statment
  (prepare sql))

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

(defstruct connection (e driver txn-begin txn-commit txn-abort)
  constructor: :init!
  unchecked: #t)
(defstruct statement (e i)
  constructor: :init!
  unchecked: #t)

(defmethod {:init! connection}
  (lambda (self e)
    (using (self :- connection)
      (set! self.e e)
      (set! self.driver (Driver self)))))

(defmethod {:init! statement}
  (lambda (self e)
    (using (self :- statement)
      (set! self.e e)
      (set! self.i (Statement self)))))

(deferror-class SQLError () sql-error?)
(defraise/context (raise-sql-error where what irritants ...)
  (SQLError what irritants: [irritants ...]))

(def (sql-connect connect . args)
  (let (conn (apply connect args))
    (make-will conn sql-close)
    conn))

(def (sql-close conn)
  (using ((conn : connection)
          (driver conn.driver :- Driver))
    (when conn.e
      (try
       (when conn.txn-begin
         (with-catch void (lambda () (sql-finalize conn.txn-begin))))
       (when conn.txn-commit
         (with-catch void (lambda () (sql-finalize conn.txn-commit))))
       (when conn.txn-abort
         (with-catch void (lambda () (sql-finalize conn.txn-abort))))
       (driver.close)
       (finally
        (set! conn.e #f)
        (set! conn.driver #f)
        (set! conn.txn-begin #f)
        (set! conn.txn-commit #f)
        (set! conn.txn-abort #f))))))

(defmethod {destroy connection}
  sql-close)

(def (sql-txn-do conn sql getf setf)
  (using ((conn : connection)
          (driver conn.driver :- Driver))
    (cond
     ((not conn.e)
      (raise-context-error sql-txn-do "Invalid operation; connection closed" conn))
     ((getf conn) => sql-exec)
     (else
      (let (stmt (driver.prepare sql))
        (setf conn stmt)
        (sql-exec stmt))))))

(def (sql-txn-begin conn)
  (sql-txn-do conn "BEGIN TRANSACTION" &connection-txn-begin &connection-txn-begin-set!))

(def (sql-txn-commit conn)
  (sql-txn-do conn "COMMIT" &connection-txn-commit &connection-txn-commit-set!))

(def (sql-txn-abort conn)
  (sql-txn-do conn "ROLLBACK" &connection-txn-abort &connection-txn-abort-set!))

(def (sql-prepare conn text)
  (using ((conn : connection)
          (text :~ string?)
          (driver conn.driver :- Driver))
    (if conn.e
      (let (stmt (driver.prepare text))
        (make-will stmt sql-finalize)
        stmt)
      (raise-context-error sql-prepare "Invalid operation; connection closed" conn))))

(def (sql-finalize stmt)
  (using ((stmt : statement)
          (i stmt.i :- Statement))
    (when stmt.e
      (try (i.finalize)
           (finally
            (set! stmt.e #f)
            (set! stmt.i #f))))))

(defmethod {destroy statement}
  sql-finalize)

(def (sql-bind stmt . args)
  (using (stmt : statement)
    (if stmt.e
      (apply &Statement-bind stmt.i args)
      (raise-context-error sql-bind "Invalid operation; statement finalized" stmt))))

(def (sql-clear stmt)
  (using ((stmt : statement)
          (i stmt.i :- Statement))
    (if stmt.e
      (i.clear)
      (raise-context-error sql-clear "Invalid operation; statement finalized" stmt))))

(def (sql-reset stmt)
  (using ((stmt : statement)
          (i stmt.i :- Statement))
    (if stmt.e
      (i.reset)
      (raise-context-error sql-reset "Invalid operation; statement finalized" stmt))))

(def (sql-reset/clear stmt)
  (using ((stmt : statement)
          (i stmt.i :- Statement))
    (if stmt.e
      (begin
        (i.reset)
        (i.clear))
      (raise-context-error sql-reset/clear "Invalid operation; statement finalized" stmt))))

(def (sql-eval-e eval-e conn sql args)
  (let (stmt (sql-prepare conn sql))
    (try
      (unless (null? args)
        (apply sql-bind stmt args))
      (eval-e stmt)
      (finally (sql-finalize stmt)))))

(def (sql-eval conn sql . args)
  (sql-eval-e sql-exec conn sql args))

(def (sql-eval-query conn sql . args)
  (sql-eval-e sql-query conn sql args))

(def (sql-exec stmt)
  (using ((stmt : statement)
          (i stmt.i :- Statement))
    (if stmt.e
      (begin
        (i.exec)
        (i.reset)
        (void))
      (raise-context-error sql-exec "Invalid operation; statement finalized" stmt))))

(def (sql-query stmt)
  (for/collect (row (in-sql-query stmt)) row))

;;; iterators
(defmethod (:iter (stmt statement))
  (in-sql-query stmt))

(def (in-sql-query stmt)
  (using (stmt : statement)
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
          (set! (iterator-e it) #f))))

    (using (i stmt.i :- Statement)
      (if stmt.e
        (let (it (make-iterator i next fini))
          (make-will it fini)
          (i.query-start)
          it)
        (raise-context-error in-sql-query "Invalid operation; statement finalized" stmt)))))

;;; metadata
(def (sql-columns stmt)
  (using ((stmt : statement)
          (i stmt.i :- Statement))
    (if stmt.e
      (i.columns)
      (raise-context-error sql-columns "Invalid operation; statement finalized" stmt))))
