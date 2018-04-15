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
  (declare-type gxc#optimizer-info:::init! (@lambda 1 #f))
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
  (declare-type
   gxc#!kw-lambda::t
   (@struct-type gxc#!kw-lambda::t gxc#!procedure::t 2 #f ()))
  (declare-type gxc#!kw-lambda? (@struct-pred gxc#!kw-lambda::t))
  (declare-type gxc#make-!kw-lambda (@struct-cons gxc#!kw-lambda::t))
  (declare-type gxc#!kw-lambda-table (@struct-getf gxc#!kw-lambda::t 0 #f))
  (declare-type gxc#!kw-lambda-dispatch (@struct-getf gxc#!kw-lambda::t 1 #f))
  (declare-type
   gxc#!kw-lambda-table-set!
   (@struct-setf gxc#!kw-lambda::t 0 #f))
  (declare-type
   gxc#!kw-lambda-dispatch-set!
   (@struct-setf gxc#!kw-lambda::t 1 #f))
  (declare-type
   gxc#!kw-lambda-primary::t
   (@struct-type gxc#!kw-lambda-primary::t gxc#!procedure::t 2 #f ()))
  (declare-type
   gxc#!kw-lambda-primary?
   (@struct-pred gxc#!kw-lambda-primary::t))
  (declare-type
   gxc#make-!kw-lambda-primary
   (@struct-cons gxc#!kw-lambda-primary::t))
  (declare-type
   gxc#!kw-lambda-primary-keys
   (@struct-getf gxc#!kw-lambda-primary::t 0 #f))
  (declare-type
   gxc#!kw-lambda-primary-main
   (@struct-getf gxc#!kw-lambda-primary::t 1 #f))
  (declare-type
   gxc#!kw-lambda-primary-keys-set!
   (@struct-setf gxc#!kw-lambda-primary::t 0 #f))
  (declare-type
   gxc#!kw-lambda-primary-main-set!
   (@struct-setf gxc#!kw-lambda-primary::t 1 #f))
  (declare-type gxc#!struct-type:::init! (@lambda 7 #f))
  (declare-method gxc#!struct-type::t :init! gxc#!struct-type:::init! #f)
  (declare-type gxc#!lambda:::init!__% (@lambda 6 struct-instance-init!))
  (declare-type gxc#!lambda:::init!__0 (@lambda 4 #f))
  (declare-type gxc#!lambda:::init!__1 (@lambda 5 #f))
  (declare-type
   gxc#!lambda:::init!
   (@case-lambda
    (4 gxc#!lambda:::init!__0)
    (5 gxc#!lambda:::init!__1)
    (6 gxc#!lambda:::init!__%)))
  (declare-method gxc#!lambda::t :init! gxc#!lambda:::init! #f)
  (declare-type gxc#!struct-type-vtab (@lambda 1 #f))
  (declare-type gxc#!struct-type-lookup-method (@lambda 2 #f))
  (declare-type gxc#optimizer-declare-type!__% (@lambda 3 #f))
  (declare-type gxc#optimizer-declare-type!__0 (@lambda 2 #f))
  (declare-type
   gxc#optimizer-declare-type!
   (@case-lambda
    (2 gxc#optimizer-declare-type!__0)
    (3 gxc#optimizer-declare-type!__%)))
  (declare-type gxc#optimizer-clear-type!__% (@lambda 2 #f))
  (declare-type gxc#optimizer-clear-type!__0 (@lambda 1 #f))
  (declare-type
   gxc#optimizer-clear-type!
   (@case-lambda
    (1 gxc#optimizer-clear-type!__0)
    (2 gxc#optimizer-clear-type!__%)))
  (declare-type gxc#optimizer-declare-method!__% (@lambda 4 #f))
  (declare-type gxc#optimizer-declare-method!__0 (@lambda 3 #f))
  (declare-type
   gxc#optimizer-declare-method!
   (@case-lambda
    (3 gxc#optimizer-declare-method!__0)
    (4 gxc#optimizer-declare-method!__%)))
  (declare-type gxc#optimizer-lookup-type (@lambda 1 #f))
  (declare-type gxc#optimizer-resolve-type (@lambda 1 #f))
  (declare-type gxc#optimizer-lookup-method (@lambda 2 #f))
  (declare-type gxc#identifier-symbol (@lambda 1 #f)))
