(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1710106262)
  (begin
    (define gxc#&identity-expression::t
      (let ((__tmp118622 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#&identity-expression::t
         '&identity-expression
         __tmp118622
         '()
         '()
         '#f)))
    (define gxc#&identity-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#&identity-expression::t)))
    (define gxc#make-&identity-expression
      (lambda _$args118358_
        (apply make-instance gxc#&identity-expression::t _$args118358_)))
    (define gxc#&identity-expression-bind-methods!
      (let ((__tmp118623
             (lambda ()
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&identity-expression::t
                  '%#begin-annotation
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&identity-expression::t
                  '%#lambda
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&identity-expression::t
                  '%#case-lambda
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&identity-expression::t
                  '%#let-values
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&identity-expression::t
                  '%#letrec-values
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&identity-expression::t
                  '%#letrec*-values
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&identity-expression::t
                  '%#quote
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&identity-expression::t
                  '%#quote-syntax
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&identity-expression::t
                  '%#call
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&identity-expression::t
                  '%#call-unchecked
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&identity-expression::t
                  '%#if
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&identity-expression::t
                  '%#ref
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&identity-expression::t
                  '%#set!
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&identity-expression::t
                  '%#struct-instance?
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&identity-expression::t
                  '%#struct-direct-instance?
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&identity-expression::t
                  '%#struct-ref
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&identity-expression::t
                  '%#struct-set!
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&identity-expression::t
                  '%#struct-direct-ref
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&identity-expression::t
                  '%#struct-direct-set!
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&identity-expression::t
                  '%#struct-unchecked-ref
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&identity-expression::t
                  '%#struct-unchecked-set!
                  gxc#identity-method)))))
        (declare (not safe))
        (make-promise __tmp118623)))
    (define gxc#&identity-special-form::t
      (let ((__tmp118624 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#&identity-special-form::t
         '&identity-special-form
         __tmp118624
         '()
         '()
         '#f)))
    (define gxc#&identity-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#&identity-special-form::t)))
    (define gxc#make-&identity-special-form
      (lambda _$args118354_
        (apply make-instance gxc#&identity-special-form::t _$args118354_)))
    (define gxc#&identity-special-form-bind-methods!
      (let ((__tmp118625
             (lambda ()
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&identity-special-form::t
                  '%#begin
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&identity-special-form::t
                  '%#begin-syntax
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&identity-special-form::t
                  '%#begin-foreign
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&identity-special-form::t
                  '%#module
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&identity-special-form::t
                  '%#import
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&identity-special-form::t
                  '%#export
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&identity-special-form::t
                  '%#provide
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&identity-special-form::t
                  '%#extern
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&identity-special-form::t
                  '%#define-values
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&identity-special-form::t
                  '%#define-syntax
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&identity-special-form::t
                  '%#define-alias
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&identity-special-form::t
                  '%#declare
                  gxc#identity-method)))))
        (declare (not safe))
        (make-promise __tmp118625)))
    (define gxc#&identity::t
      (let ((__tmp118626
             (list gxc#&identity-special-form::t gxc#&identity-expression::t)))
        (declare (not safe))
        (make-class-type
         'gxc#&identity::t
         '&identity
         __tmp118626
         '()
         '()
         '#f)))
    (define gxc#&identity?
      (let () (declare (not safe)) (make-class-predicate gxc#&identity::t)))
    (define gxc#make-&identity
      (lambda _$args118350_
        (apply make-instance gxc#&identity::t _$args118350_)))
    (define gxc#&identity-bind-methods!
      (let ((__tmp118627
             (lambda ()
               (force gxc#&identity-special-form-bind-methods!)
               (force gxc#&identity-expression-bind-methods!))))
        (declare (not safe))
        (make-promise __tmp118627)))
    (define gxc#&basic-xform-expression::t
      (let ((__tmp118628 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#&basic-xform-expression::t
         '&basic-xform-expression
         __tmp118628
         '()
         '()
         '#f)))
    (define gxc#&basic-xform-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#&basic-xform-expression::t)))
    (define gxc#make-&basic-xform-expression
      (lambda _$args118346_
        (apply make-instance gxc#&basic-xform-expression::t _$args118346_)))
    (define gxc#&basic-xform-expression-bind-methods!
      (let ((__tmp118629
             (lambda ()
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&basic-xform-expression::t
                  '%#begin-annotation
                  gxc#xform-begin-annotation%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&basic-xform-expression::t
                  '%#lambda
                  gxc#xform-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&basic-xform-expression::t
                  '%#case-lambda
                  gxc#xform-case-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&basic-xform-expression::t
                  '%#let-values
                  gxc#xform-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&basic-xform-expression::t
                  '%#letrec-values
                  gxc#xform-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&basic-xform-expression::t
                  '%#letrec*-values
                  gxc#xform-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&basic-xform-expression::t
                  '%#quote
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&basic-xform-expression::t
                  '%#quote-syntax
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&basic-xform-expression::t
                  '%#call
                  gxc#xform-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&basic-xform-expression::t
                  '%#call-unchecked
                  gxc#xform-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&basic-xform-expression::t
                  '%#if
                  gxc#xform-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&basic-xform-expression::t
                  '%#ref
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&basic-xform-expression::t
                  '%#set!
                  gxc#xform-setq%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&basic-xform-expression::t
                  '%#struct-instance?
                  gxc#xform-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&basic-xform-expression::t
                  '%#struct-direct-instance?
                  gxc#xform-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&basic-xform-expression::t
                  '%#struct-ref
                  gxc#xform-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&basic-xform-expression::t
                  '%#struct-set!
                  gxc#xform-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&basic-xform-expression::t
                  '%#struct-direct-ref
                  gxc#xform-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&basic-xform-expression::t
                  '%#struct-direct-set!
                  gxc#xform-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&basic-xform-expression::t
                  '%#struct-unchecked-ref
                  gxc#xform-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&basic-xform-expression::t
                  '%#struct-unchecked-set!
                  gxc#xform-operands)))))
        (declare (not safe))
        (make-promise __tmp118629)))
    (define gxc#&basic-xform::t
      (let ((__tmp118630
             (list gxc#&basic-xform-expression::t gxc#&identity::t)))
        (declare (not safe))
        (make-class-type
         'gxc#&basic-xform::t
         '&basic-xform
         __tmp118630
         '()
         '()
         '#f)))
    (define gxc#&basic-xform?
      (let () (declare (not safe)) (make-class-predicate gxc#&basic-xform::t)))
    (define gxc#make-&basic-xform
      (lambda _$args118342_
        (apply make-instance gxc#&basic-xform::t _$args118342_)))
    (define gxc#&basic-xform-bind-methods!
      (let ((__tmp118631
             (lambda ()
               (force gxc#&basic-xform-expression-bind-methods!)
               (force gxc#&identity-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&basic-xform::t
                  '%#begin
                  gxc#xform-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&basic-xform::t
                  '%#begin-syntax
                  gxc#xform-begin-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&basic-xform::t
                  '%#module
                  gxc#xform-module%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&basic-xform::t
                  '%#define-values
                  gxc#xform-define-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&basic-xform::t
                  '%#define-syntax
                  gxc#xform-define-syntax%)))))
        (declare (not safe))
        (make-promise __tmp118631)))
    (define gxc#&collect-mutators::t
      (let ((__tmp118634 (list gxc#&void::t))
            (__tmp118632
             (let ((__tmp118633
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp118633 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#&collect-mutators::t
         '&collect-mutators
         __tmp118634
         '()
         __tmp118632
         '#f)))
    (define gxc#&collect-mutators?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#&collect-mutators::t)))
    (define gxc#make-&collect-mutators
      (lambda _$args118338_
        (apply make-instance gxc#&collect-mutators::t _$args118338_)))
    (define gxc#&collect-mutators-bind-methods!
      (let ((__tmp118635
             (lambda ()
               (force gxc#&void-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&collect-mutators::t
                  '%#begin
                  gxc#collect-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&collect-mutators::t
                  '%#begin-syntax
                  gxc#collect-begin-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&collect-mutators::t
                  '%#begin-annotation
                  gxc#collect-begin-annotation%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&collect-mutators::t
                  '%#module
                  gxc#collect-module%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&collect-mutators::t
                  '%#define-values
                  gxc#collect-define-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&collect-mutators::t
                  '%#define-syntax
                  gxc#collect-define-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&collect-mutators::t
                  '%#lambda
                  gxc#collect-body-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&collect-mutators::t
                  '%#case-lambda
                  gxc#collect-body-case-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&collect-mutators::t
                  '%#let-values
                  gxc#collect-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&collect-mutators::t
                  '%#letrec-values
                  gxc#collect-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&collect-mutators::t
                  '%#letrec*-values
                  gxc#collect-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&collect-mutators::t
                  '%#call
                  gxc#collect-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&collect-mutators::t
                  '%#call-unchecked
                  gxc#collect-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&collect-mutators::t
                  '%#if
                  gxc#collect-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&collect-mutators::t
                  '%#set!
                  gxc#collect-mutators-setq%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&collect-mutators::t
                  '%#struct-instance?
                  gxc#collect-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&collect-mutators::t
                  '%#struct-direct-instance?
                  gxc#collect-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&collect-mutators::t
                  '%#struct-ref
                  gxc#collect-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&collect-mutators::t
                  '%#struct-set!
                  gxc#collect-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&collect-mutators::t
                  '%#struct-direct-ref
                  gxc#collect-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&collect-mutators::t
                  '%#struct-direct-set!
                  gxc#collect-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&collect-mutators::t
                  '%#struct-unchecked-ref
                  gxc#collect-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&collect-mutators::t
                  '%#struct-unchecked-set!
                  gxc#collect-operands))
               (let ()
                 (declare (not safe))
                 (seal-class! gxc#&collect-mutators::t)))))
        (declare (not safe))
        (make-promise __tmp118635)))
    (define gxc#apply-collect-mutators
      (lambda (_stx118330_)
        (force gxc#&collect-mutators-bind-methods!)
        (let* ((_self118333_
                (let ((__obj118610
                       (let ()
                         (declare (not safe))
                         (##structure gxc#&collect-mutators::t))))
                  __obj118610))
               (__tmp118636
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self118333_ _stx118330_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp118636
           gxc#current-compile-method
           _self118333_))))
    (define gxc#&collect-methods::t
      (let ((__tmp118639 (list gxc#&void::t))
            (__tmp118637
             (let ((__tmp118638
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp118638 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#&collect-methods::t
         '&collect-methods
         __tmp118639
         '()
         __tmp118637
         '#f)))
    (define gxc#&collect-methods?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#&collect-methods::t)))
    (define gxc#make-&collect-methods
      (lambda _$args118327_
        (apply make-instance gxc#&collect-methods::t _$args118327_)))
    (define gxc#&collect-methods-bind-methods!
      (let ((__tmp118640
             (lambda ()
               (force gxc#&void-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&collect-methods::t
                  '%#begin
                  gxc#collect-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&collect-methods::t
                  '%#begin-syntax
                  gxc#collect-begin-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&collect-methods::t
                  '%#module
                  gxc#collect-module%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&collect-methods::t
                  '%#call
                  gxc#collect-methods-call%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&collect-methods::t
                  '%#call-unchecked
                  gxc#collect-methods-call%))
               (let ()
                 (declare (not safe))
                 (seal-class! gxc#&collect-methods::t)))))
        (declare (not safe))
        (make-promise __tmp118640)))
    (define gxc#apply-collect-methods
      (lambda (_stx118319_)
        (force gxc#&collect-methods-bind-methods!)
        (let* ((_self118322_
                (let ((__obj118612
                       (let ()
                         (declare (not safe))
                         (##structure gxc#&collect-methods::t))))
                  __obj118612))
               (__tmp118641
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self118322_ _stx118319_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp118641
           gxc#current-compile-method
           _self118322_))))
    (define gxc#&expression-subst::t
      (let ((__tmp118644 (list gxc#&basic-xform-expression::t))
            (__tmp118642
             (let ((__tmp118643
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp118643 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#&expression-subst::t
         '&expression-subst
         __tmp118644
         '(id new-id)
         __tmp118642
         '#f)))
    (define gxc#&expression-subst?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#&expression-subst::t)))
    (define gxc#make-&expression-subst
      (lambda _$args118316_
        (apply make-instance gxc#&expression-subst::t _$args118316_)))
    (define gxc#&expression-subst-id
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#&expression-subst::t 'id)))
    (define gxc#&expression-subst-new-id
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#&expression-subst::t 'new-id)))
    (define gxc#&expression-subst-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#&expression-subst::t 'id)))
    (define gxc#&expression-subst-new-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#&expression-subst::t 'new-id)))
    (define gxc#&&expression-subst-id
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#&expression-subst::t 'id)))
    (define gxc#&&expression-subst-new-id
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#&expression-subst::t 'new-id)))
    (define gxc#&&expression-subst-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#&expression-subst::t 'id)))
    (define gxc#&&expression-subst-new-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#&expression-subst::t 'new-id)))
    (define gxc#&expression-subst-bind-methods!
      (let ((__tmp118645
             (lambda ()
               (force gxc#&basic-xform-expression-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&expression-subst::t
                  '%#begin
                  gxc#xform-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&expression-subst::t
                  '%#ref
                  gxc#expression-subst-ref%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&expression-subst::t
                  '%#set!
                  gxc#expression-subst-setq%))
               (let ()
                 (declare (not safe))
                 (seal-class! gxc#&expression-subst::t)))))
        (declare (not safe))
        (make-promise __tmp118645)))
    (define gxc#apply-expression-subst__%
      (lambda (_g118646_ _id118282118286_ _new-id118283118288_ _stx118290_)
        (let* ((_id118293_
                (if (let ()
                      (declare (not safe))
                      (eq? _id118282118286_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _id118282118286_))
               (_new-id118295_
                (if (let ()
                      (declare (not safe))
                      (eq? _new-id118283118288_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _new-id118283118288_)))
          (force gxc#&expression-subst-bind-methods!)
          (let* ((_self118297_
                  (let ((__obj118614
                         (let ()
                           (declare (not safe))
                           (##structure gxc#&expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj118614
                       _id118293_
                       '1
                       gxc#&expression-subst::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj118614
                       _new-id118295_
                       '2
                       gxc#&expression-subst::t
                       '#f))
                    __obj118614))
                 (__tmp118647
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self118297_ _stx118290_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp118647
             gxc#current-compile-method
             _self118297_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_keys118281118304_ . _args118306_)
        (apply gxc#apply-expression-subst__%
               _keys118281118304_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys118281118304_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys118281118304_ 'new-id: absent-value))
               _args118306_)))
    (define gxc#apply-expression-subst
      (lambda _args118284118312_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _args118284118312_)))
    (define gxc#&expression-subst*::t
      (let ((__tmp118650 (list gxc#&basic-xform-expression::t))
            (__tmp118648
             (let ((__tmp118649
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp118649 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#&expression-subst*::t
         '&expression-subst*
         __tmp118650
         '(subst)
         __tmp118648
         '#f)))
    (define gxc#&expression-subst*?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#&expression-subst*::t)))
    (define gxc#make-&expression-subst*
      (lambda _$args118277_
        (apply make-instance gxc#&expression-subst*::t _$args118277_)))
    (define gxc#&expression-subst*-subst
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#&expression-subst*::t 'subst)))
    (define gxc#&expression-subst*-subst-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#&expression-subst*::t 'subst)))
    (define gxc#&&expression-subst*-subst
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#&expression-subst*::t 'subst)))
    (define gxc#&&expression-subst*-subst-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#&expression-subst*::t 'subst)))
    (define gxc#&expression-subst*-bind-methods!
      (let ((__tmp118651
             (lambda ()
               (force gxc#&basic-xform-expression-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&expression-subst*::t
                  '%#begin
                  gxc#xform-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&expression-subst*::t
                  '%#ref
                  gxc#expression-subst*-ref%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&expression-subst*::t
                  '%#set!
                  gxc#expression-subst*-setq%))
               (let ()
                 (declare (not safe))
                 (seal-class! gxc#&expression-subst*::t)))))
        (declare (not safe))
        (make-promise __tmp118651)))
    (define gxc#apply-expression-subst*__%
      (lambda (_g118652_ _subst118248118251_ _stx118253_)
        (let ((_subst118256_
               (if (let ()
                     (declare (not safe))
                     (eq? _subst118248118251_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _subst118248118251_)))
          (force gxc#&expression-subst*-bind-methods!)
          (let* ((_self118258_
                  (let ((__obj118616
                         (let ()
                           (declare (not safe))
                           (##structure gxc#&expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj118616
                       _subst118256_
                       '1
                       gxc#&expression-subst*::t
                       '#f))
                    __obj118616))
                 (__tmp118653
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self118258_ _stx118253_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp118653
             gxc#current-compile-method
             _self118258_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_keys118247118265_ . _args118267_)
        (apply gxc#apply-expression-subst*__%
               _keys118247118265_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys118247118265_ 'subst: absent-value))
               _args118267_)))
    (define gxc#apply-expression-subst*
      (lambda _args118249118273_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _args118249118273_)))
    (define gxc#&find-expression::t
      (let ((__tmp118654 (list gxc#&false-expression::t)))
        (declare (not safe))
        (make-class-type
         'gxc#&find-expression::t
         '&find-expression
         __tmp118654
         '()
         '()
         '#f)))
    (define gxc#&find-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#&find-expression::t)))
    (define gxc#make-&find-expression
      (lambda _$args118243_
        (apply make-instance gxc#&find-expression::t _$args118243_)))
    (define gxc#&find-expression-bind-methods!
      (let ((__tmp118655
             (lambda ()
               (force gxc#&false-expression-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&find-expression::t
                  '%#begin
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&find-expression::t
                  '%#begin-annotation
                  gxc#find-begin-annotation%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&find-expression::t
                  '%#lambda
                  gxc#find-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&find-expression::t
                  '%#case-lambda
                  gxc#find-case-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&find-expression::t
                  '%#let-values
                  gxc#find-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&find-expression::t
                  '%#letrec-values
                  gxc#find-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&find-expression::t
                  '%#letrec*-values
                  gxc#find-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&find-expression::t
                  '%#call
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&find-expression::t
                  '%#call-unchecked
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&find-expression::t
                  '%#if
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&find-expression::t
                  '%#set!
                  gxc#find-setq%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&find-expression::t
                  '%#struct-instance?
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&find-expression::t
                  '%#struct-direct-instance?
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&find-expression::t
                  '%#struct-ref
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&find-expression::t
                  '%#struct-set!
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&find-expression::t
                  '%#struct-direct-ref
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&find-expression::t
                  '%#struct-direct-set!
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&find-expression::t
                  '%#struct-unchecked-ref
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&find-expression::t
                  '%#struct-unchecked-set!
                  gxc#find-body%)))))
        (declare (not safe))
        (make-promise __tmp118655)))
    (define gxc#&find-var-refs::t
      (let ((__tmp118658 (list gxc#&find-expression::t))
            (__tmp118656
             (let ((__tmp118657
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp118657 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#&find-var-refs::t
         '&find-var-refs
         __tmp118658
         '(ids)
         __tmp118656
         '#f)))
    (define gxc#&find-var-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#&find-var-refs::t)))
    (define gxc#make-&find-var-refs
      (lambda _$args118239_
        (apply make-instance gxc#&find-var-refs::t _$args118239_)))
    (define gxc#&find-var-refs-ids
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#&find-var-refs::t 'ids)))
    (define gxc#&find-var-refs-ids-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#&find-var-refs::t 'ids)))
    (define gxc#&&find-var-refs-ids
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#&find-var-refs::t 'ids)))
    (define gxc#&&find-var-refs-ids-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#&find-var-refs::t 'ids)))
    (define gxc#&find-var-refs-bind-methods!
      (let ((__tmp118659
             (lambda ()
               (force gxc#&find-expression-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&find-var-refs::t
                  '%#ref
                  gxc#find-var-refs-ref%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&find-var-refs::t
                  '%#set!
                  gxc#find-var-refs-setq%))
               (let ()
                 (declare (not safe))
                 (seal-class! gxc#&find-var-refs::t)))))
        (declare (not safe))
        (make-promise __tmp118659)))
    (define gxc#apply-find-var-refs__%
      (lambda (_g118660_ _ids118210118213_ _stx118215_)
        (let ((_ids118218_
               (if (let ()
                     (declare (not safe))
                     (eq? _ids118210118213_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _ids118210118213_)))
          (force gxc#&find-var-refs-bind-methods!)
          (let* ((_self118220_
                  (let ((__obj118619
                         (let ()
                           (declare (not safe))
                           (##structure gxc#&find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj118619
                       _ids118218_
                       '1
                       gxc#&find-var-refs::t
                       '#f))
                    __obj118619))
                 (__tmp118661
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self118220_ _stx118215_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp118661
             gxc#current-compile-method
             _self118220_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_keys118209118227_ . _args118229_)
        (apply gxc#apply-find-var-refs__%
               _keys118209118227_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys118209118227_ 'ids: absent-value))
               _args118229_)))
    (define gxc#apply-find-var-refs
      (lambda _args118211118235_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _args118211118235_)))
    (define gxc#&collect-runtime-refs::t
      (let ((__tmp118664 (list gxc#&collect-expression-refs::t))
            (__tmp118662
             (let ((__tmp118663
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp118663 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#&collect-runtime-refs::t
         '&collect-runtime-refs
         __tmp118664
         '()
         __tmp118662
         '#f)))
    (define gxc#&collect-runtime-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#&collect-runtime-refs::t)))
    (define gxc#make-&collect-runtime-refs
      (lambda _$args118205_
        (apply make-instance gxc#&collect-runtime-refs::t _$args118205_)))
    (define gxc#&collect-runtime-refs-table
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#&collect-runtime-refs::t 'table)))
    (define gxc#&collect-runtime-refs-table-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#&collect-runtime-refs::t 'table)))
    (define gxc#&&collect-runtime-refs-table
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         gxc#&collect-runtime-refs::t
         'table)))
    (define gxc#&&collect-runtime-refs-table-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator
         gxc#&collect-runtime-refs::t
         'table)))
    (define gxc#&collect-runtime-refs-bind-methods!
      (let ((__tmp118665
             (lambda ()
               (force gxc#&collect-expression-refs-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&collect-runtime-refs::t
                  '%#ref
                  gxc#collect-runtime-refs-ref%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&collect-runtime-refs::t
                  '%#set!
                  gxc#collect-runtime-refs-setq%))
               (let ()
                 (declare (not safe))
                 (seal-class! gxc#&collect-runtime-refs::t)))))
        (declare (not safe))
        (make-promise __tmp118665)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_g118666_ _table118176118179_ _stx118181_)
        (let ((_table118184_
               (if (let ()
                     (declare (not safe))
                     (eq? _table118176118179_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _table118176118179_)))
          (force gxc#&collect-runtime-refs-bind-methods!)
          (let* ((_self118186_
                  (let ((__obj118621
                         (let ()
                           (declare (not safe))
                           (##structure gxc#&collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj118621
                       _table118184_
                       '1
                       gxc#&collect-runtime-refs::t
                       '#f))
                    __obj118621))
                 (__tmp118667
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self118186_ _stx118181_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp118667
             gxc#current-compile-method
             _self118186_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_keys118175118193_ . _args118195_)
        (apply gxc#apply-collect-runtime-refs__%
               _keys118175118193_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys118175118193_ 'table: absent-value))
               _args118195_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _args118177118201_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _args118177118201_)))
    (define gxc#xform-wrap-source
      (lambda (_stx118171_ _src-stx118172_)
        (let ((__tmp118668
               (let () (declare (not safe)) (gx#stx-source _src-stx118172_))))
          (declare (not safe))
          (gx#stx-wrap-source _stx118171_ __tmp118668))))
    (define gxc#xform-begin%
      (lambda (_self118126_ _stx118127_)
        (let* ((_g118129118139_
                (lambda (_g118130118136_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118130118136_))))
               (_g118128118168_
                (lambda (_g118130118142_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118130118142_))
                      (let ((_e118134118144_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118130118142_))))
                        (let ((_hd118133118147_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118134118144_)))
                              (_tl118132118149_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118134118144_))))
                          ((lambda (_L118152_)
                             (let* ((_forms118166_
                                     (map (lambda (_g118161118163_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self118126_
                                               _g118161118163_)))
                                          _L118152_))
                                    (__tmp118669
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#begin _forms118166_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp118669
                                _stx118127_)))
                           _tl118132118149_)))
                      (let ()
                        (declare (not safe))
                        (_g118129118139_ _g118130118142_))))))
          (declare (not safe))
          (_g118128118168_ _stx118127_))))
    (define gxc#xform-begin-syntax%
      (lambda (_self118080_ _stx118081_)
        (let* ((_g118083118093_
                (lambda (_g118084118090_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118084118090_))))
               (_g118082118123_
                (lambda (_g118084118096_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118084118096_))
                      (let ((_e118088118098_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118084118096_))))
                        (let ((_hd118087118101_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118088118098_)))
                              (_tl118086118103_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118088118098_))))
                          ((lambda (_L118106_)
                             (let ((__tmp118672
                                    (lambda ()
                                      (let* ((_forms118121_
                                              (map (lambda (_g118116118118_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _self118080_
                                                        _g118116118118_)))
                                                   _L118106_))
                                             (__tmp118673
                                              (let ()
                                                (declare (not safe))
                                                (cons '%#begin-syntax
                                                      _forms118121_))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp118673
                                         _stx118081_))))
                                   (__tmp118670
                                    (let ((__tmp118671
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp118671 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp118672
                                gx#current-expander-phi
                                __tmp118670)))
                           _tl118086118103_)))
                      (let ()
                        (declare (not safe))
                        (_g118083118093_ _g118084118096_))))))
          (declare (not safe))
          (_g118082118123_ _stx118081_))))
    (define gxc#xform-module%
      (lambda (_self118017_ _stx118018_)
        (let* ((_g118020118034_
                (lambda (_g118021118031_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118021118031_))))
               (_g118019118077_
                (lambda (_g118021118037_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118021118037_))
                      (let ((_e118026118039_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118021118037_))))
                        (let ((_hd118025118042_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118026118039_)))
                              (_tl118024118044_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118026118039_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118024118044_))
                              (let ((_e118029118047_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118024118044_))))
                                (let ((_hd118028118050_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118029118047_)))
                                      (_tl118027118052_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118029118047_))))
                                  ((lambda (_L118055_ _L118056_)
                                     (let* ((_ctx118069_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L118056_)))
                                            (_code118071_
                                             (##structure-ref
                                              _ctx118069_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_code118074_
                                             (let ((__tmp118674
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _self118017_
                                                         _code118071_)))))
                                               (declare (not safe))
                                               (call-with-parameters
                                                __tmp118674
                                                gx#current-expander-context
                                                _ctx118069_))))
                                       (##structure-set!
                                        _ctx118069_
                                        _code118074_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp118675
                                              (let ((__tmp118676
                                                     (let ((__tmp118677
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _code118074_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L118056_ __tmp118677))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#module __tmp118676))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp118675
                                          _stx118018_))))
                                   _tl118027118052_
                                   _hd118028118050_)))
                              (let ()
                                (declare (not safe))
                                (_g118020118034_ _g118021118037_)))))
                      (let ()
                        (declare (not safe))
                        (_g118020118034_ _g118021118037_))))))
          (declare (not safe))
          (_g118019118077_ _stx118018_))))
    (define gxc#xform-define-values%
      (lambda (_self117947_ _stx117948_)
        (let* ((_g117950117967_
                (lambda (_g117951117964_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117951117964_))))
               (_g117949118014_
                (lambda (_g117951117970_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117951117970_))
                      (let ((_e117956117972_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117951117970_))))
                        (let ((_hd117955117975_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117956117972_)))
                              (_tl117954117977_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117956117972_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117954117977_))
                              (let ((_e117959117980_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117954117977_))))
                                (let ((_hd117958117983_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117959117980_)))
                                      (_tl117957117985_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117959117980_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl117957117985_))
                                      (let ((_e117962117988_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl117957117985_))))
                                        (let ((_hd117961117991_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e117962117988_)))
                                              (_tl117960117993_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e117962117988_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl117960117993_))
                                              ((lambda (_L117996_ _L117997_)
                                                 (let* ((_expr118012_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self117947_
                                                            _L117996_)))
                                                        (__tmp118678
                                                         (let ((__tmp118679
                                                                (let ((__tmp118680
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _expr118012_ '()))))
                          (declare (not safe))
                          (cons _L117997_ __tmp118680))))
                   (declare (not safe))
                   (cons '%#define-values __tmp118679))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp118678
                                                    _stx117948_)))
                                               _hd117961117991_
                                               _hd117958117983_)
                                              (let ()
                                                (declare (not safe))
                                                (_g117950117967_
                                                 _g117951117970_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g117950117967_ _g117951117970_)))))
                              (let ()
                                (declare (not safe))
                                (_g117950117967_ _g117951117970_)))))
                      (let ()
                        (declare (not safe))
                        (_g117950117967_ _g117951117970_))))))
          (declare (not safe))
          (_g117949118014_ _stx117948_))))
    (define gxc#xform-define-syntax%
      (lambda (_self117876_ _stx117877_)
        (let* ((_g117879117896_
                (lambda (_g117880117893_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117880117893_))))
               (_g117878117944_
                (lambda (_g117880117899_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117880117899_))
                      (let ((_e117885117901_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117880117899_))))
                        (let ((_hd117884117904_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117885117901_)))
                              (_tl117883117906_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117885117901_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117883117906_))
                              (let ((_e117888117909_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117883117906_))))
                                (let ((_hd117887117912_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117888117909_)))
                                      (_tl117886117914_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117888117909_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl117886117914_))
                                      (let ((_e117891117917_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl117886117914_))))
                                        (let ((_hd117890117920_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e117891117917_)))
                                              (_tl117889117922_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e117891117917_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl117889117922_))
                                              ((lambda (_L117925_ _L117926_)
                                                 (let ((__tmp118683
                                                        (lambda ()
                                                          (let* ((_expr117942_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__1 _self117876_ _L117925_)))
                         (__tmp118684
                          (let ((__tmp118685
                                 (let ((__tmp118686
                                        (let ()
                                          (declare (not safe))
                                          (cons _expr117942_ '()))))
                                   (declare (not safe))
                                   (cons _L117926_ __tmp118686))))
                            (declare (not safe))
                            (cons '%#define-syntax __tmp118685))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp118684 _stx117877_))))
               (__tmp118681
                (let ((__tmp118682 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp118682 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp118683
                                                    gx#current-expander-phi
                                                    __tmp118681)))
                                               _hd117890117920_
                                               _hd117887117912_)
                                              (let ()
                                                (declare (not safe))
                                                (_g117879117896_
                                                 _g117880117899_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g117879117896_ _g117880117899_)))))
                              (let ()
                                (declare (not safe))
                                (_g117879117896_ _g117880117899_)))))
                      (let ()
                        (declare (not safe))
                        (_g117879117896_ _g117880117899_))))))
          (declare (not safe))
          (_g117878117944_ _stx117877_))))
    (define gxc#xform-begin-annotation%
      (lambda (_self117806_ _stx117807_)
        (let* ((_g117809117826_
                (lambda (_g117810117823_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117810117823_))))
               (_g117808117873_
                (lambda (_g117810117829_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117810117829_))
                      (let ((_e117815117831_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117810117829_))))
                        (let ((_hd117814117834_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117815117831_)))
                              (_tl117813117836_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117815117831_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117813117836_))
                              (let ((_e117818117839_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117813117836_))))
                                (let ((_hd117817117842_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117818117839_)))
                                      (_tl117816117844_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117818117839_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl117816117844_))
                                      (let ((_e117821117847_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl117816117844_))))
                                        (let ((_hd117820117850_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e117821117847_)))
                                              (_tl117819117852_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e117821117847_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl117819117852_))
                                              ((lambda (_L117855_ _L117856_)
                                                 (let* ((_expr117871_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self117806_
                                                            _L117855_)))
                                                        (__tmp118687
                                                         (let ((__tmp118688
                                                                (let ((__tmp118689
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _expr117871_ '()))))
                          (declare (not safe))
                          (cons _L117856_ __tmp118689))))
                   (declare (not safe))
                   (cons '%#begin-annotation __tmp118688))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp118687
                                                    _stx117807_)))
                                               _hd117820117850_
                                               _hd117817117842_)
                                              (let ()
                                                (declare (not safe))
                                                (_g117809117826_
                                                 _g117810117829_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g117809117826_ _g117810117829_)))))
                              (let ()
                                (declare (not safe))
                                (_g117809117826_ _g117810117829_)))))
                      (let ()
                        (declare (not safe))
                        (_g117809117826_ _g117810117829_))))))
          (declare (not safe))
          (_g117808117873_ _stx117807_))))
    (define gxc#xform-lambda%
      (lambda (_self117745_ _stx117746_)
        (let* ((_g117748117762_
                (lambda (_g117749117759_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117749117759_))))
               (_g117747117803_
                (lambda (_g117749117765_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117749117765_))
                      (let ((_e117754117767_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117749117765_))))
                        (let ((_hd117753117770_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117754117767_)))
                              (_tl117752117772_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117754117767_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117752117772_))
                              (let ((_e117757117775_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117752117772_))))
                                (let ((_hd117756117778_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117757117775_)))
                                      (_tl117755117780_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117757117775_))))
                                  ((lambda (_L117783_ _L117784_)
                                     (let* ((_body117801_
                                             (map (lambda (_g117796117798_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _self117745_
                                                       _g117796117798_)))
                                                  _L117783_))
                                            (__tmp118690
                                             (let ((__tmp118691
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L117784_
                                                            _body117801_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp118691))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp118690
                                        _stx117746_)))
                                   _tl117755117780_
                                   _hd117756117778_)))
                              (let ()
                                (declare (not safe))
                                (_g117748117762_ _g117749117765_)))))
                      (let ()
                        (declare (not safe))
                        (_g117748117762_ _g117749117765_))))))
          (declare (not safe))
          (_g117747117803_ _stx117746_))))
    (define gxc#xform-case-lambda%
      (lambda (_self117654_ _stx117655_)
        (letrec ((_clause-e117657_
                  (lambda (_clause117698_)
                    (let* ((_g117700117711_
                            (lambda (_g117701117708_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g117701117708_))))
                           (_g117699117742_
                            (lambda (_g117701117714_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g117701117714_))
                                  (let ((_e117706117716_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g117701117714_))))
                                    (let ((_hd117705117719_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e117706117716_)))
                                          (_tl117704117721_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e117706117716_))))
                                      ((lambda (_L117724_ _L117725_)
                                         (let ((_body117740_
                                                (map (lambda (_g117735117737_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _self117654_
                                                          _g117735117737_)))
                                                     _L117724_)))
                                           (declare (not safe))
                                           (cons _L117725_ _body117740_)))
                                       _tl117704117721_
                                       _hd117705117719_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g117700117711_ _g117701117714_))))))
                      (declare (not safe))
                      (_g117699117742_ _clause117698_)))))
          (let* ((_g117659117669_
                  (lambda (_g117660117666_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g117660117666_))))
                 (_g117658117695_
                  (lambda (_g117660117672_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g117660117672_))
                        (let ((_e117664117674_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g117660117672_))))
                          (let ((_hd117663117677_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e117664117674_)))
                                (_tl117662117679_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e117664117674_))))
                            ((lambda (_L117682_)
                               (let* ((_clauses117693_
                                       (map _clause-e117657_ _L117682_))
                                      (__tmp118692
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses117693_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp118692
                                  _stx117655_)))
                             _tl117662117679_)))
                        (let ()
                          (declare (not safe))
                          (_g117659117669_ _g117660117672_))))))
            (declare (not safe))
            (_g117658117695_ _stx117655_)))))
    (define gxc#xform-let-values%
      (lambda (_self117440_ _stx117441_)
        (let* ((_g117443117476_
                (lambda (_g117444117473_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117444117473_))))
               (_g117442117651_
                (lambda (_g117444117479_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117444117479_))
                      (let ((_e117451117481_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117444117479_))))
                        (let ((_hd117450117484_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117451117481_)))
                              (_tl117449117486_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117451117481_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117449117486_))
                              (let ((_e117454117489_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117449117486_))))
                                (let ((_hd117453117492_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117454117489_)))
                                      (_tl117452117494_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117454117489_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd117453117492_))
                                      (let ((_g118693_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd117453117492_
                                                '0))))
                                        (begin
                                          (let ((_g118694_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g118693_)
                                                       (##vector-length
                                                        _g118693_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g118694_ 2)))
                                                (error "Context expects 2 values"
                                                       _g118694_)))
                                          (let ((_target117455117497_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g118693_ 0)))
                                                (_tl117457117499_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g118693_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl117457117499_))
                                                (letrec ((_loop117458117502_
                                                          (lambda (_hd117456117505_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr117462117507_
                           _hd117463117509_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd117456117505_))
                        (let ((_e117459117512_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd117456117505_))))
                          (let ((_lp-hd117460117515_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e117459117512_)))
                                (_lp-tl117461117517_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e117459117512_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd117460117515_))
                                (let ((_e117468117520_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd117460117515_))))
                                  (let ((_hd117467117523_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e117468117520_)))
                                        (_tl117466117525_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e117468117520_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl117466117525_))
                                        (let ((_e117471117528_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl117466117525_))))
                                          (let ((_hd117470117531_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e117471117528_)))
                                                (_tl117469117533_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e117471117528_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl117469117533_))
                                                (let ((__tmp118707
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd117470117531_
                                                               _expr117462117507_)))
                                                      (__tmp118706
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd117467117523_
                                                               _hd117463117509_))))
                                                  (declare (not safe))
                                                  (_loop117458117502_
                                                   _lp-tl117461117517_
                                                   __tmp118707
                                                   __tmp118706))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g117443117476_
                                                   _g117444117479_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g117443117476_ _g117444117479_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g117443117476_ _g117444117479_)))))
                        (let ((_expr117464117536_ (reverse _expr117462117507_))
                              (_hd117465117538_ (reverse _hd117463117509_)))
                          ((lambda (_L117541_ _L117542_ _L117543_ _L117544_)
                             (let* ((_g117563117579_
                                     (lambda (_g117564117576_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g117564117576_))))
                                    (_g117562117637_
                                     (lambda (_g117564117582_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _g117564117582_))
                                           (let ((_g118695_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _g117564117582_
                                                     '0))))
                                             (begin
                                               (let ((_g118696_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g118695_)
                                                            (##vector-length
                                                             _g118695_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g118696_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g118696_)))
                                               (let ((_target117566117584_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g118695_
                                                         0)))
                                                     (_tl117568117586_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g118695_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl117568117586_))
                                                     (letrec ((_loop117569117589_
                                                               (lambda (_hd117567117592_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr117573117594_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _hd117567117592_))
                             (let ((_e117570117597_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _hd117567117592_))))
                               (let ((_lp-hd117571117600_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e117570117597_)))
                                     (_lp-tl117572117602_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e117570117597_))))
                                 (let ((__tmp118703
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd117571117600_
                                                _expr117573117594_))))
                                   (declare (not safe))
                                   (_loop117569117589_
                                    _lp-tl117572117602_
                                    __tmp118703))))
                             (let ((_expr117574117605_
                                    (reverse _expr117573117594_)))
                               ((lambda (_L117608_)
                                  (let ()
                                    (let* ((_body117625_
                                            (map (lambda (_g117620117622_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self117440_
                                                      _g117620117622_)))
                                                 _L117541_))
                                           (__tmp118697
                                            (let ((__tmp118698
                                                   (let ((__tmp118699
                                                          (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _L117608_
                                                               _L117543_))
                                                            (let ((__tmp118700
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g117626117630_
                                    _g117627117632_
                                    _g117628117634_)
                             (let ((__tmp118701
                                    (let ((__tmp118702
                                           (let ()
                                             (declare (not safe))
                                             (cons _g117626117630_ '()))))
                                      (declare (not safe))
                                      (cons _g117627117632_ __tmp118702))))
                               (declare (not safe))
                               (cons __tmp118701 _g117628117634_)))))
                      (declare (not safe))
                      (foldr2 __tmp118700 '() _L117608_ _L117543_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp118699
                                                           _body117625_))))
                                              (declare (not safe))
                                              (cons _L117544_ __tmp118698))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp118697
                                       _stx117441_))))
                                _expr117574117605_))))))
               (let ()
                 (declare (not safe))
                 (_loop117569117589_ _target117566117584_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g117563117579_
                                                        _g117564117582_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_g117563117579_
                                              _g117564117582_)))))
                                    (__tmp118704
                                     (map (lambda (_g117639117641_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self117440_
                                               _g117639117641_)))
                                          (let ((__tmp118705
                                                 (lambda (_g117643117646_
                                                          _g117644117648_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g117643117646_
                                                           _g117644117648_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp118705
                                                    '()
                                                    _L117542_)))))
                               (declare (not safe))
                               (_g117562117637_ __tmp118704)))
                           _tl117452117494_
                           _expr117464117536_
                           _hd117465117538_
                           _hd117450117484_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop117458117502_
                                                     _target117455117497_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g117443117476_
                                                   _g117444117479_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g117443117476_ _g117444117479_)))))
                              (let ()
                                (declare (not safe))
                                (_g117443117476_ _g117444117479_)))))
                      (let ()
                        (declare (not safe))
                        (_g117443117476_ _g117444117479_))))))
          (declare (not safe))
          (_g117442117651_ _stx117441_))))
    (define gxc#xform-operands
      (lambda (_self117392_ _stx117393_)
        (let* ((_g117395117406_
                (lambda (_g117396117403_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117396117403_))))
               (_g117394117437_
                (lambda (_g117396117409_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117396117409_))
                      (let ((_e117401117411_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117396117409_))))
                        (let ((_hd117400117414_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117401117411_)))
                              (_tl117399117416_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117401117411_))))
                          ((lambda (_L117419_ _L117420_)
                             (let* ((_rands117435_
                                     (map (lambda (_g117430117432_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self117392_
                                               _g117430117432_)))
                                          _L117419_))
                                    (__tmp118708
                                     (let ()
                                       (declare (not safe))
                                       (cons _L117420_ _rands117435_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp118708
                                _stx117393_)))
                           _tl117399117416_
                           _hd117400117414_)))
                      (let ()
                        (declare (not safe))
                        (_g117395117406_ _g117396117409_))))))
          (declare (not safe))
          (_g117394117437_ _stx117393_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_self117322_ _stx117323_)
        (let* ((_g117325117342_
                (lambda (_g117326117339_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117326117339_))))
               (_g117324117389_
                (lambda (_g117326117345_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117326117345_))
                      (let ((_e117331117347_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117326117345_))))
                        (let ((_hd117330117350_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117331117347_)))
                              (_tl117329117352_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117331117347_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117329117352_))
                              (let ((_e117334117355_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117329117352_))))
                                (let ((_hd117333117358_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117334117355_)))
                                      (_tl117332117360_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117334117355_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl117332117360_))
                                      (let ((_e117337117363_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl117332117360_))))
                                        (let ((_hd117336117366_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e117337117363_)))
                                              (_tl117335117368_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e117337117363_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl117335117368_))
                                              ((lambda (_L117371_ _L117372_)
                                                 (let* ((_expr117387_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self117322_
                                                            _L117371_)))
                                                        (__tmp118709
                                                         (let ((__tmp118710
                                                                (let ((__tmp118711
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _expr117387_ '()))))
                          (declare (not safe))
                          (cons _L117372_ __tmp118711))))
                   (declare (not safe))
                   (cons '%#set! __tmp118710))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp118709
                                                    _stx117323_)))
                                               _hd117336117366_
                                               _hd117333117358_)
                                              (let ()
                                                (declare (not safe))
                                                (_g117325117342_
                                                 _g117326117345_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g117325117342_ _g117326117345_)))))
                              (let ()
                                (declare (not safe))
                                (_g117325117342_ _g117326117345_)))))
                      (let ()
                        (declare (not safe))
                        (_g117325117342_ _g117326117345_))))))
          (declare (not safe))
          (_g117324117389_ _stx117323_))))
    (define gxc#collect-mutators-setq%
      (lambda (_self117252_ _stx117253_)
        (let* ((_g117255117272_
                (lambda (_g117256117269_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117256117269_))))
               (_g117254117319_
                (lambda (_g117256117275_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117256117275_))
                      (let ((_e117261117277_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117256117275_))))
                        (let ((_hd117260117280_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117261117277_)))
                              (_tl117259117282_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117261117277_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117259117282_))
                              (let ((_e117264117285_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117259117282_))))
                                (let ((_hd117263117288_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117264117285_)))
                                      (_tl117262117290_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117264117285_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl117262117290_))
                                      (let ((_e117267117293_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl117262117290_))))
                                        (let ((_hd117266117296_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e117267117293_)))
                                              (_tl117265117298_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e117267117293_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl117265117298_))
                                              ((lambda (_L117301_ _L117302_)
                                                 (let ((_sym117317_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L117302_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _sym117317_))
                                                   (let ((__tmp118712
                                                          (gxc#current-compile-mutators)))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp118712
                                                      _sym117317_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self117252_
                                                      _L117301_))))
                                               _hd117266117296_
                                               _hd117263117288_)
                                              (let ()
                                                (declare (not safe))
                                                (_g117255117272_
                                                 _g117256117275_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g117255117272_ _g117256117275_)))))
                              (let ()
                                (declare (not safe))
                                (_g117255117272_ _g117256117275_)))))
                      (let ()
                        (declare (not safe))
                        (_g117255117272_ _g117256117275_))))))
          (declare (not safe))
          (_g117254117319_ _stx117253_))))
    (define gxc#collect-methods-call%
      (lambda (_self116805_ _stx116806_)
        (let* ((___stx118361118362_ _stx116806_)
               (_g116810116912_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx118361118362_)))))
          (let ((___kont118363118364_
                 (lambda (_L117202_ _L117203_ _L117204_ _L117205_ _L117206_)
                   (let ((__tmp118713
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L117203_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp118713))))
                (___kont118365118366_
                 (lambda (_L117028_ _L117029_ _L117030_ _L117031_)
                   (let ((__tmp118714
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L117028_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp118714))))
                (___kont118367118368_ (lambda () '#!void)))
            (let ((___match118496118497_
                   (lambda (_e116819117074_
                            _hd116818117077_
                            _tl116817117079_
                            _e116822117082_
                            _hd116821117085_
                            _tl116820117087_
                            _e116825117090_
                            _hd116824117093_
                            _tl116823117095_
                            _e116828117098_
                            _hd116827117101_
                            _tl116826117103_
                            _e116831117106_
                            _hd116830117109_
                            _tl116829117111_
                            _e116834117114_
                            _hd116833117117_
                            _tl116832117119_
                            _e116837117122_
                            _hd116836117125_
                            _tl116835117127_
                            _e116840117130_
                            _hd116839117133_
                            _tl116838117135_
                            _e116843117138_
                            _hd116842117141_
                            _tl116841117143_
                            _e116846117146_
                            _hd116845117149_
                            _tl116844117151_
                            _e116849117154_
                            _hd116848117157_
                            _tl116847117159_
                            _e116852117162_
                            _hd116851117165_
                            _tl116850117167_
                            _e116855117170_
                            _hd116854117173_
                            _tl116853117175_
                            _e116858117178_
                            _hd116857117181_
                            _tl116856117183_
                            _e116861117186_
                            _hd116860117189_
                            _tl116859117191_
                            _e116864117194_
                            _hd116863117197_
                            _tl116862117199_)
                     (let ((_L117202_ _hd116863117197_)
                           (_L117203_ _hd116854117173_)
                           (_L117204_ _hd116845117149_)
                           (_L117205_ _hd116836117125_)
                           (_L117206_ _hd116827117101_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L117206_
                              'bind-method!))
                           (___kont118363118364_
                            _L117202_
                            _L117203_
                            _L117204_
                            _L117205_
                            _L117206_)
                           (___kont118367118368_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx118361118362_))
                  (let ((_e116819117074_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx118361118362_))))
                    (let ((_tl116817117079_
                           (let ()
                             (declare (not safe))
                             (##cdr _e116819117074_)))
                          (_hd116818117077_
                           (let ()
                             (declare (not safe))
                             (##car _e116819117074_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl116817117079_))
                          (let ((_e116822117082_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl116817117079_))))
                            (let ((_tl116820117087_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e116822117082_)))
                                  (_hd116821117085_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e116822117082_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd116821117085_))
                                  (let ((_e116825117090_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd116821117085_))))
                                    (let ((_tl116823117095_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e116825117090_)))
                                          (_hd116824117093_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e116825117090_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd116824117093_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd116824117093_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl116823117095_))
                                                  (let ((_e116828117098_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl116823117095_))))
                                                    (let ((_tl116826117103_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e116828117098_)))
                                                          (_hd116827117101_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e116828117098_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl116826117103_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl116820117087_))
                      (let ((_e116831117106_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl116820117087_))))
                        (let ((_tl116829117111_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116831117106_)))
                              (_hd116830117109_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116831117106_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd116830117109_))
                              (let ((_e116834117114_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd116830117109_))))
                                (let ((_tl116832117119_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116834117114_)))
                                      (_hd116833117117_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116834117114_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd116833117117_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd116833117117_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl116832117119_))
                                              (let ((_e116837117122_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl116832117119_))))
                                                (let ((_tl116835117127_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e116837117122_)))
                                                      (_hd116836117125_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e116837117122_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl116835117127_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl116829117111_))
                                                          (let ((_e116840117130_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl116829117111_))))
                    (let ((_tl116838117135_
                           (let ()
                             (declare (not safe))
                             (##cdr _e116840117130_)))
                          (_hd116839117133_
                           (let ()
                             (declare (not safe))
                             (##car _e116840117130_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd116839117133_))
                          (let ((_e116843117138_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd116839117133_))))
                            (let ((_tl116841117143_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e116843117138_)))
                                  (_hd116842117141_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e116843117138_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd116842117141_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd116842117141_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl116841117143_))
                                          (let ((_e116846117146_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl116841117143_))))
                                            (let ((_tl116844117151_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e116846117146_)))
                                                  (_hd116845117149_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e116846117146_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl116844117151_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl116838117135_))
                                                      (let ((_e116849117154_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl116838117135_))))
                (let ((_tl116847117159_
                       (let () (declare (not safe)) (##cdr _e116849117154_)))
                      (_hd116848117157_
                       (let () (declare (not safe)) (##car _e116849117154_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd116848117157_))
                      (let ((_e116852117162_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd116848117157_))))
                        (let ((_tl116850117167_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116852117162_)))
                              (_hd116851117165_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116852117162_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd116851117165_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd116851117165_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116850117167_))
                                      (let ((_e116855117170_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116850117167_))))
                                        (let ((_tl116853117175_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116855117170_)))
                                              (_hd116854117173_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116855117170_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116853117175_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl116847117159_))
                                                  (let ((_e116858117178_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl116847117159_))))
                                                    (let ((_tl116856117183_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e116858117178_)))
                                                          (_hd116857117181_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e116858117178_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd116857117181_))
                                                          (let ((_e116861117186_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd116857117181_))))
                    (let ((_tl116859117191_
                           (let ()
                             (declare (not safe))
                             (##cdr _e116861117186_)))
                          (_hd116860117189_
                           (let ()
                             (declare (not safe))
                             (##car _e116861117186_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd116860117189_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd116860117189_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl116859117191_))
                                  (let ((_e116864117194_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl116859117191_))))
                                    (let ((_tl116862117199_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e116864117194_)))
                                          (_hd116863117197_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e116864117194_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl116862117199_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116856117183_))
                                              (___match118496118497_
                                               _e116819117074_
                                               _hd116818117077_
                                               _tl116817117079_
                                               _e116822117082_
                                               _hd116821117085_
                                               _tl116820117087_
                                               _e116825117090_
                                               _hd116824117093_
                                               _tl116823117095_
                                               _e116828117098_
                                               _hd116827117101_
                                               _tl116826117103_
                                               _e116831117106_
                                               _hd116830117109_
                                               _tl116829117111_
                                               _e116834117114_
                                               _hd116833117117_
                                               _tl116832117119_
                                               _e116837117122_
                                               _hd116836117125_
                                               _tl116835117127_
                                               _e116840117130_
                                               _hd116839117133_
                                               _tl116838117135_
                                               _e116843117138_
                                               _hd116842117141_
                                               _tl116841117143_
                                               _e116846117146_
                                               _hd116845117149_
                                               _tl116844117151_
                                               _e116849117154_
                                               _hd116848117157_
                                               _tl116847117159_
                                               _e116852117162_
                                               _hd116851117165_
                                               _tl116850117167_
                                               _e116855117170_
                                               _hd116854117173_
                                               _tl116853117175_
                                               _e116858117178_
                                               _hd116857117181_
                                               _tl116856117183_
                                               _e116861117186_
                                               _hd116860117189_
                                               _tl116859117191_
                                               _e116864117194_
                                               _hd116863117197_
                                               _tl116862117199_)
                                              (___kont118367118368_))
                                          (___kont118367118368_))))
                                  (___kont118367118368_))
                              (___kont118367118368_))
                          (___kont118367118368_))))
                  (___kont118367118368_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl116847117159_))
                                                      (if (let ((__tmp118715
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp118715 'bind-method!))
                  (let ((_L117028_ _hd116854117173_)
                        (_L117029_ _hd116845117149_)
                        (_L117030_ _hd116836117125_)
                        (_L117031_ _hd116827117101_))
                    (___kont118365118366_
                     _L117028_
                     _L117029_
                     _L117030_
                     _L117031_))
                  (___kont118367118368_))
              (___kont118367118368_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont118367118368_))))
                                      (___kont118367118368_))
                                  (___kont118367118368_))
                              (___kont118367118368_))))
                      (___kont118367118368_))))
              (___kont118367118368_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont118367118368_))))
                                          (___kont118367118368_))
                                      (___kont118367118368_))
                                  (___kont118367118368_))))
                          (___kont118367118368_))))
                  (___kont118367118368_))
              (___kont118367118368_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont118367118368_))
                                          (___kont118367118368_))
                                      (___kont118367118368_))))
                              (___kont118367118368_))))
                      (___kont118367118368_))
                  (___kont118367118368_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont118367118368_))
                                              (___kont118367118368_))
                                          (___kont118367118368_))))
                                  (___kont118367118368_))))
                          (___kont118367118368_))))
                  (___kont118367118368_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_self116753_ _stx116754_)
        (let* ((_g116756116769_
                (lambda (_g116757116766_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116757116766_))))
               (_g116755116802_
                (lambda (_g116757116772_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116757116772_))
                      (let ((_e116761116774_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116757116772_))))
                        (let ((_hd116760116777_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116761116774_)))
                              (_tl116759116779_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116761116774_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116759116779_))
                              (let ((_e116764116782_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116759116779_))))
                                (let ((_hd116763116785_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116764116782_)))
                                      (_tl116762116787_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116764116782_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl116762116787_))
                                      ((lambda (_L116790_)
                                         (if (let ((__tmp118719
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _self116753_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L116790_
                                                __tmp118719))
                                             (let ((__tmp118716
                                                    (let ((__tmp118717
                                                           (let ((__tmp118718
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self116753_ 'new-id))))
                     (declare (not safe))
                     (cons __tmp118718 '()))))
              (declare (not safe))
              (cons '%#ref __tmp118717))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp118716
                                                _stx116754_))
                                             _stx116754_))
                                       _hd116763116785_)
                                      (let ()
                                        (declare (not safe))
                                        (_g116756116769_ _g116757116772_)))))
                              (let ()
                                (declare (not safe))
                                (_g116756116769_ _g116757116772_)))))
                      (let ()
                        (declare (not safe))
                        (_g116756116769_ _g116757116772_))))))
          (declare (not safe))
          (_g116755116802_ _stx116754_))))
    (define gxc#expression-subst*-ref%
      (lambda (_self116694_ _stx116695_)
        (let* ((_g116697116710_
                (lambda (_g116698116707_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116698116707_))))
               (_g116696116750_
                (lambda (_g116698116713_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116698116713_))
                      (let ((_e116702116715_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116698116713_))))
                        (let ((_hd116701116718_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116702116715_)))
                              (_tl116700116720_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116702116715_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116700116720_))
                              (let ((_e116705116723_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116700116720_))))
                                (let ((_hd116704116726_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116705116723_)))
                                      (_tl116703116728_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116705116723_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl116703116728_))
                                      ((lambda (_L116731_)
                                         (let ((_$e116745_
                                                (let ((__tmp118721
                                                       (lambda (_sub116743_)
                                                         (let ((__tmp118722
                                                                (car _sub116743_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _L116731_
                                                            __tmp118722))))
                                                      (__tmp118720
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _self116694_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (find __tmp118721
                                                        __tmp118720))))
                                           (if _$e116745_
                                               ((lambda (_sub116748_)
                                                  (let ((__tmp118723
                                                         (let ((__tmp118724
                                                                (let ((__tmp118725
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _sub116748_)))
                          (declare (not safe))
                          (cons __tmp118725 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp118724))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp118723
                                                     _stx116695_)))
                                                _$e116745_)
                                               _stx116695_)))
                                       _hd116704116726_)
                                      (let ()
                                        (declare (not safe))
                                        (_g116697116710_ _g116698116713_)))))
                              (let ()
                                (declare (not safe))
                                (_g116697116710_ _g116698116713_)))))
                      (let ()
                        (declare (not safe))
                        (_g116697116710_ _g116698116713_))))))
          (declare (not safe))
          (_g116696116750_ _stx116695_))))
    (define gxc#expression-subst-setq%
      (lambda (_self116623_ _stx116624_)
        (let* ((_g116626116643_
                (lambda (_g116627116640_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116627116640_))))
               (_g116625116691_
                (lambda (_g116627116646_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116627116646_))
                      (let ((_e116632116648_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116627116646_))))
                        (let ((_hd116631116651_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116632116648_)))
                              (_tl116630116653_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116632116648_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116630116653_))
                              (let ((_e116635116656_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116630116653_))))
                                (let ((_hd116634116659_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116635116656_)))
                                      (_tl116633116661_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116635116656_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116633116661_))
                                      (let ((_e116638116664_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116633116661_))))
                                        (let ((_hd116637116667_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116638116664_)))
                                              (_tl116636116669_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116638116664_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116636116669_))
                                              ((lambda (_L116672_ _L116673_)
                                                 (let ((_new-expr116688_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _self116623_
                                                           _L116672_)))
                                                       (_new-xid116689_
                                                        (if (let ((__tmp118726
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _self116623_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _L116673_ __tmp118726))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _self116623_ 'new-id))
                    _L116673_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp118727
                                                          (let ((__tmp118728
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp118729
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr116688_ '()))))
                           (declare (not safe))
                           (cons _new-xid116689_ __tmp118729))))
                    (declare (not safe))
                    (cons '%#set! __tmp118728))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp118727
                                                      _stx116624_))))
                                               _hd116637116667_
                                               _hd116634116659_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116626116643_
                                                 _g116627116646_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116626116643_ _g116627116646_)))))
                              (let ()
                                (declare (not safe))
                                (_g116626116643_ _g116627116646_)))))
                      (let ()
                        (declare (not safe))
                        (_g116626116643_ _g116627116646_))))))
          (declare (not safe))
          (_g116625116691_ _stx116624_))))
    (define gxc#expression-subst*-setq%
      (lambda (_self116547_ _stx116548_)
        (let* ((_g116550116567_
                (lambda (_g116551116564_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116551116564_))))
               (_g116549116620_
                (lambda (_g116551116570_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116551116570_))
                      (let ((_e116556116572_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116551116570_))))
                        (let ((_hd116555116575_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116556116572_)))
                              (_tl116554116577_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116556116572_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116554116577_))
                              (let ((_e116559116580_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116554116577_))))
                                (let ((_hd116558116583_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116559116580_)))
                                      (_tl116557116585_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116559116580_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116557116585_))
                                      (let ((_e116562116588_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116557116585_))))
                                        (let ((_hd116561116591_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116562116588_)))
                                              (_tl116560116593_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116562116588_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116560116593_))
                                              ((lambda (_L116596_ _L116597_)
                                                 (let ((_new-expr116617_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _self116547_
                                                           _L116596_)))
                                                       (_new-xid116618_
                                                        (let ((_$e116614_
                                                               (let ((__tmp118731
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_sub116612_)
                                (let ((__tmp118732 (car _sub116612_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _L116597_
                                   __tmp118732))))
                             (__tmp118730
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _self116547_ 'subst))))
                         (declare (not safe))
                         (find __tmp118731 __tmp118730))))
                  (if _$e116614_ (cdr _$e116614_) _L116597_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp118733
                                                          (let ((__tmp118734
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp118735
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr116617_ '()))))
                           (declare (not safe))
                           (cons _new-xid116618_ __tmp118735))))
                    (declare (not safe))
                    (cons '%#set! __tmp118734))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp118733
                                                      _stx116548_))))
                                               _hd116561116591_
                                               _hd116558116583_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116550116567_
                                                 _g116551116570_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116550116567_ _g116551116570_)))))
                              (let ()
                                (declare (not safe))
                                (_g116550116567_ _g116551116570_)))))
                      (let ()
                        (declare (not safe))
                        (_g116550116567_ _g116551116570_))))))
          (declare (not safe))
          (_g116549116620_ _stx116548_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_self116493_ _stx116494_)
        (let* ((_g116496116509_
                (lambda (_g116497116506_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116497116506_))))
               (_g116495116544_
                (lambda (_g116497116512_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116497116512_))
                      (let ((_e116501116514_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116497116512_))))
                        (let ((_hd116500116517_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116501116514_)))
                              (_tl116499116519_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116501116514_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116499116519_))
                              (let ((_e116504116522_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116499116519_))))
                                (let ((_hd116503116525_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116504116522_)))
                                      (_tl116502116527_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116504116522_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl116502116527_))
                                      ((lambda (_L116530_)
                                         (let* ((_eid116542_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L116530_)))
                                                (__tmp118736
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _self116493_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp118736
                                            _eid116542_
                                            1+
                                            '0)))
                                       _hd116503116525_)
                                      (let ()
                                        (declare (not safe))
                                        (_g116496116509_ _g116497116512_)))))
                              (let ()
                                (declare (not safe))
                                (_g116496116509_ _g116497116512_)))))
                      (let ()
                        (declare (not safe))
                        (_g116496116509_ _g116497116512_))))))
          (declare (not safe))
          (_g116495116544_ _stx116494_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_self116423_ _stx116424_)
        (let* ((_g116426116443_
                (lambda (_g116427116440_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116427116440_))))
               (_g116425116490_
                (lambda (_g116427116446_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116427116446_))
                      (let ((_e116432116448_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116427116446_))))
                        (let ((_hd116431116451_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116432116448_)))
                              (_tl116430116453_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116432116448_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116430116453_))
                              (let ((_e116435116456_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116430116453_))))
                                (let ((_hd116434116459_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116435116456_)))
                                      (_tl116433116461_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116435116456_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116433116461_))
                                      (let ((_e116438116464_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116433116461_))))
                                        (let ((_hd116437116467_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116438116464_)))
                                              (_tl116436116469_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116438116464_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116436116469_))
                                              ((lambda (_L116472_ _L116473_)
                                                 (let ((_eid116488_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L116473_))))
                                                   (let ((__tmp118737
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self116423_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp118737
                                                      _eid116488_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self116423_
                                                      _L116472_))))
                                               _hd116437116467_
                                               _hd116434116459_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116426116443_
                                                 _g116427116446_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116426116443_ _g116427116446_)))))
                              (let ()
                                (declare (not safe))
                                (_g116426116443_ _g116427116446_)))))
                      (let ()
                        (declare (not safe))
                        (_g116426116443_ _g116427116446_))))))
          (declare (not safe))
          (_g116425116490_ _stx116424_))))
    (define gxc#find-body%
      (lambda (_self116336_ _stx116337_)
        (let* ((_g116339116358_
                (lambda (_g116340116355_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116340116355_))))
               (_g116338116420_
                (lambda (_g116340116361_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116340116361_))
                      (let ((_e116344116363_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116340116361_))))
                        (let ((_hd116343116366_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116344116363_)))
                              (_tl116342116368_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116344116363_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl116342116368_))
                              (let ((_g118738_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl116342116368_
                                        '0))))
                                (begin
                                  (let ((_g118739_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g118738_)
                                               (##vector-length _g118738_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g118739_ 2)))
                                        (error "Context expects 2 values"
                                               _g118739_)))
                                  (let ((_target116345116371_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g118738_ 0)))
                                        (_tl116347116373_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g118738_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl116347116373_))
                                        (letrec ((_loop116348116376_
                                                  (lambda (_hd116346116379_
                                                           _expr116352116381_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd116346116379_))
                                                        (let ((_e116349116384_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd116346116379_))))
                  (let ((_lp-hd116350116387_
                         (let () (declare (not safe)) (##car _e116349116384_)))
                        (_lp-tl116351116389_
                         (let ()
                           (declare (not safe))
                           (##cdr _e116349116384_))))
                    (let ((__tmp118743
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd116350116387_ _expr116352116381_))))
                      (declare (not safe))
                      (_loop116348116376_ _lp-tl116351116389_ __tmp118743))))
                (let ((_expr116353116392_ (reverse _expr116352116381_)))
                  ((lambda (_L116395_)
                     (let ((__tmp118742
                            (lambda (_g116408116410_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _self116336_
                                 _g116408116410_))))
                           (__tmp118740
                            (let ((__tmp118741
                                   (lambda (_g116412116415_ _g116413116417_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g116412116415_
                                             _g116413116417_)))))
                              (declare (not safe))
                              (foldr1 __tmp118741 '() _L116395_))))
                       (declare (not safe))
                       (ormap1 __tmp118742 __tmp118740)))
                   _expr116353116392_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop116348116376_
                                             _target116345116371_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g116339116358_
                                           _g116340116361_))))))
                              (let ()
                                (declare (not safe))
                                (_g116339116358_ _g116340116361_)))))
                      (let ()
                        (declare (not safe))
                        (_g116339116358_ _g116340116361_))))))
          (declare (not safe))
          (_g116338116420_ _stx116337_))))
    (define gxc#find-begin-annotation%
      (lambda (_self116268_ _stx116269_)
        (let* ((_g116271116288_
                (lambda (_g116272116285_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116272116285_))))
               (_g116270116333_
                (lambda (_g116272116291_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116272116291_))
                      (let ((_e116277116293_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116272116291_))))
                        (let ((_hd116276116296_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116277116293_)))
                              (_tl116275116298_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116277116293_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116275116298_))
                              (let ((_e116280116301_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116275116298_))))
                                (let ((_hd116279116304_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116280116301_)))
                                      (_tl116278116306_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116280116301_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116278116306_))
                                      (let ((_e116283116309_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116278116306_))))
                                        (let ((_hd116282116312_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116283116309_)))
                                              (_tl116281116314_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116283116309_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116281116314_))
                                              ((lambda (_L116317_ _L116318_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self116268_
                                                    _L116317_)))
                                               _hd116282116312_
                                               _hd116279116304_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116271116288_
                                                 _g116272116291_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116271116288_ _g116272116291_)))))
                              (let ()
                                (declare (not safe))
                                (_g116271116288_ _g116272116291_)))))
                      (let ()
                        (declare (not safe))
                        (_g116271116288_ _g116272116291_))))))
          (declare (not safe))
          (_g116270116333_ _stx116269_))))
    (define gxc#find-lambda%
      (lambda (_self116200_ _stx116201_)
        (let* ((_g116203116220_
                (lambda (_g116204116217_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116204116217_))))
               (_g116202116265_
                (lambda (_g116204116223_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116204116223_))
                      (let ((_e116209116225_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116204116223_))))
                        (let ((_hd116208116228_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116209116225_)))
                              (_tl116207116230_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116209116225_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116207116230_))
                              (let ((_e116212116233_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116207116230_))))
                                (let ((_hd116211116236_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116212116233_)))
                                      (_tl116210116238_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116212116233_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116210116238_))
                                      (let ((_e116215116241_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116210116238_))))
                                        (let ((_hd116214116244_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116215116241_)))
                                              (_tl116213116246_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116215116241_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116213116246_))
                                              ((lambda (_L116249_ _L116250_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self116200_
                                                    _L116249_)))
                                               _hd116214116244_
                                               _hd116211116236_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116203116220_
                                                 _g116204116223_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116203116220_ _g116204116223_)))))
                              (let ()
                                (declare (not safe))
                                (_g116203116220_ _g116204116223_)))))
                      (let ()
                        (declare (not safe))
                        (_g116203116220_ _g116204116223_))))))
          (declare (not safe))
          (_g116202116265_ _stx116201_))))
    (define gxc#find-case-lambda%
      (lambda (_self116082_ _stx116083_)
        (let* ((_g116085116113_
                (lambda (_g116086116110_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116086116110_))))
               (_g116084116197_
                (lambda (_g116086116116_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116086116116_))
                      (let ((_e116091116118_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116086116116_))))
                        (let ((_hd116090116121_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116091116118_)))
                              (_tl116089116123_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116091116118_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl116089116123_))
                              (let ((_g118744_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl116089116123_
                                        '0))))
                                (begin
                                  (let ((_g118745_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g118744_)
                                               (##vector-length _g118744_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g118745_ 2)))
                                        (error "Context expects 2 values"
                                               _g118745_)))
                                  (let ((_target116092116126_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g118744_ 0)))
                                        (_tl116094116128_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g118744_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl116094116128_))
                                        (letrec ((_loop116095116131_
                                                  (lambda (_hd116093116134_
                                                           _body116099116136_
                                                           _hd116100116138_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd116093116134_))
                                                        (let ((_e116096116141_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd116093116134_))))
                  (let ((_lp-hd116097116144_
                         (let () (declare (not safe)) (##car _e116096116141_)))
                        (_lp-tl116098116146_
                         (let ()
                           (declare (not safe))
                           (##cdr _e116096116141_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd116097116144_))
                        (let ((_e116105116149_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd116097116144_))))
                          (let ((_hd116104116152_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e116105116149_)))
                                (_tl116103116154_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e116105116149_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl116103116154_))
                                (let ((_e116108116157_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl116103116154_))))
                                  (let ((_hd116107116160_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e116108116157_)))
                                        (_tl116106116162_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e116108116157_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl116106116162_))
                                        (let ((__tmp118750
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd116107116160_
                                                       _body116099116136_)))
                                              (__tmp118749
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd116104116152_
                                                       _hd116100116138_))))
                                          (declare (not safe))
                                          (_loop116095116131_
                                           _lp-tl116098116146_
                                           __tmp118750
                                           __tmp118749))
                                        (let ()
                                          (declare (not safe))
                                          (_g116085116113_ _g116086116116_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g116085116113_ _g116086116116_)))))
                        (let ()
                          (declare (not safe))
                          (_g116085116113_ _g116086116116_)))))
                (let ((_body116101116165_ (reverse _body116099116136_))
                      (_hd116102116167_ (reverse _hd116100116138_)))
                  ((lambda (_L116170_ _L116171_)
                     (let ((__tmp118748
                            (lambda (_g116185116187_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _self116082_
                                 _g116185116187_))))
                           (__tmp118746
                            (let ((__tmp118747
                                   (lambda (_g116189116192_ _g116190116194_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g116189116192_
                                             _g116190116194_)))))
                              (declare (not safe))
                              (foldr1 __tmp118747 '() _L116170_))))
                       (declare (not safe))
                       (ormap1 __tmp118748 __tmp118746)))
                   _body116101116165_
                   _hd116102116167_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop116095116131_
                                             _target116092116126_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g116085116113_
                                           _g116086116116_))))))
                              (let ()
                                (declare (not safe))
                                (_g116085116113_ _g116086116116_)))))
                      (let ()
                        (declare (not safe))
                        (_g116085116113_ _g116086116116_))))))
          (declare (not safe))
          (_g116084116197_ _stx116083_))))
    (define gxc#find-let-values%
      (lambda (_self115932_ _stx115933_)
        (let* ((_g115935115970_
                (lambda (_g115936115967_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115936115967_))))
               (_g115934116079_
                (lambda (_g115936115973_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115936115973_))
                      (let ((_e115942115975_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115936115973_))))
                        (let ((_hd115941115978_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115942115975_)))
                              (_tl115940115980_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115942115975_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115940115980_))
                              (let ((_e115945115983_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115940115980_))))
                                (let ((_hd115944115986_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115945115983_)))
                                      (_tl115943115988_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115945115983_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd115944115986_))
                                      (let ((_g118751_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd115944115986_
                                                '0))))
                                        (begin
                                          (let ((_g118752_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g118751_)
                                                       (##vector-length
                                                        _g118751_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g118752_ 2)))
                                                (error "Context expects 2 values"
                                                       _g118752_)))
                                          (let ((_target115946115991_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g118751_ 0)))
                                                (_tl115948115993_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g118751_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl115948115993_))
                                                (letrec ((_loop115949115996_
                                                          (lambda (_hd115947115999_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr115953116001_
                           _bind115954116003_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd115947115999_))
                        (let ((_e115950116006_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd115947115999_))))
                          (let ((_lp-hd115951116009_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e115950116006_)))
                                (_lp-tl115952116011_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e115950116006_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd115951116009_))
                                (let ((_e115959116014_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd115951116009_))))
                                  (let ((_hd115958116017_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e115959116014_)))
                                        (_tl115957116019_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e115959116014_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl115957116019_))
                                        (let ((_e115962116022_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl115957116019_))))
                                          (let ((_hd115961116025_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e115962116022_)))
                                                (_tl115960116027_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e115962116022_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl115960116027_))
                                                (let ((__tmp118757
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd115961116025_
                                                               _expr115953116001_)))
                                                      (__tmp118756
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd115958116017_
                                                               _bind115954116003_))))
                                                  (declare (not safe))
                                                  (_loop115949115996_
                                                   _lp-tl115952116011_
                                                   __tmp118757
                                                   __tmp118756))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g115935115970_
                                                   _g115936115973_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g115935115970_ _g115936115973_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g115935115970_ _g115936115973_)))))
                        (let ((_expr115955116030_ (reverse _expr115953116001_))
                              (_bind115956116032_
                               (reverse _bind115954116003_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115943115988_))
                              (let ((_e115965116035_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115943115988_))))
                                (let ((_hd115964116038_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115965116035_)))
                                      (_tl115963116040_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115965116035_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl115963116040_))
                                      ((lambda (_L116043_ _L116044_ _L116045_)
                                         (let ((_$e116076_
                                                (let ((__tmp118755
                                                       (lambda (_g116064116066_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self115932_
                                                            _g116064116066_))))
                                                      (__tmp118753
                                                       (let ((__tmp118754
                                                              (lambda (_g116068116071_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g116069116073_)
                        (let ()
                          (declare (not safe))
                          (cons _g116068116071_ _g116069116073_)))))
                 (declare (not safe))
                 (foldr1 __tmp118754 '() _L116044_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap1 __tmp118755
                                                          __tmp118753))))
                                           (if _$e116076_
                                               _$e116076_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _self115932_
                                                  _L116043_)))))
                                       _hd115964116038_
                                       _expr115955116030_
                                       _bind115956116032_)
                                      (let ()
                                        (declare (not safe))
                                        (_g115935115970_ _g115936115973_)))))
                              (let ()
                                (declare (not safe))
                                (_g115935115970_ _g115936115973_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop115949115996_
                                                     _target115946115991_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g115935115970_
                                                   _g115936115973_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115935115970_ _g115936115973_)))))
                              (let ()
                                (declare (not safe))
                                (_g115935115970_ _g115936115973_)))))
                      (let ()
                        (declare (not safe))
                        (_g115935115970_ _g115936115973_))))))
          (declare (not safe))
          (_g115934116079_ _stx115933_))))
    (define gxc#find-setq%
      (lambda (_self115864_ _stx115865_)
        (let* ((_g115867115884_
                (lambda (_g115868115881_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115868115881_))))
               (_g115866115929_
                (lambda (_g115868115887_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115868115887_))
                      (let ((_e115873115889_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115868115887_))))
                        (let ((_hd115872115892_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115873115889_)))
                              (_tl115871115894_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115873115889_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115871115894_))
                              (let ((_e115876115897_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115871115894_))))
                                (let ((_hd115875115900_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115876115897_)))
                                      (_tl115874115902_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115876115897_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115874115902_))
                                      (let ((_e115879115905_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115874115902_))))
                                        (let ((_hd115878115908_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115879115905_)))
                                              (_tl115877115910_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115879115905_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115877115910_))
                                              ((lambda (_L115913_ _L115914_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self115864_
                                                    _L115913_)))
                                               _hd115878115908_
                                               _hd115875115900_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115867115884_
                                                 _g115868115887_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115867115884_ _g115868115887_)))))
                              (let ()
                                (declare (not safe))
                                (_g115867115884_ _g115868115887_)))))
                      (let ()
                        (declare (not safe))
                        (_g115867115884_ _g115868115887_))))))
          (declare (not safe))
          (_g115866115929_ _stx115865_))))
    (define gxc#find-var-refs-ref%
      (lambda (_self115808_ _stx115809_)
        (let* ((_g115811115824_
                (lambda (_g115812115821_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115812115821_))))
               (_g115810115861_
                (lambda (_g115812115827_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115812115827_))
                      (let ((_e115816115829_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115812115827_))))
                        (let ((_hd115815115832_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115816115829_)))
                              (_tl115814115834_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115816115829_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115814115834_))
                              (let ((_e115819115837_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115814115834_))))
                                (let ((_hd115818115840_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115819115837_)))
                                      (_tl115817115842_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115819115837_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl115817115842_))
                                      ((lambda (_L115845_)
                                         (let ((__tmp118759
                                                (lambda (_g115856115858_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _L115845_
                                                     _g115856115858_))))
                                               (__tmp118758
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _self115808_
                                                   'ids))))
                                           (declare (not safe))
                                           (find __tmp118759 __tmp118758)))
                                       _hd115818115840_)
                                      (let ()
                                        (declare (not safe))
                                        (_g115811115824_ _g115812115827_)))))
                              (let ()
                                (declare (not safe))
                                (_g115811115824_ _g115812115827_)))))
                      (let ()
                        (declare (not safe))
                        (_g115811115824_ _g115812115827_))))))
          (declare (not safe))
          (_g115810115861_ _stx115809_))))
    (define gxc#find-var-refs-setq%
      (lambda (_self115733_ _stx115734_)
        (let* ((_g115736115753_
                (lambda (_g115737115750_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115737115750_))))
               (_g115735115805_
                (lambda (_g115737115756_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115737115756_))
                      (let ((_e115742115758_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115737115756_))))
                        (let ((_hd115741115761_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115742115758_)))
                              (_tl115740115763_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115742115758_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115740115763_))
                              (let ((_e115745115766_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115740115763_))))
                                (let ((_hd115744115769_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115745115766_)))
                                      (_tl115743115771_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115745115766_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115743115771_))
                                      (let ((_e115748115774_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115743115771_))))
                                        (let ((_hd115747115777_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115748115774_)))
                                              (_tl115746115779_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115748115774_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115746115779_))
                                              ((lambda (_L115782_ _L115783_)
                                                 (let ((_$e115802_
                                                        (let ((__tmp118761
                                                               (lambda (_g115797115799_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=? _L115783_ _g115797115799_))))
                      (__tmp118760
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _self115733_ 'ids))))
                  (declare (not safe))
                  (find __tmp118761 __tmp118760))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e115802_
                                                       _$e115802_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _self115733_
                                                          _L115782_)))))
                                               _hd115747115777_
                                               _hd115744115769_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115736115753_
                                                 _g115737115756_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115736115753_ _g115737115756_)))))
                              (let ()
                                (declare (not safe))
                                (_g115736115753_ _g115737115756_)))))
                      (let ()
                        (declare (not safe))
                        (_g115736115753_ _g115737115756_))))))
          (declare (not safe))
          (_g115735115805_ _stx115734_))))))
