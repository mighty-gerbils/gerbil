prelude: :gerbil/compiler/ssxi
package: gerbil/compiler

(begin
  (declare-type gxc#apply-optimize-call (@lambda (1) #f))
  (declare-type gxc#optimize-call% (@lambda 1 #f))
  (declare-type gxc#!struct-pred::optimize-call (@lambda 3 #f))
  (declare-type gxc#!struct-cons::optimize-call (@lambda 3 #f))
  (declare-type gxc#!struct-getf::optimize-call (@lambda 3 #f))
  (declare-type gxc#!struct-setf::optimize-call (@lambda 3 #f))
  (declare-type gxc#!class-pred::optimize-call (@lambda 3 #f))
  (declare-type gxc#!class-cons::optimize-call (@lambda 3 #f))
  (declare-type gxc#!class-getf::optimize-call (@lambda 3 #f))
  (declare-type gxc#!class-setf::optimize-call (@lambda 3 #f))
  (declare-type gxc#!lambda::optimize-call (@lambda 3 #f))
  (declare-type gxc#!case-lambda::optimize-call (@lambda 3 #f))
  (declare-type gxc#!lambda-arity-match? (@lambda 2 #f))
  (declare-type gxc#!kw-lambda::optimize-call (@lambda 3 #f))
  (declare-type gxc#!kw-lambda-split-args (@lambda 2 #f))
  (declare-type gxc#!kw-lambda-primary::optimize-call (@lambda 3 #f)))
