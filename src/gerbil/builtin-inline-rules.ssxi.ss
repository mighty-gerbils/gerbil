;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; :gerbil/core prelude ssxi
prelude: :gerbil/compiler/ssxi
package: gerbil

;; inline rules for runtime primitives
(declare-inline-rules!
 (identity
  (ast-rules (%#call)
    ((%#call _ arg)
     arg)))
 (cons*
  (ast-rules (%#call)
    ((%#call _ x y)
     (%#call (%#ref cons) x y))
    ((%#call recur x y rest ...)
     (%#call (%#ref cons) x (%#call recur y rest ...))))))
