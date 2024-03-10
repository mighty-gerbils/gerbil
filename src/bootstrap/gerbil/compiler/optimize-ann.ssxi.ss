prelude: :gerbil/compiler/ssxi
package: gerbil/compiler

(begin
  (declare-type
   gxc#&optmize-annotated::t
   (@class gxc#&optmize-annotated::t
           (gxc#&basic-xform::t)
           (gxc#&basic-xform::t
            gxc#&basic-xform-expression::t
            gxc#&identity::t
            gxc#&identity-special-form::t
            gxc#&identity-expression::t)
           ()
           ()
           #f
           #f
           #t
           #f
           #f))
  (declare-type gxc#&optmize-annotated? (@predicate gxc#&optmize-annotated::t))
  (declare-type
   gxc#make-&optmize-annotated
   (@constructor gxc#&optmize-annotated::t))
  (declare-type gxc#apply-optimize-annotated (@lambda 1 #f))
  (declare-type
   gxc#&generate-runtime-repr::t
   (@class gxc#&generate-runtime-repr::t
           (gxc#&generate-runtime::t)
           (gxc#&generate-runtime::t gxc#&generate-runtime-empty::t)
           ()
           ()
           #f
           #f
           #t
           #f
           #f))
  (declare-type
   gxc#&generate-runtime-repr?
   (@predicate gxc#&generate-runtime-repr::t))
  (declare-type
   gxc#make-&generate-runtime-repr
   (@constructor gxc#&generate-runtime-repr::t))
  (declare-type gxc#apply-generate-runtime-repr (@lambda 1 #f))
  (declare-type
   gxc#&push-match-vars::t
   (@class gxc#&push-match-vars::t () () (vars K) (vars K) #f #f #t #f #f))
  (declare-type gxc#&push-match-vars? (@predicate gxc#&push-match-vars::t))
  (declare-type
   gxc#make-&push-match-vars
   (@constructor gxc#&push-match-vars::t))
  (declare-type
   gxc#&push-match-vars-vars
   (@accessor gxc#&push-match-vars::t vars #t))
  (declare-type
   gxc#&push-match-vars-K
   (@accessor gxc#&push-match-vars::t K #t))
  (declare-type
   gxc#&push-match-vars-vars-set!
   (@mutator gxc#&push-match-vars::t vars #t))
  (declare-type
   gxc#&push-match-vars-K-set!
   (@mutator gxc#&push-match-vars::t K #t))
  (declare-type
   gxc#&&push-match-vars-vars
   (@accessor gxc#&push-match-vars::t vars #f))
  (declare-type
   gxc#&&push-match-vars-K
   (@accessor gxc#&push-match-vars::t K #f))
  (declare-type
   gxc#&&push-match-vars-vars-set!
   (@mutator gxc#&push-match-vars::t vars #f))
  (declare-type
   gxc#&&push-match-vars-K-set!
   (@mutator gxc#&push-match-vars::t K #f))
  (declare-type gxc#apply-push-match-vars__% (@lambda 4 #f))
  (declare-type gxc#apply-push-match-vars__@ (@lambda (1) #f))
  (declare-type
   gxc#apply-push-match-vars
   (@kw-lambda (K: vars:) gxc#apply-push-match-vars__@))
  (declare-type gxc#optimize-annotation% (@lambda 2 #f))
  (declare-type gxc#optimize-match (@lambda 1 #f))
  (declare-type gxc#optimize-match-body (@lambda 4 #f))
  (declare-type gxc#optimize-match-basic-blocks (@lambda 1 #f))
  (declare-type gxc#optimize-match-lift-basic-blocks (@lambda 2 #f))
  (declare-type gxc#optimize-match-fold-basic-blocks (@lambda 1 #f))
  (declare-type gxc#optimize-match-block (@lambda 4 #f))
  (declare-type gxc#optimize-match-prune-blocks (@lambda 2 #f))
  (declare-type gxc#optimize-match-fuse-restart-blocks (@lambda 2 #f))
  (declare-type gxc#optimize-match-assert-restart (@lambda 2 #f))
  (declare-type gxc#optimize-syntax-case (@lambda 1 #f))
  (declare-type gxc#optimize-syntax-case-body (@lambda 4 #f))
  (declare-type gxc#optimize-syntax-case-clauses (@lambda 2 #f))
  (declare-type gxc#optimize-syntax-case-closure (@lambda 3 #f))
  (declare-type gxc#push-match-vars-let-values% (@lambda 2 #f))
  (declare-type gxc#push-match-vars-if% (@lambda 2 #f))
  (declare-type gxc#push-match-vars-call% (@lambda 2 #f))
  (declare-type gxc#push-match-vars-stop (@lambda 2 #f)))
