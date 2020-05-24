;;; -*- Gerbil -*-
;;; © vyzo
;;; Polydactyl Gerbil prelude
;;; This is :gerbil/core with a readtable that treats [] as plain parentheses.

(import :gerbil/core
        (for-syntax :gerbil/gambit/readtables))
(export (import: :gerbil/core)
        (for-syntax read-module-body))

(module _gambit
  (export #t)
  (extern namespace: #f macro-readtable-brace-keyword-set!))

(import (for-syntax _gambit))
(eval-when-compile (import :std/gambit-sharp))

(begin-syntax
  (def *readtable*
    (let (rt (##make-standard-readtable))
      (macro-readtable-brace-keyword-set! rt '@method)
      rt))

  (def (read-module-body port)
    (parameterize ((current-readtable *readtable*))
      (let lp ((body []))
        (let (next (read-syntax port))
          (if (eof-object? next)
            (reverse body)
            (lp (cons next body))))))))
