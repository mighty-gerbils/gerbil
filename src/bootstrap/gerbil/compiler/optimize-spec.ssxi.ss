prelude: :gerbil/compiler/ssxi
package: gerbil/compiler

(begin
  (declare-type gxc#apply-generate-method-specializers (@lambda (1) #f))
  (declare-type gxc#apply-collect-object-refs (@lambda (1) #f))
  (declare-type gxc#apply-subst-object-refs (@lambda (1) #f))
  (declare-type gxc#generate-method-specializers-define-values% (@lambda 1 #f))
  (declare-type gxc#collect-object-refs-call% (@lambda 4 #f))
  (declare-type gxc#subst-object-refs-call% (@lambda 5 #f)))
