prelude: :gerbil/compiler/ssxi
package: gerbil/compiler

(begin
  (declare-type gxc#optimizer-info-init! (@lambda 0 #f))
  (declare-type gxc#optimize! (@lambda 1 #f))
  (declare-type gxc#optimizer-load-ssxi-deps (@lambda 1 #f))
  (declare-type gxc#optimizer-load-ssxi (@lambda 1 #f))
  (declare-type gxc#optimizer-import-ssxi (@lambda 1 #f))
  (declare-type gxc#optimize-source (@lambda 1 #f))
  (declare-type gxc#apply-generate-ssxi (@lambda (1) #f))
  (declare-type gxc#generate-ssxi-begin-syntax% (@lambda 1 #f))
  (declare-type gxc#generate-ssxi-module% (@lambda 1 #f))
  (declare-type gxc#generate-ssxi-define-values% (@lambda 1 #f))
  (declare-type gxc#generate-ssxi-call% (@lambda 1 #f))
  (declare-type gxc#!alias::typedecl (@lambda 1 #f))
  (declare-method gxc#!alias::t typedecl gxc#!alias::typedecl #f)
  (declare-type gxc#!struct-type::typedecl (@lambda 1 #f))
  (declare-method gxc#!struct-type::t typedecl gxc#!struct-type::typedecl #f)
  (declare-type gxc#!struct-pred::typedecl (@lambda 1 #f))
  (declare-method gxc#!struct-pred::t typedecl gxc#!struct-pred::typedecl #f)
  (declare-type gxc#!struct-cons::typedecl (@lambda 1 #f))
  (declare-method gxc#!struct-cons::t typedecl gxc#!struct-cons::typedecl #f)
  (declare-type gxc#!struct-getf::typedecl (@lambda 1 #f))
  (declare-method gxc#!struct-getf::t typedecl gxc#!struct-getf::typedecl #f)
  (declare-type gxc#!struct-setf::typedecl (@lambda 1 #f))
  (declare-method gxc#!struct-setf::t typedecl gxc#!struct-setf::typedecl #f)
  (declare-type gxc#!lambda::typedecl (@lambda 1 #f))
  (declare-method gxc#!lambda::t typedecl gxc#!lambda::typedecl #f)
  (declare-type gxc#!case-lambda::typedecl (@lambda 1 #f))
  (declare-method gxc#!case-lambda::t typedecl gxc#!case-lambda::typedecl #f)
  (declare-type gxc#!kw-lambda::typedecl (@lambda 1 #f))
  (declare-method gxc#!kw-lambda::t typedecl gxc#!kw-lambda::typedecl #f)
  (declare-type gxc#!kw-lambda-primary::typedecl (@lambda 1 #f))
  (declare-method
   gxc#!kw-lambda-primary::t
   typedecl
   gxc#!kw-lambda-primary::typedecl
   #f))
