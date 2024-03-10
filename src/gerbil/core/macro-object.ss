;;; -*- Gerbil -*-
;;; © vyzo
;;; gerbil core prelude: macro objects
;;;
prelude: :<root>
package: gerbil/core

(import "runtime" "expander" "sugar" "mop"
        (phi: +1 "runtime"))
(export #t)

(defclass macro-object (macro)
  id: gerbil.core#macro-object::t)

(defmethod {apply-macro-expander macro-object}
  (lambda (self stx)
    (core-apply-expander (macro-object-macro self) stx)))
