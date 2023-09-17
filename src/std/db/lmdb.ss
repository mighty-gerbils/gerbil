;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; LMDB wraper interface

(import :gerbil/gambit/threads
        :std/build-config
        :std/error
        :std/os/error
        :std/text/utf8
        :std/db/_lmdb)
(export lmdb-error?
        lmdb-env?
        lmdb-db? lmdb-db-env lmdb-db-name
        lmdb-txn? lmdb-txn-env
        lmdb-cursor? lmdb-cursor-txn lmdb-cursor-db
        lmdb-open lmdb-sync lmdb-close lmdb-stat
        lmdb-open-db lmdb-close-db lmdb-db-stat lmdb-db-drop
        lmdb-txn-begin lmdb-txn-id
        lmdb-txn-commit lmdb-txn-abort
        lmdb-txn-reset lmdb-txn-renew
        lmdb-get lmdb-put lmdb-del
        lmdb-cursor-open lmdb-cursor-close lmdb-cursor-renew
        lmdb-cursor-get lmdb-cursor-put lmdb-cursor-del lmdb-cursor-count)

(require config-have-lmdb)

(deferror-class LMDBError () lmdb-error?)
(def (raise-lmdb-error where errno)
  (raise (LMDBError (mdb_strerror errno) irritants: [errno] where: where)))

