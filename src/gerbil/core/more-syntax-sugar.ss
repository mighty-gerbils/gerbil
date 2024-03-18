;;; -*- Gerbil -*-
;;; © vyzo
;;; gerbil core prelude: more syntactic sugar
;;;
prelude: :<root>
package: gerbil/core

(import "expander" "sugar" "more-sugar"
        (phi: +1 "runtime"))
(export #t)

(defrules identifier-rules ()
  ((_ . body)
   (make-setq-macro
    macro: (syntax-rules . body))))

;; TODO Not Implemented Yet -- barf
(defrules quasisyntax ())
