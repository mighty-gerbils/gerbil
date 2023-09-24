;;; -*- Gerbil -*-
;;; (C) vyzo
;;; SQLite dbi interface

(import :std/error
        :std/sugar
        :std/db/dbi
        :std/db/_sqlite
        :std/iter)
(export sqlite-open)

(defstruct (sqlite-connection connection) ()
  final: #t)
(defstruct (sqlite-statement statement) ()
  final: #t)

(defmethod {:init! sqlite-connection}
  connection:::init!)
(defmethod {:init! sqlite-statement}
  statement:::init!)

(defrule (raise-sqlite-error where err)
  (let (errstr (sqlite3_errstr err))
    (raise-sql-error where (string-append "SQLite error:" errstr) err)))

(def (sqlite-open file (flags (fxior SQLITE_OPEN_READWRITE SQLITE_OPEN_CREATE)))
  (let* ((ptr (make_sqlite3_ptr_ptr))
         (r (sqlite3_open ptr file flags)))
    (if (##fx= r SQLITE_OK)
      (make-sqlite-connection (sqlite3_ptr ptr))
      (raise-sqlite-error 'sqlite-open r))))

(defmethod {close sqlite-connection}
  (lambda (self)
    (sqlite3_close (connection-e self))))

(defmethod {prepare sqlite-connection}
  (lambda (self sql)
    (let* ((ptr (make_sqlite3_stmt_ptr_ptr))
           (r (sqlite3_prepare ptr (connection-e self) sql 0)))
      (if (##fx= r SQLITE_OK)
        (make-sqlite-statement (sqlite3_stmt_ptr ptr))
        (raise-sqlite-error 'sqlite-prepare r)))))

(defmethod {finalize sqlite-statement}
  (lambda (self)
    (sqlite3_finalize (statement-e self))))

(defmethod {bind sqlite-statement}
  (lambda (self . args)
    (with ((sqlite-statement stmt) self)
      (let* ((params (sqlite3_bind_parameter_count stmt))
             (_ (unless (= params (length args))
                  (raise-bad-argument 'sqlite "bind parameters: do not match statement count" args params))))
        (for ((arg args) (param (in-iota params 1)))
          (cond
           ((not arg)
            (sqlite3_bind_null stmt param))
           ((number? arg)
            (cond
             ((integer? arg)
              (if (< (abs arg) (expt 2 32))
                (sqlite3_bind_int stmt param arg)
                (sqlite3_bind_int64 stmt param arg)))
             ((real? arg)
              (sqlite3_bind_double stmt param (exact->inexact arg)))
             (else
              (raise-bad-argument 'sqlite "real: bind parameter" arg))))
           ((string? arg)
            (sqlite3_bind_text stmt param arg))
           ((u8vector? arg)
            (sqlite3_bind_blob stmt param arg))
           (else
            (raise-bad-argument 'sqlite "object: unknown bind conversion" arg))))))))

(defmethod {clear sqlite-statement}
  (lambda (self)
    (sqlite3_clear_bindings (statement-e self))))

(defmethod {reset sqlite-statement}
  (lambda (self)
    (sqlite3_reset (statement-e self))))

(defmethod {exec sqlite-statement}
  (lambda (self)
    (with ((sqlite-statement stmt) self)
      (let (r (sqlite3_step stmt))
        (unless (or (eq? r SQLITE_DONE)
                    (eq? r SQLITE_ROW))
          (raise-sqlite-error 'sqlite-exec r))))))

(defmethod {query-start sqlite-statement}
  void)

(defmethod {query-fetch sqlite-statement}
  (lambda (self)
    (with ((sqlite-statement stmt) self)
      (let (r (sqlite3_step stmt))
        (cond
         ((eq? r SQLITE_ROW) #!void)
         ((eq? r SQLITE_DONE) iter-end)
         (else
          (raise-sqlite-error 'sqlite-query-fetch r)))))))

(defmethod {query-row sqlite-statement}
  (lambda (self)
    (with ((sqlite-statement stmt) self)
      (def (column-e col)
        (let (t (sqlite3_column_type stmt col))
          (cond
           ((eq? t SQLITE_INTEGER)
            (sqlite3_column_int64 stmt col))
           ((eq? t SQLITE_FLOAT)
            (sqlite3_column_double stmt col))
           ((eq? t SQLITE_TEXT)
            (sqlite3_column_text stmt col))
           ((eq? t SQLITE_NULL)
            #f)
           ((eq? t SQLITE_BLOB)
            (let* ((count (sqlite3_column_bytes stmt col))
                   (bytes (make-u8vector count)))
              (sqlite3_column_blob stmt col bytes)
              bytes))
           (else
            (BUG 'sqlite "Unexpected column type" t)))))

      (let (count (sqlite3_column_count stmt))
        (case count
          ((0) #!void)
          ((1) (column-e 0))
          (else
           (list->vector
            (for/collect (x (in-iota count))
              (column-e x)))))))))

(defmethod {query-fini sqlite-statement}
  sqlite-statement::reset)

(defmethod {columns sqlite-statement}
  (lambda (self)
    (with ((sqlite-statement stmt) self)
      (let (count (sqlite3_column_count stmt))
        (let lp ((k 0) (cols []))
          (if (##fx< k count)
            (let (name (sqlite3_column_name stmt k))
              (lp (##fx+ k 1) (cons name cols)))
            (reverse cols)))))))
