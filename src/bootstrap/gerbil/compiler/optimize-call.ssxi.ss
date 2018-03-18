prelude: :gerbil/compiler/ssxi
package: gerbil/compiler

(begin
  (declare-method
   gxc#!struct-pred::t
   optimize-call
   gxc#!struct-pred::optimize-call
   #f)
  (declare-method
   gxc#!struct-cons::t
   optimize-call
   gxc#!struct-cons::optimize-call
   #f)
  (declare-method
   gxc#!struct-getf::t
   optimize-call
   gxc#!struct-getf::optimize-call
   #f)
  (declare-method
   gxc#!struct-setf::t
   optimize-call
   gxc#!struct-setf::optimize-call
   #f)
  (declare-method gxc#!lambda::t optimize-call gxc#!lambda::optimize-call #f)
  (declare-method
   gxc#!case-lambda::t
   optimize-call
   gxc#!case-lambda::optimize-call
   #f)
  (declare-method
   gxc#!kw-lambda::t
   optimize-call
   gxc#!kw-lambda::optimize-call
   #f)
  (declare-method
   gxc#!kw-lambda-primary::t
   optimize-call
   gxc#!kw-lambda-primary::optimize-call
   #f))
