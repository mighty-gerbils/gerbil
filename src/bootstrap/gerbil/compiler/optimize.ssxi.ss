prelude: :gerbil/compiler/ssxi
package: gerbil/compiler

(begin
  (declare-type
   gxc#optimizer-info::t
   (@struct-type gxc#optimizer-info::t #f 2 :init! ()))
  (declare-type gxc#optimizer-info? (@struct-pred gxc#optimizer-info::t))
  (declare-type gxc#make-optimizer-info (@struct-cons gxc#optimizer-info::t))
  (declare-type
   gxc#optimizer-info-type
   (@struct-getf gxc#optimizer-info::t 0 #f))
  (declare-type
   gxc#optimizer-info-ssxi
   (@struct-getf gxc#optimizer-info::t 1 #f))
  (declare-type
   gxc#optimizer-info-type-set!
   (@struct-setf gxc#optimizer-info::t 0 #f))
  (declare-type
   gxc#optimizer-info-ssxi-set!
   (@struct-setf gxc#optimizer-info::t 1 #f))
  (declare-method gxc#optimizer-info::t :init! gxc#optimizer-info:::init! #f)
  (declare-type gxc#!type::t (@struct-type gxc#!type::t #f 1 #f ()))
  (declare-type gxc#!type? (@struct-pred gxc#!type::t))
  (declare-type gxc#make-!type (@struct-cons gxc#!type::t))
  (declare-type gxc#!type-id (@struct-getf gxc#!type::t 0 #f))
  (declare-type gxc#!type-id-set! (@struct-setf gxc#!type::t 0 #f))
  (declare-type
   gxc#!alias::t
   (@struct-type gxc#!alias::t gxc#!type::t 0 #f ()))
  (declare-type gxc#!alias? (@struct-pred gxc#!alias::t))
  (declare-type gxc#make-!alias (@struct-cons gxc#!alias::t))
  (declare-type
   gxc#!struct-type::t
   (@struct-type gxc#!struct-type::t gxc#!type::t 6 :init! ()))
  (declare-type gxc#!struct-type? (@struct-pred gxc#!struct-type::t))
  (declare-type gxc#make-!struct-type (@struct-cons gxc#!struct-type::t))
  (declare-type gxc#!struct-type-super (@struct-getf gxc#!struct-type::t 0 #f))
  (declare-type
   gxc#!struct-type-fields
   (@struct-getf gxc#!struct-type::t 1 #f))
  (declare-type
   gxc#!struct-type-xfields
   (@struct-getf gxc#!struct-type::t 2 #f))
  (declare-type gxc#!struct-type-ctor (@struct-getf gxc#!struct-type::t 3 #f))
  (declare-type gxc#!struct-type-plist (@struct-getf gxc#!struct-type::t 4 #f))
  (declare-type
   gxc#!struct-type-methods
   (@struct-getf gxc#!struct-type::t 5 #f))
  (declare-type
   gxc#!struct-type-super-set!
   (@struct-setf gxc#!struct-type::t 0 #f))
  (declare-type
   gxc#!struct-type-fields-set!
   (@struct-setf gxc#!struct-type::t 1 #f))
  (declare-type
   gxc#!struct-type-xfields-set!
   (@struct-setf gxc#!struct-type::t 2 #f))
  (declare-type
   gxc#!struct-type-ctor-set!
   (@struct-setf gxc#!struct-type::t 3 #f))
  (declare-type
   gxc#!struct-type-plist-set!
   (@struct-setf gxc#!struct-type::t 4 #f))
  (declare-type
   gxc#!struct-type-methods-set!
   (@struct-setf gxc#!struct-type::t 5 #f))
  (declare-type
   gxc#!procedure::t
   (@struct-type gxc#!procedure::t gxc#!type::t 0 #f ()))
  (declare-type gxc#!procedure? (@struct-pred gxc#!procedure::t))
  (declare-type gxc#make-!procedure (@struct-cons gxc#!procedure::t))
  (declare-type
   gxc#!struct-pred::t
   (@struct-type gxc#!struct-pred::t gxc#!procedure::t 0 #f ()))
  (declare-type gxc#!struct-pred? (@struct-pred gxc#!struct-pred::t))
  (declare-type gxc#make-!struct-pred (@struct-cons gxc#!struct-pred::t))
  (declare-type
   gxc#!struct-cons::t
   (@struct-type gxc#!struct-cons::t gxc#!procedure::t 0 #f ()))
  (declare-type gxc#!struct-cons? (@struct-pred gxc#!struct-cons::t))
  (declare-type gxc#make-!struct-cons (@struct-cons gxc#!struct-cons::t))
  (declare-type
   gxc#!struct-getf::t
   (@struct-type gxc#!struct-getf::t gxc#!procedure::t 2 #f ()))
  (declare-type gxc#!struct-getf? (@struct-pred gxc#!struct-getf::t))
  (declare-type gxc#make-!struct-getf (@struct-cons gxc#!struct-getf::t))
  (declare-type gxc#!struct-getf-off (@struct-getf gxc#!struct-getf::t 0 #f))
  (declare-type
   gxc#!struct-getf-unchecked?
   (@struct-getf gxc#!struct-getf::t 1 #f))
  (declare-type
   gxc#!struct-getf-off-set!
   (@struct-setf gxc#!struct-getf::t 0 #f))
  (declare-type
   gxc#!struct-getf-unchecked?-set!
   (@struct-setf gxc#!struct-getf::t 1 #f))
  (declare-type
   gxc#!struct-setf::t
   (@struct-type gxc#!struct-setf::t gxc#!procedure::t 2 #f ()))
  (declare-type gxc#!struct-setf? (@struct-pred gxc#!struct-setf::t))
  (declare-type gxc#make-!struct-setf (@struct-cons gxc#!struct-setf::t))
  (declare-type gxc#!struct-setf-off (@struct-getf gxc#!struct-setf::t 0 #f))
  (declare-type
   gxc#!struct-setf-unchecked?
   (@struct-getf gxc#!struct-setf::t 1 #f))
  (declare-type
   gxc#!struct-setf-off-set!
   (@struct-setf gxc#!struct-setf::t 0 #f))
  (declare-type
   gxc#!struct-setf-unchecked?-set!
   (@struct-setf gxc#!struct-setf::t 1 #f))
  (declare-type
   gxc#!lambda::t
   (@struct-type gxc#!lambda::t gxc#!procedure::t 4 :init! ()))
  (declare-type gxc#!lambda? (@struct-pred gxc#!lambda::t))
  (declare-type gxc#make-!lambda (@struct-cons gxc#!lambda::t))
  (declare-type gxc#!lambda-arity (@struct-getf gxc#!lambda::t 0 #f))
  (declare-type gxc#!lambda-dispatch (@struct-getf gxc#!lambda::t 1 #f))
  (declare-type gxc#!lambda-inline (@struct-getf gxc#!lambda::t 2 #f))
  (declare-type gxc#!lambda-inline-typedecl (@struct-getf gxc#!lambda::t 3 #f))
  (declare-type gxc#!lambda-arity-set! (@struct-setf gxc#!lambda::t 0 #f))
  (declare-type gxc#!lambda-dispatch-set! (@struct-setf gxc#!lambda::t 1 #f))
  (declare-type gxc#!lambda-inline-set! (@struct-setf gxc#!lambda::t 2 #f))
  (declare-type
   gxc#!lambda-inline-typedecl-set!
   (@struct-setf gxc#!lambda::t 3 #f))
  (declare-type
   gxc#!case-lambda::t
   (@struct-type gxc#!case-lambda::t gxc#!procedure::t 1 #f ()))
  (declare-type gxc#!case-lambda? (@struct-pred gxc#!case-lambda::t))
  (declare-type gxc#make-!case-lambda (@struct-cons gxc#!case-lambda::t))
  (declare-type
   gxc#!case-lambda-clauses
   (@struct-getf gxc#!case-lambda::t 0 #f))
  (declare-type
   gxc#!case-lambda-clauses-set!
   (@struct-setf gxc#!case-lambda::t 0 #f))
  (declare-method gxc#!struct-type::t :init! gxc#!struct-type:::init! #f)
  (begin
    (declare-type
     gxc#!lambda:::init!__opt-lambda23176
     (@lambda 6 struct-instance-init!))
    (declare-type
     gxc#!lambda:::init!
     (@case-lambda
      (4 gxc#!lambda:::init!__0)
      (5 gxc#!lambda:::init!__1)
      (6 gxc#!lambda:::init!__opt-lambda23176))))
  (declare-method gxc#!lambda::t :init! gxc#!lambda:::init! #f)
  (declare-type
   gxc#optimizer-declare-type!
   (@case-lambda
    (2 gxc#optimizer-declare-type!__0)
    (3 gxc#optimizer-declare-type!__opt-lambda23021)))
  (declare-type
   gxc#optimizer-declare-method!
   (@case-lambda
    (3 gxc#optimizer-declare-method!__0)
    (4 gxc#optimizer-declare-method!__opt-lambda22997)))
  (declare-type
   gxc#lift-case-lambda-clauses
   (@case-lambda
    (3 gxc#lift-case-lambda-clauses__0)
    (4 gxc#lift-case-lambda-clauses__opt-lambda20112)))
  (declare-type
   gxc#basic-expression-type-make-struct-field-accessor
   (@case-lambda
    (2 gxc#basic-expression-type-make-struct-field-accessor__0)
    (3 gxc#basic-expression-type-make-struct-field-accessor__opt-lambda16041)))
  (declare-type
   gxc#basic-expression-type-make-struct-field-mutator
   (@case-lambda
    (2 gxc#basic-expression-type-make-struct-field-mutator__0)
    (3 gxc#basic-expression-type-make-struct-field-mutator__opt-lambda15911)))
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
  (declare-method gxc#!alias::t typedecl gxc#!alias::typedecl #f)
  (declare-method gxc#!struct-type::t typedecl gxc#!struct-type::typedecl #f)
  (declare-method gxc#!struct-pred::t typedecl gxc#!struct-pred::typedecl #f)
  (declare-method gxc#!struct-cons::t typedecl gxc#!struct-cons::typedecl #f)
  (declare-method gxc#!struct-getf::t typedecl gxc#!struct-getf::typedecl #f)
  (declare-method gxc#!struct-setf::t typedecl gxc#!struct-setf::typedecl #f)
  (declare-method gxc#!lambda::t typedecl gxc#!lambda::typedecl #f)
  (declare-method gxc#!case-lambda::t typedecl gxc#!case-lambda::typedecl #f)
  (declare-type
   gxc#identifier-symbol
   (@lambda 1 gxc#generate-runtime-binding-id)))
