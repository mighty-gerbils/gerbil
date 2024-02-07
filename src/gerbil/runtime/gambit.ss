;;; -*- Gerbil -*-
;;; © vyzo
;;; Gambit builtins
prelude: "../prelude/core"
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
  write-subu8vector
  read-substring
  write-substring)

;; gambit macros
(extern
  macro-absent-obj
  macro-subtype-structure
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
  macro-character-port-output-width-set!)

(void) ;; so that the __0 file exists
