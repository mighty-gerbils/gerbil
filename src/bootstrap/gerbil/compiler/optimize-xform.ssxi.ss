prelude: :gerbil/compiler/ssxi
package: gerbil/compiler

(begin
  (declare-type
   gxc#&identity-expression::t
   (@class gxc#&identity-expression::t () () () () #f #f #f #f #f))
  (declare-type
   gxc#&identity-expression?
   (@predicate gxc#&identity-expression::t))
  (declare-type
   gxc#make-&identity-expression
   (@constructor gxc#&identity-expression::t))
  (declare-type
   gxc#&identity-special-form::t
   (@class gxc#&identity-special-form::t () () () () #f #f #f #f #f))
  (declare-type
   gxc#&identity-special-form?
   (@predicate gxc#&identity-special-form::t))
  (declare-type
   gxc#make-&identity-special-form
   (@constructor gxc#&identity-special-form::t))
  (declare-type
   gxc#&identity::t
   (@class gxc#&identity::t
           (gxc#&identity-special-form::t gxc#&identity-expression::t)
           (gxc#&identity-special-form::t gxc#&identity-expression::t)
           ()
           ()
           #f
           #f
           #f
           #f
           #f))
  (declare-type gxc#&identity? (@predicate gxc#&identity::t))
  (declare-type gxc#make-&identity (@constructor gxc#&identity::t))
  (declare-type
   gxc#&basic-xform-expression::t
   (@class gxc#&basic-xform-expression::t () () () () #f #f #f #f #f))
  (declare-type
   gxc#&basic-xform-expression?
   (@predicate gxc#&basic-xform-expression::t))
  (declare-type
   gxc#make-&basic-xform-expression
   (@constructor gxc#&basic-xform-expression::t))
  (declare-type
   gxc#&basic-xform::t
   (@class gxc#&basic-xform::t
           (gxc#&basic-xform-expression::t gxc#&identity::t)
           (gxc#&basic-xform-expression::t
            gxc#&identity::t
            gxc#&identity-special-form::t
            gxc#&identity-expression::t)
           ()
           ()
           #f
           #f
           #f
           #f
           #f))
  (declare-type gxc#&basic-xform? (@predicate gxc#&basic-xform::t))
  (declare-type gxc#make-&basic-xform (@constructor gxc#&basic-xform::t))
  (declare-type
   gxc#&collect-mutators::t
   (@class gxc#&collect-mutators::t
           (gxc#&void::t)
           (gxc#&void::t gxc#&void-special-form::t gxc#&void-expression::t)
           ()
           ()
           #f
           #f
           #t
           #f
           #f))
  (declare-type gxc#&collect-mutators? (@predicate gxc#&collect-mutators::t))
  (declare-type
   gxc#make-&collect-mutators
   (@constructor gxc#&collect-mutators::t))
  (declare-type gxc#apply-collect-mutators (@lambda 1 #f))
  (declare-type
   gxc#&collect-methods::t
   (@class gxc#&collect-methods::t
           (gxc#&void::t)
           (gxc#&void::t gxc#&void-special-form::t gxc#&void-expression::t)
           ()
           ()
           #f
           #f
           #t
           #f
           #f))
  (declare-type gxc#&collect-methods? (@predicate gxc#&collect-methods::t))
  (declare-type
   gxc#make-&collect-methods
   (@constructor gxc#&collect-methods::t))
  (declare-type gxc#apply-collect-methods (@lambda 1 #f))
  (declare-type
   gxc#&expression-subst::t
   (@class gxc#&expression-subst::t
           (gxc#&basic-xform-expression::t)
           (gxc#&basic-xform-expression::t)
           (id new-id)
           (id new-id)
           #f
           #f
           #t
           #f
           #f))
  (declare-type gxc#&expression-subst? (@predicate gxc#&expression-subst::t))
  (declare-type
   gxc#make-&expression-subst
   (@constructor gxc#&expression-subst::t))
  (declare-type
   gxc#&expression-subst-id
   (@accessor gxc#&expression-subst::t id #t))
  (declare-type
   gxc#&expression-subst-new-id
   (@accessor gxc#&expression-subst::t new-id #t))
  (declare-type
   gxc#&expression-subst-id-set!
   (@mutator gxc#&expression-subst::t id #t))
  (declare-type
   gxc#&expression-subst-new-id-set!
   (@mutator gxc#&expression-subst::t new-id #t))
  (declare-type
   gxc#&&expression-subst-id
   (@accessor gxc#&expression-subst::t id #f))
  (declare-type
   gxc#&&expression-subst-new-id
   (@accessor gxc#&expression-subst::t new-id #f))
  (declare-type
   gxc#&&expression-subst-id-set!
   (@mutator gxc#&expression-subst::t id #f))
  (declare-type
   gxc#&&expression-subst-new-id-set!
   (@mutator gxc#&expression-subst::t new-id #f))
  (declare-type gxc#apply-expression-subst__% (@lambda 4 #f))
  (declare-type gxc#apply-expression-subst__@ (@lambda (1) #f))
  (declare-type
   gxc#apply-expression-subst
   (@kw-lambda (id: new-id:) gxc#apply-expression-subst__@))
  (declare-type
   gxc#&expression-subst*::t
   (@class gxc#&expression-subst*::t
           (gxc#&basic-xform-expression::t)
           (gxc#&basic-xform-expression::t)
           (subst)
           (subst)
           #f
           #f
           #t
           #f
           #f))
  (declare-type gxc#&expression-subst*? (@predicate gxc#&expression-subst*::t))
  (declare-type
   gxc#make-&expression-subst*
   (@constructor gxc#&expression-subst*::t))
  (declare-type
   gxc#&expression-subst*-subst
   (@accessor gxc#&expression-subst*::t subst #t))
  (declare-type
   gxc#&expression-subst*-subst-set!
   (@mutator gxc#&expression-subst*::t subst #t))
  (declare-type
   gxc#&&expression-subst*-subst
   (@accessor gxc#&expression-subst*::t subst #f))
  (declare-type
   gxc#&&expression-subst*-subst-set!
   (@mutator gxc#&expression-subst*::t subst #f))
  (declare-type gxc#apply-expression-subst*__% (@lambda 3 #f))
  (declare-type gxc#apply-expression-subst*__@ (@lambda (1) #f))
  (declare-type
   gxc#apply-expression-subst*
   (@kw-lambda (subst:) gxc#apply-expression-subst*__@))
  (declare-type
   gxc#&find-expression::t
   (@class gxc#&find-expression::t
           (gxc#&false-expression::t)
           (gxc#&false-expression::t)
           ()
           ()
           #f
           #f
           #f
           #f
           #f))
  (declare-type gxc#&find-expression? (@predicate gxc#&find-expression::t))
  (declare-type
   gxc#make-&find-expression
   (@constructor gxc#&find-expression::t))
  (declare-type
   gxc#&find-var-refs::t
   (@class gxc#&find-var-refs::t
           (gxc#&find-expression::t)
           (gxc#&find-expression::t gxc#&false-expression::t)
           (ids)
           (ids)
           #f
           #f
           #t
           #f
           #f))
  (declare-type gxc#&find-var-refs? (@predicate gxc#&find-var-refs::t))
  (declare-type gxc#make-&find-var-refs (@constructor gxc#&find-var-refs::t))
  (declare-type
   gxc#&find-var-refs-ids
   (@accessor gxc#&find-var-refs::t ids #t))
  (declare-type
   gxc#&find-var-refs-ids-set!
   (@mutator gxc#&find-var-refs::t ids #t))
  (declare-type
   gxc#&&find-var-refs-ids
   (@accessor gxc#&find-var-refs::t ids #f))
  (declare-type
   gxc#&&find-var-refs-ids-set!
   (@mutator gxc#&find-var-refs::t ids #f))
  (declare-type gxc#apply-find-var-refs__% (@lambda 3 #f))
  (declare-type gxc#apply-find-var-refs__@ (@lambda (1) #f))
  (declare-type
   gxc#apply-find-var-refs
   (@kw-lambda (ids:) gxc#apply-find-var-refs__@))
  (declare-type
   gxc#&collect-runtime-refs::t
   (@class gxc#&collect-runtime-refs::t
           (gxc#&collect-expression-refs::t)
           (gxc#&collect-expression-refs::t)
           ()
           (table)
           #f
           #f
           #t
           #f
           #f))
  (declare-type
   gxc#&collect-runtime-refs?
   (@predicate gxc#&collect-runtime-refs::t))
  (declare-type
   gxc#make-&collect-runtime-refs
   (@constructor gxc#&collect-runtime-refs::t))
  (declare-type
   gxc#&collect-runtime-refs-table
   (@accessor gxc#&collect-runtime-refs::t table #t))
  (declare-type
   gxc#&collect-runtime-refs-table-set!
   (@mutator gxc#&collect-runtime-refs::t table #t))
  (declare-type
   gxc#&&collect-runtime-refs-table
   (@accessor gxc#&collect-runtime-refs::t table #f))
  (declare-type
   gxc#&&collect-runtime-refs-table-set!
   (@mutator gxc#&collect-runtime-refs::t table #f))
  (declare-type gxc#apply-collect-runtime-refs__% (@lambda 3 #f))
  (declare-type gxc#apply-collect-runtime-refs__@ (@lambda (1) #f))
  (declare-type
   gxc#apply-collect-runtime-refs
   (@kw-lambda (table:) gxc#apply-collect-runtime-refs__@))
  (declare-type gxc#xform-wrap-source (@lambda 2 #f))
  (declare-type gxc#xform-begin% (@lambda 2 #f))
  (declare-type gxc#xform-begin-syntax% (@lambda 2 #f))
  (declare-type gxc#xform-module% (@lambda 2 #f))
  (declare-type gxc#xform-define-values% (@lambda 2 #f))
  (declare-type gxc#xform-define-syntax% (@lambda 2 #f))
  (declare-type gxc#xform-begin-annotation% (@lambda 2 #f))
  (declare-type gxc#xform-lambda% (@lambda 2 #f))
  (declare-type gxc#xform-case-lambda% (@lambda 2 #f))
  (declare-type gxc#xform-let-values% (@lambda 2 #f))
  (declare-type gxc#xform-operands (@lambda 2 #f))
  (declare-type gxc#xform-call% (@lambda 2 #f))
  (declare-type gxc#xform-setq% (@lambda 2 #f))
  (declare-type gxc#collect-mutators-setq% (@lambda 2 #f))
  (declare-type gxc#collect-methods-call% (@lambda 2 #f))
  (declare-type gxc#expression-subst-ref% (@lambda 2 #f))
  (declare-type gxc#expression-subst*-ref% (@lambda 2 #f))
  (declare-type gxc#expression-subst-setq% (@lambda 2 #f))
  (declare-type gxc#expression-subst*-setq% (@lambda 2 #f))
  (declare-type gxc#collect-runtime-refs-ref% (@lambda 2 #f))
  (declare-type gxc#collect-runtime-refs-setq% (@lambda 2 #f))
  (declare-type gxc#find-body% (@lambda 2 #f))
  (declare-type gxc#find-begin-annotation% (@lambda 2 #f))
  (declare-type gxc#find-lambda% (@lambda 2 #f))
  (declare-type gxc#find-case-lambda% (@lambda 2 #f))
  (declare-type gxc#find-let-values% (@lambda 2 #f))
  (declare-type gxc#find-setq% (@lambda 2 #f))
  (declare-type gxc#find-var-refs-ref% (@lambda 2 #f))
  (declare-type gxc#find-var-refs-setq% (@lambda 2 #f)))
