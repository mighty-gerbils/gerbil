;;; -*- Gerbil -*-
;;; (C) vyzo
;;; Generic SQL database interface
package: std/db

(import (only-in :gerbil/gambit/hash make-will)
        :std/sugar
        :std/iter
        :std/error)
(export
  (struct-out connection statement sql-error)
  raise-sql-error
  sql-connect sql-close sql-prepare
  sql-bind sql-clear sql-reset sql-finalize
  sql-exec sql-query in-sql-query
  )

(defstruct connection (e))
(defstruct statement (e))

(defstruct (sql-error <error>) ())

(def (raise-sql-error where what . irritants)
  (raise (make-sql-error what irritants where)))

(def (sql-connect connect . args)
  (let (conn (apply connect args))
    (make-will conn sql-close)
    conn))

(def (sql-close conn)
  (when (connection-e conn)
    (try {close conn}
      (finally
       (set! (connection-e conn) #f)))))

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

(def (sql-exec stmt)
  (if (statement-e stmt)
    {exec stmt}
    (error "Invalid operation; statement finalized" stmt)))

(def (sql-query stmt)
  (for/collect (row (in-sql-query stmt)) row))

(def (in-sql-query stmt)
  (if (statement-e stmt)
    (make-iterator stmt sql-query-start sql-query-row sql-query-fetch)
    (error "Invalid operation; statement finalized" stmt)))

(def (sql-query-start iter)
  {query (iterator-e iter)}
  (sql-query-fetch iter))

(def (sql-query-row iter)
  (with ((iterator stmt) iter)
    (if (iter-end? stmt) iter-end
        {query-row stmt})))

(def (sql-query-fetch iter)
  (with ((iterator stmt) iter)
    (let (next {query-fetch stmt})
      (when (iter-end? next)
        (set! (iterator-e iter) next)))))
