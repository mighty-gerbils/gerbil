;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; LevelDB wrapper interface

(import :gerbil/gambit/threads
        :gerbil/gambit/misc
        :std/db/_leveldb
        :std/error
        :std/os/error
        :std/iter
        :std/text/utf8)
(export leveldb-error?
        leveldb?
        leveldb-open leveldb-close
        leveldb-put leveldb-get leveldb-delete leveldb-write leveldb-key?
        leveldb-writebatch leveldb-writebatch-clear
        leveldb-writebatch-put leveldb-writebatch-delete
        leveldb-iterator leveldb-iterator-close leveldb-iterator-valid?
        leveldb-iterator-seek-first leveldb-iterator-seek-last
        leveldb-iterator-seek
        leveldb-iterator-next leveldb-iterator-prev
        leveldb-iterator-key leveldb-iterator-value
        leveldb-iterator-error
        in-leveldb in-leveldb-keys
        leveldb-compact-range
        leveldb-destroy-db
        leveldb-repair-db
        leveldb-options leveldb-default-options
        leveldb-read-options leveldb-default-read-options
        leveldb-write-options leveldb-default-write-options)

(deferror-class LevelDBError () leveldb-error?)

(def (raise-leveldb-error where what)
  (raise (make-leveldb-error what where: where)))

(def (raise-leveldb-error/errptr where errptr)
  (raise (make-leveldb-error (errptr_str errptr) where: where)))

