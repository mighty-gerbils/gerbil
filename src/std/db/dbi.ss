;;; -*- Gerbil -*-
;;; (C) vyzo
;;; Generic SQL database interface

(import (only-in :gerbil/gambit make-will)
        :std/sugar
        :std/interface
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
    (set! (&connection-e self) e)
    (set! (&connection-driver self) (Driver self))))

(defmethod {:init! statement}
  (lambda (self e)
    (set! (&statement-e self) e)
    (set! (&statement-i self) (Statement self))))

(deferror-class SQLError () sql-error?)
(defraise/context (raise-sql-error where what irritants ...)
  (SQLError what where: where irritants: [irritants ...]))

(def (sql-connect connect . args)
  (let (conn (apply connect args))
    (make-will conn sql-close)
    conn))

(def (sql-close conn)
  (with ((connection e driver txn-begin txn-commit txn-abort) conn)
    (when e
      (try
       (when txn-begin
         (with-catch void (lambda () (sql-finalize txn-begin))))
       (when txn-commit
         (with-catch void (lambda () (sql-finalize txn-commit))))
       (when txn-abort
         (with-catch void (lambda () (sql-finalize txn-abort))))
       (&Driver-close driver)
       (finally
        (set! (connection-e conn) #f)
        (set! (connection-driver conn) #f)
        (set! (connection-txn-begin conn) #f)
        (set! (connection-txn-commit conn) #f)
        (set! (connection-txn-abort conn) #f))))))

(defmethod {destroy connection}
  sql-close)

(def (sql-txn-do conn sql getf setf)
  (with ((connection e driver) conn)
    (cond
     ((not e)
      (raise-context-error 'sql-txn-do "Invalid operation; connection closed" conn))
     ((getf conn) => sql-exec)
     (else
      (let (stmt (&Driver-prepare driver sql))
        (setf conn stmt)
        (sql-exec stmt))))))

(def (sql-txn-begin conn)
  (sql-txn-do conn "BEGIN TRANSACTION" connection-txn-begin connection-txn-begin-set!))

(def (sql-txn-commit conn)
  (sql-txn-do conn "COMMIT" connection-txn-commit connection-txn-commit-set!))

(def (sql-txn-abort conn)
  (sql-txn-do conn "ROLLBACK" connection-txn-abort connection-txn-abort-set!))

(def (sql-prepare conn text)
  (with ((connection e driver) conn)
    (if e
      (let (stmt (&Driver-prepare driver text))
        (make-will stmt sql-finalize)
        stmt)
      (raise-context-error 'sql-prepare "Invalid operation; connection closed" conn))))

(def (sql-finalize stmt)
  (with ((statement e i) stmt)
    (when e
      (try (&Statement-finalize i)
           (finally
            (set! (&statement-e stmt) #f)
            (set! (&statement-i stmt) #f))))))

(defmethod {destroy statement}
  sql-finalize)

(def (sql-bind stmt . args)
  (with ((statement e i) stmt)
    (if e
      (apply &Statement-bind i args)
      (raise-context-error 'sql-bind "Invalid operation; statement finalized" stmt))))

(def (sql-clear stmt)
  (with ((statement e i) stmt)
    (if e
      (&Statement-clear i)
      (raise-context-error 'sql-clear "Invalid operation; statement finalized" stmt))))

(def (sql-reset stmt)
  (with ((statement e i) stmt)
    (if e
      (&Statement-reset i)
      (raise-context-error 'sql-reset "Invalid operation; statement finalized" stmt))))

(def (sql-reset/clear stmt)
  (with ((statement e i) stmt)
    (if e
      (begin
        (&Statement-reset i)
        (&Statement-clear i))
      (raise-context-error 'sql-reset/clear "Invalid operation; statement finalized" stmt))))

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
  (with ((statement e i) stmt)
    (if e
      (begin
        (&Statement-exec i)
        (&Statement-reset i)
        (void))
      (raise-context-error 'sql-exec "Invalid operation; statement finalized" stmt))))

(def (sql-query stmt)
  (for/collect (row (in-sql-query stmt)) row))

;;; iterators
(defmethod (:iter (stmt statement))
  (in-sql-query stmt))

(def (in-sql-query stmt)
  (def (next it)
    (with ((iterator i) it)
      (let (r (&Statement-query-fetch i))
        (if (iter-end? r)
          iter-end
          (&Statement-query-row i)))))

  (def (fini it)
    (with ((iterator i) it)
      (when i
        (&Statement-query-fini i)
        (set! (iterator-e it) #f))))

  (with ((statement e i) stmt)
    (if e
      (let (it (make-iterator i next fini))
        (make-will it fini)
        (&Statement-query-start i)
        it)
      (raise-context-error 'in-sql-query "Invalid operation; statement finalized" stmt))))

;;; metadata
(def (sql-columns stmt)
  (with ((statement e i) stmt)
    (if e
      (&Statement-columns i)
      (raise-context-error 'sql-columns "Invalid operation; statement finalized" stmt))))
