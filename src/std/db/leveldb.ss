;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; LevelDB wrapper interface
package: std/db

(import :gerbil/gambit/threads
        :gerbil/gambit/misc
        :std/db/_leveldb
        :std/error
        :std/format)
(export leveldb-error?
        
        )

(defstruct (leveldb-error <error>) ())

(def (raise-leveldb-error where what)
  (raise (make-leveldb-error what [] where)))

(def (raise-leveldb-error/errptr where errptr)
  (raise (make-leveldb-error (errptr_str errptr) [] where)))

(defrules check-ptr ()
  ((_ where expr)
   (let (ptr expr)
     (if ptr ptr
         (raise-leveldb-error 'where "Error allocating pointer")))))

(def (fixnum-positive? obj)
  (and (fixnum? obj)
       (fxpositive? obj)))

(def (value-bytes key)
  (cond
   ((u8vector? key) key)
   ((string? key) (string->bytes key))
   (else
    (error "Bad argument: expected u8vector or string" key))))

;;; Implementation
(defstruct leveldb (db ptab)
  final: #t)

(def (leveldb-open name (opts (leveldb-default-options)))
  (let* ((errptr (check-ptr make_errptr (make_errptr)))
         (ptr (leveldb_open opts name errptr)))
    (if ptr
      (let (db (make-leveldb ptr (make-hash-table-eq weak-keys: #t)))
        (make-will db leveldb-close)
        db)
      (raise-leveldb-error/errptr 'leveldb-open errptr))))

(def (leveldb-close ldb)
  (with ((leveldb db) ldb)
    (when db
      (leveldb_close db)
      (set! (leveldb-db ldb) #f)
      (set! (leveldb-ptab ldb) #f))))

;;; Basic Operations
(def (leveldb-put ldb key val (opts (leveldb-default-write-options)))
  (with ((leveldb db ptab) ldb)
    (if db
      (let ((keyx (value-bytes key))
            (valx (value-bytes val))
            (errptr (get-errptr ptab)))
        (leveldb_put db opts keyx valx errptr)
        (cond
         ((errptr_str errptr)
          => (cut raise-leveldb-error 'leveldb-put <>))))
      (error "LevelDB database has been closed"))))

(def (leveldb-get ldb key (opts (leveldb-default-read-options)))
  (with ((leveldb db ptab) ldb)
    (if db
      (let* ((keyx (value-bytes key))
             (errptr (get-errptr ptab))
             (slice (leveldb_get db opts keyx errptr)))
        (if slice
          (slice->bytes slice)
          (raise-leveldb-error/errptr 'leveldb-get errptr)))
      (error "LevelDB database has been closed"))))

(def (leveldb-delete ldb key (opts (leveldb-default-write-options)))
  (with ((leveldb db ptab) ldb)
    (if db
      (let ((keyx (value-bytes key))
            (errptr (get-errptr ptab)))
        (leveldb_delete db opts keyx errptr)
        (cond
         ((errptr_str errptr)
          => (cut raise-leveldb-error 'leveldb-delete <>))))
      (error "LevelDB database has been closed"))))

(def (leveldb-write ldb batch (opts (leveldb-default-write-options)))
  (with ((leveldb db ptab) ldb)
    (if db
      (let (errptr (get-errptr ptab))
        (leveldb_write db opts batch errptr)
        (cond
         ((errptr_str errptr)
          => (cut raise-leveldb-error 'leveldb-write <>))))
      (error "LevelDB database has been closed"))))

(def (slice->bytes slice)
  (let* ((len (slice_len slice))
         (bytes (make-u8vector len)))
    (slice_bytes slice bytes)
    bytes))

(def (get-errptr ptab)
  (cond
   ((hash-get ptab (current-thread)) => values)
   (else
    (let (errptr (check-ptr make_errptr (make_errptr)))
      (hash-put! ptab (current-thread) errptr)
      errptr))))

;; Write batches
(def (leveldb-writebatch)
  (check-ptr leveldb_writebatch_create (leveldb_writebatch_create)))

(def (leveldb-writebatch-clear batch)
  (leveldb_writebatch_clear batch))

(def (leveldb-writebatch-put batch key val)
  (let ((keyx (value-bytes key))
        (valx (value-bytes val)))
    (leveldb_writebatch_put batch keyx valx)))

(def (leveldb-writebatch-delete batch key)
  (let (keyx (value-bytes key))
    (leveldb_writebatch_delete batch keyx)))

;; Iterators
(def (leveldb-iterator ldb (opts (leveldb-default-read-options)))
  (with ((leveldb db) ldb)
    (if db
      (check-ptr leveldb_create_iterator (leveldb_create_iterator db opts))
      (error "LevelDB database has been closed"))))

(def (leveldb-iterator-seek-first itor)
  (leveldb_iter_seek_to_first itor))

(def (leveldb-iterator-seek-last itor)
  (leveldb_iter_seek_to_last itor))

(def (leveldb-iterator-seek itor key)
  (let (keyx (value-bytes key))
    (leveldb_iter_seek itor keyx)))

(def (leveldb-iterator-next itor)
  (leveldb_iter_next itor))

(def (leveldb-iterator-prev itor)
  (leveldb_iter_prev itor))

(def (leveld-iterator-key itor)
  (alet (slice (leveldb_iter_key itor))
    (slice->bytes slice)))

(def (leveldb-iterator-value itor)
  (alet (slice (leveldb_iter_value itor))
    (slice->bytes slice)))

(def (leveldb-iterator-error itor (raise? #t))
  (let (errptr (check-ptr make_errptr make_errptr))
    (leveldb_iter_get_error itor errptr)
    (cond
     ((not raise?)
      (errptr_str errptr))
     ((errptr_str errptr)
      => (cut raise-leveldb-error 'leveldb-iterator-error <>))
     (else #f))))

;; Misc Operations
(def (leveldb-approximate-sizes ldb num-ranges start-key end-key)
  (with ((leveldb db) ldb)
    (if db
      (let ((startx (value-bytes start-key))
            (endx (value-bytes end-key)))
        (leveldb_approximate_sizes db num-ranges startx endx))
      (error "LevelDB database has been closed"))))

(def (leveldb-compact-range ldb start-key end-key)
  (with ((leveldb db) ldb)
    (if db
      (let ((startx (value-bytes start-key))
            (endx (value-bytes end-key)))
        (leveldb_compact_range db startx endx))
      (error "LevelDB database has been closed"))))

(def (leveldb-destroy-db name (opts (leveldb-default-options)))
  (let (errptr (check-ptr make_errptr (make_errptr)))
    (leveldb_destroy_db opts name errptr)
    (cond
     ((errptr_str errptr)
      => (cut raise-leveldb-error 'leveldb-destroy-db <>)))))

(def (leveldb-repair-db name (opts (leveldb-default-options)))
  (let (errptr (check-ptr make_errptr (make_errptr)))
    (leveldb_repair_db opts name errptr)
    (cond
     ((errptr_str errptr)
      => (cut raise-leveldb-error 'leveldb-repair-db <>)))))

;; options objects
(def (leveldb-options create-if-missing:      (create-if-missing #t)      ; boolean
                      error-if-exists:        (error-if-exists #f)        ; boolean
                      paranoid-checks:        (paranoid-checks #f)        ; boolean
                      compression:            (compression #t)            ; boolean
                      write-buffer-size:      (write-buffer-size #f)      ; size_t
                      max-open-files:         (max-open-files #f)         ; int
                      block-size:             (block-size #f)             ; size_t
                      block-restart-interval: (block-restart-interval #f) ; int
                      lru-cache-capacity:     (lru-cache-capacity #f)     ; size_t
                      bloom-filter-bits:      (bloom-filter-bits #f)      ; int
                      )
  (let (opts (check-ptr leveldb_options_create (leveldb_options_create)))
    (when create-if-missing
      (leveldb_options_set_create_if_missing opts 1))
    (when error-if-exists
      (leveldb_options_set_error_if_exists opts 1))
    (when paranoid-checks
      (leveldb_options_set_paranoid_checks opts 1))
    ;; it's not techbincally a bool, but there is only snappy
    (leveldb_options_set_compression opts (if compression 1 0))
    (when write-buffer-size
      (if (fixnum-positive? write-buffer-size)
        (leveldb_optoins_set_write_buffer_size opts write-buffer-size)
        (error "Bad write buffer size; expected positive fixnum" write-buffer-size)))
    (when max-open-files
      (if (fixnum? max-open-files)
        (leveldb_options_set_max_open_files opts max-open-files)
        (error "Bad max open files; expected fixnum")))
    (when block-size
      (if (fixnum-positive? block-size)
        (leveldb_options_set_block_size opts block-size)
        (error "Bad block size; expected positive fixnum")))
    (when block-restart-interval
      (if (fixnum? block-restart-interval)
        (leveldb_options_set_block_restart_interval opts block-restart-interval)
        (error "Bad block restart interval; expected fixnum")))
    (when lru-cache-capacity
      (if (fixnum-positive? lru-cache-capacity)
        (leveldb_options_set_cache
         opts
         (check-ptr leveldb_cache_create_lru (leveldb_cache_create_lru lru-cache-capacity)))
        (error "Bad lru cache size; expected positive fixnum")))
    (when bloom-filter-bits
      (if (fixnum-positive? bloom-filter-bits)
        (leveldb_options_set_filter_policy
         opts
         (check-ptr leveldb_filterpolicy_create_bloom
                    (leveldb_filterpolicy_create_bloom bloom-filter-bits)))
        (error "Bad bloom filter bits; expected positive fixnum")))
    opts))

(def (leveldb-default-options)
  (force default-options))

(def default-options
  (delay (leveldb-options)))

(def (leveldb-read-options verify-checksums: (verify-checksums #f) ; boolean
                           fill-cache:       (fill-cache #f)       ; boolean
                           )
  (let (opts (check-ptr leveldb_readoptions_create (leveldb_readoptions_create)))
    (when verify-checksums
      (leveldb_readoptions_set_verify_checksums opts 1))
    (when fill-cache
      (leveldb_readoptions_set_fill_cache opts 1))
    opts))

(def (leveldb-default-read-options)
  (force default-read-options))

(def default-read-options
  (delay (leveldb-read-options)))

(def (leveldb-write-options sync: (sync #f)) ; boolean
  (let (opts (check-ptr leveldb_writeoptions_create (leveldb_writeoptions_create)))
    (when sync
      (leveldb_writeoptions_set_sync opts 1))
    opts))

(def (leveldb-default-write-options)
  (force default-write-options))

(def default-write-options
  (delay (leveldb-write-options)))
