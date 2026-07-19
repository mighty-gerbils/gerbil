;;; -*- Gerbil -*-
;;; © vyzo
;;; DB implementation
(import :std/error
        :std/interface
        :std/io/interface
        :std/iter
        ./interface)
(export new-db)

(defclass database
  ((driver :- Driver)
   (begin  :- Statement)
   (commit :- Statement)
   (abort  :- Statement))
  final: #t
  transparent: #f)

(def (new-db (driver : Driver))
  => DB
  (DB (database driver: driver)))

(def (db-close (self : database))
  (when self.driver
    (when self.begin
      (ignore-errors (self.begin.close))
      (set! self.begin #f))
    (when self.commit
      (ignore-errors (self.commit.close))
      (set! self.commit #f))
    (when self.abort
      (ignore-errors (self.abort.close))
      (set! self.abort #f))
    (report-errors (self.driver.close))
    (set! self.driver #f)))

(defrule (check! where self)
  (unless (database-driver self)
    (raise-contract-violation where "db has been closed")))

(def (db-prepare (self : database)
                 (sql  : :string))
  => Statement
  (check! db-prepare self)
  (self.driver.prepare sql))

(def (db-exec! (self : database)
               (sql  : :string)
               (args : :list))
  => :void
  (check! db-exec! self)
  (let (stmt (self.driver.prepare sql))
    (try
     (unless (null? args)
       (Statement-bind! stmt args))
     (Statement-exec! stmt)
     (finally
      (ignore-errors (Statement-close stmt))))))

(def (db-query (self : database)
               (sql  : :string)
               (args : :list))
  => :list
  (check! db-query self)
  (let (stmt (self.driver.prepare sql))
    (try
     (unless (null? args)
       (Statement-bind! stmt args))
     (for/collect (row (Statement-query stmt))
       row)
     (finally
      (ignore-errors (Statement-close stmt))))))

(defrule (db-txn-do self sql getf)
  (cond
   ((getf self) => Statement-exec!)
   (else
    (let (stmt (Driver-prepare (database-driver self) sql))
      (set! (getf self) stmt)
      (Statement-exec! stmt)))))

(def (db-begin! (self : database))
  => :void
  (check! db-begin! self)
  (db-txn-do self "BEGIN TRANSACTION" database-begin))

(def (db-commit! (self : database))
  => :void
  (check! db-commit! self)
  (db-txn-do self "COMMIT" database-commit))

(def (db-abort! (self : database))
  => :void
  (check! db-abort! self)
  (db-txn-do self "ROLLBACK" database-abort))

(implement
  (Closer
   (database
    (close __db-close)))
  (Driver
   (database
    (prepare __db-prepare)))
  (DB
   (database
    (exec!   __db-exec!)
    (query   __db-query)
    (begin!  __db-begin!)
    (commit! __db-commit!)
    (abort!  __db-abort!))))
