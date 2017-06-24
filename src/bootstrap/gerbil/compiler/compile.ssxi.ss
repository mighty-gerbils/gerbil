prelude: :gerbil/compiler/ssxi
package: gerbil/compiler

(begin
  (declare-type
   gxc#generate-runtime-gensym-reference
   (@case-lambda
    (1 gxc#generate-runtime-gensym-reference__0)
    (2 gxc#generate-runtime-gensym-reference__opt-lambda9296)))
  (declare-type
   gxc#generate-runtime-temporary
   (@case-lambda
    (0 gxc#generate-runtime-temporary__0)
    (1 gxc#generate-runtime-temporary__opt-lambda9242)))
  (declare-type
   gxc#generate-runtime-let-values%
   (@case-lambda
    (1 gxc#generate-runtime-let-values%__0)
    (2 gxc#generate-runtime-let-values%__opt-lambda6979)))
  (declare-type
   gxc#generate-runtime-letrec-values%
   (@case-lambda
    (1 gxc#generate-runtime-letrec-values%__0)
    (2 gxc#generate-runtime-letrec-values%__opt-lambda6558)))
  (declare-type
   gxc#meta-state::t
   (@struct-type gxc#meta-state::t #f 4 :init! ()))
  (declare-type gxc#meta-state? (@struct-pred gxc#meta-state::t))
  (declare-type gxc#make-meta-state (@struct-cons gxc#meta-state::t))
  (declare-type gxc#meta-state-src (@struct-getf gxc#meta-state::t 0))
  (declare-type gxc#meta-state-n (@struct-getf gxc#meta-state::t 1))
  (declare-type gxc#meta-state-open (@struct-getf gxc#meta-state::t 2))
  (declare-type gxc#meta-state-blocks (@struct-getf gxc#meta-state::t 3))
  (declare-type gxc#meta-state-src-set! (@struct-setf gxc#meta-state::t 0))
  (declare-type gxc#meta-state-n-set! (@struct-setf gxc#meta-state::t 1))
  (declare-type gxc#meta-state-open-set! (@struct-setf gxc#meta-state::t 2))
  (declare-type gxc#meta-state-blocks-set! (@struct-setf gxc#meta-state::t 3))
  (declare-method gxc#meta-state::t :init! gxc#meta-state:::init! #f)
  (declare-type
   gxc#meta-state-block::t
   (@struct-type gxc#meta-state-block::t #f 4 #f ()))
  (declare-type gxc#meta-state-block? (@struct-pred gxc#meta-state-block::t))
  (declare-type
   gxc#make-meta-state-block
   (@struct-cons gxc#meta-state-block::t))
  (declare-type
   gxc#meta-state-block-ctx
   (@struct-getf gxc#meta-state-block::t 0))
  (declare-type
   gxc#meta-state-block-phi
   (@struct-getf gxc#meta-state-block::t 1))
  (declare-type
   gxc#meta-state-block-n
   (@struct-getf gxc#meta-state-block::t 2))
  (declare-type
   gxc#meta-state-block-code
   (@struct-getf gxc#meta-state-block::t 3))
  (declare-type
   gxc#meta-state-block-ctx-set!
   (@struct-setf gxc#meta-state-block::t 0))
  (declare-type
   gxc#meta-state-block-phi-set!
   (@struct-setf gxc#meta-state-block::t 1))
  (declare-type
   gxc#meta-state-block-n-set!
   (@struct-setf gxc#meta-state-block::t 2))
  (declare-type
   gxc#meta-state-block-code-set!
   (@struct-setf gxc#meta-state-block::t 3)))
