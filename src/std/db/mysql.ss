;;; -*- Gerbil -*-
;;; (C) vyzo
;;; MySQL dbi interface
package: std/db

(import :std/db/dbi
        :std/db/_mysql
        :std/error
        :std/format
        :std/sugar
        :std/iter
        :std/net/address
        (only-in :std/srfi/19
                 make-date date?
                 date-nanosecond date-second
                 date-minute date-hour
                 date-day date-month date-year
                 date-zone-offset
                 date->time-utc time-utc->date))
(export mysql-connect)

(defstruct (mysql-connection connection) ()
  final: #t)
(defstruct (mysql-statement statement) (res cols ptrs)
  constructor: :init!
  final: #t)

(defmethod {:init! mysql-connection}
  connection:::init!)

(defmethod {:init! mysql-statement}
  (lambda (self mystmt)
    (struct-instance-init! self mystmt)))

(def (raise-mysql-error where mysql (unknown-error "Unknown Error"))
  (let* ((errno (mysql_errno mysql))
         (errmsg (if (fxzero? errno)
                   unknown-error
                   (mysql_error mysql))))
    (raise-sql-error where (format "MySQL error: ~a" errmsg) errno)))

(def (raise-mysql-stmt-error where mystmt (unknown-error "Unknown Error"))
  (let* ((errno (mysql_stmt_errno mystmt))
         (errmsg (if (fxzero? errno)
                   unknown-error
                   (mysql_stmt_error mystmt))))
    (raise-sql-error where (format "MySQL statement error: ~a" errmsg) errno)))

(def (mysql-connect host: (host #f)
                    port: (port 0)
                    user: (user #f)
                    passwd: (passwd #f)
                    db: (db #f))
  (let* (mysql (mysql_init))
    (unless mysql
      (error "Error allocating and initializing MYSQL structure"))
    (let (r (mysql_connect mysql host port user passwd db))
      (if (fxzero? r)
        (make-mysql-connection mysql)
        (raise-mysql-error 'mysql-connect mysql))))) ; mysql ptr is gced

(defmethod {close mysql-connection}
  (lambda (self)
    (mysql_close (connection-e self))))

(defmethod {prepare mysql-connection}
  (lambda (self sql)
    (with ((mysql-connection mysql) self)
      (let (mystmt (mysql_stmt_init mysql))
        (unless mystmt
          (raise-mysql-error 'mysql-prepare mysql))
        (let (r (mysql_stmt_prepare mystmt sql))
          (if (fxzero? r)
            (make-mysql-statement mystmt)
            (begin
              (mysql_stmt_close mystmt)
              (raise-mysql-stmt-error 'mysql-prepare mystmt))))))))

(defmethod {finalize mysql-statement}
  (lambda (self)
    (mysql_stmt_close (statement-e self))))

(defrules check-ptr ()
  ((_ ptr)
   (or ptr (error "Error allocating memory" 'ptr))))

(defmethod {bind mysql-statement}
  (lambda (self . args)
    (with ((mysql-statement mystmt) self)
      (let* ((count (mysql_stmt_param_count mystmt))
             (_ (unless (fx= count (length args))
                  (error "bind parameters don't match statement count" args count)))
             (bind (check-ptr (make_mysql_bind count))))
        (let lp ((rest args) (k 0) (ptrs []))
          (match rest
            ([arg . rest]
             (defrules loop ()
               ((_) (lp rest (fx1+ k) ptrs))
               ((_ ptr) (lp rest (fx1+ k) (cons ptr ptrs))))

             (cond
              ((not arg)
               (mysql_bind_null bind k)
               (loop))
              ((integer? arg)
               (if (< (abs arg) (expt 2 32))
                 (let (ptr (check-ptr (make_long_ptr)))
                   (long_ptr_set ptr arg)
                   (mysql_bind_set_long bind k ptr)
                   (loop ptr))
                 (let (ptr (check-ptr (make_bigint_ptr)))
                   (bigint_ptr_set ptr arg)
                   (mysql_bind_set_bigint bind k ptr)
                   (loop ptr))))
              ((real? arg)
               (let (ptr (check-ptr (make_double_ptr)))
                 (double_ptr_set (exact->inexact arg))
                 (mysql_bind_set_double bind k ptr)
                 (loop ptr)))
              ((string? arg)
               (let* ((len (fx1+ (u8vector-length (string->bytes arg))))
                      (ptr (check-ptr (make_blob_ptr len))))
                 (string_ptr_set ptr arg)
                 (mysql_bind_set_string bind k ptr len)
                 (loop ptr)))
              ((u8vector? arg)
               (let* ((len (u8vector-length arg))
                      (ptr (check-ptr (make_blob_ptr len))))
                 (blob_ptr_set ptr arg)
                 (mysql_bind_set_blob bind k ptr len)
                 (loop ptr)))
              ((date? arg)
               (let* ((date (if (fxzero? (date-zone-offset arg))
                              arg
                              (time-utc->date (date->time-utc arg))))
                      (ptr (check-ptr (make_time_ptr))))
                 (mysql_time_set_second_part ptr (fx/ (date-nanosecond date) 1000))
                 (mysql_time_set_second ptr (date-second date))
                 (mysql_time_set_minute ptr (date-minute date))
                 (mysql_time_set_hour ptr (date-hour date))
                 (mysql_time_set_day ptr (date-day date))
                 (mysql_time_set_month ptr (date-month date))
                 (mysql_time_set_year ptr (date-year date))
                 (mysql_bind_set_time bind k ptr)
                 (loop ptr)))
              (else
               (error "cannot bind object; unknown conversion" arg))))
            (else
             (let (r (mysql_stmt_bind_param mystmt bind))
               (unless (fxzero? r)
                 (raise-mysql-stmt-error 'mysql-bind mystmt))
               (set! (mysql-statement-ptrs self) ptrs)))))))))

(defmethod {clear mysql-statement}
  void)

(defmethod {reset mysql-statement}
  (lambda (self)
    (with ((mysql-statement mystmt) self)
      (let (r (mysql_stmt_reset mystmt))
        (unless (fxzero? r)
          (raise-mysql-stmt-error 'mysql-reset mystmt))))
    (set! (mysql-statement-res self) #f)
    (set! (mysql-statement-cols self) #f)
    (set! (mysql-statement-ptrs self) #f)))

(defmethod {exec mysql-statement}
  (lambda (self)
    (with ((mysql-statement mystmt) self)
      (let (r (mysql_stmt_execute mystmt))
        (unless (fxzero? r)
          (raise-mysql-stmt-error 'mysql-execute mystmt))))))

(def column-types
  (hash-eq
   (,MYSQL_TYPE_BIT         'int)
   (,MYSQL_TYPE_TINY        'int)
   (,MYSQL_TYPE_SHORT       'int)
   (,MYSQL_TYPE_LONG        'int)
   (,MYSQL_TYPE_LONGLONG    'bigint)
   (,MYSQL_TYPE_FLOAT       'float)
   (,MYSQL_TYPE_DOUBLE      'double)
   (,MYSQL_TYPE_TIME        'time)
   (,MYSQL_TYPE_DATE        'time)
   (,MYSQL_TYPE_DATETIME    'time)
   (,MYSQL_TYPE_TIMESTAMP   'time)
   (,MYSQL_TYPE_STRING      'string)
   (,MYSQL_TYPE_VAR_STRING  'string)
   (,MYSQL_TYPE_BLOB        'blob)
   (,MYSQL_TYPE_TINY_BLOB   'blob)
   (,MYSQL_TYPE_MEDIUM_BLOB 'blob)
   (,MYSQL_TYPE_LONG_BLOB   'blob)))

(defmethod {query-start mysql-statement}
  (lambda (self)
    (with ((mysql-statement mystmt) self)
      (let (myres (mysql_stmt_result_metadata mystmt))
        (unless myres
          (raise-mysql-stmt-error 'mysql-query-start mystmt "No result set metadata"))
        (try
         (let (count (mysql_num_fields myres))
           (when (fxzero? count)
             (raise-sql-error 'mysql-query-start "Query does not return any results"))
           (let (res (check-ptr (make_mysql_bind count)))
             (let lp ((k 0) (cols []) (ptrs (or (mysql-statement-ptrs self) [])))
               (if (fx< k count)
                 (let* ((myfield (mysql_fetch_field myres))
                        (mytype (mysql_field_type myfield))
                        (type (hash-get column-types mytype)))
                   (unless type
                     (raise-sql-error 'mysql-query-start "Unknown field type"
                                      (mysql_field_name myfield) mytype))
                   (defrules loop ()
                     ((_ ptr ...)
                      (lp (fx1+ k)
                          (cons type cols)
                          (cons* ptr ... ptrs))))
                   (case type
                     ((int)
                      (let ((ptr (check-ptr (make_long_ptr)))
                            (nullp (check-ptr (make_bool_ptr))))
                        (mysql_bind_set_long res k ptr)
                        (mysql_bind_set_null res k nullp)
                        (loop ptr nullp)))
                     ((bigint)
                      (let ((ptr (check-ptr (make_bigint_ptr)))
                            (nullp (check-ptr (make_bool_ptr))))
                        (mysql_bind_set_bigint res k ptr)
                        (mysql_bind_set_null res k nullp)
                        (loop ptr nullp)))
                     ((float)
                      (let ((ptr (check-ptr (make_float_ptr)))
                            (nullp (check-ptr (make_bool_ptr))))
                        (mysql_bind_set_float res k ptr)
                        (mysql_bind_set_null res k nullp)
                        (loop ptr nullp)))
                     ((double)
                      (let ((ptr (check-ptr (make_double_ptr)))
                            (nullp (check-ptr (make_bool_ptr))))
                        (mysql_bind_set_double res k ptr)
                        (mysql_bind_set_null res k nullp)
                        (loop ptr nullp)))
                     ((string blob)
                      (let ((ptr (check-ptr (make_ulong_ptr)))
                            (nullp (check-ptr (make_bool_ptr))))
                        (mysql_bind_set_len res k ptr)
                        (mysql_bind_set_null res k nullp)
                        (loop ptr nullp)))
                     ((time)
                      (let ((ptr (check-ptr (make_time_ptr)))
                            (nullp (check-ptr (make_bool_ptr))))
                        (mysql_bind_set_time res k ptr)
                        (mysql_bind_set_null res k nullp)
                        (loop ptr nullp)))
                     (else
                      (error "Unexpected field type" type))))
                 (let (r (mysql_stmt_bind_result mystmt res))
                   (unless (fxzero? r)
                     (raise-mysql-stmt-error 'mysql-query-start mystmt))
                   (set! (mysql-statement-res self) res)
                   (set! (mysql-statement-cols self) (reverse cols))
                   (set! (mysql-statement-ptrs self) ptrs))))))
         (finally
          (mysql_free_result myres))))
      (mysql-statement::exec self))))

(defmethod {query-fetch mysql-statement}
  (lambda (self)
    (with ((mysql-statement mystmt) self)
      (let (r (mysql_stmt_fetch mystmt))
        (cond
         ((fxzero? r) #!void)
         ((eq? r MYSQL_DATA_TRUNCATED) ; that's ok, blobs and strings
          #!void)
         ((eq? r MYSQL_NO_DATA) iter-end) 
         (else
          (raise-mysql-stmt-error 'mysql-query-fetch mystmt)))))))

(defmethod {query-row mysql-statement}
  (lambda (self)
    (with ((mysql-statement mystmt res cols) self)
      (let lp ((rest cols) (k 0) (vals []))
        (match rest
          ([type . rest]
           (defrules loop ()
             ((_ val)
              (lp rest (fx1+ k) (cons val vals))))
           
           (defrules maybe-null ()
             ((_ expr)
              (let (nullp (mysql_bind_get_null res k))
                (and (fxzero? nullp)
                     expr))))
           
           (case type
             ((int)
              (let (val (maybe-null (mysql_bind_get_long res k)))
                (loop val)))
             ((bigint)
              (let (val (maybe-null (mysql_bind_get_bigint res k)))
                (loop val)))
             ((float)
              (let (val (maybe-null (mysql_bind_get_float res k)))
                (loop val)))
             ((double)
              (let (val (maybe-null (mysql_bind_get_double res k)))
                (loop val)))
             ((string)
              (let (len (maybe-null (mysql_bind_get_len res k)))
                (if len
                  (let* ((bind (check-ptr (make_mysql_bind 1)))
                         (ptr (check-ptr (make_blob_ptr len)))
                         (_ (mysql_bind_set_string bind 0 ptr len))
                         (r (mysql_stmt_fetch_column mystmt bind k 0)))
                    (if (fxzero? r)
                      (let (val (mysql_bind_get_string bind 0))
                        (loop val))
                      (raise-mysql-stmt-error 'mysql-query-fetch mystmt)))
                  (loop #f))))
             ((blob)
              (let (len (maybe-null (mysql_bind_get_len res k)))
                (if len
                  (let* ((bind (check-ptr (make_mysql_bind 1)))
                         (ptr (check-ptr (make_blob_ptr)))
                         (_ (mysql_bind_set_blob bind 0 ptr len))
                         (r (mysql_stmt_fetch_column mystmt bind k 0)))
                    (if (fxzero? r)
                      (let* ((bytes (make-u8vector len))
                             (_ (mysql_bind_get_blob bind 0 bytes)))
                        (loop bytes))
                      (raise-mysql-stmt-error 'mysql-query-fetch mystmt)))
                  (loop #f))))
             ((time)
              (let (val (maybe-null
                         (make-date (* 1000 (mysql_bind_get_time_second_part res k))
                                    (mysql_bind_get_time_second res k)
                                    (mysql_bind_get_time_minute res k)
                                    (mysql_bind_get_time_hour res k)
                                    (mysql_bind_get_time_day res k)
                                    (mysql_bind_get_time_month res k)
                                    (mysql_bind_get_time_year res k)
                                    0)))
                (loop val)))
             (else
              (error "Unexpected field type" type))))
          (else
           (if (null? (cdr vals))
             (car vals)
             (list->vector (reverse vals)))))))))

(defmethod {query-fini mysql-statement}
  mysql-statement::reset)

(defmethod {columns mysql-statement}
  (lambda (self)
    (with ((mysql-statement mystmt) self)
      (let (myres (mysql_stmt_result_metadata mystmt))
        (unless myres
          (raise-mysql-stmt-error 'mysql-query-start mystmt "No result set metadata"))
        (try
         (let (count (mysql_num_fields myres))
           (let lp ((k 0) (cols []))
             (if (fx< k count)
               (let* ((myfield (mysql_fetch_field myres))
                      (name (mysql_field_name myfield)))
                 (lp (fx1+ k) (cons name cols)))
               (reverse cols))))
         (finally
          (mysql_free_result myres)))))))