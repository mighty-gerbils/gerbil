prelude: :gerbil/compiler/ssxi
package: gerbil/compiler

(begin
  (declare-class
   gxc#::collect-top-level-type-info::t
   (@class gxc#::collect-top-level-type-info::t
           (gxc#::void::t)
           (gxc#::void::t
            gxc#::void-special-form::t
            gxc#::void-expression::t
            object::t
            t::t)
           ()
           ()
           #f
           #f
           #t
           #f
           #f
           #f))
  (declare-type
   gxc#::collect-top-level-type-info::t
   (optimizer-resolve-class 'typedecl 'class::t))
  (declare-type
   gxc#::collect-top-level-type-info?
   (@predicate gxc#::collect-top-level-type-info::t))
  (declare-type
   gxc#make-::collect-top-level-type-info
   (@constructor gxc#::collect-top-level-type-info::t))
  (declare-type
   gxc#::collect-top-level-type-info-bind-methods!
   (@class promise () (t::t) () () #f #f #f #f #f #f))
  (declare-type gxc#apply-collect-top-level-type-info (@lambda 1 #f))
  (declare-class
   gxc#::collect-top-level-declarations::t
   (@class gxc#::collect-top-level-declarations::t
           (gxc#::void::t)
           (gxc#::void::t
            gxc#::void-special-form::t
            gxc#::void-expression::t
            object::t
            t::t)
           ()
           ()
           #f
           #f
           #t
           #f
           #f
           #f))
  (declare-type
   gxc#::collect-top-level-declarations::t
   (optimizer-resolve-class 'typedecl 'class::t))
  (declare-type
   gxc#::collect-top-level-declarations?
   (@predicate gxc#::collect-top-level-declarations::t))
  (declare-type
   gxc#make-::collect-top-level-declarations
   (@constructor gxc#::collect-top-level-declarations::t))
  (declare-type
   gxc#::collect-top-level-declarations-bind-methods!
   (@class promise () (t::t) () () #f #f #f #f #f #f))
  (declare-type gxc#apply-collect-top-level-declarations (@lambda 1 #f))
  (declare-class
   gxc#::basic-expression-top-level-type::t
   (@class gxc#::basic-expression-top-level-type::t
           (gxc#::false::t)
           (gxc#::false::t
            gxc#::false-special-form::t
            gxc#::false-expression::t
            object::t
            t::t)
           ()
           ()
           #f
           #f
           #t
           #f
           #f
           #f))
  (declare-type
   gxc#::basic-expression-top-level-type::t
   (optimizer-resolve-class 'typedecl 'class::t))
  (declare-type
   gxc#::basic-expression-top-level-type?
   (@predicate gxc#::basic-expression-top-level-type::t))
  (declare-type
   gxc#make-::basic-expression-top-level-type
   (@constructor gxc#::basic-expression-top-level-type::t))
  (declare-type
   gxc#::basic-expression-top-level-type-bind-methods!
   (@class promise () (t::t) () () #f #f #f #f #f #f))
  (declare-type gxc#apply-basic-expression-top-level-type (@lambda 1 #f))
  (declare-class
   gxc#::collect-type-info::t
   (@class gxc#::collect-type-info::t
           (gxc#::void::t)
           (gxc#::void::t
            gxc#::void-special-form::t
            gxc#::void-expression::t
            object::t
            t::t)
           ()
           ()
           #f
           #f
           #t
           #f
           #f
           #f))
  (declare-type
   gxc#::collect-type-info::t
   (optimizer-resolve-class 'typedecl 'class::t))
  (declare-type
   gxc#::collect-type-info?
   (@predicate gxc#::collect-type-info::t))
  (declare-type
   gxc#make-::collect-type-info
   (@constructor gxc#::collect-type-info::t))
  (declare-type
   gxc#::collect-type-info-bind-methods!
   (@class promise () (t::t) () () #f #f #f #f #f #f))
  (declare-type gxc#apply-collect-type-info (@lambda 1 #f))
  (declare-class
   gxc#::basic-expression-type::t
   (@class gxc#::basic-expression-type::t
           (gxc#::false::t)
           (gxc#::false::t
            gxc#::false-special-form::t
            gxc#::false-expression::t
            object::t
            t::t)
           ()
           ()
           #f
           #f
           #t
           #f
           #f
           #f))
  (declare-type
   gxc#::basic-expression-type::t
   (optimizer-resolve-class 'typedecl 'class::t))
  (declare-type
   gxc#::basic-expression-type?
   (@predicate gxc#::basic-expression-type::t))
  (declare-type
   gxc#make-::basic-expression-type
   (@constructor gxc#::basic-expression-type::t))
  (declare-type
   gxc#::basic-expression-type-bind-methods!
   (@class promise () (t::t) () () #f #f #f #f #f #f))
  (declare-type gxc#apply-basic-expression-type (@lambda 1 #f))
  (declare-class
   gxc#::lift-top-lambdas::t
   (@class gxc#::lift-top-lambdas::t
           (gxc#::basic-xform::t)
           (gxc#::basic-xform::t
            gxc#::basic-xform-expression::t
            gxc#::identity::t
            gxc#::identity-special-form::t
            gxc#::identity-expression::t
            object::t
            t::t)
           ()
           ()
           #f
           #f
           #t
           #f
           #f
           #f))
  (declare-type
   gxc#::lift-top-lambdas::t
   (optimizer-resolve-class 'typedecl 'class::t))
  (declare-type gxc#::lift-top-lambdas? (@predicate gxc#::lift-top-lambdas::t))
  (declare-type
   gxc#make-::lift-top-lambdas
   (@constructor gxc#::lift-top-lambdas::t))
  (declare-type
   gxc#::lift-top-lambdas-bind-methods!
   (@class promise () (t::t) () () #f #f #f #f #f #f))
  (declare-type gxc#apply-lift-top-lambdas (@lambda 1 #f))
  (declare-class
   gxc#::extract-lambda-signature::t
   (@class gxc#::extract-lambda-signature::t
           (gxc#::false::t)
           (gxc#::false::t
            gxc#::false-special-form::t
            gxc#::false-expression::t
            object::t
            t::t)
           ()
           ()
           #f
           #f
           #t
           #f
           #f
           #f))
  (declare-type
   gxc#::extract-lambda-signature::t
   (optimizer-resolve-class 'typedecl 'class::t))
  (declare-type
   gxc#::extract-lambda-signature?
   (@predicate gxc#::extract-lambda-signature::t))
  (declare-type
   gxc#make-::extract-lambda-signature
   (@constructor gxc#::extract-lambda-signature::t))
  (declare-type
   gxc#::extract-lambda-signature-bind-methods!
   (@class promise () (t::t) () () #f #f #f #f #f #f))
  (declare-type gxc#apply-extract-lambda-signature (@lambda 1 #f))
  (declare-type gxc#collect-top-level-type-define-values% (@lambda 2 #f))
  (declare-type gxc#collect-top-level-decl-begin-annotation% (@lambda 2 #f))
  (declare-type
   gxc#eval-in-ssxi-context
   (@lambda 1
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type gxc#collect-type-define-values% (@lambda 2 #f))
  (declare-type gxc#collect-type-begin-annotation% (@lambda 2 #f))
  (declare-type gxc#collect-type-let-values% (@lambda 2 #f))
  (declare-type gxc#collect-type-call% (@lambda 2 #f))
  (declare-type gxc#collect-type-setq% (@lambda 2 #f))
  (declare-type gxc#basic-expression-type-begin% (@lambda 2 #f))
  (declare-type gxc#basic-expression-type-begin-annotation% (@lambda 2 #f))
  (declare-type gxc#basic-expression-type-annotation-typedecl (@lambda 2 #f))
  (declare-type gxc#basic-expression-type-annotation-mop.class (@lambda 2 #f))
  (declare-type gxc#basic-expression-type-annotation-mop.system (@lambda 2 #f))
  (declare-type
   gxc#basic-expression-type-annotation-mop.constructor
   (@lambda 2 #f))
  (declare-type
   gxc#basic-expression-type-annotation-mop.predicate
   (@lambda 2 #f))
  (declare-type
   gxc#basic-expression-type-annotation-mop.accessor
   (@lambda 2 #f))
  (declare-type
   gxc#basic-expression-type-annotation-mop.mutator
   (@lambda 2 #f))
  (declare-type gxc#basic-expression-type-annotation-interface (@lambda 2 #f))
  (declare-type gxc#basic-expression-type-annotation-predicate (@lambda 2 #f))
  (declare-type gxc#basic-expression-type-lambda% (@lambda 2 #f))
  (declare-type gxc#basic-expression-type-case-lambda% (@lambda 2 #f))
  (declare-type gxc#basic-expression-type-call% (@lambda 2 #f))
  (declare-type gxc#basic-expression-type-special-cast (@lambda 1 #f))
  (declare-type gxc#basic-expression-type-ref% (@lambda 2 #f))
  (declare-type gxc#basic-expression-type-if% (@lambda 2 #f))
  (declare-type gxc#basic-expression-type-quote% (@lambda 2 #f))
  (declare-type gxc#dispatch-lambda-form? (@lambda 1 #f))
  (declare-type gxc#dispatch-lambda-form-delegate (@lambda 1 #f))
  (declare-type gxc#lambda-form-arity (@lambda 1 #f))
  (declare-type gxc#lambda-form-infer-signature (@lambda 1 #f))
  (declare-type gxc#extract-lambda-signature-begin-annotation% (@lambda 2 #f))
  (declare-type gxc#lambda-expr? (@lambda 1 #f))
  (declare-type gxc#case-lambda-expr? (@lambda 1 #f))
  (declare-type gxc#opt-lambda-expr? (@lambda 1 #f))
  (declare-type gxc#kw-lambda-expr? (@lambda 1 #f))
  (declare-type gxc#lift-case-lambda-clauses__% (@lambda 4 #f))
  (declare-type gxc#lift-case-lambda-clauses__0 (@lambda 3 #f))
  (declare-type
   gxc#lift-case-lambda-clauses
   (@case-lambda
    (3 gxc#lift-case-lambda-clauses__0)
    (4 gxc#lift-case-lambda-clauses__%)))
  (declare-type gxc#lift-top-lambda-define-values% (@lambda 2 #f))
  (declare-type gxc#lift-top-lambda-let-values% (@lambda 2 #f))
  (declare-type gxc#lift-top-lambda-letrec-values% (@lambda 2 #f))
  (declare-type gxc#lift-top-lambda-binding? (@lambda 1 #f)))
