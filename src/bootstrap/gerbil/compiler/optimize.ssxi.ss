prelude: :gerbil/compiler/ssxi
package: gerbil/compiler

(begin
  (declare-type
   gxc#optimizer-info::t
   (@struct-type gxc#optimizer-info::t #f 2 :init! ()))
  (declare-type gxc#optimizer-info? (@struct-pred gxc#optimizer-info::t))
  (declare-type gxc#make-optimizer-info (@struct-cons gxc#optimizer-info::t))
  (declare-type gxc#optimizer-info-type (@struct-getf gxc#optimizer-info::t 0))
  (declare-type gxc#optimizer-info-ssxi (@struct-getf gxc#optimizer-info::t 1))
  (declare-type
   gxc#optimizer-info-type-set!
   (@struct-setf gxc#optimizer-info::t 0))
  (declare-type
   gxc#optimizer-info-ssxi-set!
   (@struct-setf gxc#optimizer-info::t 1))
  (declare-type gxc#!type::t (@struct-type gxc#!type::t #f 1 #f ()))
  (declare-type gxc#!type? (@struct-pred gxc#!type::t))
  (declare-type gxc#make-!type (@struct-cons gxc#!type::t))
  (declare-type gxc#!type-id (@struct-getf gxc#!type::t 0))
  (declare-type gxc#!type-id-set! (@struct-setf gxc#!type::t 0))
  (declare-type
   gxc#!alias::t
   (@struct-type gxc#!alias::t gxc#!type::t 0 #f ()))
  (declare-type gxc#!alias? (@struct-pred gxc#!alias::t))
  (declare-type gxc#make-!alias (@struct-cons gxc#!alias::t))
  (declare-type
   gxc#!struct-type::t
   (@struct-type gxc#!struct-type::t gxc#!type::t 5 #f ()))
  (declare-type gxc#!struct-type? (@struct-pred gxc#!struct-type::t))
  (declare-type gxc#make-!struct-type (@struct-cons gxc#!struct-type::t))
  (declare-type gxc#!struct-type-super (@struct-getf gxc#!struct-type::t 0))
  (declare-type gxc#!struct-type-fields (@struct-getf gxc#!struct-type::t 1))
  (declare-type gxc#!struct-type-xfields (@struct-getf gxc#!struct-type::t 2))
  (declare-type gxc#!struct-type-ctor (@struct-getf gxc#!struct-type::t 3))
  (declare-type gxc#!struct-type-plist (@struct-getf gxc#!struct-type::t 4))
  (declare-type
   gxc#!struct-type-super-set!
   (@struct-setf gxc#!struct-type::t 0))
  (declare-type
   gxc#!struct-type-fields-set!
   (@struct-setf gxc#!struct-type::t 1))
  (declare-type
   gxc#!struct-type-xfields-set!
   (@struct-setf gxc#!struct-type::t 2))
  (declare-type
   gxc#!struct-type-ctor-set!
   (@struct-setf gxc#!struct-type::t 3))
  (declare-type
   gxc#!struct-type-plist-set!
   (@struct-setf gxc#!struct-type::t 4))
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
   (@struct-type gxc#!struct-getf::t gxc#!procedure::t 1 #f ()))
  (declare-type gxc#!struct-getf? (@struct-pred gxc#!struct-getf::t))
  (declare-type gxc#make-!struct-getf (@struct-cons gxc#!struct-getf::t))
  (declare-type gxc#!struct-getf-off (@struct-getf gxc#!struct-getf::t 0))
  (declare-type gxc#!struct-getf-off-set! (@struct-setf gxc#!struct-getf::t 0))
  (declare-type
   gxc#!struct-setf::t
   (@struct-type gxc#!struct-setf::t gxc#!procedure::t 1 #f ()))
  (declare-type gxc#!struct-setf? (@struct-pred gxc#!struct-setf::t))
  (declare-type gxc#make-!struct-setf (@struct-cons gxc#!struct-setf::t))
  (declare-type gxc#!struct-setf-off (@struct-getf gxc#!struct-setf::t 0))
  (declare-type gxc#!struct-setf-off-set! (@struct-setf gxc#!struct-setf::t 0))
  (declare-type
   gxc#!lambda::t
   (@struct-type gxc#!lambda::t gxc#!procedure::t 2 #f ()))
  (declare-type gxc#!lambda? (@struct-pred gxc#!lambda::t))
  (declare-type gxc#make-!lambda (@struct-cons gxc#!lambda::t))
  (declare-type gxc#!lambda-arity (@struct-getf gxc#!lambda::t 0))
  (declare-type gxc#!lambda-dispatch (@struct-getf gxc#!lambda::t 1))
  (declare-type gxc#!lambda-arity-set! (@struct-setf gxc#!lambda::t 0))
  (declare-type gxc#!lambda-dispatch-set! (@struct-setf gxc#!lambda::t 1))
  (declare-type
   gxc#!case-lambda::t
   (@struct-type gxc#!case-lambda::t gxc#!procedure::t 1 #f ()))
  (declare-type gxc#!case-lambda? (@struct-pred gxc#!case-lambda::t))
  (declare-type gxc#make-!case-lambda (@struct-cons gxc#!case-lambda::t))
  (declare-type gxc#!case-lambda-clauses (@struct-getf gxc#!case-lambda::t 0))
  (declare-type
   gxc#!case-lambda-clauses-set!
   (@struct-setf gxc#!case-lambda::t 0)))
