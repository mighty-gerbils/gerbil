;;; -*- Gerbil -*-
;;; © vyzo
;;; Gambit builtins
prelude: :gerbil/core
package: gerbil/runtime
namespace: #f

(export #t)

;; gambit runtime builtin refs that are not in the core prelude <host-runtime>
(extern
  pp
  utf8->string
  string->utf8
  string->uninterned-keyword
  string->uninterned-symbol
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
  readtable-sharing-allowed?-set
  output-port-readtable
  thread-thread-group
  configure-command-string)

;; gambit macros
(extern
  macro-absent-obj
  macro-subtype-structure
  macro-writeenv-style
  macro-readenv-port
  macro-readenv-script-line-set!
  macro-readtable-write-extended-read-macros?-set!
  macro-readtable-bracket-handler-set!
  macro-readtable-brace-handler-set!
  macro-exception?
  macro-character-port?
  macro-character-port-output-width
  macro-character-port-output-width-set!)