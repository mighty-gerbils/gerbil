prelude: :gerbil/compiler/ssxi
package: gerbil/compiler

(begin
  (declare-type gxc#apply-optimize-call (@lambda (1) #f))
  (declare-type gxc#optimize-call% (@lambda 1 #f))
  (declare-type gxc#!predicate::optimize-call (@lambda 3 #f))
  (declare-type gxc#!predicate::optimize-call::specialize (@lambda 1 #f))
  (declare-type gxc#!constructor::optimize-call (@lambda 3 #f))
  (declare-type gxc#!constructor::optimize-call::specialize (@lambda 1 #f))
  (declare-type gxc#!accessor::optimize-call (@lambda 3 #f))
  (declare-type gxc#!accessor::optimize-call::specialize (@lambda 1 #f))
  (declare-type gxc#!mutator::optimize-call (@lambda 3 #f))
  (declare-type gxc#!mutator::optimize-call::specialize (@lambda 1 #f))
  (declare-type gxc#!lambda::optimize-call (@lambda 3 #f))
  (declare-type gxc#!case-lambda::optimize-call (@lambda 3 #f))
  (declare-type gxc#!lambda-arity-match? (@lambda 2 #f))
  (declare-type gxc#!kw-lambda::optimize-call (@lambda 3 #f))
  (declare-type gxc#!kw-lambda-split-args (@lambda 2 #f))
  (declare-type gxc#!kw-lambda-primary::optimize-call (@lambda 3 #f)))
