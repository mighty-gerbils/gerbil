;;; -*- Gerbil -*-
;;; (C) vyzo
;;; SQLite dbi interface
package: std/db

(import (only-in :gerbil/gambit/hvectors make-u8vector u8vector?)
        :std/db/dbi
        :std/db/_sqlite
        :std/format
        :std/iter)
(export sqlite-open)

(defstruct (sqlite-connection connection) ())
(defstruct (sqlite-statement statement) ())

(def (raise-sqlite-error where err)
  (let (errstr (sqlite3_errstr err))
    (raise-sql-error where (format "SQLite error: ~a" errstr) err)))

(def (sqlite-open file (flags (fxior SQLITE_OPEN_READWRITE SQLITE_OPEN_CREATE)))
  (let (e (sqlite3_open file flags))
    (if e
      (make-sqlite-connection e)
      (raise-sqlite-error 'sqlite-open (sqlite3_last_error)))))

(defmethod {close sqlite-connection}
  (lambda (self)
    (sqlite3_close (connection-e self))))

(defmethod {prepare sqlite-connection}
  (lambda (self sql)
    (let (e (sqlite3_prepare (connection-e self) sql))
      (if e
        (make-sqlite-statement e)
        (raise-sqlite-error 'sqlite-prepare (sqlite3_last_error))))))

(defmethod {finalize sqlite-statement}
  (lambda (self)
    (sqlite3_finalize (statement-e self))))

(defmethod {bind sqlite-statement}
  (lambda (self . args)
    (with ((statement stmt) self)
      (let* ((params (sqlite3_bind_parameter_count stmt))
             (_ (unless (= params (length args))
                  (error "bind parameters do not match statement count" args params))))
        (for ((arg args) (col (in-naturals)))
          (cond
           ((not arg)
            (sqlite3_bind_null stmt col))
           ((number? arg)
            (cond
             ((integer? arg)
              (if (< (abs arg) (expt 2 32))
                (sqlite3_bind_int stmt col arg)
                (sqlite3_bind_int64 stmt col arg)))
             ((real? arg)
              (sqlite3_bind_double stmt col (exact->inexact arg)))
             (else
              (error "cannot bind number; not a real" arg))))
           ((string? arg)
            (sqlite3_bind_text stmt col arg))
           ((symbol? arg)
            (sqlite3_bind_text stmt col (symbol->string arg)))
           ((u8vector? arg)
            (sqlite3_bind_blob stmt col arg))
           (error "cannot bind object; unknown conversion" arg)))))))

(defmethod {clear sqlite-statement}
  (lambda (self)
    (sqlite3_clear_bindings (statement-e self))))

(defmethod {reset sqlite-statement}
  (lambda (self)
    (sqlite3_reset (statement-e self))))

(defmethod {exec sqlite-statement}
  (lambda (self)
    (with ((statement stmt) self)
      (let (r (sqlite3_step stmt))
        (unless (or (eq? r SQLITE_DONE)
                    (eq? r SQLITE_ROW))
          (raise-sqlite-error 'sqlite-exec r))))))

(defmethod {query sqlite-statement}
  void)

(defmethod {query-fetch sqlite-statement}
  (lambda (self)
    (with ((statement stmt) self)
      (let (r (sqlite3_step stmt))
        (cond
         ((eq? r SQLITE_ROW) #!void)
         ((eq? r SQLITE_DONE) iter-end)
         (else
          (raise-sqlite-error 'sqlite-query-fetch r)))))))

(defmethod {query-row sqlite-statement}
  (lambda (self)
    (with ((statement stmt) self)
      (def (column-e col)
        (let (t (sqlite3_column_type col))
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
            (error "Unexpected column type" t)))))
      
      (let (count (sqlite3_column_count stmt))
        (case count
          ((0) #!void)
          ((1) (column-e 1))
          (else
           (list->vector
            (for/collect (x (in-range 1 count))
              (column-e x)))))))))