(defrules with-lmdb-error ()
  ((_ (lmdb-e args ...) cleanup ...)
   (let (res (lmdb-e args ...))
     (unless (##fxzero? res)
       cleanup ...
       (raise-lmdb-error 'lmdb-e res)))))

(defstruct lmdb-env (ptr dbs mx)
  final: #t)
(defstruct lmdb-db (env dbi name)
  final: #t)
(defstruct lmdb-txn (env ptr val)
  final: #t)
(defstruct lmdb-cursor (txn db ptr val1 val2)
  final: #t)

(def (lmdb-open path
                max-dbs: (maxdbs 1)
                mapsize: (mapsize #f)
                max-readers: (maxreaders #f)
                flags: (flags 0)
                mode: (mode #o660))
  (create-directory* path)              ; needs to exist
  (let (env** (check-ptr (ffi_make_mdb_env_ptr_ptr)))
    (with-lmdb-error (mdb_env_create env**))
    (let (env* (ffi_mdb_env_ptr env**))
      (when maxdbs
        (with-lmdb-error (mdb_env_set_maxdbs env* maxdbs)
          (mdb_env_close env*)))
      (when mapsize
        (with-lmdb-error (mdb_env_set_mapsize env* mapsize)
          (mdb_env_close env*)))
      (when maxreaders
        (with-lmdb-error (mdb_env_set_maxreaders env* maxreaders)
          (mdb_env_close env*)))

      (with-lmdb-error (mdb_env_open env* path flags mode)
        (mdb_env_close env*))
      (make-lmdb-env env* (make-hash-table) (make-mutex)))))

(def (lmdb-sync env (force? #f))
  (with ((lmdb-env env*) env)
    (unless env*
      (raise-context-error 'lmdb "invalid env"))
    (with-lmdb-error (mdb_env_sync env* (if force? 1 0)))))

(def (lmdb-close env)
  (with ((lmdb-env env*) env)
    (unless env*
      (mdb_env_close env*)
      (set! (lmdb-env-ptr env) #f))))

(defmethod {destroy lmdb-env}
  lmdb-close)

(defrules do-lmdb-stat ()
  ((_ env* stat-e stat-args ...)
   (let (stat* (check-ptr (ffi_make_mdb_stat_ptr)))
     (with-lmdb-error (stat-e stat-args ... stat*))
     [psize: (ffi_mdb_stat_psize)
      depth: (ffi_mdb_stat_depth)
      branch-pages: (ffi_mdb_stat_branch_pages)
      leaf-pages: (ffi_mdb_stat_leaf_pages)
      overflow-pages: (ffi_mdb_stat_overflow_pages)
      entries: (ffi_mdb_stat_entries)])))

(def (lmdb-stat env)
  (with ((lmdb-env env*) env)
    (unless env*
      (raise-context-error 'lmdb "invalid env"))
    (do-lmdb-stat env* mdb_env_stat env*)))

(def (lmdb-open-db env name (flags MDB_CREATE))
  (with ((lmdb-env env* dbs mx) env)
    (unless env*
      (raise-context-error 'lmdb "invalid env"))
    (with-lock mx ; there can only be a single txn opening a db
      (lambda ()
        (cond
         ((hash-get dbs name) => values)
         (else
          (let ((txn** (check-ptr (ffi_make_mdb_txn_ptr_ptr)))
                (dbi* (check-ptr (ffi_make_mdb_dbi_ptr))))
            (with-lmdb-error (mdb_txn_begin env* #f 0 txn**))
            (let (txn* (ffi_mdb_txn_ptr txn**))
              (with-lmdb-error (mdb_dbi_open txn* name flags dbi*)
                (mdb_txn_abort txn*))
              (with-lmdb-error (mdb_txn_commit txn*)))
            (let* ((dbi (ffi_mdb_dbi_ptr_value dbi*))
                   (db (make-lmdb-db env dbi name)))
              (hash-put! dbs name db)
              db))))))))

(def (lmdb-close-db db)
  (with ((lmdb-db env dbi name) db)
    (when dbi
      (with ((lmdb-env env* dbs mx) env)
        (with-lock mx
          (lambda ()
            (mdb_dbi_close env* dbi)
            (set! (lmdb-db-dbi db) #f)
            (hash-remove! dbs name)))))))

(defmethod {destroy lmdb-db}
  lmdb-close-db)

(def (lmdb-txn-begin env (parent #f) (flags 0))
  (with ((lmdb-env env*) env)
    (unless env*
      (raise-context-error 'lmdb "invalid env"))
    (let ((txn** (check-ptr (ffi_make_mdb_txn_ptr_ptr)))
          (partxn* (and parent (match parent ((lmdb-txn _ txn*) txn*)))))
      (with-lmdb-error (mdb_txn_begin env* parent flags txn**))
      (let ((txn* (check-ptr (ffi_mdb_txn_ptr txn**)))
            (val* (check-ptr (ffi_make_mdb_val_ptr))))
        (make-lmdb-txn env txn* val*)))))

(def (lmdb-txn-id txn)
  (with ((lmdb-txn _ txn*) txn)
    (mdb_txn_id txn*)))

(def (lmdb-txn-commit txn)
  (with ((lmdb-txn _ txn*) txn)
    (with-lmdb-error (mdb_txn_commit txn*))))

(def (lmdb-txn-abort txn)
  (with ((lmdb-txn _ txn*) txn)
    (mdb_txn_abort txn*)))

(def (lmdb-txn-reset txn)
  (with ((lmdb-txn _ txn*) txn)
    (mdb_txn_reset txn*)))

(def (lmdb-txn-renew txn)
  (with ((lmdb-txn _ txn*) txn)
    (with-lmdb-error (mdb_txn_renew txn*))))

(def (lmdb-db-stat txn db)
  (with (((lmdb-txn _ txn*) txn)
         ((lmdb-db _ dbi) db))
    (do-lmdb-stat mdb_stat txn* dbi)))

(def (lmdb-db-drop txn db (del? #f))
  (with (((lmdb-txn _ txn*) txn)
         ((lmdb-db _ dbi) db))
    (with-lmdb-error (mdb_drop txn* dbi (if del? 1 0)))))

(def (value-bytes key)
  (cond
   ((u8vector? key) key)
   ((string? key) (string->utf8 key))
   (else
    (raise-bad-argument 'lmdb "u8vector or string" key))))

(def (value-data val*)
  (let* ((size (ffi_mdb_val_size val*))
         (bytes (make-u8vector size)))
    (ffi_mdb_val_data val* bytes)
    bytes))

(def (value-data* val*)
  (let (size (ffi_mdb_val_size val*))
    (and size
         (let (bytes (make-u8vector size))
           (ffi_mdb_val_data val* bytes)
           bytes))))

(def (lmdb-get txn db key)
  (let (keyb (value-bytes key))
    (with (((lmdb-txn _ txn* val*) txn)
           ((lmdb-db _ dbi) db))
      (let (res (mdb_get txn* dbi keyb val*))
        (cond
         ((##fxzero? res)
          (value-data val*))
         ((eq? res MDB_NOTFOUND)
          #f)
         (else
          (raise-lmdb-error 'mdb_get res)))))))

(def (lmdb-put txn db key val (flags 0))
  (let ((keyx (value-bytes key))
        (valx (value-bytes val)))
    (with (((lmdb-txn _ txn*) txn)
           ((lmdb-db _ dbi) db))
      (with-lmdb-error (mdb_put txn* dbi keyx valx flags)))))

(def (lmdb-del txn db key (val #f))
  (let ((keyx (value-bytes key))
        (valx (and val (value-bytes val))))
    (with (((lmdb-txn _ txn*) txn)
           ((lmdb-db _ dbi) db))
      (with-lmdb-error (mdb_del txn* dbi keyx valx)))))

(def (lmdb-cursor-open txn db)
  (with (((lmdb-txn _ txn* val*) txn)
         ((lmdb-db _ dbi) db))
    (let (cursor** (check-ptr (ffi_make_mdb_cursor_ptr_ptr)))
      (with-lmdb-error (mdb_cursor_open txn* dbi cursor**))
      (let ((val1* (check-ptr (ffi_make_mdb_val_ptr)))
            (val2* (check-ptr (ffi_make_mdb_val_ptr)))
            (cursor* (ffi_mdb_cursor_ptr cursor**)))
      (make-lmdb-cursor txn db cursor* val1* val2*)))))

(def (lmdb-cursor-close cursor)
  (with ((lmdb-cursor _ _ cursor*) cursor)
    (when cursor*
      (mdb_cursor_close cursor*)
      (set! (lmdb-cursor-ptr cursor) #f)
      (set! (lmdb-cursor-val1 cursor) #f)
      (set! (lmdb-cursor-val2 cursor) #f))))

(def (lmdb-cursor-renew cursor txn)
  (with (((lmdb-cursor _ _ cursor*) cursor)
         ((lmdb-txn _ txn*) txn))
    (unless cursor*
      (raise-context-error 'lmdb "invalid cursor"))
    (with-lmdb-error (mdb_cursor_renew txn* cursor*))
    (set! (lmdb-cursor-txn cursor) txn)))

(def (lmdb-cursor-get cursor op (key #f) (val #f))
  (let ((keyx (and key (value-bytes key)))
        (valx (and val (value-bytes val))))
    (with ((lmdb-cursor _ _ cursor* val1* val2*) cursor)
      (unless cursor*
        (raise-context-error 'lmdb "invalid cursor"))
      (let (res (mdb_cursor_get cursor* keyx val1* valx val2* op))
        (cond
         ((##fxzero? res)
          (values (value-data* val1*) (value-data* val2*)))
         ((eq? res MDB_NOTFOUND)
          #f)
         (else
          (raise-lmdb-error 'mdb_cursor_get res)))))))

(def (lmdb-cursor-put cursor key val (flags 0))
  (let ((keyx (value-bytes key))
        (valx (value-bytes val)))
    (with ((lmdb-cursor _ _ cursor*) cursor)
      (unless cursor*
        (raise-context-error 'lmdb "invalid cursor"))
      (with-lmdb-error (mdb_cursor_put cursor* keyx valx flags)))))

(def (lmdb-cursor-del cursor (flags 0))
  (with ((lmdb-cursor _ _ cursor*) cursor)
    (unless cursor*
      (raise-context-error 'lmdb "invalid cursor"))
    (with-lmdb-error (mdb_cursor_del cursor* flags))))

(def (lmdb-cursor-count cursor)
  (with ((lmdb-cursor _ _ cursor*) cursor)
    (unless cursor*
      (raise-context-error 'lmdb "invalid cursor"))
    (let (size_t* (check-ptr (ffi_make_size_t_ptr)))
      (ffi_size_t_ptr_value size_t*))))
