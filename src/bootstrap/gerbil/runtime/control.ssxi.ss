prelude: :gerbil/compiler/ssxi
package: gerbil/runtime

(begin
  (declare-type make-promise (@lambda 1 #f))
  (declare-type call-with-parameters (@lambda (1) #f))
  (declare-type with-unwind-protect (@lambda 2 #f))
  (declare-type keyword-dispatch (@lambda (2) #f))
  (declare-type keyword-rest (@lambda (1) #f)))
