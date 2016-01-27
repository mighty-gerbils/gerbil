;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; gambit specific runtime symbols: readtables
package: gerbil/gambit

(export #t)
(extern namespace: #f
  current-readtable
  readtable?
  readtable-case-conversion?
  readtable-case-conversion?-set
  readtable-keywords-allowed?
  readtable-keywords-allowed?-set
  readtable-sharing-allowed?
  readtable-sharing-allowed?-set
  readtable-eval-allowed?
  readtable-eval-allowed?-set
  readtable-write-cdr-read-macros?
  readtable-write-cdr-read-macros?-set
  readtable-write-extended-read-macros?
  readtable-write-extended-read-macros?-set
  readtable-max-write-level
  readtable-max-write-level-set
  readtable-max-write-length
  readtable-max-write-length-set
  readtable-max-unescaped-char
  readtable-max-unescaped-char-set
  )