(def (fixnum-positive? obj)
  (and (fixnum? obj)
       (##fxpositive? obj)))

(def (value-bytes key)
  (cond
   ((u8vector? key) key)
   ((string? key) (string->utf8 key))
   (else
    (raise-bad-argument 'leveldb "u8vector or string" key))))

;;; Implementation
(defstruct leveldb (db opt)
  final: #t)
(defstruct leveldb-opts (e cache filter)
  final: #t)
(defstruct leveldb-itor (e)
  final: #t)

(def (leveldb-open name (opts (leveldb-default-options)))
  (let* ((errptr (get-errptr))
         (ptr (leveldb_open (leveldb-opts-e opts) name errptr)))
    (if ptr
      (make-leveldb ptr opts)
      (raise-leveldb-error/errptr 'leveldb-open errptr))))

(def (leveldb-close ldb)
  (with ((leveldb db) ldb)
    (when db
      (leveldb_close db)
      (set! (leveldb-db ldb) #f))))

(defmethod {destroy leveldb}
  leveldb-close)

;;; Basic Operations
(def (leveldb-put ldb key val (opts (leveldb-default-write-options)))
  (with ((leveldb db) ldb)
    (if db
      (let ((keyx (value-bytes key))
            (valx (value-bytes val))
            (errptr (get-errptr)))
        (leveldb_put db opts keyx valx errptr)
        (cond
         ((errptr_str errptr)
          => (cut raise-leveldb-error 'leveldb-put <>))))
      (raise-context-error 'leveldb-put "LevelDB database has been closed"))))

(def (leveldb-get ldb key (opts (leveldb-default-read-options)))
  (with ((leveldb db) ldb)
    (if db
      (let* ((keyx (value-bytes key))
             (errptr (get-errptr))
             (slice (leveldb_get db opts keyx errptr)))
        (cond
         (slice
          (slice->bytes slice))
         ((errptr_str errptr)
          => (cut raise-leveldb-error 'leveldb-get <>))
         (else #f)))
      (raise-context-error 'leveldb-get "LevelDB database has been closed"))))

(def (leveldb-delete ldb key (opts (leveldb-default-write-options)))
  (with ((leveldb db) ldb)
    (if db
      (let ((keyx (value-bytes key))
            (errptr (get-errptr)))
        (leveldb_delete db opts keyx errptr)
        (cond
         ((errptr_str errptr)
          => (cut raise-leveldb-error 'leveldb-delete <>))))
      (raise-context-error 'leveldb-delete  "LevelDB database has been closed"))))

(def (leveldb-write ldb batch (opts (leveldb-default-write-options)))
  (with ((leveldb db) ldb)
    (if db
      (let (errptr (get-errptr))
        (leveldb_write db opts batch errptr)
        (cond
         ((errptr_str errptr)
          => (cut raise-leveldb-error 'leveldb-write <>))))
      (raise-context-error 'leveldb-write "LevelDB database has been closed"))))

(def (leveldb-key? ldb key (opts (leveldb-default-read-options)))
  (with ((leveldb db) ldb)
    (if db
      (let* ((keyx (value-bytes key))
             (errptr (get-errptr))
             (slice (leveldb_get db opts keyx errptr)))
        (cond
         (slice #t)
         ((errptr_str errptr)
          => (cut raise-leveldb-error 'leveldb-key? <>))
         (else #f)))
      (raise-context-error 'leveldb-key? "LevelDB database has been closed"))))

(def (slice->bytes slice)
  (let* ((len (slice_len slice))
         (bytes (make-u8vector len)))
    (slice_bytes slice bytes)
    bytes))

(def errptr-key
  'std/db/leveldb#errptr)

(def (get-errptr)
  (cond
   ((thread-local-get errptr-key)
    => (lambda (errptr)
         (errptr_clear errptr)
         errptr))
   (else
    (let (errptr (check-ptr get-errptr (make_errptr)))
      (thread-local-set! errptr-key errptr)
      errptr))))

;; Write batches
(def (leveldb-writebatch)
  (check-ptr (leveldb_writebatch_create)))

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
      (let (lit (make-leveldb-itor (check-ptr leveldb_create_iterator (leveldb_create_iterator db opts))))
        (make-will lit leveldb-iterator-close)
        lit)
      (raise-context-error 'leveldb-iterator "LevelDB database has been closed"))))

(def (leveldb-iterator-close lit)
  (with ((leveldb-itor itor) lit)
    (when itor
      (leveldb_iter_destroy itor)
      (set! (leveldb-itor-e lit) #f))))

(defmethod {destroy leveldb-itor}
  leveldb-iterator-close)

(def (leveldb-iterator-valid? lit)
  (with ((leveldb-itor itor) lit)
    (if itor
      (eq? (leveldb_iter_valid itor) 1)
      (raise-context-error 'leveldb-iterator "Iterator has been finalized"))))

(def (leveldb-iterator-seek-first lit)
  (with ((leveldb-itor itor) lit)
    (if itor
      (leveldb_iter_seek_to_first itor)
      (raise-context-error 'leveldb-iterator "Iterator has been finalized"))))

(def (leveldb-iterator-seek-last lit)
  (with ((leveldb-itor itor) lit)
    (if itor
      (leveldb_iter_seek_to_last itor)
      (raise-context-error 'leveldb-iterator "Iterator has been finalized"))))

(def (leveldb-iterator-seek lit key)
  (with ((leveldb-itor itor) lit)
    (if itor
      (let (keyx (value-bytes key))
        (leveldb_iter_seek itor keyx))
      (raise-context-error 'leveldb-iterator "Iterator has been finalized"))))

(def (leveldb-iterator-next lit)
  (with ((leveldb-itor itor) lit)
    (if itor
      (leveldb_iter_next itor)
      (raise-context-error 'leveldb-iterator "Iterator has been finalized"))))

(def (leveldb-iterator-prev lit)
  (with ((leveldb-itor itor) lit)
    (if itor
      (leveldb_iter_prev itor)
      (raise-context-error 'leveldb-iterator "Iterator has been finalized"))))

(def (leveldb-iterator-key lit)
  (with ((leveldb-itor itor) lit)
    (if itor
      (alet (slice (leveldb_iter_key itor))
        (slice->bytes slice))
      (raise-context-error 'leveldb-iterator "Iterator has been finalized"))))

(def (leveldb-iterator-value lit)
  (with ((leveldb-itor itor) lit)
    (if itor
      (alet (slice (leveldb_iter_value itor))
        (slice->bytes slice))
      (raise-context-error 'leveldb-iterator "Iterator has been finalized"))))

(def (leveldb-iterator-error lit (raise? #t))
  (with ((leveldb-itor itor) lit)
    (if itor
      (let (errptr (get-errptr))
        (leveldb_iter_get_error itor errptr)
        (cond
         ((not raise?)
          (errptr_str errptr))
         ((errptr_str errptr)
          => (cut raise-leveldb-error 'leveldb-iterator-error <>))
         (else #f)))
      (raise-context-error 'leveldb-iterator "Iterator has been finalized"))))


;; iterator protocol
(defstruct leveldb-iter-state (itor value start limit)
  final: #t)

(def (in-leveldb db (start #f) (limit #f))
  (iter-leveldb
   (make-leveldb-iter-state (leveldb-iterator db) iter-nil
                            (and start (value-bytes start))
                            (and limit (value-bytes limit)))
   leveldb-iter-key-value))

(def (in-leveldb-keys db (start #f) (limit #f))
  (iter-leveldb
   (make-leveldb-iter-state (leveldb-iterator db) iter-nil
                            (and start (value-bytes start))
                            (and limit (value-bytes limit)))
   leveldb-iter-key))

(def (iter-leveldb state value-e)
  (def (next it)
    (with ((iterator state) it)
      (let (r (value-e state))
        (unless (iter-end? r)
          (leveldb-iter-next state))
        r)))

  (def (fini it)
    (with ((iterator state) it)
      (when state
        (leveldb-iter-fini state)
        (set! (iterator-e it) #f))))

  (let (it (make-iterator state next fini))
    (make-will it fini)
    (leveldb-iter-start state)
    it))

(def (leveldb-iter-start state)
  (with ((leveldb-iter-state itor nil start limit) state)
    (if start
      (leveldb-iterator-seek itor start)
      (leveldb-iterator-seek-first itor))
    (set! (leveldb-iter-state-value state)
      (if (leveldb-iterator-valid? itor)
        (if (and start (equal? start limit))
          iter-end
          iter-nil)
        iter-end))))

(def (leveldb-iter-key-value state)
  (with ((leveldb-iter-state itor value) state)
    (if (iter-nil? value)
      (let* ((key (leveldb-iterator-key itor))
             (val (leveldb-iterator-value itor))
             (value (values key val)))
        (set! (leveldb-iter-state-value state) value)
        value)
      value)))

(def (leveldb-iter-key state)
  (with ((leveldb-iter-state itor value) state)
    (if (iter-nil? value)
      (let (value (leveldb-iterator-key itor))
        (set! (leveldb-iter-state-value state) value)
        value)
      value)))

(def (leveldb-iter-next state)
  (with ((leveldb-iter-state itor _ start limit) state)
    (leveldb-iterator-next itor)
    (set! (leveldb-iter-state-value state)
      (if (leveldb-iterator-valid? itor)
        (if (and limit (equal? (leveldb-iterator-key itor) limit))
          iter-end
          iter-nil)
        iter-end))))

(def (leveldb-iter-fini state)
  (with ((leveldb-iter-state itor) state)
    (leveldb-iterator-close itor)))

(def iter-nil '#&nil)

(def (iter-nil? o)
  (eq? iter-nil o))

;; Misc Operations
(def (leveldb-compact-range ldb start-key end-key)
  (with ((leveldb db) ldb)
    (if db
      (let ((startx (value-bytes start-key))
            (endx (value-bytes end-key)))
        (leveldb_compact_range db startx endx))
      (raise-context-error 'leveldb "LevelDB database has been closed"))))

(def (leveldb-destroy-db name (opts (leveldb-default-options)))
  (let (errptr (get-errptr))
    (leveldb_destroy_db (leveldb-opts-e opts) name errptr)
    (cond
     ((errptr_str errptr)
      => (cut raise-leveldb-error 'leveldb-destroy-db <>)))))

(def (leveldb-repair-db name (opts (leveldb-default-options)))
  (let (errptr (get-errptr))
    (leveldb_repair_db (leveldb-opts-e opts) name errptr)
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
  (let (opts (check-ptr (leveldb_options_create)))
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
        (leveldb_options_set_write_buffer_size opts write-buffer-size)
        (raise-bad-argument 'leveldb "positive fixnum: write buffer size" write-buffer-size)))
    (when max-open-files
      (if (fixnum? max-open-files)
        (leveldb_options_set_max_open_files opts max-open-files)
        (raise-bad-argument 'leveldb "fixnum: max open files" max-open-files)))
    (when block-size
      (if (fixnum-positive? block-size)
        (leveldb_options_set_block_size opts block-size)
        (raise-bad-argument 'leveldb "positive fixnum: block size" block-size)))
    (when block-restart-interval
      (if (fixnum? block-restart-interval)
        (leveldb_options_set_block_restart_interval opts block-restart-interval)
        (raise-bad-argument 'leveldb "fixnum: block restart interval" block-restart-interval)))
    (def cache
      (when lru-cache-capacity
        (if (fixnum-positive? lru-cache-capacity)
          (let (ptr (check-ptr leveldb_cache_create_lru (leveldb_cache_create_lru lru-cache-capacity)))
            (leveldb_options_set_cache opts ptr)
            ptr)
          (raise-bad-argument 'leveldb "positive fixnum: lru cache size" lru-cache-capacity))))
    (def bloom-filter
      (when bloom-filter-bits
        (if (fixnum-positive? bloom-filter-bits)
          (let (ptr (check-ptr (leveldb_filterpolicy_create_bloom bloom-filter-bits)))
            (leveldb_options_set_filter_policy opts ptr)
            ptr)
          (raise-bad-argument 'leveldb "positive fixnum: bloom filter biits" bloom-filter-bits))))
    (make-leveldb-opts opts cache bloom-filter)))

(def (leveldb-default-options)
  (force default-options))

(def default-options
  (delay (leveldb-options)))

(def (leveldb-read-options verify-checksums: (verify-checksums #f) ; boolean
                           fill-cache:       (fill-cache #f)       ; boolean
                           )
  (let (opts (check-ptr (leveldb_readoptions_create)))
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
  (let (opts (check-ptr (leveldb_writeoptions_create)))
    (when sync
      (leveldb_writeoptions_set_sync opts 1))
    opts))

(def (leveldb-default-write-options)
  (force default-write-options))

(def default-write-options
  (delay (leveldb-write-options)))
