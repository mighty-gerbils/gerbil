prelude: :gerbil/compiler/ssxi
package: gerbil/compiler

(begin
  (declare-type gxc#apply-collect-type-info (@lambda (1) #f))
  (declare-type gxc#apply-basic-expression-type (@lambda (1) #f))
  (declare-type gxc#apply-lift-top-lambdas (@lambda (1) #f))
  (declare-type gxc#collect-type-define-values% (@lambda 1 #f))
  (declare-type gxc#collect-type-let-values% (@lambda 1 #f))
  (declare-type gxc#collect-type-call% (@lambda 1 #f))
  (declare-type gxc#basic-expression-type-begin% (@lambda 1 #f))
  (declare-type gxc#basic-expression-type-begin-annotation% (@lambda 1 #f))
  (declare-type gxc#basic-expression-type-lambda% (@lambda 1 #f))
  (declare-type gxc#basic-expression-type-case-lambda% (@lambda 1 #f))
  (declare-type gxc#basic-expression-type-let-values% (@lambda 1 #f))
  (declare-type gxc#basic-expression-type-call% (@lambda 1 #f))
  (declare-type gxc#basic-expression-type-make-struct-type (@lambda 2 #f))
  (declare-type gxc#basic-expression-type-make-struct-predicate (@lambda 2 #f))
  (declare-type
   gxc#basic-expression-type-make-struct-field-accessor__%
   (@lambda 3 #f))
  (declare-type
   gxc#basic-expression-type-make-struct-field-accessor__0
   (@lambda 2 #f))
  (declare-type
   gxc#basic-expression-type-make-struct-field-accessor
   (@case-lambda
    (2 gxc#basic-expression-type-make-struct-field-accessor__0)
    (3 gxc#basic-expression-type-make-struct-field-accessor__%)))
  (declare-type
   gxc#basic-expression-type-make-struct-field-mutator__%
   (@lambda 3 #f))
  (declare-type
   gxc#basic-expression-type-make-struct-field-mutator__0
   (@lambda 2 #f))
  (declare-type
   gxc#basic-expression-type-make-struct-field-mutator
   (@case-lambda
    (2 gxc#basic-expression-type-make-struct-field-mutator__0)
    (3 gxc#basic-expression-type-make-struct-field-mutator__%)))
  (declare-type
   gxc#basic-expression-type-make-struct-field-unchecked-accessor
   (@lambda 2 #f))
  (declare-type
   gxc#basic-expression-type-make-struct-field-unchecked-mutator
   (@lambda 2 #f))
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
