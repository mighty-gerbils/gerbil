;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; LevelDB wrapper interface
package: std/db

(import :std/db/_leveldb
        :std/error
        :std/format)
(export leveldb-error?
        )

(defstruct (leveldb-error <error>) ())

(def (raise-leveldb-error where what)
  (raise (make-leveldb-error what [] where)))

(defrules check-ptr ()
  ((_ where expr)
   (let (ptr expr)
     (if ptr ptr
         (raise-leveldb-error 'where "Error allocating pointer")))))

(def (fixnum-positive? obj)
  (and (fixnum? obj)
       (fxpositive? obj)))

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
