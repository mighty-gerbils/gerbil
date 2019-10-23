;;; -*- Gerbil -*-
;;; (C) vyzo
;;; Generic SQL database interface

(import (only-in :gerbil/gambit/misc make-will)
        :std/sugar
        :std/iter
        :std/generic
        :std/error)
(export
  (struct-out connection statement sql-error)
  connection:::init!
  raise-sql-error
  sql-connect sql-close sql-prepare
  sql-bind sql-clear sql-reset sql-reset/clear sql-finalize
  sql-eval sql-eval-query
  sql-exec sql-query in-sql-query sql-columns
  sql-txn-begin sql-txn-commit sql-txn-abort)

(defstruct connection (e txn-begin txn-commit txn-abort)
  constructor: :init!)
(defstruct statement (e))

(defmethod {:init! connection}
  (lambda (self e)
    (struct-instance-init! self e)))

(defstruct (sql-error <error>) ())

(def (raise-sql-error where what . irritants)
  (raise (make-sql-error what irritants where)))

(def (sql-connect connect . args)
  (let (conn (apply connect args))
    (make-will conn sql-close)
    conn))

(def (sql-close conn)
  (with ((connection e txn-begin txn-commit txn-abort) conn)
    (when e
      (try
       (when txn-begin
         (with-catch void (lambda () {finalize txn-begin})))
       (when txn-commit
         (with-catch void (lambda () {finalize txn-commit})))
       (when txn-abort
         (with-catch void (lambda () {finalize txn-abort})))
       {close conn}
       (finally
        (set! (connection-e conn) #f)
        (set! (connection-txn-begin conn) #f)
        (set! (connection-txn-commit conn) #f)
        (set! (connection-txn-abort conn) #f))))))

(defmethod {destroy connection}
  sql-close)

(def (sql-txn-do conn sql getf setf)
  (with ((connection e) conn)
    (cond
     ((not e)
      (error "Invalid operation; connection closed" conn))
     ((getf conn) => sql-exec)
     (else
      (let (stmt {prepare conn sql})
        (setf conn stmt)
        (sql-exec stmt))))))

(def (sql-txn-begin conn)
  (sql-txn-do conn "BEGIN TRANSACTION" connection-txn-begin connection-txn-begin-set!))

(def (sql-txn-commit conn)
  (sql-txn-do conn "COMMIT" connection-txn-commit connection-txn-commit-set!))

(def (sql-txn-abort conn)
  (sql-txn-do conn "ROLLBACK" connection-txn-abort connection-txn-abort-set!))

(def (sql-prepare conn text)
  (if (connection-e conn)
    (let (stmt {prepare conn text})
      (make-will stmt sql-finalize)
      stmt)
    (error "Invalid operation; connection closed" conn)))

(def (sql-finalize stmt)
  (when (statement-e stmt)
    (try {finalize stmt}
      (finally
       (set! (statement-e stmt) #f)))))

(defmethod {destroy statement}
  sql-finalize)

(def (sql-bind stmt . args)
  (if (statement-e stmt)
    (apply call-method stmt 'bind args)
    (error "Invalid operation; statement finalized" stmt)))

(def (sql-clear stmt)
  (if (statement-e stmt)
    {clear stmt}
    (error "Invalid operation; statement finalized" stmt)))

(def (sql-reset stmt)
  (if (statement-e stmt)
    {reset stmt}
    (error "Invalid operation; statement finalized" stmt)))

(def (sql-reset/clear stmt)
  (if (statement-e stmt)
    (begin {reset stmt} {clear stmt})
    (error "Invalid operation; statement finalized" stmt)))

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
  (if (statement-e stmt)
    (begin
      {exec stmt}
      {reset stmt}
      #!void)
    (error "Invalid operation; statement finalized" stmt)))

(def (sql-query stmt)
  (for/collect (row (in-sql-query stmt)) row))

;;; iterators
(defmethod (:iter (stmt statement))
  (in-sql-query stmt))

(def (in-sql-query stmt)
  (def (next it)
    (with ((iterator stmt) it)
      (let (r {query-fetch stmt})
        (if (iter-end? r)
          iter-end
          {query-row stmt}))))

  (def (fini it)
    (with ((iterator stmt) it)
      (when stmt
        {query-fini stmt}
        (set! (iterator-e it) #f))))

  (if (statement-e stmt)
    (let (it (make-iterator stmt next fini))
      (make-will it fini)
      {query-start stmt}
      it)
    (error "Invalid operation; statement finalized" stmt)))

;;; metadata
(def (sql-columns stmt)
  (if (statement-e stmt)
    {columns stmt}
    (error "Invalid operation; statement finalized" stmt)))
