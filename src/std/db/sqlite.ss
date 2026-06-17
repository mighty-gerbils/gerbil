;;; -*- Gerbil -*-
;;; © vyzo
;;; SQLite3 DB driver wrapper
(import :std/ffi
        :std/error
        :std/interface
        :std/io/interface
        :std/iter
        ./interface
        ./query
        ./sqlite-driver)
(export sqlite-open)

(defstruct sqlite-pointer
  ((ptr :- :foreign))
  transparent: #f)
(defstruct (sqlite-driver sqlite-pointer) ())
(defstruct (sqlite-statement sqlite-pointer) ())
(defstruct sqlite-query
  ((stmt : sqlite-statement)
   (this :- Query))
  transparent: #f)

(defraise/context (raise-sqlite-error where err irritants ...)
  (SQLError (sqlite3_errstr err) irritants: [irritants ...]))

(defsyntax-case with-sqlite-error ()
  ((_ (prim arg ...))
   (with-syntax ((($arg ...) (gentemps #'(arg ...))))
     #'(let (($arg arg) ...)
         (let (result (prim $arg ...))
           (unless (eq? result SQLITE_OK)
             (raise-sqlite-error prim result ['prim $arg ...])))))))

(def (sqlite-open (file  : :string)
                  (flags : :fixnum
                         := (fxior SQLITE_OPEN_READWRITE
                                   SQLITE_OPEN_CREATE)))
  => Driver
  (let (ptr (check-pointer sqlite-open (make_sqlite3_ptr_ptr)))
    (with-sqlite-error (sqlite3_open ptr file flags))
    (let (driver (sqlite-driver (sqlite3_ptr ptr)))
      (foreign-release! ptr)
      (make-will driver __sqlite-driver-close)
      (Driver driver))))

(defrule (check! where self)
  (unless (sqlite-pointer-ptr self)
    (raise-contract-violation where "sqlite pointer has been released")))

(def (sqlite-driver-close (self : sqlite-driver))
  => :void
  (when self.ptr
    (sqlite3_close self.ptr)
    (foreign-release! self.ptr)
    (set! self.ptr #f)))

(def (sqlite-driver-prepare (self : sqlite-driver)
                            (sql  : :string))
  => Statement
  (check! sqlite-driver-prepare self)
  (let (ptr (check-pointer sqlite-driver-prepare (make_sqlite3_stmt_ptr_ptr)))
    (with-sqlite-error (sqlite3_prepare ptr self.ptr sql 0))
    (let (stmt (sqlite-statement (sqlite3_stmt_ptr ptr)))
      (foreign-release! ptr)
      (make-will stmt __sqlite-statement-close)
      (Statement stmt))))

(def (sqlite-statement-close (self : sqlite-statement))
  => :void
  (when self.ptr
    (sqlite3_finalize self.ptr)
    (foreign-release! self.ptr)
    (set! self.ptr #f)))

(def (sqlite-statement-bind! (self : sqlite-statement)
                             (args : :list))
  => :void
  (check! sqlite-statement-bind! self)
  (let (params (sqlite3_bind_parameter_count self.ptr))
    (unless (fx= params (length args))
      (raise-bad-argument sqlite-bind! "bind parameters do not match statement count" args params))
    (for ((arg args)
          (param (in-range-inclusive 1 params)))
      (cond
       ((not arg)
        (sqlite3_bind_null self.ptr param))
       ((number? arg)
        (cond
         ((exact-integer? arg)
          (if (< (abs arg) (expt 2 32))
            (sqlite3_bind_int self.ptr param arg)
            (sqlite3_bind_int64 self.ptr param arg)))
         ((real? arg)
          (sqlite3_bind_double self.ptr param (exact->inexact arg)))
         (else
          (raise-bad-argument sqlite-bind! "unknown number conversion" arg))))
       ((string? arg)
        (sqlite3_bind_text self.ptr param arg))
       ((u8vector? arg)
        (sqlite3_bind_blob self.ptr param arg))
       (else
        (raise-bad-argument sqlite "unknown bind conversion" arg))))))

(def (sqlite-statement-exec! (self : sqlite-statement))
  => :void
  (check! sqlite-statement-exec! self)
  (let (r (sqlite3_step self.ptr))
    (unless (or (eq? r SQLITE_DONE)
                (eq? r SQLITE_ROW))
      (raise-sqlite-error sqlite-statement-exec! r)))
  (sqlite-statement-reset! self))

(def (sqlite-statement-reset! (self : sqlite-statement))
  => :void
  (check! sqlite-statement-reset! self)
  (sqlite3_reset self.ptr)
  #!void)

(def (sqlite-statement-clear! (self : sqlite-statement))
  => :void
  (check! sqlite-statement-clear! self)
  (sqlite3_clear_bindings self.ptr)
  #!void)

(def (sqlite-statement-query (self : sqlite-statement))
  => Query
  (check! sqlite-statement-query self)
  (let* ((query (sqlite-query self #f))
         (this (Query query)))
    (set! (sqlite-query-this query) this)
    this))

(def (sqlite-query-close (self : sqlite-query))
  => :void
  (when self.stmt
    (ignore-errors (sqlite-statement-reset! self.stmt))
    (set! self.stmt #f)))

(def (sqlite-query-start (self : sqlite-query))
  #!void)

(def (sqlite-query-fetch! (self : sqlite-query))
  (if self.stmt
    (let (r (sqlite3_step self.stmt.ptr))
      (cond
       ((eq? r SQLITE_ROW) #!void)
       ((eq? r SQLITE_DONE) #!eof)
       (else
        (raise-sqlite-error sqlite-query-fetch r))))
    #!eof))

(def (sqlite-query-row (self : sqlite-query))
  (def (column-e col)
    (let (t (sqlite3_column_type self.stmt.ptr col))
      (cond
       ((eq? t SQLITE_INTEGER)
        (sqlite3_column_int64 self.stmt.ptr col))
       ((eq? t SQLITE_FLOAT)
        (sqlite3_column_double self.stmt.ptr col))
       ((eq? t SQLITE_TEXT)
        (sqlite3_column_text self.stmt.ptr col))
       ((eq? t SQLITE_NULL)
        #f)
       ((eq? t SQLITE_BLOB)
        (let* ((count (sqlite3_column_bytes self.stmt.ptr col))
               (bytes (make-u8vector count)))
          (sqlite3_column_blob self.stmt.ptr col bytes)
          bytes))
       (else
        (BUG sqlite-query-row "Unexpected column type" t)))))

  (if self.stmt
    (let (count (sqlite3_column_count self.stmt.ptr))
      (case count
        ((0) #!void)
        ((1) (column-e 0))
        (else
         (let (result (make-vector count))
           (for (x (in-range count))
             (vector-set! result x (column-e x)))
           result))))
    (raise-contract-violation sqlite-query-row "query has been closed")))

(def (sqlite-query-columns (self : sqlite-query))
  (if self.stmt
    (let (count (sqlite3_column_count self.stmt.ptr))
      (case count
        ((0) #!void)
        ((1) (sqlite3_column_name self.stmt.ptr 0))
        (else
         (let (result (make-vector count))
           (for (x (in-range count))
             (vector-set! result x (sqlite3_column_name self.stmt.ptr x)))
           result))))
    (raise-contract-violation sqlite-query-columns "query has been closed")))

(def (sqlite-query-iter (self : sqlite-query))
  => Iterator
  (if self.stmt
    (new-query-iterator self.this)
    (raise-contract-violation sqlite-query-iter "query has been closed")))

(implement
  (Closer
   (sqlite-driver
    (close __sqlite-driver-close))
   (sqlite-statement
    (close __sqlite-statement-close))
   (sqlite-query
    (close __sqlite-query-close)))
  (Driver
   (sqlite-driver
    (prepare __sqlite-driver-prepare)))
  (Statement
   (sqlite-statement
    (bind!  __sqlite-statement-bind!)
    (exec!  __sqlite-statement-exec!)
    (query  __sqlite-statement-query)
    (reset! __sqlite-statement-reset!)
    (clear! __sqlite-statement-clear!)))
  (Iterable
   (sqlite-query
    (iter  __sqlite-query-iter)))
  (Query
   (sqlite-query
    (start! __sqlite-query-start)
    (fetch! __sqlite-query-fetch!)
    (row    __sqlite-query-row)
    (columns __sqlite-query-columns))))
