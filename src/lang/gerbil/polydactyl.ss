;;; -*- Gerbil -*-
;;; © vyzo
;;; Polydactyl Gerbil prelude
;;; This is :gerbil/core with a readtable that treats [] as plain parentheses.

(import :gerbil/core
        (for-syntax :gerbil/gambit/readtables))
(export (import: :gerbil/core)
        (for-syntax read-module-body))

(eval-when-compile (import (for-syntax :std/gambit-sharp)))

(begin-syntax
  (def *readtable*
    (let (rt (_gx#make-readtable))
      (_gx#readtable-bracket-keyword-set! rt #f)
      rt))

  (def (read-module-body port)
    (parameterize ((current-readtable *readtable*))
      (let lp ((body []))
        (let (next (read-syntax port))
          (if (eof-object? next)
            (reverse body)
            (lp (cons next body))))))))
