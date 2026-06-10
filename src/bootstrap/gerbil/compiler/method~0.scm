(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1781119050)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e
      (lambda _g173992_
        (let ((_g173993_ (let () (declare (not safe)) (##length _g173992_))))
          (cond ((let () (declare (not safe)) (##fx= _g173993_ 1))
                 (apply (lambda (_%stx173950%_)
                          (let* ((_%self173952%_ (gxc#current-compile-method))
                                 (_%$e173954%_
                                  (method-ref
                                   _%self173952%_
                                   (gxc#stx-car-e _%stx173950%_))))
                            (if _%$e173954%_
                                ((lambda (_%method173957%_)
                                   (declare (not safe))
                                   (let ((_%$e173960%_
                                          (gx#stx-source _%stx173950%_)))
                                     (if _%$e173960%_
                                         ((lambda (_%source173963%_)
                                            (call-with-parameters
                                             (lambda ()
                                               (_%method173957%_
                                                _%self173952%_
                                                _%stx173950%_))
                                             gxc#current-compile-context
                                             (cons (cons '@
                                                         (cons _%source173963%_
                                                               '()))
                                                   (let ((_%$e173967%_
                                                          (gxc#current-compile-context)))
                                                     (if _%$e173967%_
                                                         _%$e173967%_
                                                         '())))))
                                          _%$e173960%_)
                                         (_%method173957%_
                                          _%self173952%_
                                          _%stx173950%_))))
                                 _%$e173954%_)
                                (error '"missing method"
                                       _%self173952%_
                                       (gxc#stx-car-e _%stx173950%_)
                                       (gx#syntax->datum _%stx173950%_)))))
                        _g173992_))
                ((let () (declare (not safe)) (##fx= _g173993_ 2))
                 (apply (lambda (_%self173972%_ _%stx173973%_)
                          (let ((_%$e173975%_
                                 (method-ref
                                  _%self173972%_
                                  (gxc#stx-car-e _%stx173973%_))))
                            (if _%$e173975%_
                                ((lambda (_%method173978%_)
                                   (declare (not safe))
                                   (let ((_%$e173981%_
                                          (gx#stx-source _%stx173973%_)))
                                     (if _%$e173981%_
                                         ((lambda (_%source173984%_)
                                            (call-with-parameters
                                             (lambda ()
                                               (_%method173978%_
                                                _%self173972%_
                                                _%stx173973%_))
                                             gxc#current-compile-context
                                             (cons (cons '@
                                                         (cons _%source173984%_
                                                               '()))
                                                   (let ((_%$e173988%_
                                                          (gxc#current-compile-context)))
                                                     (if _%$e173988%_
                                                         _%$e173988%_
                                                         '())))))
                                          _%$e173981%_)
                                         (_%method173978%_
                                          _%self173972%_
                                          _%stx173973%_))))
                                 _%$e173975%_)
                                (error '"missing method"
                                       _%self173972%_
                                       (gxc#stx-car-e _%stx173973%_)
                                       (gx#syntax->datum _%stx173973%_)))))
                        _g173992_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g173992_))))))
    (define gxc#stx-car-e
      (lambda (_%stx173948%_) (gx#stx-e (car (gx#stx-e _%stx173948%_)))))
    (define gxc#void-method (lambda (_%self173945%_ _%stx173946%_) '#!void))
    (define gxc#false-method (lambda (_%self173942%_ _%stx173943%_) '#f))
    (define gxc#true-method (lambda (_%self173939%_ _%stx173940%_) '#t))
    (define gxc#identity-method
      (lambda (_%self173936%_ _%stx173937%_) _%stx173937%_))
    (define gxc#::void-expression::t
      (make-class-type
       'gxc#::void-expression::t
       '::void-expression
       (list)
       '()
       '()
       '#f))
    (define gxc#::void-expression?
      (make-class-predicate gxc#::void-expression::t))
    (define gxc#make-::void-expression
      (lambda _%$args173933%_
        (apply make-instance gxc#::void-expression::t _%$args173933%_)))
    (define gxc#::void-expression-bind-methods!
      (make-atomic-promise
       (lambda ()
         (bind-method!
          gxc#::void-expression::t
          '%#begin-annotation
          gxc#void-method)
         (bind-method! gxc#::void-expression::t '%#lambda gxc#void-method)
         (bind-method! gxc#::void-expression::t '%#case-lambda gxc#void-method)
         (bind-method! gxc#::void-expression::t '%#let-values gxc#void-method)
         (bind-method!
          gxc#::void-expression::t
          '%#letrec-values
          gxc#void-method)
         (bind-method!
          gxc#::void-expression::t
          '%#letrec*-values
          gxc#void-method)
         (bind-method! gxc#::void-expression::t '%#quote gxc#void-method)
         (bind-method!
          gxc#::void-expression::t
          '%#quote-syntax
          gxc#void-method)
         (bind-method! gxc#::void-expression::t '%#call gxc#void-method)
         (bind-method!
          gxc#::void-expression::t
          '%#call-unchecked
          gxc#void-method)
         (bind-method! gxc#::void-expression::t '%#if gxc#void-method)
         (bind-method! gxc#::void-expression::t '%#ref gxc#void-method)
         (bind-method! gxc#::void-expression::t '%#set! gxc#void-method)
         (bind-method!
          gxc#::void-expression::t
          '%#struct-instance?
          gxc#void-method)
         (bind-method!
          gxc#::void-expression::t
          '%#struct-direct-instance?
          gxc#void-method)
         (bind-method! gxc#::void-expression::t '%#struct-ref gxc#void-method)
         (bind-method! gxc#::void-expression::t '%#struct-set! gxc#void-method)
         (bind-method!
          gxc#::void-expression::t
          '%#struct-direct-ref
          gxc#void-method)
         (bind-method!
          gxc#::void-expression::t
          '%#struct-direct-set!
          gxc#void-method)
         (bind-method!
          gxc#::void-expression::t
          '%#struct-unchecked-ref
          gxc#void-method)
         (bind-method!
          gxc#::void-expression::t
          '%#struct-unchecked-set!
          gxc#void-method))))
    (define gxc#::void-special-form::t
      (make-class-type
       'gxc#::void-special-form::t
       '::void-special-form
       (list)
       '()
       '()
       '#f))
    (define gxc#::void-special-form?
      (make-class-predicate gxc#::void-special-form::t))
    (define gxc#make-::void-special-form
      (lambda _%$args173929%_
        (apply make-instance gxc#::void-special-form::t _%$args173929%_)))
    (define gxc#::void-special-form-bind-methods!
      (make-atomic-promise
       (lambda ()
         (bind-method! gxc#::void-special-form::t '%#begin gxc#void-method)
         (bind-method!
          gxc#::void-special-form::t
          '%#begin-syntax
          gxc#void-method)
         (bind-method!
          gxc#::void-special-form::t
          '%#begin-foreign
          gxc#void-method)
         (bind-method! gxc#::void-special-form::t '%#module gxc#void-method)
         (bind-method! gxc#::void-special-form::t '%#import gxc#void-method)
         (bind-method! gxc#::void-special-form::t '%#export gxc#void-method)
         (bind-method! gxc#::void-special-form::t '%#provide gxc#void-method)
         (bind-method! gxc#::void-special-form::t '%#extern gxc#void-method)
         (bind-method!
          gxc#::void-special-form::t
          '%#define-values
          gxc#void-method)
         (bind-method!
          gxc#::void-special-form::t
          '%#define-syntax
          gxc#void-method)
         (bind-method!
          gxc#::void-special-form::t
          '%#define-alias
          gxc#void-method)
         (bind-method!
          gxc#::void-special-form::t
          '%#define-runtime
          gxc#void-method)
         (bind-method!
          gxc#::void-special-form::t
          '%#declare
          gxc#void-method))))
    (define gxc#::void::t
      (make-class-type
       'gxc#::void::t
       '::void
       (list gxc#::void-special-form::t gxc#::void-expression::t)
       '()
       '()
       '#f))
    (define gxc#::void? (make-class-predicate gxc#::void::t))
    (define gxc#make-::void
      (lambda _%$args173925%_
        (apply make-instance gxc#::void::t _%$args173925%_)))
    (define gxc#::void-bind-methods!
      (make-atomic-promise
       (lambda ()
         (force gxc#::void-special-form-bind-methods!)
         (force gxc#::void-expression-bind-methods!))))
    (define gxc#::false-expression::t
      (make-class-type
       'gxc#::false-expression::t
       '::false-expression
       (list)
       '()
       '()
       '#f))
    (define gxc#::false-expression?
      (make-class-predicate gxc#::false-expression::t))
    (define gxc#make-::false-expression
      (lambda _%$args173921%_
        (apply make-instance gxc#::false-expression::t _%$args173921%_)))
    (define gxc#::false-expression-bind-methods!
      (make-atomic-promise
       (lambda ()
         (bind-method!
          gxc#::false-expression::t
          '%#begin-annotation
          gxc#false-method)
         (bind-method! gxc#::false-expression::t '%#lambda gxc#false-method)
         (bind-method!
          gxc#::false-expression::t
          '%#case-lambda
          gxc#false-method)
         (bind-method!
          gxc#::false-expression::t
          '%#let-values
          gxc#false-method)
         (bind-method!
          gxc#::false-expression::t
          '%#letrec-values
          gxc#false-method)
         (bind-method!
          gxc#::false-expression::t
          '%#letrec*-values
          gxc#false-method)
         (bind-method! gxc#::false-expression::t '%#quote gxc#false-method)
         (bind-method!
          gxc#::false-expression::t
          '%#quote-syntax
          gxc#false-method)
         (bind-method! gxc#::false-expression::t '%#call gxc#false-method)
         (bind-method!
          gxc#::false-expression::t
          '%#call-unchecked
          gxc#false-method)
         (bind-method! gxc#::false-expression::t '%#if gxc#false-method)
         (bind-method! gxc#::false-expression::t '%#ref gxc#false-method)
         (bind-method! gxc#::false-expression::t '%#set! gxc#false-method)
         (bind-method!
          gxc#::false-expression::t
          '%#struct-instance?
          gxc#false-method)
         (bind-method!
          gxc#::false-expression::t
          '%#struct-direct-instance?
          gxc#false-method)
         (bind-method!
          gxc#::false-expression::t
          '%#struct-ref
          gxc#false-method)
         (bind-method!
          gxc#::false-expression::t
          '%#struct-set!
          gxc#false-method)
         (bind-method!
          gxc#::false-expression::t
          '%#struct-direct-ref
          gxc#false-method)
         (bind-method!
          gxc#::false-expression::t
          '%#struct-direct-set!
          gxc#false-method)
         (bind-method!
          gxc#::false-expression::t
          '%#struct-unchecked-ref
          gxc#false-method)
         (bind-method!
          gxc#::false-expression::t
          '%#struct-unchecked-set!
          gxc#false-method))))
    (define gxc#::false-special-form::t
      (make-class-type
       'gxc#::false-special-form::t
       '::false-special-form
       (list)
       '()
       '()
       '#f))
    (define gxc#::false-special-form?
      (make-class-predicate gxc#::false-special-form::t))
    (define gxc#make-::false-special-form
      (lambda _%$args173917%_
        (apply make-instance gxc#::false-special-form::t _%$args173917%_)))
    (define gxc#::false-special-form-bind-methods!
      (make-atomic-promise
       (lambda ()
         (bind-method! gxc#::false-special-form::t '%#begin gxc#false-method)
         (bind-method!
          gxc#::false-special-form::t
          '%#begin-syntax
          gxc#false-method)
         (bind-method!
          gxc#::false-special-form::t
          '%#begin-foreign
          gxc#false-method)
         (bind-method! gxc#::false-special-form::t '%#module gxc#false-method)
         (bind-method! gxc#::false-special-form::t '%#import gxc#false-method)
         (bind-method! gxc#::false-special-form::t '%#export gxc#false-method)
         (bind-method! gxc#::false-special-form::t '%#provide gxc#false-method)
         (bind-method! gxc#::false-special-form::t '%#extern gxc#false-method)
         (bind-method!
          gxc#::false-special-form::t
          '%#define-values
          gxc#false-method)
         (bind-method!
          gxc#::false-special-form::t
          '%#define-syntax
          gxc#false-method)
         (bind-method!
          gxc#::false-special-form::t
          '%#define-alias
          gxc#false-method)
         (bind-method!
          gxc#::false-special-form::t
          '%#define-runtime
          gxc#false-method)
         (bind-method!
          gxc#::false-special-form::t
          '%#declare
          gxc#false-method))))
    (define gxc#::false::t
      (make-class-type
       'gxc#::false::t
       '::false
       (list gxc#::false-special-form::t gxc#::false-expression::t)
       '()
       '()
       '#f))
    (define gxc#::false? (make-class-predicate gxc#::false::t))
    (define gxc#make-::false
      (lambda _%$args173913%_
        (apply make-instance gxc#::false::t _%$args173913%_)))
    (define gxc#::false-bind-methods!
      (make-atomic-promise
       (lambda ()
         (force gxc#::false-special-form-bind-methods!)
         (force gxc#::false-expression-bind-methods!))))
    (define gxc#::identity-expression::t
      (make-class-type
       'gxc#::identity-expression::t
       '::identity-expression
       (list)
       '()
       '()
       '#f))
    (define gxc#::identity-expression?
      (make-class-predicate gxc#::identity-expression::t))
    (define gxc#make-::identity-expression
      (lambda _%$args173909%_
        (apply make-instance gxc#::identity-expression::t _%$args173909%_)))
    (define gxc#::identity-expression-bind-methods!
      (make-atomic-promise
       (lambda ()
         (bind-method!
          gxc#::identity-expression::t
          '%#begin-annotation
          gxc#identity-method)
         (bind-method!
          gxc#::identity-expression::t
          '%#lambda
          gxc#identity-method)
         (bind-method!
          gxc#::identity-expression::t
          '%#case-lambda
          gxc#identity-method)
         (bind-method!
          gxc#::identity-expression::t
          '%#let-values
          gxc#identity-method)
         (bind-method!
          gxc#::identity-expression::t
          '%#letrec-values
          gxc#identity-method)
         (bind-method!
          gxc#::identity-expression::t
          '%#letrec*-values
          gxc#identity-method)
         (bind-method!
          gxc#::identity-expression::t
          '%#quote
          gxc#identity-method)
         (bind-method!
          gxc#::identity-expression::t
          '%#quote-syntax
          gxc#identity-method)
         (bind-method!
          gxc#::identity-expression::t
          '%#call
          gxc#identity-method)
         (bind-method!
          gxc#::identity-expression::t
          '%#call-unchecked
          gxc#identity-method)
         (bind-method! gxc#::identity-expression::t '%#if gxc#identity-method)
         (bind-method! gxc#::identity-expression::t '%#ref gxc#identity-method)
         (bind-method!
          gxc#::identity-expression::t
          '%#set!
          gxc#identity-method)
         (bind-method!
          gxc#::identity-expression::t
          '%#struct-instance?
          gxc#identity-method)
         (bind-method!
          gxc#::identity-expression::t
          '%#struct-direct-instance?
          gxc#identity-method)
         (bind-method!
          gxc#::identity-expression::t
          '%#struct-ref
          gxc#identity-method)
         (bind-method!
          gxc#::identity-expression::t
          '%#struct-set!
          gxc#identity-method)
         (bind-method!
          gxc#::identity-expression::t
          '%#struct-direct-ref
          gxc#identity-method)
         (bind-method!
          gxc#::identity-expression::t
          '%#struct-direct-set!
          gxc#identity-method)
         (bind-method!
          gxc#::identity-expression::t
          '%#struct-unchecked-ref
          gxc#identity-method)
         (bind-method!
          gxc#::identity-expression::t
          '%#struct-unchecked-set!
          gxc#identity-method))))
    (define gxc#::identity-special-form::t
      (make-class-type
       'gxc#::identity-special-form::t
       '::identity-special-form
       (list)
       '()
       '()
       '#f))
    (define gxc#::identity-special-form?
      (make-class-predicate gxc#::identity-special-form::t))
    (define gxc#make-::identity-special-form
      (lambda _%$args173905%_
        (apply make-instance gxc#::identity-special-form::t _%$args173905%_)))
    (define gxc#::identity-special-form-bind-methods!
      (make-atomic-promise
       (lambda ()
         (bind-method!
          gxc#::identity-special-form::t
          '%#begin
          gxc#identity-method)
         (bind-method!
          gxc#::identity-special-form::t
          '%#begin-syntax
          gxc#identity-method)
         (bind-method!
          gxc#::identity-special-form::t
          '%#begin-foreign
          gxc#identity-method)
         (bind-method!
          gxc#::identity-special-form::t
          '%#module
          gxc#identity-method)
         (bind-method!
          gxc#::identity-special-form::t
          '%#import
          gxc#identity-method)
         (bind-method!
          gxc#::identity-special-form::t
          '%#export
          gxc#identity-method)
         (bind-method!
          gxc#::identity-special-form::t
          '%#provide
          gxc#identity-method)
         (bind-method!
          gxc#::identity-special-form::t
          '%#extern
          gxc#identity-method)
         (bind-method!
          gxc#::identity-special-form::t
          '%#define-values
          gxc#identity-method)
         (bind-method!
          gxc#::identity-special-form::t
          '%#define-syntax
          gxc#identity-method)
         (bind-method!
          gxc#::identity-special-form::t
          '%#define-alias
          gxc#identity-method)
         (bind-method!
          gxc#::identity-special-form::t
          '%#define-runtime
          gxc#identity-method)
         (bind-method!
          gxc#::identity-special-form::t
          '%#declare
          gxc#identity-method))))
    (define gxc#::identity::t
      (make-class-type
       'gxc#::identity::t
       '::identity
       (list gxc#::identity-special-form::t gxc#::identity-expression::t)
       '()
       '()
       '#f))
    (define gxc#::identity? (make-class-predicate gxc#::identity::t))
    (define gxc#make-::identity
      (lambda _%$args173901%_
        (apply make-instance gxc#::identity::t _%$args173901%_)))
    (define gxc#::identity-bind-methods!
      (make-atomic-promise
       (lambda ()
         (force gxc#::identity-special-form-bind-methods!)
         (force gxc#::identity-expression-bind-methods!))))
    (define gxc#::basic-xform-expression::t
      (make-class-type
       'gxc#::basic-xform-expression::t
       '::basic-xform-expression
       (list)
       '()
       '()
       '#f))
    (define gxc#::basic-xform-expression?
      (make-class-predicate gxc#::basic-xform-expression::t))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args173897%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args173897%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (make-atomic-promise
       (lambda ()
         (bind-method!
          gxc#::basic-xform-expression::t
          '%#begin-annotation
          gxc#xform-begin-annotation%)
         (bind-method!
          gxc#::basic-xform-expression::t
          '%#lambda
          gxc#xform-lambda%)
         (bind-method!
          gxc#::basic-xform-expression::t
          '%#case-lambda
          gxc#xform-case-lambda%)
         (bind-method!
          gxc#::basic-xform-expression::t
          '%#let-values
          gxc#xform-let-values%)
         (bind-method!
          gxc#::basic-xform-expression::t
          '%#letrec-values
          gxc#xform-letrec-values%)
         (bind-method!
          gxc#::basic-xform-expression::t
          '%#letrec*-values
          gxc#xform-letrec-values%)
         (bind-method!
          gxc#::basic-xform-expression::t
          '%#quote
          gxc#identity-method)
         (bind-method!
          gxc#::basic-xform-expression::t
          '%#quote-syntax
          gxc#identity-method)
         (bind-method!
          gxc#::basic-xform-expression::t
          '%#call
          gxc#xform-operands)
         (bind-method!
          gxc#::basic-xform-expression::t
          '%#call-unchecked
          gxc#xform-operands)
         (bind-method!
          gxc#::basic-xform-expression::t
          '%#if
          gxc#xform-operands)
         (bind-method!
          gxc#::basic-xform-expression::t
          '%#ref
          gxc#identity-method)
         (bind-method! gxc#::basic-xform-expression::t '%#set! gxc#xform-setq%)
         (bind-method!
          gxc#::basic-xform-expression::t
          '%#struct-instance?
          gxc#xform-operands)
         (bind-method!
          gxc#::basic-xform-expression::t
          '%#struct-direct-instance?
          gxc#xform-operands)
         (bind-method!
          gxc#::basic-xform-expression::t
          '%#struct-ref
          gxc#xform-operands)
         (bind-method!
          gxc#::basic-xform-expression::t
          '%#struct-set!
          gxc#xform-operands)
         (bind-method!
          gxc#::basic-xform-expression::t
          '%#struct-direct-ref
          gxc#xform-operands)
         (bind-method!
          gxc#::basic-xform-expression::t
          '%#struct-direct-set!
          gxc#xform-operands)
         (bind-method!
          gxc#::basic-xform-expression::t
          '%#struct-unchecked-ref
          gxc#xform-operands)
         (bind-method!
          gxc#::basic-xform-expression::t
          '%#struct-unchecked-set!
          gxc#xform-operands))))
    (define gxc#::basic-xform::t
      (make-class-type
       'gxc#::basic-xform::t
       '::basic-xform
       (list gxc#::basic-xform-expression::t gxc#::identity::t)
       '()
       '()
       '#f))
    (define gxc#::basic-xform? (make-class-predicate gxc#::basic-xform::t))
    (define gxc#make-::basic-xform
      (lambda _%$args173893%_
        (apply make-instance gxc#::basic-xform::t _%$args173893%_)))
    (define gxc#::basic-xform-bind-methods!
      (make-atomic-promise
       (lambda ()
         (force gxc#::basic-xform-expression-bind-methods!)
         (force gxc#::identity-bind-methods!)
         (bind-method! gxc#::basic-xform::t '%#begin gxc#xform-begin%)
         (bind-method!
          gxc#::basic-xform::t
          '%#begin-syntax
          gxc#xform-begin-syntax%)
         (bind-method! gxc#::basic-xform::t '%#module gxc#xform-module%)
         (bind-method!
          gxc#::basic-xform::t
          '%#define-values
          gxc#xform-define-values%)
         (bind-method!
          gxc#::basic-xform::t
          '%#define-syntax
          gxc#xform-define-syntax%))))
    (define gxc#apply-begin%
      (lambda (_%self173849%_ _%stx173850%_)
        (let* ((_%$%g173852173862%_
                (lambda (_%$%g173853173859%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g173853173859%_)))
               (_%$%g173851173889%_
                (lambda (_%$%g173853173865%_)
                  (if (gx#stx-pair? _%$%g173853173865%_)
                      (let ((_%$%e173855173867%_
                             (gx#stx-e _%$%g173853173865%_)))
                        (let ((_%$%hd173856173870%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e173855173867%_)))
                              (_%$%tl173857173872%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e173855173867%_))))
                          ((lambda (_%$%g173854173875%_)
                             (for-each
                              (lambda (_%$%g173884173886%_)
                                (gxc#compile-e
                                 _%self173849%_
                                 _%$%g173884173886%_))
                              (gx#stx-e _%$%g173854173875%_)))
                           _%$%tl173857173872%_)))
                      (_%$%g173852173862%_ _%$%g173853173865%_)))))
          (_%$%g173851173889%_ _%stx173850%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self173810%_ _%stx173811%_)
        (let* ((_%$%g173813173823%_
                (lambda (_%$%g173814173820%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g173814173820%_)))
               (_%$%g173812173846%_
                (lambda (_%$%g173814173826%_)
                  (if (gx#stx-pair? _%$%g173814173826%_)
                      (let ((_%$%e173816173828%_
                             (gx#stx-e _%$%g173814173826%_)))
                        (let ((_%$%hd173817173831%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e173816173828%_)))
                              (_%$%tl173818173833%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e173816173828%_))))
                          ((lambda (_%$%g173815173836%_)
                             (gxc#compile-e
                              _%self173810%_
                              (last _%$%g173815173836%_)))
                           _%$%tl173818173833%_)))
                      (_%$%g173813173823%_ _%$%g173814173826%_)))))
          (_%$%g173812173846%_ _%stx173811%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self173806%_ _%stx173807%_)
        (call-with-parameters
         (lambda () (gxc#apply-begin% _%self173806%_ _%stx173807%_))
         gx#current-expander-phi
         (fx1+ (gx#current-expander-phi)))))
    (define gxc#apply-module%
      (lambda (_%self173745%_ _%stx173746%_)
        (let* ((_%$%g173748173762%_
                (lambda (_%$%g173749173759%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g173749173759%_)))
               (_%$%g173747173803%_
                (lambda (_%$%g173749173765%_)
                  (if (gx#stx-pair? _%$%g173749173765%_)
                      (let ((_%$%e173752173767%_
                             (gx#stx-e _%$%g173749173765%_)))
                        (let ((_%$%hd173753173770%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e173752173767%_)))
                              (_%$%tl173754173772%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e173752173767%_))))
                          (if (gx#stx-pair? _%$%tl173754173772%_)
                              (let ((_%$%e173755173775%_
                                     (gx#stx-e _%$%tl173754173772%_)))
                                (let ((_%$%hd173756173778%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e173755173775%_)))
                                      (_%$%tl173757173780%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e173755173775%_))))
                                  ((lambda (_%$%g173750173783%_
                                            _%$%g173751173784%_)
                                     (let* ((_%ctx173797%_
                                             (gx#syntax-local-e
                                              _%$%g173751173784%_))
                                            (_%ctx-stx173799%_
                                             (gx#module-context-code
                                              _%ctx173797%_)))
                                       (call-with-parameters
                                        (lambda ()
                                          (gxc#compile-e
                                           _%self173745%_
                                           _%ctx-stx173799%_))
                                        gx#current-expander-context
                                        _%ctx173797%_)))
                                   _%$%tl173757173780%_
                                   _%$%hd173756173778%_)))
                              (_%$%g173748173762%_ _%$%g173749173765%_))))
                      (_%$%g173748173762%_ _%$%g173749173765%_)))))
          (_%$%g173747173803%_ _%stx173746%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self173677%_ _%stx173678%_)
        (let* ((_%$%g173680173697%_
                (lambda (_%$%g173681173694%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g173681173694%_)))
               (_%$%g173679173742%_
                (lambda (_%$%g173681173700%_)
                  (if (gx#stx-pair? _%$%g173681173700%_)
                      (let ((_%$%e173684173702%_
                             (gx#stx-e _%$%g173681173700%_)))
                        (let ((_%$%hd173685173705%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e173684173702%_)))
                              (_%$%tl173686173707%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e173684173702%_))))
                          (if (gx#stx-pair? _%$%tl173686173707%_)
                              (let ((_%$%e173687173710%_
                                     (gx#stx-e _%$%tl173686173707%_)))
                                (let ((_%$%hd173688173713%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e173687173710%_)))
                                      (_%$%tl173689173715%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e173687173710%_))))
                                  (if (gx#stx-pair? _%$%tl173689173715%_)
                                      (let ((_%$%e173690173718%_
                                             (gx#stx-e _%$%tl173689173715%_)))
                                        (let ((_%$%hd173691173721%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e173690173718%_)))
                                              (_%$%tl173692173723%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e173690173718%_))))
                                          (if (gx#stx-null?
                                               _%$%tl173692173723%_)
                                              ((lambda (_%$%g173682173726%_
                                                        _%$%g173683173727%_)
                                                 (gxc#compile-e
                                                  _%self173677%_
                                                  _%$%g173682173726%_))
                                               _%$%hd173691173721%_
                                               _%$%hd173688173713%_)
                                              (_%$%g173680173697%_
                                               _%$%g173681173700%_))))
                                      (_%$%g173680173697%_
                                       _%$%g173681173700%_))))
                              (_%$%g173680173697%_ _%$%g173681173700%_))))
                      (_%$%g173680173697%_ _%$%g173681173700%_)))))
          (_%$%g173679173742%_ _%stx173678%_))))
    (define gxc#apply-define-values%
      (lambda (_%self173609%_ _%stx173610%_)
        (let* ((_%$%g173612173629%_
                (lambda (_%$%g173613173626%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g173613173626%_)))
               (_%$%g173611173674%_
                (lambda (_%$%g173613173632%_)
                  (if (gx#stx-pair? _%$%g173613173632%_)
                      (let ((_%$%e173616173634%_
                             (gx#stx-e _%$%g173613173632%_)))
                        (let ((_%$%hd173617173637%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e173616173634%_)))
                              (_%$%tl173618173639%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e173616173634%_))))
                          (if (gx#stx-pair? _%$%tl173618173639%_)
                              (let ((_%$%e173619173642%_
                                     (gx#stx-e _%$%tl173618173639%_)))
                                (let ((_%$%hd173620173645%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e173619173642%_)))
                                      (_%$%tl173621173647%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e173619173642%_))))
                                  (if (gx#stx-pair? _%$%tl173621173647%_)
                                      (let ((_%$%e173622173650%_
                                             (gx#stx-e _%$%tl173621173647%_)))
                                        (let ((_%$%hd173623173653%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e173622173650%_)))
                                              (_%$%tl173624173655%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e173622173650%_))))
                                          (if (gx#stx-null?
                                               _%$%tl173624173655%_)
                                              ((lambda (_%$%g173614173658%_
                                                        _%$%g173615173659%_)
                                                 (gxc#compile-e
                                                  _%self173609%_
                                                  _%$%g173614173658%_))
                                               _%$%hd173623173653%_
                                               _%$%hd173620173645%_)
                                              (_%$%g173612173629%_
                                               _%$%g173613173632%_))))
                                      (_%$%g173612173629%_
                                       _%$%g173613173632%_))))
                              (_%$%g173612173629%_ _%$%g173613173632%_))))
                      (_%$%g173612173629%_ _%$%g173613173632%_)))))
          (_%$%g173611173674%_ _%stx173610%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self173540%_ _%stx173541%_)
        (let* ((_%$%g173543173560%_
                (lambda (_%$%g173544173557%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g173544173557%_)))
               (_%$%g173542173606%_
                (lambda (_%$%g173544173563%_)
                  (if (gx#stx-pair? _%$%g173544173563%_)
                      (let ((_%$%e173547173565%_
                             (gx#stx-e _%$%g173544173563%_)))
                        (let ((_%$%hd173548173568%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e173547173565%_)))
                              (_%$%tl173549173570%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e173547173565%_))))
                          (if (gx#stx-pair? _%$%tl173549173570%_)
                              (let ((_%$%e173550173573%_
                                     (gx#stx-e _%$%tl173549173570%_)))
                                (let ((_%$%hd173551173576%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e173550173573%_)))
                                      (_%$%tl173552173578%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e173550173573%_))))
                                  (if (gx#stx-pair? _%$%tl173552173578%_)
                                      (let ((_%$%e173553173581%_
                                             (gx#stx-e _%$%tl173552173578%_)))
                                        (let ((_%$%hd173554173584%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e173553173581%_)))
                                              (_%$%tl173555173586%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e173553173581%_))))
                                          (if (gx#stx-null?
                                               _%$%tl173555173586%_)
                                              ((lambda (_%$%g173545173589%_
                                                        _%$%g173546173590%_)
                                                 (call-with-parameters
                                                  (lambda ()
                                                    (gxc#compile-e
                                                     _%self173540%_
                                                     _%$%g173545173589%_))
                                                  gx#current-expander-phi
                                                  (fx1+ (gx#current-expander-phi))))
                                               _%$%hd173554173584%_
                                               _%$%hd173551173576%_)
                                              (_%$%g173543173560%_
                                               _%$%g173544173563%_))))
                                      (_%$%g173543173560%_
                                       _%$%g173544173563%_))))
                              (_%$%g173543173560%_ _%$%g173544173563%_))))
                      (_%$%g173543173560%_ _%$%g173544173563%_)))))
          (_%$%g173542173606%_ _%stx173541%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self173472%_ _%stx173473%_)
        (let* ((_%$%g173475173492%_
                (lambda (_%$%g173476173489%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g173476173489%_)))
               (_%$%g173474173537%_
                (lambda (_%$%g173476173495%_)
                  (if (gx#stx-pair? _%$%g173476173495%_)
                      (let ((_%$%e173479173497%_
                             (gx#stx-e _%$%g173476173495%_)))
                        (let ((_%$%hd173480173500%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e173479173497%_)))
                              (_%$%tl173481173502%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e173479173497%_))))
                          (if (gx#stx-pair? _%$%tl173481173502%_)
                              (let ((_%$%e173482173505%_
                                     (gx#stx-e _%$%tl173481173502%_)))
                                (let ((_%$%hd173483173508%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e173482173505%_)))
                                      (_%$%tl173484173510%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e173482173505%_))))
                                  (if (gx#stx-pair? _%$%tl173484173510%_)
                                      (let ((_%$%e173485173513%_
                                             (gx#stx-e _%$%tl173484173510%_)))
                                        (let ((_%$%hd173486173516%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e173485173513%_)))
                                              (_%$%tl173487173518%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e173485173513%_))))
                                          (if (gx#stx-null?
                                               _%$%tl173487173518%_)
                                              ((lambda (_%$%g173477173521%_
                                                        _%$%g173478173522%_)
                                                 (gxc#compile-e
                                                  _%self173472%_
                                                  _%$%g173477173521%_))
                                               _%$%hd173486173516%_
                                               _%$%hd173483173508%_)
                                              (_%$%g173475173492%_
                                               _%$%g173476173495%_))))
                                      (_%$%g173475173492%_
                                       _%$%g173476173495%_))))
                              (_%$%g173475173492%_ _%$%g173476173495%_))))
                      (_%$%g173475173492%_ _%$%g173476173495%_)))))
          (_%$%g173474173537%_ _%stx173473%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self173358%_ _%stx173359%_)
        (let* ((_%$%g173361173389%_
                (lambda (_%$%g173362173386%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g173362173386%_)))
               (_%$%g173360173469%_
                (lambda (_%$%g173362173392%_)
                  (if (gx#stx-pair? _%$%g173362173392%_)
                      (let ((_%$%e173365173394%_
                             (gx#stx-e _%$%g173362173392%_)))
                        (let ((_%$%hd173366173397%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e173365173394%_)))
                              (_%$%tl173367173399%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e173365173394%_))))
                          (if (gx#stx-pair/null? _%$%tl173367173399%_)
                              (let ((_g173994_
                                     (gx#syntax-split-splice
                                      _%$%tl173367173399%_
                                      '0)))
                                (begin
                                  (let ((_g173995_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g173994_)
                                               (##values-length _g173994_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g173995_ 2)))
                                        (error "Context expects 2 values"
                                               _g173995_)))
                                  (let ((_%$%target173368173402%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g173994_ 0)))
                                        (_%$%tl173370173404%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g173994_ 1))))
                                    (if (gx#stx-null? _%$%tl173370173404%_)
                                        (letrec ((_%$%loop173371173407%_
                                                  (lambda (_%$%hd173369173410%_
                                                           _%$%body173375173412%_
                                                           _%$%hd173376173413%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd173369173410%_)
                                                        (let ((_%$%e173372173415%_
                                                               (gx#stx-e
                                                                _%$%hd173369173410%_)))
                                                          (let ((_%$%lp-hd173373173418%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e173372173415%_)))
                        (_%$%lp-tl173374173420%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e173372173415%_))))
                    (if (gx#stx-pair? _%$%lp-hd173373173418%_)
                        (let ((_%$%e173379173423%_
                               (gx#stx-e _%$%lp-hd173373173418%_)))
                          (let ((_%$%hd173380173426%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e173379173423%_)))
                                (_%$%tl173381173428%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e173379173423%_))))
                            (if (gx#stx-pair? _%$%tl173381173428%_)
                                (let ((_%$%e173382173431%_
                                       (gx#stx-e _%$%tl173381173428%_)))
                                  (let ((_%$%hd173383173434%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e173382173431%_)))
                                        (_%$%tl173384173436%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e173382173431%_))))
                                    (if (gx#stx-null? _%$%tl173384173436%_)
                                        (_%$%loop173371173407%_
                                         _%$%lp-tl173374173420%_
                                         (cons _%$%hd173383173434%_
                                               _%$%body173375173412%_)
                                         (cons _%$%hd173380173426%_
                                               _%$%hd173376173413%_))
                                        (_%$%g173361173389%_
                                         _%$%g173362173392%_))))
                                (_%$%g173361173389%_ _%$%g173362173392%_))))
                        (_%$%g173361173389%_ _%$%g173362173392%_))))
                (let ((_%$%body173377173439%_ (reverse _%$%body173375173412%_))
                      (_%$%hd173378173440%_ (reverse _%$%hd173376173413%_)))
                  ((lambda (_%$%g173363173442%_ _%$%g173364173443%_)
                     (for-each
                      (lambda (_%$%g173457173459%_)
                        (gxc#compile-e _%self173358%_ _%$%g173457173459%_))
                      (foldr (lambda (_%$%g173461173464%_ _%$%g173462173466%_)
                               (cons _%$%g173461173464%_ _%$%g173462173466%_))
                             '()
                             _%$%g173363173442%_)))
                   _%$%body173377173439%_
                   _%$%hd173378173440%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop173371173407%_
                                           _%$%target173368173402%_
                                           '()
                                           '()))
                                        (_%$%g173361173389%_
                                         _%$%g173362173392%_)))))
                              (_%$%g173361173389%_ _%$%g173362173392%_))))
                      (_%$%g173361173389%_ _%$%g173362173392%_)))))
          (_%$%g173360173469%_ _%stx173359%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self173215%_ _%stx173216%_)
        (let* ((_%$%g173218173253%_
                (lambda (_%$%g173219173250%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g173219173250%_)))
               (_%$%g173217173355%_
                (lambda (_%$%g173219173256%_)
                  (if (gx#stx-pair? _%$%g173219173256%_)
                      (let ((_%$%e173223173258%_
                             (gx#stx-e _%$%g173219173256%_)))
                        (let ((_%$%hd173224173261%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e173223173258%_)))
                              (_%$%tl173225173263%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e173223173258%_))))
                          (if (gx#stx-pair? _%$%tl173225173263%_)
                              (let ((_%$%e173226173266%_
                                     (gx#stx-e _%$%tl173225173263%_)))
                                (let ((_%$%hd173227173269%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e173226173266%_)))
                                      (_%$%tl173228173271%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e173226173266%_))))
                                  (if (gx#stx-pair/null? _%$%hd173227173269%_)
                                      (let ((_g173996_
                                             (gx#syntax-split-splice
                                              _%$%hd173227173269%_
                                              '0)))
                                        (begin
                                          (let ((_g173997_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g173996_)
                                                       (##values-length
                                                        _g173996_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g173997_ 2)))
                                                (error "Context expects 2 values"
                                                       _g173997_)))
                                          (let ((_%$%target173229173274%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g173996_ 0)))
                                                (_%$%tl173231173276%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g173996_
                                                    1))))
                                            (if (gx#stx-null?
                                                 _%$%tl173231173276%_)
                                                (letrec ((_%$%loop173232173279%_
                                                          (lambda (_%$%hd173230173282%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%expr173236173284%_
                           _%$%hd173237173285%_)
                    (if (gx#stx-pair? _%$%hd173230173282%_)
                        (let ((_%$%e173233173287%_
                               (gx#stx-e _%$%hd173230173282%_)))
                          (let ((_%$%lp-hd173234173290%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e173233173287%_)))
                                (_%$%lp-tl173235173292%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e173233173287%_))))
                            (if (gx#stx-pair? _%$%lp-hd173234173290%_)
                                (let ((_%$%e173240173295%_
                                       (gx#stx-e _%$%lp-hd173234173290%_)))
                                  (let ((_%$%hd173241173298%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e173240173295%_)))
                                        (_%$%tl173242173300%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e173240173295%_))))
                                    (if (gx#stx-pair? _%$%tl173242173300%_)
                                        (let ((_%$%e173243173303%_
                                               (gx#stx-e
                                                _%$%tl173242173300%_)))
                                          (let ((_%$%hd173244173306%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e173243173303%_)))
                                                (_%$%tl173245173308%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e173243173303%_))))
                                            (if (gx#stx-null?
                                                 _%$%tl173245173308%_)
                                                (_%$%loop173232173279%_
                                                 _%$%lp-tl173235173292%_
                                                 (cons _%$%hd173244173306%_
                                                       _%$%expr173236173284%_)
                                                 (cons _%$%hd173241173298%_
                                                       _%$%hd173237173285%_))
                                                (_%$%g173218173253%_
                                                 _%$%g173219173256%_))))
                                        (_%$%g173218173253%_
                                         _%$%g173219173256%_))))
                                (_%$%g173218173253%_ _%$%g173219173256%_))))
                        (let ((_%$%expr173238173311%_
                               (reverse _%$%expr173236173284%_))
                              (_%$%hd173239173312%_
                               (reverse _%$%hd173237173285%_)))
                          (if (gx#stx-pair? _%$%tl173228173271%_)
                              (let ((_%$%e173246173314%_
                                     (gx#stx-e _%$%tl173228173271%_)))
                                (let ((_%$%hd173247173317%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e173246173314%_)))
                                      (_%$%tl173248173319%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e173246173314%_))))
                                  (if (gx#stx-null? _%$%tl173248173319%_)
                                      ((lambda (_%$%g173220173322%_
                                                _%$%g173221173323%_
                                                _%$%g173222173324%_)
                                         (for-each
                                          (lambda (_%$%g173343173345%_)
                                            (gxc#compile-e
                                             _%self173215%_
                                             _%$%g173343173345%_))
                                          (foldr (lambda (_%$%g173347173350%_
                                                          _%$%g173348173352%_)
                                                   (cons _%$%g173347173350%_
                                                         _%$%g173348173352%_))
                                                 (cons _%$%g173220173322%_ '())
                                                 _%$%g173221173323%_)))
                                       _%$%hd173247173317%_
                                       _%$%expr173238173311%_
                                       _%$%hd173239173312%_)
                                      (_%$%g173218173253%_
                                       _%$%g173219173256%_))))
                              (_%$%g173218173253%_ _%$%g173219173256%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop173232173279%_
                                                   _%$%target173229173274%_
                                                   '()
                                                   '()))
                                                (_%$%g173218173253%_
                                                 _%$%g173219173256%_)))))
                                      (_%$%g173218173253%_
                                       _%$%g173219173256%_))))
                              (_%$%g173218173253%_ _%$%g173219173256%_))))
                      (_%$%g173218173253%_ _%$%g173219173256%_)))))
          (_%$%g173217173355%_ _%stx173216%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self173160%_ _%stx173161%_)
        (let* ((_%$%g173163173177%_
                (lambda (_%$%g173164173174%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g173164173174%_)))
               (_%$%g173162173212%_
                (lambda (_%$%g173164173180%_)
                  (if (gx#stx-pair? _%$%g173164173180%_)
                      (let ((_%$%e173167173182%_
                             (gx#stx-e _%$%g173164173180%_)))
                        (let ((_%$%hd173168173185%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e173167173182%_)))
                              (_%$%tl173169173187%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e173167173182%_))))
                          (if (gx#stx-pair? _%$%tl173169173187%_)
                              (let ((_%$%e173170173190%_
                                     (gx#stx-e _%$%tl173169173187%_)))
                                (let ((_%$%hd173171173193%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e173170173190%_)))
                                      (_%$%tl173172173195%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e173170173190%_))))
                                  ((lambda (_%$%g173165173198%_
                                            _%$%g173166173199%_)
                                     (gxc#compile-e
                                      _%self173160%_
                                      (last _%$%g173165173198%_)))
                                   _%$%tl173172173195%_
                                   _%$%hd173171173193%_)))
                              (_%$%g173163173177%_ _%$%g173164173180%_))))
                      (_%$%g173163173177%_ _%$%g173164173180%_)))))
          (_%$%g173162173212%_ _%stx173161%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self173092%_ _%stx173093%_)
        (let* ((_%$%g173095173112%_
                (lambda (_%$%g173096173109%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g173096173109%_)))
               (_%$%g173094173157%_
                (lambda (_%$%g173096173115%_)
                  (if (gx#stx-pair? _%$%g173096173115%_)
                      (let ((_%$%e173099173117%_
                             (gx#stx-e _%$%g173096173115%_)))
                        (let ((_%$%hd173100173120%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e173099173117%_)))
                              (_%$%tl173101173122%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e173099173117%_))))
                          (if (gx#stx-pair? _%$%tl173101173122%_)
                              (let ((_%$%e173102173125%_
                                     (gx#stx-e _%$%tl173101173122%_)))
                                (let ((_%$%hd173103173128%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e173102173125%_)))
                                      (_%$%tl173104173130%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e173102173125%_))))
                                  (if (gx#stx-pair? _%$%tl173104173130%_)
                                      (let ((_%$%e173105173133%_
                                             (gx#stx-e _%$%tl173104173130%_)))
                                        (let ((_%$%hd173106173136%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e173105173133%_)))
                                              (_%$%tl173107173138%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e173105173133%_))))
                                          (if (gx#stx-null?
                                               _%$%tl173107173138%_)
                                              ((lambda (_%$%g173097173141%_
                                                        _%$%g173098173142%_)
                                                 (gxc#compile-e
                                                  _%self173092%_
                                                  _%$%g173097173141%_))
                                               _%$%hd173106173136%_
                                               _%$%hd173103173128%_)
                                              (_%$%g173095173112%_
                                               _%$%g173096173115%_))))
                                      (_%$%g173095173112%_
                                       _%$%g173096173115%_))))
                              (_%$%g173095173112%_ _%$%g173096173115%_))))
                      (_%$%g173095173112%_ _%$%g173096173115%_)))))
          (_%$%g173094173157%_ _%stx173093%_))))
    (define gxc#apply-operands
      (lambda (_%self173007%_ _%stx173008%_)
        (let* ((_%$%g173010173029%_
                (lambda (_%$%g173011173026%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g173011173026%_)))
               (_%$%g173009173089%_
                (lambda (_%$%g173011173032%_)
                  (if (gx#stx-pair? _%$%g173011173032%_)
                      (let ((_%$%e173013173034%_
                             (gx#stx-e _%$%g173011173032%_)))
                        (let ((_%$%hd173014173037%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e173013173034%_)))
                              (_%$%tl173015173039%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e173013173034%_))))
                          (if (gx#stx-pair/null? _%$%tl173015173039%_)
                              (let ((_g173998_
                                     (gx#syntax-split-splice
                                      _%$%tl173015173039%_
                                      '0)))
                                (begin
                                  (let ((_g173999_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g173998_)
                                               (##values-length _g173998_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g173999_ 2)))
                                        (error "Context expects 2 values"
                                               _g173999_)))
                                  (let ((_%$%target173016173042%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g173998_ 0)))
                                        (_%$%tl173018173044%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g173998_ 1))))
                                    (if (gx#stx-null? _%$%tl173018173044%_)
                                        (letrec ((_%$%loop173019173047%_
                                                  (lambda (_%$%hd173017173050%_
                                                           _%$%rands173023173052%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd173017173050%_)
                                                        (let ((_%$%e173020173054%_
                                                               (gx#stx-e
                                                                _%$%hd173017173050%_)))
                                                          (let ((_%$%lp-hd173021173057%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e173020173054%_)))
                        (_%$%lp-tl173022173059%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e173020173054%_))))
                    (_%$%loop173019173047%_
                     _%$%lp-tl173022173059%_
                     (cons _%$%lp-hd173021173057%_ _%$%rands173023173052%_))))
                (let ((_%$%rands173024173062%_
                       (reverse _%$%rands173023173052%_)))
                  ((lambda (_%$%g173012173064%_)
                     (for-each
                      (lambda (_%$%g173077173079%_)
                        (gxc#compile-e _%self173007%_ _%$%g173077173079%_))
                      (foldr (lambda (_%$%g173081173084%_ _%$%g173082173086%_)
                               (cons _%$%g173081173084%_ _%$%g173082173086%_))
                             '()
                             _%$%g173012173064%_)))
                   _%$%rands173024173062%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop173019173047%_
                                           _%$%target173016173042%_
                                           '()))
                                        (_%$%g173010173029%_
                                         _%$%g173011173032%_)))))
                              (_%$%g173010173029%_ _%$%g173011173032%_))))
                      (_%$%g173010173029%_ _%$%g173011173032%_)))))
          (_%$%g173009173089%_ _%stx173008%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx173004%_ _%src-stx173005%_)
        (gx#stx-wrap-source _%stx173004%_ (gx#stx-source _%src-stx173005%_))))
    (define gxc#xform-wrap-apply
      (lambda (_%stx173000%_ _%src-stx173001%_ _%ctx173002%_)
        (gxc#compile-e
         _%ctx173002%_
         (gxc#xform-wrap-source _%stx173000%_ _%src-stx173001%_))))
    (define gxc#xform-begin%
      (lambda (_%self172955%_ _%stx172956%_)
        (let* ((_%$%g172958172968%_
                (lambda (_%$%g172959172965%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g172959172965%_)))
               (_%$%g172957172997%_
                (lambda (_%$%g172959172971%_)
                  (if (gx#stx-pair? _%$%g172959172971%_)
                      (let ((_%$%e172961172973%_
                             (gx#stx-e _%$%g172959172971%_)))
                        (let ((_%$%hd172962172976%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e172961172973%_)))
                              (_%$%tl172963172978%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e172961172973%_))))
                          ((lambda (_%$%g172960172981%_)
                             (let ((_%forms172995%_
                                    (map (lambda (_%$%g172990172992%_)
                                           (gxc#compile-e
                                            _%self172955%_
                                            _%$%g172990172992%_))
                                         _%$%g172960172981%_)))
                               (gxc#xform-wrap-source
                                (cons '%#begin _%forms172995%_)
                                _%stx172956%_)))
                           _%$%tl172963172978%_)))
                      (_%$%g172958172968%_ _%$%g172959172971%_)))))
          (_%$%g172957172997%_ _%stx172956%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self172909%_ _%stx172910%_)
        (let* ((_%$%g172912172922%_
                (lambda (_%$%g172913172919%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g172913172919%_)))
               (_%$%g172911172952%_
                (lambda (_%$%g172913172925%_)
                  (if (gx#stx-pair? _%$%g172913172925%_)
                      (let ((_%$%e172915172927%_
                             (gx#stx-e _%$%g172913172925%_)))
                        (let ((_%$%hd172916172930%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e172915172927%_)))
                              (_%$%tl172917172932%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e172915172927%_))))
                          ((lambda (_%$%g172914172935%_)
                             (call-with-parameters
                              (lambda ()
                                (let ((_%forms172950%_
                                       (map (lambda (_%$%g172945172947%_)
                                              (gxc#compile-e
                                               _%self172909%_
                                               _%$%g172945172947%_))
                                            _%$%g172914172935%_)))
                                  (gxc#xform-wrap-source
                                   (cons '%#begin-syntax _%forms172950%_)
                                   _%stx172910%_)))
                              gx#current-expander-phi
                              (fx1+ (gx#current-expander-phi))))
                           _%$%tl172917172932%_)))
                      (_%$%g172912172922%_ _%$%g172913172925%_)))))
          (_%$%g172911172952%_ _%stx172910%_))))
    (define gxc#xform-module%
      (lambda (_%self172846%_ _%stx172847%_)
        (let* ((_%$%g172849172863%_
                (lambda (_%$%g172850172860%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g172850172860%_)))
               (_%$%g172848172906%_
                (lambda (_%$%g172850172866%_)
                  (if (gx#stx-pair? _%$%g172850172866%_)
                      (let ((_%$%e172853172868%_
                             (gx#stx-e _%$%g172850172866%_)))
                        (let ((_%$%hd172854172871%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e172853172868%_)))
                              (_%$%tl172855172873%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e172853172868%_))))
                          (if (gx#stx-pair? _%$%tl172855172873%_)
                              (let ((_%$%e172856172876%_
                                     (gx#stx-e _%$%tl172855172873%_)))
                                (let ((_%$%hd172857172879%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e172856172876%_)))
                                      (_%$%tl172858172881%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e172856172876%_))))
                                  ((lambda (_%$%g172851172884%_
                                            _%$%g172852172885%_)
                                     (let* ((_%ctx172898%_
                                             (gx#syntax-local-e
                                              _%$%g172852172885%_))
                                            (_%code172900%_
                                             (gx#module-context-code
                                              _%ctx172898%_))
                                            (_%code172903%_
                                             (call-with-parameters
                                              (lambda ()
                                                (gxc#compile-e
                                                 _%self172846%_
                                                 _%code172900%_))
                                              gx#current-expander-context
                                              _%ctx172898%_)))
                                       (gx#module-context-code-set!
                                        _%ctx172898%_
                                        _%code172903%_)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _%$%g172852172885%_
                                                    (cons _%code172903%_ '())))
                                        _%stx172847%_)))
                                   _%$%tl172858172881%_
                                   _%$%hd172857172879%_)))
                              (_%$%g172849172863%_ _%$%g172850172866%_))))
                      (_%$%g172849172863%_ _%$%g172850172866%_)))))
          (_%$%g172848172906%_ _%stx172847%_))))
    (define gxc#xform-define-values%
      (lambda (_%self172776%_ _%stx172777%_)
        (let* ((_%$%g172779172796%_
                (lambda (_%$%g172780172793%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g172780172793%_)))
               (_%$%g172778172843%_
                (lambda (_%$%g172780172799%_)
                  (if (gx#stx-pair? _%$%g172780172799%_)
                      (let ((_%$%e172783172801%_
                             (gx#stx-e _%$%g172780172799%_)))
                        (let ((_%$%hd172784172804%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e172783172801%_)))
                              (_%$%tl172785172806%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e172783172801%_))))
                          (if (gx#stx-pair? _%$%tl172785172806%_)
                              (let ((_%$%e172786172809%_
                                     (gx#stx-e _%$%tl172785172806%_)))
                                (let ((_%$%hd172787172812%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e172786172809%_)))
                                      (_%$%tl172788172814%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e172786172809%_))))
                                  (if (gx#stx-pair? _%$%tl172788172814%_)
                                      (let ((_%$%e172789172817%_
                                             (gx#stx-e _%$%tl172788172814%_)))
                                        (let ((_%$%hd172790172820%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e172789172817%_)))
                                              (_%$%tl172791172822%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e172789172817%_))))
                                          (if (gx#stx-null?
                                               _%$%tl172791172822%_)
                                              ((lambda (_%$%g172781172825%_
                                                        _%$%g172782172826%_)
                                                 (let ((_%expr172841%_
                                                        (gxc#compile-e
                                                         _%self172776%_
                                                         _%$%g172781172825%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons _%$%g172782172826%_
                                                                (cons _%expr172841%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx172777%_)))
                                               _%$%hd172790172820%_
                                               _%$%hd172787172812%_)
                                              (_%$%g172779172796%_
                                               _%$%g172780172799%_))))
                                      (_%$%g172779172796%_
                                       _%$%g172780172799%_))))
                              (_%$%g172779172796%_ _%$%g172780172799%_))))
                      (_%$%g172779172796%_ _%$%g172780172799%_)))))
          (_%$%g172778172843%_ _%stx172777%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self172705%_ _%stx172706%_)
        (let* ((_%$%g172708172725%_
                (lambda (_%$%g172709172722%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g172709172722%_)))
               (_%$%g172707172773%_
                (lambda (_%$%g172709172728%_)
                  (if (gx#stx-pair? _%$%g172709172728%_)
                      (let ((_%$%e172712172730%_
                             (gx#stx-e _%$%g172709172728%_)))
                        (let ((_%$%hd172713172733%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e172712172730%_)))
                              (_%$%tl172714172735%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e172712172730%_))))
                          (if (gx#stx-pair? _%$%tl172714172735%_)
                              (let ((_%$%e172715172738%_
                                     (gx#stx-e _%$%tl172714172735%_)))
                                (let ((_%$%hd172716172741%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e172715172738%_)))
                                      (_%$%tl172717172743%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e172715172738%_))))
                                  (if (gx#stx-pair? _%$%tl172717172743%_)
                                      (let ((_%$%e172718172746%_
                                             (gx#stx-e _%$%tl172717172743%_)))
                                        (let ((_%$%hd172719172749%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e172718172746%_)))
                                              (_%$%tl172720172751%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e172718172746%_))))
                                          (if (gx#stx-null?
                                               _%$%tl172720172751%_)
                                              ((lambda (_%$%g172710172754%_
                                                        _%$%g172711172755%_)
                                                 (call-with-parameters
                                                  (lambda ()
                                                    (let ((_%expr172771%_
                                                           (gxc#compile-e
                                                            _%self172705%_
                                                            _%$%g172710172754%_)))
                                                      (gxc#xform-wrap-source
                                                       (cons '%#define-syntax
                                                             (cons _%$%g172711172755%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%expr172771%_ '())))
               _%stx172706%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  gx#current-expander-phi
                                                  (fx1+ (gx#current-expander-phi))))
                                               _%$%hd172719172749%_
                                               _%$%hd172716172741%_)
                                              (_%$%g172708172725%_
                                               _%$%g172709172728%_))))
                                      (_%$%g172708172725%_
                                       _%$%g172709172728%_))))
                              (_%$%g172708172725%_ _%$%g172709172728%_))))
                      (_%$%g172708172725%_ _%$%g172709172728%_)))))
          (_%$%g172707172773%_ _%stx172706%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self172635%_ _%stx172636%_)
        (let* ((_%$%g172638172655%_
                (lambda (_%$%g172639172652%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g172639172652%_)))
               (_%$%g172637172702%_
                (lambda (_%$%g172639172658%_)
                  (if (gx#stx-pair? _%$%g172639172658%_)
                      (let ((_%$%e172642172660%_
                             (gx#stx-e _%$%g172639172658%_)))
                        (let ((_%$%hd172643172663%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e172642172660%_)))
                              (_%$%tl172644172665%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e172642172660%_))))
                          (if (gx#stx-pair? _%$%tl172644172665%_)
                              (let ((_%$%e172645172668%_
                                     (gx#stx-e _%$%tl172644172665%_)))
                                (let ((_%$%hd172646172671%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e172645172668%_)))
                                      (_%$%tl172647172673%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e172645172668%_))))
                                  (if (gx#stx-pair? _%$%tl172647172673%_)
                                      (let ((_%$%e172648172676%_
                                             (gx#stx-e _%$%tl172647172673%_)))
                                        (let ((_%$%hd172649172679%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e172648172676%_)))
                                              (_%$%tl172650172681%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e172648172676%_))))
                                          (if (gx#stx-null?
                                               _%$%tl172650172681%_)
                                              ((lambda (_%$%g172640172684%_
                                                        _%$%g172641172685%_)
                                                 (let ((_%expr172700%_
                                                        (gxc#compile-e
                                                         _%self172635%_
                                                         _%$%g172640172684%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#begin-annotation
                                                          (cons _%$%g172641172685%_
                                                                (cons _%expr172700%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx172636%_)))
                                               _%$%hd172649172679%_
                                               _%$%hd172646172671%_)
                                              (_%$%g172638172655%_
                                               _%$%g172639172658%_))))
                                      (_%$%g172638172655%_
                                       _%$%g172639172658%_))))
                              (_%$%g172638172655%_ _%$%g172639172658%_))))
                      (_%$%g172638172655%_ _%$%g172639172658%_)))))
          (_%$%g172637172702%_ _%stx172636%_))))
    (define gxc#xform-lambda%
      (lambda (_%self172573%_ _%stx172574%_)
        (let* ((_%$%g172576172590%_
                (lambda (_%$%g172577172587%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g172577172587%_)))
               (_%$%g172575172632%_
                (lambda (_%$%g172577172593%_)
                  (if (gx#stx-pair? _%$%g172577172593%_)
                      (let ((_%$%e172580172595%_
                             (gx#stx-e _%$%g172577172593%_)))
                        (let ((_%$%hd172581172598%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e172580172595%_)))
                              (_%$%tl172582172600%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e172580172595%_))))
                          (if (gx#stx-pair? _%$%tl172582172600%_)
                              (let ((_%$%e172583172603%_
                                     (gx#stx-e _%$%tl172582172600%_)))
                                (let ((_%$%hd172584172606%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e172583172603%_)))
                                      (_%$%tl172585172608%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e172583172603%_))))
                                  ((lambda (_%$%g172578172611%_
                                            _%$%g172579172612%_)
                                     (call-with-parameters
                                      (lambda ()
                                        (let ((_%body172630%_
                                               (map (lambda (_%$%g172625172627%_)
                                                      (gxc#compile-e
                                                       _%self172573%_
                                                       _%$%g172625172627%_))
                                                    _%$%g172578172611%_)))
                                          (gxc#xform-wrap-source
                                           (cons '%#lambda
                                                 (cons _%$%g172579172612%_
                                                       _%body172630%_))
                                           _%stx172574%_)))
                                      gxc#current-compile-local-env
                                      (gxc#xform-let-locals
                                       _%$%g172579172612%_)))
                                   _%$%tl172585172608%_
                                   _%$%hd172584172606%_)))
                              (_%$%g172576172590%_ _%$%g172577172593%_))))
                      (_%$%g172576172590%_ _%$%g172577172593%_)))))
          (_%$%g172575172632%_ _%stx172574%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self172481%_ _%stx172482%_)
        (letrec ((_%clause-e172484%_
                  (lambda (_%clause172525%_)
                    (let* ((_%$%g172527172538%_
                            (lambda (_%$%g172528172535%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g172528172535%_)))
                           (_%$%g172526172570%_
                            (lambda (_%$%g172528172541%_)
                              (if (gx#stx-pair? _%$%g172528172541%_)
                                  (let ((_%$%e172531172543%_
                                         (gx#stx-e _%$%g172528172541%_)))
                                    (let ((_%$%hd172532172546%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e172531172543%_)))
                                          (_%$%tl172533172548%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e172531172543%_))))
                                      ((lambda (_%$%g172529172551%_
                                                _%$%g172530172552%_)
                                         (call-with-parameters
                                          (lambda ()
                                            (let ((_%body172568%_
                                                   (map (lambda (_%$%g172563172565%_)
                                                          (gxc#compile-e
                                                           _%self172481%_
                                                           _%$%g172563172565%_))
                                                        _%$%g172529172551%_)))
                                              (cons _%$%g172530172552%_
                                                    _%body172568%_)))
                                          gxc#current-compile-local-env
                                          (gxc#xform-let-locals
                                           _%$%g172530172552%_)))
                                       _%$%tl172533172548%_
                                       _%$%hd172532172546%_)))
                                  (_%$%g172527172538%_ _%$%g172528172541%_)))))
                      (_%$%g172526172570%_ _%clause172525%_)))))
          (let* ((_%$%g172486172496%_
                  (lambda (_%$%g172487172493%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g172487172493%_)))
                 (_%$%g172485172522%_
                  (lambda (_%$%g172487172499%_)
                    (if (gx#stx-pair? _%$%g172487172499%_)
                        (let ((_%$%e172489172501%_
                               (gx#stx-e _%$%g172487172499%_)))
                          (let ((_%$%hd172490172504%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e172489172501%_)))
                                (_%$%tl172491172506%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e172489172501%_))))
                            ((lambda (_%$%g172488172509%_)
                               (let ((_%clauses172520%_
                                      (map _%clause-e172484%_
                                           _%$%g172488172509%_)))
                                 (gxc#xform-wrap-source
                                  (cons '%#case-lambda _%clauses172520%_)
                                  _%stx172482%_)))
                             _%$%tl172491172506%_)))
                        (_%$%g172486172496%_ _%$%g172487172499%_)))))
            (_%$%g172485172522%_ _%stx172482%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self172241%_ _%stx172242%_)
        (let* ((_%$%g172244172277%_
                (lambda (_%$%g172245172274%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g172245172274%_)))
               (_%$%g172243172478%_
                (lambda (_%$%g172245172280%_)
                  (if (gx#stx-pair? _%$%g172245172280%_)
                      (let ((_%$%e172250172282%_
                             (gx#stx-e _%$%g172245172280%_)))
                        (let ((_%$%hd172251172285%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e172250172282%_)))
                              (_%$%tl172252172287%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e172250172282%_))))
                          (if (gx#stx-pair? _%$%tl172252172287%_)
                              (let ((_%$%e172253172290%_
                                     (gx#stx-e _%$%tl172252172287%_)))
                                (let ((_%$%hd172254172293%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e172253172290%_)))
                                      (_%$%tl172255172295%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e172253172290%_))))
                                  (if (gx#stx-pair/null? _%$%hd172254172293%_)
                                      (let ((_g174000_
                                             (gx#syntax-split-splice
                                              _%$%hd172254172293%_
                                              '0)))
                                        (begin
                                          (let ((_g174001_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g174000_)
                                                       (##values-length
                                                        _g174000_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g174001_ 2)))
                                                (error "Context expects 2 values"
                                                       _g174001_)))
                                          (let ((_%$%target172256172298%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g174000_ 0)))
                                                (_%$%tl172258172300%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g174000_
                                                    1))))
                                            (if (gx#stx-null?
                                                 _%$%tl172258172300%_)
                                                (letrec ((_%$%loop172259172303%_
                                                          (lambda (_%$%hd172257172306%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%expr172263172308%_
                           _%$%hd172264172309%_)
                    (if (gx#stx-pair? _%$%hd172257172306%_)
                        (let ((_%$%e172260172311%_
                               (gx#stx-e _%$%hd172257172306%_)))
                          (let ((_%$%lp-hd172261172314%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e172260172311%_)))
                                (_%$%lp-tl172262172316%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e172260172311%_))))
                            (if (gx#stx-pair? _%$%lp-hd172261172314%_)
                                (let ((_%$%e172267172319%_
                                       (gx#stx-e _%$%lp-hd172261172314%_)))
                                  (let ((_%$%hd172268172322%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e172267172319%_)))
                                        (_%$%tl172269172324%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e172267172319%_))))
                                    (if (gx#stx-pair? _%$%tl172269172324%_)
                                        (let ((_%$%e172270172327%_
                                               (gx#stx-e
                                                _%$%tl172269172324%_)))
                                          (let ((_%$%hd172271172330%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e172270172327%_)))
                                                (_%$%tl172272172332%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e172270172327%_))))
                                            (if (gx#stx-null?
                                                 _%$%tl172272172332%_)
                                                (_%$%loop172259172303%_
                                                 _%$%lp-tl172262172316%_
                                                 (cons _%$%hd172271172330%_
                                                       _%$%expr172263172308%_)
                                                 (cons _%$%hd172268172322%_
                                                       _%$%hd172264172309%_))
                                                (_%$%g172244172277%_
                                                 _%$%g172245172280%_))))
                                        (_%$%g172244172277%_
                                         _%$%g172245172280%_))))
                                (_%$%g172244172277%_ _%$%g172245172280%_))))
                        (let ((_%$%expr172265172335%_
                               (reverse _%$%expr172263172308%_))
                              (_%$%hd172266172336%_
                               (reverse _%$%hd172264172309%_)))
                          ((lambda (_%$%g172246172338%_
                                    _%$%g172247172339%_
                                    _%$%g172248172340%_
                                    _%$%g172249172341%_)
                             (let* ((_%$%g172360172376%_
                                     (lambda (_%$%g172361172373%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%$%g172361172373%_)))
                                    (_%$%g172359172464%_
                                     (lambda (_%$%g172361172379%_)
                                       (if (gx#stx-pair/null?
                                            _%$%g172361172379%_)
                                           (let ((_g174002_
                                                  (gx#syntax-split-splice
                                                   _%$%g172361172379%_
                                                   '0)))
                                             (begin
                                               (let ((_g174003_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g174002_)
                                                            (##values-length
                                                             _g174002_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g174003_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g174003_)))
                                               (let ((_%$%target172363172381%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g174002_
                                                         0)))
                                                     (_%$%tl172365172383%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g174002_
                                                         1))))
                                                 (if (gx#stx-null?
                                                      _%$%tl172365172383%_)
                                                     (letrec ((_%$%loop172366172386%_
                                                               (lambda (_%$%hd172364172389%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%$%expr172370172391%_)
                         (if (gx#stx-pair? _%$%hd172364172389%_)
                             (let ((_%$%e172367172393%_
                                    (gx#syntax-e _%$%hd172364172389%_)))
                               (let ((_%$%lp-hd172368172396%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e172367172393%_)))
                                     (_%$%lp-tl172369172398%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e172367172393%_))))
                                 (_%$%loop172366172386%_
                                  _%$%lp-tl172369172398%_
                                  (cons _%$%lp-hd172368172396%_
                                        _%$%expr172370172391%_))))
                             (let ((_%$%expr172371172401%_
                                    (reverse _%$%expr172370172391%_)))
                               ((lambda (_%$%g172362172403%_)
                                  (call-with-parameters
                                   (lambda ()
                                     (let* ((_%$%g172417172424%_
                                             (lambda (_%$%g172418172421%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%$%g172418172421%_)))
                                            (_%$%g172416172450%_
                                             (lambda (_%$%g172418172427%_)
                                               ((lambda (_%$%g172419172429%_)
                                                  (gxc#xform-wrap-source
                                                   (cons _%$%g172249172341%_
                                                         (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-check-splice-targets
                          _%$%g172362172403%_
                          _%$%g172248172340%_)
                         (foldr (lambda (_%$%g172439172443%_
                                         _%$%g172440172445%_
                                         _%$%g172441172447%_)
                                  (cons (cons _%$%g172440172445%_
                                              (cons _%$%g172439172443%_ '()))
                                        _%$%g172441172447%_))
                                '()
                                _%$%g172362172403%_
                                _%$%g172248172340%_))
                       _%$%g172419172429%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%stx172242%_))
                                                _%$%g172418172427%_))))
                                       (_%$%g172416172450%_
                                        (map (lambda (_%$%g172452172454%_)
                                               (gxc#compile-e
                                                _%self172241%_
                                                _%$%g172452172454%_))
                                             _%$%g172246172338%_))))
                                   gxc#current-compile-local-env
                                   (gxc#xform-let-locals
                                    (foldr (lambda (_%$%g172456172459%_
                                                    _%$%g172457172461%_)
                                             (cons _%$%g172456172459%_
                                                   _%$%g172457172461%_))
                                           '()
                                           _%$%g172248172340%_))))
                                _%$%expr172371172401%_))))))
               (_%$%loop172366172386%_ _%$%target172363172381%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g172360172376%_
                                                      _%$%g172361172379%_)))))
                                           (_%$%g172360172376%_
                                            _%$%g172361172379%_)))))
                               (_%$%g172359172464%_
                                (map (lambda (_%$%g172466172468%_)
                                       (gxc#compile-e
                                        _%self172241%_
                                        _%$%g172466172468%_))
                                     (foldr (lambda (_%$%g172470172473%_
                                                     _%$%g172471172475%_)
                                              (cons _%$%g172470172473%_
                                                    _%$%g172471172475%_))
                                            '()
                                            _%$%g172247172339%_)))))
                           _%$%tl172255172295%_
                           _%$%expr172265172335%_
                           _%$%hd172266172336%_
                           _%$%hd172251172285%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop172259172303%_
                                                   _%$%target172256172298%_
                                                   '()
                                                   '()))
                                                (_%$%g172244172277%_
                                                 _%$%g172245172280%_)))))
                                      (_%$%g172244172277%_
                                       _%$%g172245172280%_))))
                              (_%$%g172244172277%_ _%$%g172245172280%_))))
                      (_%$%g172244172277%_ _%$%g172245172280%_)))))
          (_%$%g172243172478%_ _%stx172242%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self172001%_ _%stx172002%_)
        (let* ((_%$%g172004172037%_
                (lambda (_%$%g172005172034%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g172005172034%_)))
               (_%$%g172003172238%_
                (lambda (_%$%g172005172040%_)
                  (if (gx#stx-pair? _%$%g172005172040%_)
                      (let ((_%$%e172010172042%_
                             (gx#stx-e _%$%g172005172040%_)))
                        (let ((_%$%hd172011172045%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e172010172042%_)))
                              (_%$%tl172012172047%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e172010172042%_))))
                          (if (gx#stx-pair? _%$%tl172012172047%_)
                              (let ((_%$%e172013172050%_
                                     (gx#stx-e _%$%tl172012172047%_)))
                                (let ((_%$%hd172014172053%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e172013172050%_)))
                                      (_%$%tl172015172055%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e172013172050%_))))
                                  (if (gx#stx-pair/null? _%$%hd172014172053%_)
                                      (let ((_g174004_
                                             (gx#syntax-split-splice
                                              _%$%hd172014172053%_
                                              '0)))
                                        (begin
                                          (let ((_g174005_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g174004_)
                                                       (##values-length
                                                        _g174004_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g174005_ 2)))
                                                (error "Context expects 2 values"
                                                       _g174005_)))
                                          (let ((_%$%target172016172058%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g174004_ 0)))
                                                (_%$%tl172018172060%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g174004_
                                                    1))))
                                            (if (gx#stx-null?
                                                 _%$%tl172018172060%_)
                                                (letrec ((_%$%loop172019172063%_
                                                          (lambda (_%$%hd172017172066%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%expr172023172068%_
                           _%$%hd172024172069%_)
                    (if (gx#stx-pair? _%$%hd172017172066%_)
                        (let ((_%$%e172020172071%_
                               (gx#stx-e _%$%hd172017172066%_)))
                          (let ((_%$%lp-hd172021172074%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e172020172071%_)))
                                (_%$%lp-tl172022172076%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e172020172071%_))))
                            (if (gx#stx-pair? _%$%lp-hd172021172074%_)
                                (let ((_%$%e172027172079%_
                                       (gx#stx-e _%$%lp-hd172021172074%_)))
                                  (let ((_%$%hd172028172082%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e172027172079%_)))
                                        (_%$%tl172029172084%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e172027172079%_))))
                                    (if (gx#stx-pair? _%$%tl172029172084%_)
                                        (let ((_%$%e172030172087%_
                                               (gx#stx-e
                                                _%$%tl172029172084%_)))
                                          (let ((_%$%hd172031172090%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e172030172087%_)))
                                                (_%$%tl172032172092%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e172030172087%_))))
                                            (if (gx#stx-null?
                                                 _%$%tl172032172092%_)
                                                (_%$%loop172019172063%_
                                                 _%$%lp-tl172022172076%_
                                                 (cons _%$%hd172031172090%_
                                                       _%$%expr172023172068%_)
                                                 (cons _%$%hd172028172082%_
                                                       _%$%hd172024172069%_))
                                                (_%$%g172004172037%_
                                                 _%$%g172005172040%_))))
                                        (_%$%g172004172037%_
                                         _%$%g172005172040%_))))
                                (_%$%g172004172037%_ _%$%g172005172040%_))))
                        (let ((_%$%expr172025172095%_
                               (reverse _%$%expr172023172068%_))
                              (_%$%hd172026172096%_
                               (reverse _%$%hd172024172069%_)))
                          ((lambda (_%$%g172006172098%_
                                    _%$%g172007172099%_
                                    _%$%g172008172100%_
                                    _%$%g172009172101%_)
                             (call-with-parameters
                              (lambda ()
                                (let* ((_%$%g172121172137%_
                                        (lambda (_%$%g172122172134%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g172122172134%_)))
                                       (_%$%g172120172217%_
                                        (lambda (_%$%g172122172140%_)
                                          (if (gx#stx-pair/null?
                                               _%$%g172122172140%_)
                                              (let ((_g174006_
                                                     (gx#syntax-split-splice
                                                      _%$%g172122172140%_
                                                      '0)))
                                                (begin
                                                  (let ((_g174007_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g174006_)
                                                               (##values-length
                                                                _g174006_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g174007_ 2)))
                (error "Context expects 2 values" _g174007_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%$%target172124172142%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g174006_
                                                            0)))
                                                        (_%$%tl172126172144%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g174006_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%$%tl172126172144%_)
                                                        (letrec ((_%$%loop172127172147%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%hd172125172150%_ _%$%expr172131172152%_)
                            (if (gx#stx-pair? _%$%hd172125172150%_)
                                (let ((_%$%e172128172154%_
                                       (gx#syntax-e _%$%hd172125172150%_)))
                                  (let ((_%$%lp-hd172129172157%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e172128172154%_)))
                                        (_%$%lp-tl172130172159%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e172128172154%_))))
                                    (_%$%loop172127172147%_
                                     _%$%lp-tl172130172159%_
                                     (cons _%$%lp-hd172129172157%_
                                           _%$%expr172131172152%_))))
                                (let ((_%$%expr172132172162%_
                                       (reverse _%$%expr172131172152%_)))
                                  ((lambda (_%$%g172123172164%_)
                                     (let* ((_%$%g172178172185%_
                                             (lambda (_%$%g172179172182%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%$%g172179172182%_)))
                                            (_%$%g172177172210%_
                                             (lambda (_%$%g172179172188%_)
                                               ((lambda (_%$%g172180172190%_)
                                                  (gxc#xform-wrap-source
                                                   (cons _%$%g172009172101%_
                                                         (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-check-splice-targets
                          _%$%g172123172164%_
                          _%$%g172008172100%_)
                         (foldr (lambda (_%$%g172199172203%_
                                         _%$%g172200172205%_
                                         _%$%g172201172207%_)
                                  (cons (cons _%$%g172200172205%_
                                              (cons _%$%g172199172203%_ '()))
                                        _%$%g172201172207%_))
                                '()
                                _%$%g172123172164%_
                                _%$%g172008172100%_))
                       _%$%g172180172190%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%stx172002%_))
                                                _%$%g172179172188%_))))
                                       (_%$%g172177172210%_
                                        (map (lambda (_%$%g172212172214%_)
                                               (gxc#compile-e
                                                _%self172001%_
                                                _%$%g172212172214%_))
                                             _%$%g172006172098%_))))
                                   _%$%expr172132172162%_))))))
                  (_%$%loop172127172147%_ _%$%target172124172142%_ '()))
                (_%$%g172121172137%_ _%$%g172122172140%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g172121172137%_
                                               _%$%g172122172140%_)))))
                                  (_%$%g172120172217%_
                                   (map (lambda (_%$%g172219172221%_)
                                          (gxc#compile-e
                                           _%self172001%_
                                           _%$%g172219172221%_))
                                        (foldr (lambda (_%$%g172223172226%_
                                                        _%$%g172224172228%_)
                                                 (cons _%$%g172223172226%_
                                                       _%$%g172224172228%_))
                                               '()
                                               _%$%g172007172099%_)))))
                              gxc#current-compile-local-env
                              (gxc#xform-let-locals
                               (foldr (lambda (_%$%g172230172233%_
                                               _%$%g172231172235%_)
                                        (cons _%$%g172230172233%_
                                              _%$%g172231172235%_))
                                      '()
                                      _%$%g172008172100%_))))
                           _%$%tl172015172055%_
                           _%$%expr172025172095%_
                           _%$%hd172026172096%_
                           _%$%hd172011172045%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop172019172063%_
                                                   _%$%target172016172058%_
                                                   '()
                                                   '()))
                                                (_%$%g172004172037%_
                                                 _%$%g172005172040%_)))))
                                      (_%$%g172004172037%_
                                       _%$%g172005172040%_))))
                              (_%$%g172004172037%_ _%$%g172005172040%_))))
                      (_%$%g172004172037%_ _%$%g172005172040%_)))))
          (_%$%g172003172238%_ _%stx172002%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings171868%_)
        (letrec ((_%flatten171870%_
                  (lambda (_%maybe-lst171928%_)
                    (if (gx#identifier? _%maybe-lst171928%_)
                        (cons _%maybe-lst171928%_ '())
                        (let _%loop171930%_ ((_%rest171932%_
                                              _%maybe-lst171928%_)
                                             (_%result171933%_ '()))
                          (let* ((_%$%g171937171949%_
                                  (lambda (_%$%g171938171946%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%$%g171938171946%_)))
                                 (_%$%g171936171956%_
                                  (lambda (_%$%g171938171952%_)
                                    ((lambda () _%result171933%_))))
                                 (_%$%g171935171974%_
                                  (lambda (_%$%g171938171959%_)
                                    ((lambda (_%$%g171944171961%_)
                                       (if (gx#identifier? _%$%g171944171961%_)
                                           (cons _%$%g171944171961%_
                                                 _%result171933%_)
                                           (_%$%g171936171956%_
                                            _%$%g171938171959%_)))
                                     _%$%g171938171959%_)))
                                 (_%$%g171934171998%_
                                  (lambda (_%$%g171938171977%_)
                                    (if (gx#stx-pair? _%$%g171938171977%_)
                                        (let ((_%$%e171941171979%_
                                               (gx#stx-e _%$%g171938171977%_)))
                                          (let ((_%$%hd171942171982%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e171941171979%_)))
                                                (_%$%tl171943171984%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e171941171979%_))))
                                            ((lambda (_%$%g171939171987%_
                                                      _%$%g171940171988%_)
                                               (_%loop171930%_
                                                _%$%g171939171987%_
                                                (foldl cons
                                                       _%result171933%_
                                                       (_%flatten171870%_
                                                        _%$%g171940171988%_))))
                                             _%$%tl171943171984%_
                                             _%$%hd171942171982%_)))
                                        (_%$%g171935171974%_
                                         _%$%g171938171977%_)))))
                            (_%$%g171934171998%_ _%rest171932%_)))))))
          (let _%loop171872%_ ((_%rest171874%_
                                (_%flatten171870%_ _%bindings171868%_))
                               (_%locals171875%_
                                (gxc#current-compile-local-env)))
            (let* ((_%$%rest171876171887%_ _%rest171874%_)
                   (_%$%E171880171891%_
                    (lambda ()
                      (error '"No clause matching"
                             _%$%rest171876171887%_
                             '([(? identifier? id) . rest])
                             '((? identifier? id))
                             '(_))
                      (void)))
                   (_%$%try-match171879171899%_
                    (lambda ()
                      (let ((_%$%K171881171896%_ (lambda () _%locals171875%_)))
                        (_%$%K171881171896%_))))
                   (_%$%try-match171878171910%_
                    (lambda ()
                      (let ((_%$%K171882171905%_
                             (lambda (_%id171903%_)
                               (cons (gxc#identifier-symbol _%id171903%_)
                                     _%locals171875%_))))
                        (if (gx#identifier? _%$%rest171876171887%_)
                            (let ((_%id171908%_ _%$%rest171876171887%_))
                              (_%$%K171882171905%_ _%id171908%_))
                            (_%$%try-match171879171899%_)))))
                   (_%$%K171883171916%_
                    (lambda (_%rest171913%_ _%id171914%_)
                      (_%loop171872%_
                       _%rest171913%_
                       (cons (gxc#identifier-symbol _%id171914%_)
                             _%locals171875%_)))))
              (if (pair? _%$%rest171876171887%_)
                  (let ((_%$%hd171884171919%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest171876171887%_)))
                        (_%$%tl171885171921%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest171876171887%_))))
                    (if (gx#identifier? _%$%hd171884171919%_)
                        (let* ((_%id171924%_ _%$%hd171884171919%_)
                               (_%rest171926%_ _%$%tl171885171921%_))
                          (_%$%K171883171916%_ _%rest171926%_ _%id171924%_))
                        (_%$%try-match171878171910%_)))
                  (_%$%try-match171878171910%_)))))))
    (define gxc#xform-operands
      (lambda (_%self171820%_ _%stx171821%_)
        (let* ((_%$%g171823171834%_
                (lambda (_%$%g171824171831%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g171824171831%_)))
               (_%$%g171822171865%_
                (lambda (_%$%g171824171837%_)
                  (if (gx#stx-pair? _%$%g171824171837%_)
                      (let ((_%$%e171827171839%_
                             (gx#stx-e _%$%g171824171837%_)))
                        (let ((_%$%hd171828171842%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e171827171839%_)))
                              (_%$%tl171829171844%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e171827171839%_))))
                          ((lambda (_%$%g171825171847%_ _%$%g171826171848%_)
                             (let ((_%rands171863%_
                                    (map (lambda (_%$%g171858171860%_)
                                           (gxc#compile-e
                                            _%self171820%_
                                            _%$%g171858171860%_))
                                         _%$%g171825171847%_)))
                               (gxc#xform-wrap-source
                                (cons _%$%g171826171848%_ _%rands171863%_)
                                _%stx171821%_)))
                           _%$%tl171829171844%_
                           _%$%hd171828171842%_)))
                      (_%$%g171823171834%_ _%$%g171824171837%_)))))
          (_%$%g171822171865%_ _%stx171821%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self171750%_ _%stx171751%_)
        (let* ((_%$%g171753171770%_
                (lambda (_%$%g171754171767%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g171754171767%_)))
               (_%$%g171752171817%_
                (lambda (_%$%g171754171773%_)
                  (if (gx#stx-pair? _%$%g171754171773%_)
                      (let ((_%$%e171757171775%_
                             (gx#stx-e _%$%g171754171773%_)))
                        (let ((_%$%hd171758171778%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e171757171775%_)))
                              (_%$%tl171759171780%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e171757171775%_))))
                          (if (gx#stx-pair? _%$%tl171759171780%_)
                              (let ((_%$%e171760171783%_
                                     (gx#stx-e _%$%tl171759171780%_)))
                                (let ((_%$%hd171761171786%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e171760171783%_)))
                                      (_%$%tl171762171788%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e171760171783%_))))
                                  (if (gx#stx-pair? _%$%tl171762171788%_)
                                      (let ((_%$%e171763171791%_
                                             (gx#stx-e _%$%tl171762171788%_)))
                                        (let ((_%$%hd171764171794%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e171763171791%_)))
                                              (_%$%tl171765171796%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e171763171791%_))))
                                          (if (gx#stx-null?
                                               _%$%tl171765171796%_)
                                              ((lambda (_%$%g171755171799%_
                                                        _%$%g171756171800%_)
                                                 (let ((_%expr171815%_
                                                        (gxc#compile-e
                                                         _%self171750%_
                                                         _%$%g171755171799%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _%$%g171756171800%_
                                                                (cons _%expr171815%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx171751%_)))
                                               _%$%hd171764171794%_
                                               _%$%hd171761171786%_)
                                              (_%$%g171753171770%_
                                               _%$%g171754171773%_))))
                                      (_%$%g171753171770%_
                                       _%$%g171754171773%_))))
                              (_%$%g171753171770%_ _%$%g171754171773%_))))
                      (_%$%g171753171770%_ _%$%g171754171773%_)))))
          (_%$%g171752171817%_ _%stx171751%_))))))
