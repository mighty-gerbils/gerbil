;;; -*- Gerbil -*-
;;; © vyzo
;;; Gambit builtins
prelude: "../core"
package: gerbil/runtime
namespace: #f

(export #t)

;; compatibilityf for prerelease gambit changes
(cond-expand
  (,(with-catch false (cut eval 'max-char-code)))
  (else
   (def max-char-code #x10ffff)))

;; gambit runtime builtin refs that are not in the core prelude <host-runtime>
(extern
  pp
  utf8->string
  string->utf8
  string->uninterned-keyword
  string->uninterned-symbol
  open-output-string
  get-output-string
  fxarithmetic-shift
  fxquotient
  make-table
  table?
  table-length
  table-ref
  table-set!
  table->list
  list->table
  table-for-each
  table-search
  table-copy
  table-merge
  table-merge!
  file-info
  file-info-last-modification-time
  display-continuation-backtrace
  system-version-string
  current-readtable
  err-code->string r
  input-port-readtable-set!
  output-port-readtable-set!
  output-port-column
  output-port-readtable
  readtable-sharing-allowed?-set

  configure-command-string

  random-source-randomize!
  default-random-source
  random-integer

  make-thread
  make-thread-group
  thread-thread-group
  current-thread
  thread? thread-group?
  thread-start!
  thread-init!
  thread-thread-group
  make-mutex
  mutex-lock! mutex-unlock!

  read-subu8vector
  write-subu8vectorp
  read-substring
  write-substring

  object->serial-number)

;; gambit macros
(extern
  macro-absent-obj
  macro-unused-obj
  macro-deleted-obj
  macro-gc-hash-table-flags
  macro-gc-hash-table-flag-need-rehash
  macro-gc-hash-table-flag-mem-alloc-keys
  macro-gc-hash-table-flag-weak-keys
  macro-gc-hash-table-count
  macro-gc-hash-table-count-set!
  macro-gc-hash-table-free
  macro-gc-hash-table-free-set!
  macro-gc-hash-table-size
  macro-gc-hash-table-key0
  macro-slot
  macro-type-fixnum
  macro-type-mem1
  macro-type-mem2
  macro-subtype-structure
  macro-subtype-boxvalues
  macro-subtype-vector
  macro-subtype-pair
  macro-subtype-ratnum
  macro-subtype-cpxnum
  macro-subtype-symbol
  macro-subtype-keyword
  macro-subtype-frame
  macro-subtype-continuation
  macro-subtype-promise
  macro-subtype-weak
  macro-subtype-procedure
  macro-subtype-foreign
  macro-subtype-string
  macro-subtype-s8vector
  macro-subtype-u8vector
  macro-subtype-s16vector
  macro-subtype-u16vector
  macro-subtype-s32vector
  macro-subtype-u32vector
  macro-subtype-f32vector
  macro-subtype-s64vector
  macro-subtype-u64vector
  macro-subtype-f64vector
  macro-subtype-flonum
  macro-subtype-bignum
  macro-type-table
  macro-type-time
  macro-type-mutex
  macro-type-condvar
  macro-type-thread
  macro-type-tgroup
  macro-type-port
  macro-type-object-port
  macro-type-character-port
  macro-type-byte-port
  macro-type-device-port
  macro-type-vector-port
  macro-type-string-port
  macro-type-u8vector-port
  macro-type-raw-device-port
  macro-type-tcp-server-port
  macro-type-udp-port
  macro-type-directory-port
  macro-type-event-queue-port
  macro-type-readenv
  macro-type-writeenv
  macro-type-readtable
  macro-type-processor
  macro-type-vm
  macro-type-file-info
  macro-type-socket-info
  macro-type-address-info
  macro-max-fixnum32
  macro-number-dispatch
  macro-ratnum-numerator
  macro-ratnum-denominator
  macro-cpxnum-real
  macro-cpxnum-imag
  macro-writeenv-style
  macro-readenv-port
  macro-readenv-filepos
  macro-readenv-script-line-set!
  macro-readtable-write-extended-read-macros?-set!
  macro-readtable-bracket-handler-set!
  macro-readtable-brace-handler-set!
  macro-exception?
  macro-character-port?
  macro-character-port-wchars
  macro-character-port-output-width
  macro-character-port-output-width-set!
  macro-mutex-lock!
  macro-mutex-unlock!
  macro-current-thread)

(void) ;; so that the __0 file exists
