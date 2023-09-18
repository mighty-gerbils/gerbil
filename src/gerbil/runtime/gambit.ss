;;; -*- Gerbil -*-
;;; © vyzo
;;; Gambit builtins
prelude: :gerbil/core
package: gerbil/runtime
namespace: #f

(export #t)

;; gambit runtime builtins
(extern
  ;; TODO
  utf8->string
  make-table
  table-length
  table-ref
  table-set!
  table->list
  table-for-each
  table-search
  table-copy
  table-merge!
  file-info
  file-info-last-modification-time
  display-continuation-backtrace
  )

;; gambit macros
(extern
  ;; TODO
  macro-absent-obj
  macro-subtype-structure
  macro-writeenv-style
  macro-readenv-port
  macro-readenv-script-line-set!
  macro-readtable-write-extended-read-macros?-set!
  macro-readtable-bracket-handler-set!
  macro-exception?
  macro-character-port?
  macro-character-port-output-width
  macro-character-port-output-width-set!)
