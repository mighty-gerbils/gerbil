prelude: :gerbil/compiler/ssxi
package: gerbil/compiler

(begin
  (declare-method gxc#!alias::t typedecl gxc#!alias::typedecl #f)
  (declare-method gxc#!struct-type::t typedecl gxc#!struct-type::typedecl #f)
  (declare-method gxc#!struct-pred::t typedecl gxc#!struct-pred::typedecl #f)
  (declare-method gxc#!struct-cons::t typedecl gxc#!struct-cons::typedecl #f)
  (declare-method gxc#!struct-getf::t typedecl gxc#!struct-getf::typedecl #f)
  (declare-method gxc#!struct-setf::t typedecl gxc#!struct-setf::typedecl #f)
  (declare-method gxc#!lambda::t typedecl gxc#!lambda::typedecl #f)
  (declare-method gxc#!case-lambda::t typedecl gxc#!case-lambda::typedecl #f)
  (declare-method gxc#!kw-lambda::t typedecl gxc#!kw-lambda::typedecl #f)
  (declare-method
   gxc#!kw-lambda-primary::t
   typedecl
   gxc#!kw-lambda-primary::typedecl
   #f))
