prelude: :gerbil/compiler/ssxi
package: gerbil/compiler

(begin
  (declare-type gxc#apply-collect-top-level-type-info (@lambda (1) #f))
  (declare-type gxc#apply-basic-expression-top-level-type (@lambda (1) #f))
  (declare-type gxc#apply-collect-type-info (@lambda (1) #f))
  (declare-type gxc#apply-basic-expression-type (@lambda (1) #f))
  (declare-type gxc#apply-lift-top-lambdas (@lambda (1) #f))
  (declare-type gxc#collect-top-level-type-define-values% (@lambda 1 #f))
  (declare-type gxc#collect-type-define-values% (@lambda 1 #f))
  (declare-type gxc#collect-type-let-values% (@lambda 1 #f))
  (declare-type gxc#collect-type-call% (@lambda 1 #f))
  (declare-type gxc#basic-expression-type-begin% (@lambda 1 #f))
  (declare-type gxc#basic-expression-type-begin-annotation% (@lambda 1 #f))
  (declare-type gxc#basic-expression-type-annotation-mop.class (@lambda 2 #f))
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
  (declare-type gxc#basic-expression-type-lambda% (@lambda 1 #f))
  (declare-type gxc#basic-expression-type-case-lambda% (@lambda 1 #f))
  (declare-type gxc#basic-expression-type-let-values% (@lambda 1 #f))
  (declare-type gxc#basic-expression-type-call% (@lambda 1 #f))
  (declare-type gxc#basic-expression-type-ref% (@lambda 1 #f))
  (declare-type gxc#dispatch-lambda-form? (@lambda 1 #f))
  (declare-type gxc#dispatch-lambda-form-delegate (@lambda 1 #f))
  (declare-type gxc#lambda-form-arity (@lambda 1 #f))
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
  (declare-type gxc#lift-top-lambda-define-values% (@lambda 1 #f))
  (declare-type gxc#lift-top-lambda-let-values% (@lambda 1 #f))
  (declare-type gxc#lift-top-lambda-letrec-values% (@lambda 1 #f))
  (declare-type gxc#lift-top-lambda-binding? (@lambda 1 #f)))
