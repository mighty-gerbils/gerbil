;;; -*- Gerbil -*-
;;; © vyzo
;;; DB interfaces
(import :std/error
        :std/io/interface
        :std/iter)
(export #t)

(deferror-class SQLError () sql-error?)
(defraise/context (raise-sql-error where what irritants ...)
  (SQLError what irritants: [irritants ...]))

(deftype @Statement Statement)
(deftype @Query Query)

;; SQL DB Driver interface
(interface (Driver Closer)
  ;; prepare an sql statment
  (prepare (sql : :string)) => @Statement)

(interface (DB Driver)
  ;; execute an SQL statement
  (exec! (sql : :string) (args : :list))
  => :void

  ;; perform a query
  (query (sql : :string) (args : :list))
  => :list

  ;; begin a transaction
  (begin!)
  => :void

  ;; commit a transaction
  (commit!)
  => :void

  ;; abort/rollback a transaction
  (abort!)
  => :void
  )

;; SQL (preared) Statement interface
(interface (Statement Closer)
  ;; bind arguments to a statement
  (bind! (args : :list))
  => :void

  ;; execute a statement
  (exec!)
  => :void

  ;; perform a query
  (query)
  => @Query

  ;; reset a statement
  (reset!)
  => :void

  ;; clear a statement
  (clear!)
  => :void
  )

;; SQL Query interface
(interface (Query Iterable Closer)
  ;; start a query
  (start!)
  => :void

  ;; fetch the next row
  ;; returns #!eof if the last row has been fetched
  (fetch!)
  => :t

  ;; get the current row
  ;; if the row has multiple columns, it returns a vector
  ;; if the row has a single column, it returns the object
  ;; in the column
  ;; if the row has no columns, it returns void
  (row)
  => :t

  ;; query value metadata
  ;; similar return value semantics to row
  (columns)
  => :t
  )
