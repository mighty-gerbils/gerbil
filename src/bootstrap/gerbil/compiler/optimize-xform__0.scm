(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1710155059)
  (begin
    (define gxc#::identity-expression::t
      (let ((__tmp118548 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp118548
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _$args118284_
        (apply make-instance gxc#::identity-expression::t _$args118284_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp118549
             (lambda ()
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::identity-expression::t
                  '%#begin-annotation
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::identity-expression::t
                  '%#lambda
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::identity-expression::t
                  '%#case-lambda
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::identity-expression::t
                  '%#let-values
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::identity-expression::t
                  '%#letrec-values
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::identity-expression::t
                  '%#letrec*-values
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::identity-expression::t
                  '%#quote
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::identity-expression::t
                  '%#quote-syntax
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::identity-expression::t
                  '%#call
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::identity-expression::t
                  '%#call-unchecked
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::identity-expression::t
                  '%#if
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::identity-expression::t
                  '%#ref
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::identity-expression::t
                  '%#set!
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::identity-expression::t
                  '%#struct-instance?
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::identity-expression::t
                  '%#struct-direct-instance?
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::identity-expression::t
                  '%#struct-ref
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::identity-expression::t
                  '%#struct-set!
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::identity-expression::t
                  '%#struct-direct-ref
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::identity-expression::t
                  '%#struct-direct-set!
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::identity-expression::t
                  '%#struct-unchecked-ref
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::identity-expression::t
                  '%#struct-unchecked-set!
                  gxc#identity-method)))))
        (declare (not safe))
        (make-promise __tmp118549)))
    (define gxc#::identity-special-form::t
      (let ((__tmp118550 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp118550
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _$args118280_
        (apply make-instance gxc#::identity-special-form::t _$args118280_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp118551
             (lambda ()
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::identity-special-form::t
                  '%#begin
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::identity-special-form::t
                  '%#begin-syntax
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::identity-special-form::t
                  '%#begin-foreign
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::identity-special-form::t
                  '%#module
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::identity-special-form::t
                  '%#import
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::identity-special-form::t
                  '%#export
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::identity-special-form::t
                  '%#provide
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::identity-special-form::t
                  '%#extern
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::identity-special-form::t
                  '%#define-values
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::identity-special-form::t
                  '%#define-syntax
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::identity-special-form::t
                  '%#define-alias
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::identity-special-form::t
                  '%#declare
                  gxc#identity-method)))))
        (declare (not safe))
        (make-promise __tmp118551)))
    (define gxc#::identity::t
      (let ((__tmp118552
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::identity::t
         '::identity
         __tmp118552
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _$args118276_
        (apply make-instance gxc#::identity::t _$args118276_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp118553
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (make-promise __tmp118553)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp118554 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp118554
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _$args118272_
        (apply make-instance gxc#::basic-xform-expression::t _$args118272_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp118555
             (lambda ()
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-xform-expression::t
                  '%#begin-annotation
                  gxc#xform-begin-annotation%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-xform-expression::t
                  '%#lambda
                  gxc#xform-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-xform-expression::t
                  '%#case-lambda
                  gxc#xform-case-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-xform-expression::t
                  '%#let-values
                  gxc#xform-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-xform-expression::t
                  '%#letrec-values
                  gxc#xform-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-xform-expression::t
                  '%#letrec*-values
                  gxc#xform-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-xform-expression::t
                  '%#quote
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-xform-expression::t
                  '%#quote-syntax
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-xform-expression::t
                  '%#call
                  gxc#xform-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-xform-expression::t
                  '%#call-unchecked
                  gxc#xform-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-xform-expression::t
                  '%#if
                  gxc#xform-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-xform-expression::t
                  '%#ref
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-xform-expression::t
                  '%#set!
                  gxc#xform-setq%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-xform-expression::t
                  '%#struct-instance?
                  gxc#xform-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-xform-expression::t
                  '%#struct-direct-instance?
                  gxc#xform-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-xform-expression::t
                  '%#struct-ref
                  gxc#xform-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-xform-expression::t
                  '%#struct-set!
                  gxc#xform-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-xform-expression::t
                  '%#struct-direct-ref
                  gxc#xform-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-xform-expression::t
                  '%#struct-direct-set!
                  gxc#xform-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-xform-expression::t
                  '%#struct-unchecked-ref
                  gxc#xform-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-xform-expression::t
                  '%#struct-unchecked-set!
                  gxc#xform-operands)))))
        (declare (not safe))
        (make-promise __tmp118555)))
    (define gxc#::basic-xform::t
      (let ((__tmp118556
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp118556
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _$args118268_
        (apply make-instance gxc#::basic-xform::t _$args118268_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp118557
             (lambda ()
               (force gxc#::basic-xform-expression-bind-methods!)
               (force gxc#::identity-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-xform::t
                  '%#begin
                  gxc#xform-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-xform::t
                  '%#begin-syntax
                  gxc#xform-begin-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-xform::t
                  '%#module
                  gxc#xform-module%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-xform::t
                  '%#define-values
                  gxc#xform-define-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-xform::t
                  '%#define-syntax
                  gxc#xform-define-syntax%)))))
        (declare (not safe))
        (make-promise __tmp118557)))
    (define gxc#::collect-mutators::t
      (let ((__tmp118560 (list gxc#::void::t))
            (__tmp118558
             (let ((__tmp118559
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp118559 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp118560
         '()
         __tmp118558
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _$args118264_
        (apply make-instance gxc#::collect-mutators::t _$args118264_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp118561
             (lambda ()
               (force gxc#::void-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#begin
                  gxc#collect-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#begin-syntax
                  gxc#collect-begin-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#begin-annotation
                  gxc#collect-begin-annotation%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#module
                  gxc#collect-module%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#define-values
                  gxc#collect-define-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#define-syntax
                  gxc#collect-define-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#lambda
                  gxc#collect-body-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#case-lambda
                  gxc#collect-body-case-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#let-values
                  gxc#collect-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#letrec-values
                  gxc#collect-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#letrec*-values
                  gxc#collect-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#call
                  gxc#collect-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#call-unchecked
                  gxc#collect-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#if
                  gxc#collect-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#set!
                  gxc#collect-mutators-setq%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#struct-instance?
                  gxc#collect-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#struct-direct-instance?
                  gxc#collect-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#struct-ref
                  gxc#collect-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#struct-set!
                  gxc#collect-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#struct-direct-ref
                  gxc#collect-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#struct-direct-set!
                  gxc#collect-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#struct-unchecked-ref
                  gxc#collect-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#struct-unchecked-set!
                  gxc#collect-operands))
               (let ()
                 (declare (not safe))
                 (seal-class! gxc#::collect-mutators::t)))))
        (declare (not safe))
        (make-promise __tmp118561)))
    (define gxc#apply-collect-mutators
      (lambda (_stx118256_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_self118259_
                (let ((__obj118536
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj118536))
               (__tmp118562
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self118259_ _stx118256_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp118562
           gxc#current-compile-method
           _self118259_))))
    (define gxc#::collect-methods::t
      (let ((__tmp118565 (list gxc#::void::t))
            (__tmp118563
             (let ((__tmp118564
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp118564 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-methods::t
         '::collect-methods
         __tmp118565
         '()
         __tmp118563
         '#f)))
    (define gxc#::collect-methods?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-methods::t)))
    (define gxc#make-::collect-methods
      (lambda _$args118253_
        (apply make-instance gxc#::collect-methods::t _$args118253_)))
    (define gxc#::collect-methods-bind-methods!
      (let ((__tmp118566
             (lambda ()
               (force gxc#::void-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-methods::t
                  '%#begin
                  gxc#collect-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-methods::t
                  '%#begin-syntax
                  gxc#collect-begin-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-methods::t
                  '%#module
                  gxc#collect-module%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-methods::t
                  '%#call
                  gxc#collect-methods-call%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-methods::t
                  '%#call-unchecked
                  gxc#collect-methods-call%))
               (let ()
                 (declare (not safe))
                 (seal-class! gxc#::collect-methods::t)))))
        (declare (not safe))
        (make-promise __tmp118566)))
    (define gxc#apply-collect-methods
      (lambda (_stx118245_)
        (force gxc#::collect-methods-bind-methods!)
        (let* ((_self118248_
                (let ((__obj118538
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-methods::t))))
                  __obj118538))
               (__tmp118567
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self118248_ _stx118245_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp118567
           gxc#current-compile-method
           _self118248_))))
    (define gxc#::expression-subst::t
      (let ((__tmp118570 (list gxc#::basic-xform-expression::t))
            (__tmp118568
             (let ((__tmp118569
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp118569 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp118570
         '(id new-id)
         __tmp118568
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _$args118242_
        (apply make-instance gxc#::expression-subst::t _$args118242_)))
    (define gxc#::expression-subst-id
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#::expression-subst::t 'id)))
    (define gxc#::expression-subst-new-id
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#::expression-subst::t 'new-id)))
    (define gxc#::expression-subst-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#::expression-subst::t 'id)))
    (define gxc#::expression-subst-new-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#::expression-subst::t 'new-id)))
    (define gxc#&::expression-subst-id
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#::expression-subst::t 'id)))
    (define gxc#&::expression-subst-new-id
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         gxc#::expression-subst::t
         'new-id)))
    (define gxc#&::expression-subst-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#::expression-subst::t 'id)))
    (define gxc#&::expression-subst-new-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#::expression-subst::t 'new-id)))
    (define gxc#::expression-subst-bind-methods!
      (let ((__tmp118571
             (lambda ()
               (force gxc#::basic-xform-expression-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::expression-subst::t
                  '%#begin
                  gxc#xform-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::expression-subst::t
                  '%#ref
                  gxc#expression-subst-ref%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::expression-subst::t
                  '%#set!
                  gxc#expression-subst-setq%))
               (let ()
                 (declare (not safe))
                 (seal-class! gxc#::expression-subst::t)))))
        (declare (not safe))
        (make-promise __tmp118571)))
    (define gxc#apply-expression-subst__%
      (lambda (_g118572_ _id118208118212_ _new-id118209118214_ _stx118216_)
        (let* ((_id118219_
                (if (let ()
                      (declare (not safe))
                      (eq? _id118208118212_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _id118208118212_))
               (_new-id118221_
                (if (let ()
                      (declare (not safe))
                      (eq? _new-id118209118214_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _new-id118209118214_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_self118223_
                  (let ((__obj118540
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj118540
                       _id118219_
                       '1
                       gxc#::expression-subst::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj118540
                       _new-id118221_
                       '2
                       gxc#::expression-subst::t
                       '#f))
                    __obj118540))
                 (__tmp118573
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self118223_ _stx118216_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp118573
             gxc#current-compile-method
             _self118223_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_keys118207118230_ . _args118232_)
        (apply gxc#apply-expression-subst__%
               _keys118207118230_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys118207118230_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys118207118230_ 'new-id: absent-value))
               _args118232_)))
    (define gxc#apply-expression-subst
      (lambda _args118210118238_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _args118210118238_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp118576 (list gxc#::basic-xform-expression::t))
            (__tmp118574
             (let ((__tmp118575
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp118575 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp118576
         '(subst)
         __tmp118574
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _$args118203_
        (apply make-instance gxc#::expression-subst*::t _$args118203_)))
    (define gxc#::expression-subst*-subst
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#::expression-subst*::t 'subst)))
    (define gxc#::expression-subst*-subst-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#::expression-subst*::t 'subst)))
    (define gxc#&::expression-subst*-subst
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         gxc#::expression-subst*::t
         'subst)))
    (define gxc#&::expression-subst*-subst-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#::expression-subst*::t 'subst)))
    (define gxc#::expression-subst*-bind-methods!
      (let ((__tmp118577
             (lambda ()
               (force gxc#::basic-xform-expression-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::expression-subst*::t
                  '%#begin
                  gxc#xform-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::expression-subst*::t
                  '%#ref
                  gxc#expression-subst*-ref%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::expression-subst*::t
                  '%#set!
                  gxc#expression-subst*-setq%))
               (let ()
                 (declare (not safe))
                 (seal-class! gxc#::expression-subst*::t)))))
        (declare (not safe))
        (make-promise __tmp118577)))
    (define gxc#apply-expression-subst*__%
      (lambda (_g118578_ _subst118174118177_ _stx118179_)
        (let ((_subst118182_
               (if (let ()
                     (declare (not safe))
                     (eq? _subst118174118177_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _subst118174118177_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_self118184_
                  (let ((__obj118542
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj118542
                       _subst118182_
                       '1
                       gxc#::expression-subst*::t
                       '#f))
                    __obj118542))
                 (__tmp118579
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self118184_ _stx118179_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp118579
             gxc#current-compile-method
             _self118184_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_keys118173118191_ . _args118193_)
        (apply gxc#apply-expression-subst*__%
               _keys118173118191_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys118173118191_ 'subst: absent-value))
               _args118193_)))
    (define gxc#apply-expression-subst*
      (lambda _args118175118199_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _args118175118199_)))
    (define gxc#::find-expression::t
      (let ((__tmp118580 (list gxc#::false-expression::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp118580
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _$args118169_
        (apply make-instance gxc#::find-expression::t _$args118169_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp118581
             (lambda ()
               (force gxc#::false-expression-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#begin
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#begin-annotation
                  gxc#find-begin-annotation%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#lambda
                  gxc#find-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#case-lambda
                  gxc#find-case-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#let-values
                  gxc#find-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#letrec-values
                  gxc#find-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#letrec*-values
                  gxc#find-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#call
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#call-unchecked
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#if
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#set!
                  gxc#find-setq%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#struct-instance?
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#struct-direct-instance?
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#struct-ref
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#struct-set!
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#struct-direct-ref
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#struct-direct-set!
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#struct-unchecked-ref
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#struct-unchecked-set!
                  gxc#find-body%)))))
        (declare (not safe))
        (make-promise __tmp118581)))
    (define gxc#::find-var-refs::t
      (let ((__tmp118584 (list gxc#::find-expression::t))
            (__tmp118582
             (let ((__tmp118583
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp118583 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp118584
         '(ids)
         __tmp118582
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _$args118165_
        (apply make-instance gxc#::find-var-refs::t _$args118165_)))
    (define gxc#::find-var-refs-ids
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#::find-var-refs::t 'ids)))
    (define gxc#::find-var-refs-ids-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#::find-var-refs::t 'ids)))
    (define gxc#&::find-var-refs-ids
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#::find-var-refs::t 'ids)))
    (define gxc#&::find-var-refs-ids-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#::find-var-refs::t 'ids)))
    (define gxc#::find-var-refs-bind-methods!
      (let ((__tmp118585
             (lambda ()
               (force gxc#::find-expression-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-var-refs::t
                  '%#ref
                  gxc#find-var-refs-ref%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-var-refs::t
                  '%#set!
                  gxc#find-var-refs-setq%))
               (let ()
                 (declare (not safe))
                 (seal-class! gxc#::find-var-refs::t)))))
        (declare (not safe))
        (make-promise __tmp118585)))
    (define gxc#apply-find-var-refs__%
      (lambda (_g118586_ _ids118136118139_ _stx118141_)
        (let ((_ids118144_
               (if (let ()
                     (declare (not safe))
                     (eq? _ids118136118139_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _ids118136118139_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_self118146_
                  (let ((__obj118545
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj118545
                       _ids118144_
                       '1
                       gxc#::find-var-refs::t
                       '#f))
                    __obj118545))
                 (__tmp118587
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self118146_ _stx118141_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp118587
             gxc#current-compile-method
             _self118146_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_keys118135118153_ . _args118155_)
        (apply gxc#apply-find-var-refs__%
               _keys118135118153_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys118135118153_ 'ids: absent-value))
               _args118155_)))
    (define gxc#apply-find-var-refs
      (lambda _args118137118161_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _args118137118161_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp118590 (list gxc#::collect-expression-refs::t))
            (__tmp118588
             (let ((__tmp118589
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp118589 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp118590
         '()
         __tmp118588
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _$args118131_
        (apply make-instance gxc#::collect-runtime-refs::t _$args118131_)))
    (define gxc#::collect-runtime-refs-table
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#::collect-runtime-refs::t 'table)))
    (define gxc#::collect-runtime-refs-table-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#::collect-runtime-refs::t 'table)))
    (define gxc#&::collect-runtime-refs-table
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         gxc#::collect-runtime-refs::t
         'table)))
    (define gxc#&::collect-runtime-refs-table-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator
         gxc#::collect-runtime-refs::t
         'table)))
    (define gxc#::collect-runtime-refs-bind-methods!
      (let ((__tmp118591
             (lambda ()
               (force gxc#::collect-expression-refs-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-runtime-refs::t
                  '%#ref
                  gxc#collect-runtime-refs-ref%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-runtime-refs::t
                  '%#set!
                  gxc#collect-runtime-refs-setq%))
               (let ()
                 (declare (not safe))
                 (seal-class! gxc#::collect-runtime-refs::t)))))
        (declare (not safe))
        (make-promise __tmp118591)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_g118592_ _table118102118105_ _stx118107_)
        (let ((_table118110_
               (if (let ()
                     (declare (not safe))
                     (eq? _table118102118105_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _table118102118105_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_self118112_
                  (let ((__obj118547
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj118547
                       _table118110_
                       '1
                       gxc#::collect-runtime-refs::t
                       '#f))
                    __obj118547))
                 (__tmp118593
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self118112_ _stx118107_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp118593
             gxc#current-compile-method
             _self118112_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_keys118101118119_ . _args118121_)
        (apply gxc#apply-collect-runtime-refs__%
               _keys118101118119_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys118101118119_ 'table: absent-value))
               _args118121_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _args118103118127_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _args118103118127_)))
    (define gxc#xform-wrap-source
      (lambda (_stx118097_ _src-stx118098_)
        (let ((__tmp118594
               (let () (declare (not safe)) (gx#stx-source _src-stx118098_))))
          (declare (not safe))
          (gx#stx-wrap-source _stx118097_ __tmp118594))))
    (define gxc#xform-begin%
      (lambda (_self118052_ _stx118053_)
        (let* ((_g118055118065_
                (lambda (_g118056118062_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118056118062_))))
               (_g118054118094_
                (lambda (_g118056118068_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118056118068_))
                      (let ((_e118060118070_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118056118068_))))
                        (let ((_hd118059118073_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118060118070_)))
                              (_tl118058118075_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118060118070_))))
                          ((lambda (_L118078_)
                             (let* ((_forms118092_
                                     (map (lambda (_g118087118089_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self118052_
                                               _g118087118089_)))
                                          _L118078_))
                                    (__tmp118595
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#begin _forms118092_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp118595
                                _stx118053_)))
                           _tl118058118075_)))
                      (let ()
                        (declare (not safe))
                        (_g118055118065_ _g118056118068_))))))
          (declare (not safe))
          (_g118054118094_ _stx118053_))))
    (define gxc#xform-begin-syntax%
      (lambda (_self118006_ _stx118007_)
        (let* ((_g118009118019_
                (lambda (_g118010118016_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118010118016_))))
               (_g118008118049_
                (lambda (_g118010118022_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118010118022_))
                      (let ((_e118014118024_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118010118022_))))
                        (let ((_hd118013118027_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118014118024_)))
                              (_tl118012118029_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118014118024_))))
                          ((lambda (_L118032_)
                             (let ((__tmp118598
                                    (lambda ()
                                      (let* ((_forms118047_
                                              (map (lambda (_g118042118044_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _self118006_
                                                        _g118042118044_)))
                                                   _L118032_))
                                             (__tmp118599
                                              (let ()
                                                (declare (not safe))
                                                (cons '%#begin-syntax
                                                      _forms118047_))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp118599
                                         _stx118007_))))
                                   (__tmp118596
                                    (let ((__tmp118597
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp118597 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp118598
                                gx#current-expander-phi
                                __tmp118596)))
                           _tl118012118029_)))
                      (let ()
                        (declare (not safe))
                        (_g118009118019_ _g118010118022_))))))
          (declare (not safe))
          (_g118008118049_ _stx118007_))))
    (define gxc#xform-module%
      (lambda (_self117943_ _stx117944_)
        (let* ((_g117946117960_
                (lambda (_g117947117957_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117947117957_))))
               (_g117945118003_
                (lambda (_g117947117963_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117947117963_))
                      (let ((_e117952117965_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117947117963_))))
                        (let ((_hd117951117968_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117952117965_)))
                              (_tl117950117970_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117952117965_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117950117970_))
                              (let ((_e117955117973_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117950117970_))))
                                (let ((_hd117954117976_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117955117973_)))
                                      (_tl117953117978_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117955117973_))))
                                  ((lambda (_L117981_ _L117982_)
                                     (let* ((_ctx117995_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L117982_)))
                                            (_code117997_
                                             (##structure-ref
                                              _ctx117995_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_code118000_
                                             (let ((__tmp118600
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _self117943_
                                                         _code117997_)))))
                                               (declare (not safe))
                                               (call-with-parameters
                                                __tmp118600
                                                gx#current-expander-context
                                                _ctx117995_))))
                                       (##structure-set!
                                        _ctx117995_
                                        _code118000_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp118601
                                              (let ((__tmp118602
                                                     (let ((__tmp118603
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _code118000_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L117982_ __tmp118603))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#module __tmp118602))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp118601
                                          _stx117944_))))
                                   _tl117953117978_
                                   _hd117954117976_)))
                              (let ()
                                (declare (not safe))
                                (_g117946117960_ _g117947117963_)))))
                      (let ()
                        (declare (not safe))
                        (_g117946117960_ _g117947117963_))))))
          (declare (not safe))
          (_g117945118003_ _stx117944_))))
    (define gxc#xform-define-values%
      (lambda (_self117873_ _stx117874_)
        (let* ((_g117876117893_
                (lambda (_g117877117890_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117877117890_))))
               (_g117875117940_
                (lambda (_g117877117896_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117877117896_))
                      (let ((_e117882117898_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117877117896_))))
                        (let ((_hd117881117901_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117882117898_)))
                              (_tl117880117903_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117882117898_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117880117903_))
                              (let ((_e117885117906_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117880117903_))))
                                (let ((_hd117884117909_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117885117906_)))
                                      (_tl117883117911_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117885117906_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl117883117911_))
                                      (let ((_e117888117914_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl117883117911_))))
                                        (let ((_hd117887117917_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e117888117914_)))
                                              (_tl117886117919_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e117888117914_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl117886117919_))
                                              ((lambda (_L117922_ _L117923_)
                                                 (let* ((_expr117938_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self117873_
                                                            _L117922_)))
                                                        (__tmp118604
                                                         (let ((__tmp118605
                                                                (let ((__tmp118606
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _expr117938_ '()))))
                          (declare (not safe))
                          (cons _L117923_ __tmp118606))))
                   (declare (not safe))
                   (cons '%#define-values __tmp118605))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp118604
                                                    _stx117874_)))
                                               _hd117887117917_
                                               _hd117884117909_)
                                              (let ()
                                                (declare (not safe))
                                                (_g117876117893_
                                                 _g117877117896_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g117876117893_ _g117877117896_)))))
                              (let ()
                                (declare (not safe))
                                (_g117876117893_ _g117877117896_)))))
                      (let ()
                        (declare (not safe))
                        (_g117876117893_ _g117877117896_))))))
          (declare (not safe))
          (_g117875117940_ _stx117874_))))
    (define gxc#xform-define-syntax%
      (lambda (_self117802_ _stx117803_)
        (let* ((_g117805117822_
                (lambda (_g117806117819_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117806117819_))))
               (_g117804117870_
                (lambda (_g117806117825_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117806117825_))
                      (let ((_e117811117827_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117806117825_))))
                        (let ((_hd117810117830_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117811117827_)))
                              (_tl117809117832_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117811117827_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117809117832_))
                              (let ((_e117814117835_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117809117832_))))
                                (let ((_hd117813117838_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117814117835_)))
                                      (_tl117812117840_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117814117835_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl117812117840_))
                                      (let ((_e117817117843_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl117812117840_))))
                                        (let ((_hd117816117846_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e117817117843_)))
                                              (_tl117815117848_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e117817117843_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl117815117848_))
                                              ((lambda (_L117851_ _L117852_)
                                                 (let ((__tmp118609
                                                        (lambda ()
                                                          (let* ((_expr117868_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__1 _self117802_ _L117851_)))
                         (__tmp118610
                          (let ((__tmp118611
                                 (let ((__tmp118612
                                        (let ()
                                          (declare (not safe))
                                          (cons _expr117868_ '()))))
                                   (declare (not safe))
                                   (cons _L117852_ __tmp118612))))
                            (declare (not safe))
                            (cons '%#define-syntax __tmp118611))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp118610 _stx117803_))))
               (__tmp118607
                (let ((__tmp118608 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp118608 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp118609
                                                    gx#current-expander-phi
                                                    __tmp118607)))
                                               _hd117816117846_
                                               _hd117813117838_)
                                              (let ()
                                                (declare (not safe))
                                                (_g117805117822_
                                                 _g117806117825_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g117805117822_ _g117806117825_)))))
                              (let ()
                                (declare (not safe))
                                (_g117805117822_ _g117806117825_)))))
                      (let ()
                        (declare (not safe))
                        (_g117805117822_ _g117806117825_))))))
          (declare (not safe))
          (_g117804117870_ _stx117803_))))
    (define gxc#xform-begin-annotation%
      (lambda (_self117732_ _stx117733_)
        (let* ((_g117735117752_
                (lambda (_g117736117749_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117736117749_))))
               (_g117734117799_
                (lambda (_g117736117755_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117736117755_))
                      (let ((_e117741117757_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117736117755_))))
                        (let ((_hd117740117760_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117741117757_)))
                              (_tl117739117762_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117741117757_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117739117762_))
                              (let ((_e117744117765_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117739117762_))))
                                (let ((_hd117743117768_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117744117765_)))
                                      (_tl117742117770_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117744117765_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl117742117770_))
                                      (let ((_e117747117773_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl117742117770_))))
                                        (let ((_hd117746117776_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e117747117773_)))
                                              (_tl117745117778_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e117747117773_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl117745117778_))
                                              ((lambda (_L117781_ _L117782_)
                                                 (let* ((_expr117797_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self117732_
                                                            _L117781_)))
                                                        (__tmp118613
                                                         (let ((__tmp118614
                                                                (let ((__tmp118615
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _expr117797_ '()))))
                          (declare (not safe))
                          (cons _L117782_ __tmp118615))))
                   (declare (not safe))
                   (cons '%#begin-annotation __tmp118614))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp118613
                                                    _stx117733_)))
                                               _hd117746117776_
                                               _hd117743117768_)
                                              (let ()
                                                (declare (not safe))
                                                (_g117735117752_
                                                 _g117736117755_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g117735117752_ _g117736117755_)))))
                              (let ()
                                (declare (not safe))
                                (_g117735117752_ _g117736117755_)))))
                      (let ()
                        (declare (not safe))
                        (_g117735117752_ _g117736117755_))))))
          (declare (not safe))
          (_g117734117799_ _stx117733_))))
    (define gxc#xform-lambda%
      (lambda (_self117671_ _stx117672_)
        (let* ((_g117674117688_
                (lambda (_g117675117685_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117675117685_))))
               (_g117673117729_
                (lambda (_g117675117691_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117675117691_))
                      (let ((_e117680117693_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117675117691_))))
                        (let ((_hd117679117696_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117680117693_)))
                              (_tl117678117698_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117680117693_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117678117698_))
                              (let ((_e117683117701_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117678117698_))))
                                (let ((_hd117682117704_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117683117701_)))
                                      (_tl117681117706_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117683117701_))))
                                  ((lambda (_L117709_ _L117710_)
                                     (let* ((_body117727_
                                             (map (lambda (_g117722117724_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _self117671_
                                                       _g117722117724_)))
                                                  _L117709_))
                                            (__tmp118616
                                             (let ((__tmp118617
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L117710_
                                                            _body117727_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp118617))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp118616
                                        _stx117672_)))
                                   _tl117681117706_
                                   _hd117682117704_)))
                              (let ()
                                (declare (not safe))
                                (_g117674117688_ _g117675117691_)))))
                      (let ()
                        (declare (not safe))
                        (_g117674117688_ _g117675117691_))))))
          (declare (not safe))
          (_g117673117729_ _stx117672_))))
    (define gxc#xform-case-lambda%
      (lambda (_self117580_ _stx117581_)
        (letrec ((_clause-e117583_
                  (lambda (_clause117624_)
                    (let* ((_g117626117637_
                            (lambda (_g117627117634_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g117627117634_))))
                           (_g117625117668_
                            (lambda (_g117627117640_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g117627117640_))
                                  (let ((_e117632117642_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g117627117640_))))
                                    (let ((_hd117631117645_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e117632117642_)))
                                          (_tl117630117647_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e117632117642_))))
                                      ((lambda (_L117650_ _L117651_)
                                         (let ((_body117666_
                                                (map (lambda (_g117661117663_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _self117580_
                                                          _g117661117663_)))
                                                     _L117650_)))
                                           (declare (not safe))
                                           (cons _L117651_ _body117666_)))
                                       _tl117630117647_
                                       _hd117631117645_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g117626117637_ _g117627117640_))))))
                      (declare (not safe))
                      (_g117625117668_ _clause117624_)))))
          (let* ((_g117585117595_
                  (lambda (_g117586117592_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g117586117592_))))
                 (_g117584117621_
                  (lambda (_g117586117598_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g117586117598_))
                        (let ((_e117590117600_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g117586117598_))))
                          (let ((_hd117589117603_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e117590117600_)))
                                (_tl117588117605_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e117590117600_))))
                            ((lambda (_L117608_)
                               (let* ((_clauses117619_
                                       (map _clause-e117583_ _L117608_))
                                      (__tmp118618
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses117619_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp118618
                                  _stx117581_)))
                             _tl117588117605_)))
                        (let ()
                          (declare (not safe))
                          (_g117585117595_ _g117586117598_))))))
            (declare (not safe))
            (_g117584117621_ _stx117581_)))))
    (define gxc#xform-let-values%
      (lambda (_self117366_ _stx117367_)
        (let* ((_g117369117402_
                (lambda (_g117370117399_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117370117399_))))
               (_g117368117577_
                (lambda (_g117370117405_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117370117405_))
                      (let ((_e117377117407_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117370117405_))))
                        (let ((_hd117376117410_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117377117407_)))
                              (_tl117375117412_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117377117407_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117375117412_))
                              (let ((_e117380117415_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117375117412_))))
                                (let ((_hd117379117418_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117380117415_)))
                                      (_tl117378117420_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117380117415_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd117379117418_))
                                      (let ((_g118619_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd117379117418_
                                                '0))))
                                        (begin
                                          (let ((_g118620_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g118619_)
                                                       (##vector-length
                                                        _g118619_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g118620_ 2)))
                                                (error "Context expects 2 values"
                                                       _g118620_)))
                                          (let ((_target117381117423_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g118619_ 0)))
                                                (_tl117383117425_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g118619_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl117383117425_))
                                                (letrec ((_loop117384117428_
                                                          (lambda (_hd117382117431_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr117388117433_
                           _hd117389117435_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd117382117431_))
                        (let ((_e117385117438_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd117382117431_))))
                          (let ((_lp-hd117386117441_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e117385117438_)))
                                (_lp-tl117387117443_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e117385117438_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd117386117441_))
                                (let ((_e117394117446_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd117386117441_))))
                                  (let ((_hd117393117449_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e117394117446_)))
                                        (_tl117392117451_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e117394117446_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl117392117451_))
                                        (let ((_e117397117454_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl117392117451_))))
                                          (let ((_hd117396117457_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e117397117454_)))
                                                (_tl117395117459_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e117397117454_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl117395117459_))
                                                (let ((__tmp118633
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd117396117457_
                                                               _expr117388117433_)))
                                                      (__tmp118632
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd117393117449_
                                                               _hd117389117435_))))
                                                  (declare (not safe))
                                                  (_loop117384117428_
                                                   _lp-tl117387117443_
                                                   __tmp118633
                                                   __tmp118632))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g117369117402_
                                                   _g117370117405_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g117369117402_ _g117370117405_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g117369117402_ _g117370117405_)))))
                        (let ((_expr117390117462_ (reverse _expr117388117433_))
                              (_hd117391117464_ (reverse _hd117389117435_)))
                          ((lambda (_L117467_ _L117468_ _L117469_ _L117470_)
                             (let* ((_g117489117505_
                                     (lambda (_g117490117502_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g117490117502_))))
                                    (_g117488117563_
                                     (lambda (_g117490117508_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _g117490117508_))
                                           (let ((_g118621_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _g117490117508_
                                                     '0))))
                                             (begin
                                               (let ((_g118622_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g118621_)
                                                            (##vector-length
                                                             _g118621_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g118622_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g118622_)))
                                               (let ((_target117492117510_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g118621_
                                                         0)))
                                                     (_tl117494117512_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g118621_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl117494117512_))
                                                     (letrec ((_loop117495117515_
                                                               (lambda (_hd117493117518_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr117499117520_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _hd117493117518_))
                             (let ((_e117496117523_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _hd117493117518_))))
                               (let ((_lp-hd117497117526_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e117496117523_)))
                                     (_lp-tl117498117528_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e117496117523_))))
                                 (let ((__tmp118629
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd117497117526_
                                                _expr117499117520_))))
                                   (declare (not safe))
                                   (_loop117495117515_
                                    _lp-tl117498117528_
                                    __tmp118629))))
                             (let ((_expr117500117531_
                                    (reverse _expr117499117520_)))
                               ((lambda (_L117534_)
                                  (let ()
                                    (let* ((_body117551_
                                            (map (lambda (_g117546117548_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self117366_
                                                      _g117546117548_)))
                                                 _L117467_))
                                           (__tmp118623
                                            (let ((__tmp118624
                                                   (let ((__tmp118625
                                                          (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _L117534_
                                                               _L117469_))
                                                            (let ((__tmp118626
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g117552117556_
                                    _g117553117558_
                                    _g117554117560_)
                             (let ((__tmp118627
                                    (let ((__tmp118628
                                           (let ()
                                             (declare (not safe))
                                             (cons _g117552117556_ '()))))
                                      (declare (not safe))
                                      (cons _g117553117558_ __tmp118628))))
                               (declare (not safe))
                               (cons __tmp118627 _g117554117560_)))))
                      (declare (not safe))
                      (foldr2 __tmp118626 '() _L117534_ _L117469_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp118625
                                                           _body117551_))))
                                              (declare (not safe))
                                              (cons _L117470_ __tmp118624))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp118623
                                       _stx117367_))))
                                _expr117500117531_))))))
               (let ()
                 (declare (not safe))
                 (_loop117495117515_ _target117492117510_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g117489117505_
                                                        _g117490117508_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_g117489117505_
                                              _g117490117508_)))))
                                    (__tmp118630
                                     (map (lambda (_g117565117567_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self117366_
                                               _g117565117567_)))
                                          (let ((__tmp118631
                                                 (lambda (_g117569117572_
                                                          _g117570117574_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g117569117572_
                                                           _g117570117574_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp118631
                                                    '()
                                                    _L117468_)))))
                               (declare (not safe))
                               (_g117488117563_ __tmp118630)))
                           _tl117378117420_
                           _expr117390117462_
                           _hd117391117464_
                           _hd117376117410_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop117384117428_
                                                     _target117381117423_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g117369117402_
                                                   _g117370117405_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g117369117402_ _g117370117405_)))))
                              (let ()
                                (declare (not safe))
                                (_g117369117402_ _g117370117405_)))))
                      (let ()
                        (declare (not safe))
                        (_g117369117402_ _g117370117405_))))))
          (declare (not safe))
          (_g117368117577_ _stx117367_))))
    (define gxc#xform-operands
      (lambda (_self117318_ _stx117319_)
        (let* ((_g117321117332_
                (lambda (_g117322117329_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117322117329_))))
               (_g117320117363_
                (lambda (_g117322117335_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117322117335_))
                      (let ((_e117327117337_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117322117335_))))
                        (let ((_hd117326117340_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117327117337_)))
                              (_tl117325117342_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117327117337_))))
                          ((lambda (_L117345_ _L117346_)
                             (let* ((_rands117361_
                                     (map (lambda (_g117356117358_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self117318_
                                               _g117356117358_)))
                                          _L117345_))
                                    (__tmp118634
                                     (let ()
                                       (declare (not safe))
                                       (cons _L117346_ _rands117361_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp118634
                                _stx117319_)))
                           _tl117325117342_
                           _hd117326117340_)))
                      (let ()
                        (declare (not safe))
                        (_g117321117332_ _g117322117335_))))))
          (declare (not safe))
          (_g117320117363_ _stx117319_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_self117248_ _stx117249_)
        (let* ((_g117251117268_
                (lambda (_g117252117265_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117252117265_))))
               (_g117250117315_
                (lambda (_g117252117271_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117252117271_))
                      (let ((_e117257117273_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117252117271_))))
                        (let ((_hd117256117276_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117257117273_)))
                              (_tl117255117278_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117257117273_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117255117278_))
                              (let ((_e117260117281_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117255117278_))))
                                (let ((_hd117259117284_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117260117281_)))
                                      (_tl117258117286_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117260117281_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl117258117286_))
                                      (let ((_e117263117289_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl117258117286_))))
                                        (let ((_hd117262117292_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e117263117289_)))
                                              (_tl117261117294_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e117263117289_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl117261117294_))
                                              ((lambda (_L117297_ _L117298_)
                                                 (let* ((_expr117313_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self117248_
                                                            _L117297_)))
                                                        (__tmp118635
                                                         (let ((__tmp118636
                                                                (let ((__tmp118637
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _expr117313_ '()))))
                          (declare (not safe))
                          (cons _L117298_ __tmp118637))))
                   (declare (not safe))
                   (cons '%#set! __tmp118636))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp118635
                                                    _stx117249_)))
                                               _hd117262117292_
                                               _hd117259117284_)
                                              (let ()
                                                (declare (not safe))
                                                (_g117251117268_
                                                 _g117252117271_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g117251117268_ _g117252117271_)))))
                              (let ()
                                (declare (not safe))
                                (_g117251117268_ _g117252117271_)))))
                      (let ()
                        (declare (not safe))
                        (_g117251117268_ _g117252117271_))))))
          (declare (not safe))
          (_g117250117315_ _stx117249_))))
    (define gxc#collect-mutators-setq%
      (lambda (_self117178_ _stx117179_)
        (let* ((_g117181117198_
                (lambda (_g117182117195_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117182117195_))))
               (_g117180117245_
                (lambda (_g117182117201_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117182117201_))
                      (let ((_e117187117203_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117182117201_))))
                        (let ((_hd117186117206_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117187117203_)))
                              (_tl117185117208_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117187117203_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117185117208_))
                              (let ((_e117190117211_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117185117208_))))
                                (let ((_hd117189117214_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117190117211_)))
                                      (_tl117188117216_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117190117211_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl117188117216_))
                                      (let ((_e117193117219_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl117188117216_))))
                                        (let ((_hd117192117222_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e117193117219_)))
                                              (_tl117191117224_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e117193117219_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl117191117224_))
                                              ((lambda (_L117227_ _L117228_)
                                                 (let ((_sym117243_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L117228_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _sym117243_))
                                                   (let ((__tmp118638
                                                          (gxc#current-compile-mutators)))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp118638
                                                      _sym117243_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self117178_
                                                      _L117227_))))
                                               _hd117192117222_
                                               _hd117189117214_)
                                              (let ()
                                                (declare (not safe))
                                                (_g117181117198_
                                                 _g117182117201_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g117181117198_ _g117182117201_)))))
                              (let ()
                                (declare (not safe))
                                (_g117181117198_ _g117182117201_)))))
                      (let ()
                        (declare (not safe))
                        (_g117181117198_ _g117182117201_))))))
          (declare (not safe))
          (_g117180117245_ _stx117179_))))
    (define gxc#collect-methods-call%
      (lambda (_self116731_ _stx116732_)
        (let* ((___stx118287118288_ _stx116732_)
               (_g116736116838_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx118287118288_)))))
          (let ((___kont118289118290_
                 (lambda (_L117128_ _L117129_ _L117130_ _L117131_ _L117132_)
                   (let ((__tmp118639
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L117129_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp118639))))
                (___kont118291118292_
                 (lambda (_L116954_ _L116955_ _L116956_ _L116957_)
                   (let ((__tmp118640
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L116954_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp118640))))
                (___kont118293118294_ (lambda () '#!void)))
            (let ((___match118422118423_
                   (lambda (_e116745117000_
                            _hd116744117003_
                            _tl116743117005_
                            _e116748117008_
                            _hd116747117011_
                            _tl116746117013_
                            _e116751117016_
                            _hd116750117019_
                            _tl116749117021_
                            _e116754117024_
                            _hd116753117027_
                            _tl116752117029_
                            _e116757117032_
                            _hd116756117035_
                            _tl116755117037_
                            _e116760117040_
                            _hd116759117043_
                            _tl116758117045_
                            _e116763117048_
                            _hd116762117051_
                            _tl116761117053_
                            _e116766117056_
                            _hd116765117059_
                            _tl116764117061_
                            _e116769117064_
                            _hd116768117067_
                            _tl116767117069_
                            _e116772117072_
                            _hd116771117075_
                            _tl116770117077_
                            _e116775117080_
                            _hd116774117083_
                            _tl116773117085_
                            _e116778117088_
                            _hd116777117091_
                            _tl116776117093_
                            _e116781117096_
                            _hd116780117099_
                            _tl116779117101_
                            _e116784117104_
                            _hd116783117107_
                            _tl116782117109_
                            _e116787117112_
                            _hd116786117115_
                            _tl116785117117_
                            _e116790117120_
                            _hd116789117123_
                            _tl116788117125_)
                     (let ((_L117128_ _hd116789117123_)
                           (_L117129_ _hd116780117099_)
                           (_L117130_ _hd116771117075_)
                           (_L117131_ _hd116762117051_)
                           (_L117132_ _hd116753117027_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L117132_
                              'bind-method!))
                           (___kont118289118290_
                            _L117128_
                            _L117129_
                            _L117130_
                            _L117131_
                            _L117132_)
                           (___kont118293118294_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx118287118288_))
                  (let ((_e116745117000_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx118287118288_))))
                    (let ((_tl116743117005_
                           (let ()
                             (declare (not safe))
                             (##cdr _e116745117000_)))
                          (_hd116744117003_
                           (let ()
                             (declare (not safe))
                             (##car _e116745117000_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl116743117005_))
                          (let ((_e116748117008_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl116743117005_))))
                            (let ((_tl116746117013_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e116748117008_)))
                                  (_hd116747117011_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e116748117008_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd116747117011_))
                                  (let ((_e116751117016_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd116747117011_))))
                                    (let ((_tl116749117021_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e116751117016_)))
                                          (_hd116750117019_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e116751117016_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd116750117019_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd116750117019_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl116749117021_))
                                                  (let ((_e116754117024_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl116749117021_))))
                                                    (let ((_tl116752117029_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e116754117024_)))
                                                          (_hd116753117027_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e116754117024_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl116752117029_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl116746117013_))
                      (let ((_e116757117032_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl116746117013_))))
                        (let ((_tl116755117037_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116757117032_)))
                              (_hd116756117035_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116757117032_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd116756117035_))
                              (let ((_e116760117040_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd116756117035_))))
                                (let ((_tl116758117045_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116760117040_)))
                                      (_hd116759117043_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116760117040_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd116759117043_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd116759117043_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl116758117045_))
                                              (let ((_e116763117048_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl116758117045_))))
                                                (let ((_tl116761117053_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e116763117048_)))
                                                      (_hd116762117051_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e116763117048_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl116761117053_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl116755117037_))
                                                          (let ((_e116766117056_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl116755117037_))))
                    (let ((_tl116764117061_
                           (let ()
                             (declare (not safe))
                             (##cdr _e116766117056_)))
                          (_hd116765117059_
                           (let ()
                             (declare (not safe))
                             (##car _e116766117056_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd116765117059_))
                          (let ((_e116769117064_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd116765117059_))))
                            (let ((_tl116767117069_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e116769117064_)))
                                  (_hd116768117067_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e116769117064_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd116768117067_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd116768117067_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl116767117069_))
                                          (let ((_e116772117072_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl116767117069_))))
                                            (let ((_tl116770117077_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e116772117072_)))
                                                  (_hd116771117075_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e116772117072_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl116770117077_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl116764117061_))
                                                      (let ((_e116775117080_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl116764117061_))))
                (let ((_tl116773117085_
                       (let () (declare (not safe)) (##cdr _e116775117080_)))
                      (_hd116774117083_
                       (let () (declare (not safe)) (##car _e116775117080_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd116774117083_))
                      (let ((_e116778117088_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd116774117083_))))
                        (let ((_tl116776117093_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116778117088_)))
                              (_hd116777117091_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116778117088_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd116777117091_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd116777117091_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116776117093_))
                                      (let ((_e116781117096_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116776117093_))))
                                        (let ((_tl116779117101_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116781117096_)))
                                              (_hd116780117099_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116781117096_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116779117101_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl116773117085_))
                                                  (let ((_e116784117104_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl116773117085_))))
                                                    (let ((_tl116782117109_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e116784117104_)))
                                                          (_hd116783117107_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e116784117104_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd116783117107_))
                                                          (let ((_e116787117112_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd116783117107_))))
                    (let ((_tl116785117117_
                           (let ()
                             (declare (not safe))
                             (##cdr _e116787117112_)))
                          (_hd116786117115_
                           (let ()
                             (declare (not safe))
                             (##car _e116787117112_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd116786117115_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd116786117115_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl116785117117_))
                                  (let ((_e116790117120_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl116785117117_))))
                                    (let ((_tl116788117125_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e116790117120_)))
                                          (_hd116789117123_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e116790117120_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl116788117125_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116782117109_))
                                              (___match118422118423_
                                               _e116745117000_
                                               _hd116744117003_
                                               _tl116743117005_
                                               _e116748117008_
                                               _hd116747117011_
                                               _tl116746117013_
                                               _e116751117016_
                                               _hd116750117019_
                                               _tl116749117021_
                                               _e116754117024_
                                               _hd116753117027_
                                               _tl116752117029_
                                               _e116757117032_
                                               _hd116756117035_
                                               _tl116755117037_
                                               _e116760117040_
                                               _hd116759117043_
                                               _tl116758117045_
                                               _e116763117048_
                                               _hd116762117051_
                                               _tl116761117053_
                                               _e116766117056_
                                               _hd116765117059_
                                               _tl116764117061_
                                               _e116769117064_
                                               _hd116768117067_
                                               _tl116767117069_
                                               _e116772117072_
                                               _hd116771117075_
                                               _tl116770117077_
                                               _e116775117080_
                                               _hd116774117083_
                                               _tl116773117085_
                                               _e116778117088_
                                               _hd116777117091_
                                               _tl116776117093_
                                               _e116781117096_
                                               _hd116780117099_
                                               _tl116779117101_
                                               _e116784117104_
                                               _hd116783117107_
                                               _tl116782117109_
                                               _e116787117112_
                                               _hd116786117115_
                                               _tl116785117117_
                                               _e116790117120_
                                               _hd116789117123_
                                               _tl116788117125_)
                                              (___kont118293118294_))
                                          (___kont118293118294_))))
                                  (___kont118293118294_))
                              (___kont118293118294_))
                          (___kont118293118294_))))
                  (___kont118293118294_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl116773117085_))
                                                      (if (let ((__tmp118641
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp118641 'bind-method!))
                  (let ((_L116954_ _hd116780117099_)
                        (_L116955_ _hd116771117075_)
                        (_L116956_ _hd116762117051_)
                        (_L116957_ _hd116753117027_))
                    (___kont118291118292_
                     _L116954_
                     _L116955_
                     _L116956_
                     _L116957_))
                  (___kont118293118294_))
              (___kont118293118294_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont118293118294_))))
                                      (___kont118293118294_))
                                  (___kont118293118294_))
                              (___kont118293118294_))))
                      (___kont118293118294_))))
              (___kont118293118294_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont118293118294_))))
                                          (___kont118293118294_))
                                      (___kont118293118294_))
                                  (___kont118293118294_))))
                          (___kont118293118294_))))
                  (___kont118293118294_))
              (___kont118293118294_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont118293118294_))
                                          (___kont118293118294_))
                                      (___kont118293118294_))))
                              (___kont118293118294_))))
                      (___kont118293118294_))
                  (___kont118293118294_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont118293118294_))
                                              (___kont118293118294_))
                                          (___kont118293118294_))))
                                  (___kont118293118294_))))
                          (___kont118293118294_))))
                  (___kont118293118294_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_self116679_ _stx116680_)
        (let* ((_g116682116695_
                (lambda (_g116683116692_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116683116692_))))
               (_g116681116728_
                (lambda (_g116683116698_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116683116698_))
                      (let ((_e116687116700_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116683116698_))))
                        (let ((_hd116686116703_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116687116700_)))
                              (_tl116685116705_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116687116700_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116685116705_))
                              (let ((_e116690116708_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116685116705_))))
                                (let ((_hd116689116711_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116690116708_)))
                                      (_tl116688116713_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116690116708_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl116688116713_))
                                      ((lambda (_L116716_)
                                         (if (let ((__tmp118645
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _self116679_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L116716_
                                                __tmp118645))
                                             (let ((__tmp118642
                                                    (let ((__tmp118643
                                                           (let ((__tmp118644
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self116679_ 'new-id))))
                     (declare (not safe))
                     (cons __tmp118644 '()))))
              (declare (not safe))
              (cons '%#ref __tmp118643))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp118642
                                                _stx116680_))
                                             _stx116680_))
                                       _hd116689116711_)
                                      (let ()
                                        (declare (not safe))
                                        (_g116682116695_ _g116683116698_)))))
                              (let ()
                                (declare (not safe))
                                (_g116682116695_ _g116683116698_)))))
                      (let ()
                        (declare (not safe))
                        (_g116682116695_ _g116683116698_))))))
          (declare (not safe))
          (_g116681116728_ _stx116680_))))
    (define gxc#expression-subst*-ref%
      (lambda (_self116620_ _stx116621_)
        (let* ((_g116623116636_
                (lambda (_g116624116633_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116624116633_))))
               (_g116622116676_
                (lambda (_g116624116639_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116624116639_))
                      (let ((_e116628116641_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116624116639_))))
                        (let ((_hd116627116644_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116628116641_)))
                              (_tl116626116646_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116628116641_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116626116646_))
                              (let ((_e116631116649_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116626116646_))))
                                (let ((_hd116630116652_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116631116649_)))
                                      (_tl116629116654_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116631116649_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl116629116654_))
                                      ((lambda (_L116657_)
                                         (let ((_$e116671_
                                                (let ((__tmp118647
                                                       (lambda (_sub116669_)
                                                         (let ((__tmp118648
                                                                (car _sub116669_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _L116657_
                                                            __tmp118648))))
                                                      (__tmp118646
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _self116620_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (find __tmp118647
                                                        __tmp118646))))
                                           (if _$e116671_
                                               ((lambda (_sub116674_)
                                                  (let ((__tmp118649
                                                         (let ((__tmp118650
                                                                (let ((__tmp118651
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _sub116674_)))
                          (declare (not safe))
                          (cons __tmp118651 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp118650))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp118649
                                                     _stx116621_)))
                                                _$e116671_)
                                               _stx116621_)))
                                       _hd116630116652_)
                                      (let ()
                                        (declare (not safe))
                                        (_g116623116636_ _g116624116639_)))))
                              (let ()
                                (declare (not safe))
                                (_g116623116636_ _g116624116639_)))))
                      (let ()
                        (declare (not safe))
                        (_g116623116636_ _g116624116639_))))))
          (declare (not safe))
          (_g116622116676_ _stx116621_))))
    (define gxc#expression-subst-setq%
      (lambda (_self116549_ _stx116550_)
        (let* ((_g116552116569_
                (lambda (_g116553116566_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116553116566_))))
               (_g116551116617_
                (lambda (_g116553116572_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116553116572_))
                      (let ((_e116558116574_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116553116572_))))
                        (let ((_hd116557116577_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116558116574_)))
                              (_tl116556116579_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116558116574_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116556116579_))
                              (let ((_e116561116582_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116556116579_))))
                                (let ((_hd116560116585_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116561116582_)))
                                      (_tl116559116587_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116561116582_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116559116587_))
                                      (let ((_e116564116590_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116559116587_))))
                                        (let ((_hd116563116593_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116564116590_)))
                                              (_tl116562116595_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116564116590_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116562116595_))
                                              ((lambda (_L116598_ _L116599_)
                                                 (let ((_new-expr116614_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _self116549_
                                                           _L116598_)))
                                                       (_new-xid116615_
                                                        (if (let ((__tmp118652
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _self116549_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _L116599_ __tmp118652))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _self116549_ 'new-id))
                    _L116599_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp118653
                                                          (let ((__tmp118654
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp118655
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr116614_ '()))))
                           (declare (not safe))
                           (cons _new-xid116615_ __tmp118655))))
                    (declare (not safe))
                    (cons '%#set! __tmp118654))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp118653
                                                      _stx116550_))))
                                               _hd116563116593_
                                               _hd116560116585_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116552116569_
                                                 _g116553116572_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116552116569_ _g116553116572_)))))
                              (let ()
                                (declare (not safe))
                                (_g116552116569_ _g116553116572_)))))
                      (let ()
                        (declare (not safe))
                        (_g116552116569_ _g116553116572_))))))
          (declare (not safe))
          (_g116551116617_ _stx116550_))))
    (define gxc#expression-subst*-setq%
      (lambda (_self116473_ _stx116474_)
        (let* ((_g116476116493_
                (lambda (_g116477116490_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116477116490_))))
               (_g116475116546_
                (lambda (_g116477116496_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116477116496_))
                      (let ((_e116482116498_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116477116496_))))
                        (let ((_hd116481116501_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116482116498_)))
                              (_tl116480116503_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116482116498_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116480116503_))
                              (let ((_e116485116506_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116480116503_))))
                                (let ((_hd116484116509_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116485116506_)))
                                      (_tl116483116511_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116485116506_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116483116511_))
                                      (let ((_e116488116514_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116483116511_))))
                                        (let ((_hd116487116517_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116488116514_)))
                                              (_tl116486116519_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116488116514_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116486116519_))
                                              ((lambda (_L116522_ _L116523_)
                                                 (let ((_new-expr116543_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _self116473_
                                                           _L116522_)))
                                                       (_new-xid116544_
                                                        (let ((_$e116540_
                                                               (let ((__tmp118657
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_sub116538_)
                                (let ((__tmp118658 (car _sub116538_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _L116523_
                                   __tmp118658))))
                             (__tmp118656
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _self116473_ 'subst))))
                         (declare (not safe))
                         (find __tmp118657 __tmp118656))))
                  (if _$e116540_ (cdr _$e116540_) _L116523_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp118659
                                                          (let ((__tmp118660
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp118661
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr116543_ '()))))
                           (declare (not safe))
                           (cons _new-xid116544_ __tmp118661))))
                    (declare (not safe))
                    (cons '%#set! __tmp118660))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp118659
                                                      _stx116474_))))
                                               _hd116487116517_
                                               _hd116484116509_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116476116493_
                                                 _g116477116496_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116476116493_ _g116477116496_)))))
                              (let ()
                                (declare (not safe))
                                (_g116476116493_ _g116477116496_)))))
                      (let ()
                        (declare (not safe))
                        (_g116476116493_ _g116477116496_))))))
          (declare (not safe))
          (_g116475116546_ _stx116474_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_self116419_ _stx116420_)
        (let* ((_g116422116435_
                (lambda (_g116423116432_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116423116432_))))
               (_g116421116470_
                (lambda (_g116423116438_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116423116438_))
                      (let ((_e116427116440_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116423116438_))))
                        (let ((_hd116426116443_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116427116440_)))
                              (_tl116425116445_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116427116440_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116425116445_))
                              (let ((_e116430116448_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116425116445_))))
                                (let ((_hd116429116451_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116430116448_)))
                                      (_tl116428116453_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116430116448_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl116428116453_))
                                      ((lambda (_L116456_)
                                         (let* ((_eid116468_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L116456_)))
                                                (__tmp118662
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _self116419_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp118662
                                            _eid116468_
                                            1+
                                            '0)))
                                       _hd116429116451_)
                                      (let ()
                                        (declare (not safe))
                                        (_g116422116435_ _g116423116438_)))))
                              (let ()
                                (declare (not safe))
                                (_g116422116435_ _g116423116438_)))))
                      (let ()
                        (declare (not safe))
                        (_g116422116435_ _g116423116438_))))))
          (declare (not safe))
          (_g116421116470_ _stx116420_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_self116349_ _stx116350_)
        (let* ((_g116352116369_
                (lambda (_g116353116366_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116353116366_))))
               (_g116351116416_
                (lambda (_g116353116372_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116353116372_))
                      (let ((_e116358116374_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116353116372_))))
                        (let ((_hd116357116377_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116358116374_)))
                              (_tl116356116379_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116358116374_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116356116379_))
                              (let ((_e116361116382_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116356116379_))))
                                (let ((_hd116360116385_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116361116382_)))
                                      (_tl116359116387_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116361116382_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116359116387_))
                                      (let ((_e116364116390_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116359116387_))))
                                        (let ((_hd116363116393_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116364116390_)))
                                              (_tl116362116395_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116364116390_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116362116395_))
                                              ((lambda (_L116398_ _L116399_)
                                                 (let ((_eid116414_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L116399_))))
                                                   (let ((__tmp118663
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self116349_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp118663
                                                      _eid116414_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self116349_
                                                      _L116398_))))
                                               _hd116363116393_
                                               _hd116360116385_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116352116369_
                                                 _g116353116372_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116352116369_ _g116353116372_)))))
                              (let ()
                                (declare (not safe))
                                (_g116352116369_ _g116353116372_)))))
                      (let ()
                        (declare (not safe))
                        (_g116352116369_ _g116353116372_))))))
          (declare (not safe))
          (_g116351116416_ _stx116350_))))
    (define gxc#find-body%
      (lambda (_self116262_ _stx116263_)
        (let* ((_g116265116284_
                (lambda (_g116266116281_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116266116281_))))
               (_g116264116346_
                (lambda (_g116266116287_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116266116287_))
                      (let ((_e116270116289_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116266116287_))))
                        (let ((_hd116269116292_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116270116289_)))
                              (_tl116268116294_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116270116289_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl116268116294_))
                              (let ((_g118664_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl116268116294_
                                        '0))))
                                (begin
                                  (let ((_g118665_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g118664_)
                                               (##vector-length _g118664_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g118665_ 2)))
                                        (error "Context expects 2 values"
                                               _g118665_)))
                                  (let ((_target116271116297_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g118664_ 0)))
                                        (_tl116273116299_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g118664_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl116273116299_))
                                        (letrec ((_loop116274116302_
                                                  (lambda (_hd116272116305_
                                                           _expr116278116307_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd116272116305_))
                                                        (let ((_e116275116310_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd116272116305_))))
                  (let ((_lp-hd116276116313_
                         (let () (declare (not safe)) (##car _e116275116310_)))
                        (_lp-tl116277116315_
                         (let ()
                           (declare (not safe))
                           (##cdr _e116275116310_))))
                    (let ((__tmp118669
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd116276116313_ _expr116278116307_))))
                      (declare (not safe))
                      (_loop116274116302_ _lp-tl116277116315_ __tmp118669))))
                (let ((_expr116279116318_ (reverse _expr116278116307_)))
                  ((lambda (_L116321_)
                     (let ((__tmp118668
                            (lambda (_g116334116336_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _self116262_
                                 _g116334116336_))))
                           (__tmp118666
                            (let ((__tmp118667
                                   (lambda (_g116338116341_ _g116339116343_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g116338116341_
                                             _g116339116343_)))))
                              (declare (not safe))
                              (foldr1 __tmp118667 '() _L116321_))))
                       (declare (not safe))
                       (ormap1 __tmp118668 __tmp118666)))
                   _expr116279116318_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop116274116302_
                                             _target116271116297_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g116265116284_
                                           _g116266116287_))))))
                              (let ()
                                (declare (not safe))
                                (_g116265116284_ _g116266116287_)))))
                      (let ()
                        (declare (not safe))
                        (_g116265116284_ _g116266116287_))))))
          (declare (not safe))
          (_g116264116346_ _stx116263_))))
    (define gxc#find-begin-annotation%
      (lambda (_self116194_ _stx116195_)
        (let* ((_g116197116214_
                (lambda (_g116198116211_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116198116211_))))
               (_g116196116259_
                (lambda (_g116198116217_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116198116217_))
                      (let ((_e116203116219_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116198116217_))))
                        (let ((_hd116202116222_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116203116219_)))
                              (_tl116201116224_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116203116219_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116201116224_))
                              (let ((_e116206116227_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116201116224_))))
                                (let ((_hd116205116230_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116206116227_)))
                                      (_tl116204116232_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116206116227_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116204116232_))
                                      (let ((_e116209116235_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116204116232_))))
                                        (let ((_hd116208116238_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116209116235_)))
                                              (_tl116207116240_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116209116235_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116207116240_))
                                              ((lambda (_L116243_ _L116244_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self116194_
                                                    _L116243_)))
                                               _hd116208116238_
                                               _hd116205116230_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116197116214_
                                                 _g116198116217_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116197116214_ _g116198116217_)))))
                              (let ()
                                (declare (not safe))
                                (_g116197116214_ _g116198116217_)))))
                      (let ()
                        (declare (not safe))
                        (_g116197116214_ _g116198116217_))))))
          (declare (not safe))
          (_g116196116259_ _stx116195_))))
    (define gxc#find-lambda%
      (lambda (_self116126_ _stx116127_)
        (let* ((_g116129116146_
                (lambda (_g116130116143_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116130116143_))))
               (_g116128116191_
                (lambda (_g116130116149_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116130116149_))
                      (let ((_e116135116151_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116130116149_))))
                        (let ((_hd116134116154_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116135116151_)))
                              (_tl116133116156_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116135116151_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116133116156_))
                              (let ((_e116138116159_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116133116156_))))
                                (let ((_hd116137116162_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116138116159_)))
                                      (_tl116136116164_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116138116159_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116136116164_))
                                      (let ((_e116141116167_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116136116164_))))
                                        (let ((_hd116140116170_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116141116167_)))
                                              (_tl116139116172_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116141116167_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116139116172_))
                                              ((lambda (_L116175_ _L116176_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self116126_
                                                    _L116175_)))
                                               _hd116140116170_
                                               _hd116137116162_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116129116146_
                                                 _g116130116149_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116129116146_ _g116130116149_)))))
                              (let ()
                                (declare (not safe))
                                (_g116129116146_ _g116130116149_)))))
                      (let ()
                        (declare (not safe))
                        (_g116129116146_ _g116130116149_))))))
          (declare (not safe))
          (_g116128116191_ _stx116127_))))
    (define gxc#find-case-lambda%
      (lambda (_self116008_ _stx116009_)
        (let* ((_g116011116039_
                (lambda (_g116012116036_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116012116036_))))
               (_g116010116123_
                (lambda (_g116012116042_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116012116042_))
                      (let ((_e116017116044_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116012116042_))))
                        (let ((_hd116016116047_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116017116044_)))
                              (_tl116015116049_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116017116044_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl116015116049_))
                              (let ((_g118670_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl116015116049_
                                        '0))))
                                (begin
                                  (let ((_g118671_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g118670_)
                                               (##vector-length _g118670_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g118671_ 2)))
                                        (error "Context expects 2 values"
                                               _g118671_)))
                                  (let ((_target116018116052_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g118670_ 0)))
                                        (_tl116020116054_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g118670_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl116020116054_))
                                        (letrec ((_loop116021116057_
                                                  (lambda (_hd116019116060_
                                                           _body116025116062_
                                                           _hd116026116064_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd116019116060_))
                                                        (let ((_e116022116067_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd116019116060_))))
                  (let ((_lp-hd116023116070_
                         (let () (declare (not safe)) (##car _e116022116067_)))
                        (_lp-tl116024116072_
                         (let ()
                           (declare (not safe))
                           (##cdr _e116022116067_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd116023116070_))
                        (let ((_e116031116075_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd116023116070_))))
                          (let ((_hd116030116078_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e116031116075_)))
                                (_tl116029116080_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e116031116075_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl116029116080_))
                                (let ((_e116034116083_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl116029116080_))))
                                  (let ((_hd116033116086_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e116034116083_)))
                                        (_tl116032116088_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e116034116083_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl116032116088_))
                                        (let ((__tmp118676
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd116033116086_
                                                       _body116025116062_)))
                                              (__tmp118675
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd116030116078_
                                                       _hd116026116064_))))
                                          (declare (not safe))
                                          (_loop116021116057_
                                           _lp-tl116024116072_
                                           __tmp118676
                                           __tmp118675))
                                        (let ()
                                          (declare (not safe))
                                          (_g116011116039_ _g116012116042_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g116011116039_ _g116012116042_)))))
                        (let ()
                          (declare (not safe))
                          (_g116011116039_ _g116012116042_)))))
                (let ((_body116027116091_ (reverse _body116025116062_))
                      (_hd116028116093_ (reverse _hd116026116064_)))
                  ((lambda (_L116096_ _L116097_)
                     (let ((__tmp118674
                            (lambda (_g116111116113_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _self116008_
                                 _g116111116113_))))
                           (__tmp118672
                            (let ((__tmp118673
                                   (lambda (_g116115116118_ _g116116116120_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g116115116118_
                                             _g116116116120_)))))
                              (declare (not safe))
                              (foldr1 __tmp118673 '() _L116096_))))
                       (declare (not safe))
                       (ormap1 __tmp118674 __tmp118672)))
                   _body116027116091_
                   _hd116028116093_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop116021116057_
                                             _target116018116052_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g116011116039_
                                           _g116012116042_))))))
                              (let ()
                                (declare (not safe))
                                (_g116011116039_ _g116012116042_)))))
                      (let ()
                        (declare (not safe))
                        (_g116011116039_ _g116012116042_))))))
          (declare (not safe))
          (_g116010116123_ _stx116009_))))
    (define gxc#find-let-values%
      (lambda (_self115858_ _stx115859_)
        (let* ((_g115861115896_
                (lambda (_g115862115893_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115862115893_))))
               (_g115860116005_
                (lambda (_g115862115899_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115862115899_))
                      (let ((_e115868115901_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115862115899_))))
                        (let ((_hd115867115904_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115868115901_)))
                              (_tl115866115906_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115868115901_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115866115906_))
                              (let ((_e115871115909_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115866115906_))))
                                (let ((_hd115870115912_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115871115909_)))
                                      (_tl115869115914_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115871115909_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd115870115912_))
                                      (let ((_g118677_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd115870115912_
                                                '0))))
                                        (begin
                                          (let ((_g118678_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g118677_)
                                                       (##vector-length
                                                        _g118677_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g118678_ 2)))
                                                (error "Context expects 2 values"
                                                       _g118678_)))
                                          (let ((_target115872115917_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g118677_ 0)))
                                                (_tl115874115919_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g118677_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl115874115919_))
                                                (letrec ((_loop115875115922_
                                                          (lambda (_hd115873115925_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr115879115927_
                           _bind115880115929_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd115873115925_))
                        (let ((_e115876115932_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd115873115925_))))
                          (let ((_lp-hd115877115935_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e115876115932_)))
                                (_lp-tl115878115937_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e115876115932_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd115877115935_))
                                (let ((_e115885115940_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd115877115935_))))
                                  (let ((_hd115884115943_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e115885115940_)))
                                        (_tl115883115945_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e115885115940_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl115883115945_))
                                        (let ((_e115888115948_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl115883115945_))))
                                          (let ((_hd115887115951_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e115888115948_)))
                                                (_tl115886115953_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e115888115948_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl115886115953_))
                                                (let ((__tmp118683
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd115887115951_
                                                               _expr115879115927_)))
                                                      (__tmp118682
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd115884115943_
                                                               _bind115880115929_))))
                                                  (declare (not safe))
                                                  (_loop115875115922_
                                                   _lp-tl115878115937_
                                                   __tmp118683
                                                   __tmp118682))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g115861115896_
                                                   _g115862115899_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g115861115896_ _g115862115899_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g115861115896_ _g115862115899_)))))
                        (let ((_expr115881115956_ (reverse _expr115879115927_))
                              (_bind115882115958_
                               (reverse _bind115880115929_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115869115914_))
                              (let ((_e115891115961_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115869115914_))))
                                (let ((_hd115890115964_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115891115961_)))
                                      (_tl115889115966_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115891115961_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl115889115966_))
                                      ((lambda (_L115969_ _L115970_ _L115971_)
                                         (let ((_$e116002_
                                                (let ((__tmp118681
                                                       (lambda (_g115990115992_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self115858_
                                                            _g115990115992_))))
                                                      (__tmp118679
                                                       (let ((__tmp118680
                                                              (lambda (_g115994115997_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g115995115999_)
                        (let ()
                          (declare (not safe))
                          (cons _g115994115997_ _g115995115999_)))))
                 (declare (not safe))
                 (foldr1 __tmp118680 '() _L115970_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap1 __tmp118681
                                                          __tmp118679))))
                                           (if _$e116002_
                                               _$e116002_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _self115858_
                                                  _L115969_)))))
                                       _hd115890115964_
                                       _expr115881115956_
                                       _bind115882115958_)
                                      (let ()
                                        (declare (not safe))
                                        (_g115861115896_ _g115862115899_)))))
                              (let ()
                                (declare (not safe))
                                (_g115861115896_ _g115862115899_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop115875115922_
                                                     _target115872115917_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g115861115896_
                                                   _g115862115899_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115861115896_ _g115862115899_)))))
                              (let ()
                                (declare (not safe))
                                (_g115861115896_ _g115862115899_)))))
                      (let ()
                        (declare (not safe))
                        (_g115861115896_ _g115862115899_))))))
          (declare (not safe))
          (_g115860116005_ _stx115859_))))
    (define gxc#find-setq%
      (lambda (_self115790_ _stx115791_)
        (let* ((_g115793115810_
                (lambda (_g115794115807_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115794115807_))))
               (_g115792115855_
                (lambda (_g115794115813_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115794115813_))
                      (let ((_e115799115815_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115794115813_))))
                        (let ((_hd115798115818_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115799115815_)))
                              (_tl115797115820_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115799115815_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115797115820_))
                              (let ((_e115802115823_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115797115820_))))
                                (let ((_hd115801115826_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115802115823_)))
                                      (_tl115800115828_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115802115823_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115800115828_))
                                      (let ((_e115805115831_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115800115828_))))
                                        (let ((_hd115804115834_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115805115831_)))
                                              (_tl115803115836_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115805115831_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115803115836_))
                                              ((lambda (_L115839_ _L115840_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self115790_
                                                    _L115839_)))
                                               _hd115804115834_
                                               _hd115801115826_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115793115810_
                                                 _g115794115813_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115793115810_ _g115794115813_)))))
                              (let ()
                                (declare (not safe))
                                (_g115793115810_ _g115794115813_)))))
                      (let ()
                        (declare (not safe))
                        (_g115793115810_ _g115794115813_))))))
          (declare (not safe))
          (_g115792115855_ _stx115791_))))
    (define gxc#find-var-refs-ref%
      (lambda (_self115734_ _stx115735_)
        (let* ((_g115737115750_
                (lambda (_g115738115747_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115738115747_))))
               (_g115736115787_
                (lambda (_g115738115753_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115738115753_))
                      (let ((_e115742115755_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115738115753_))))
                        (let ((_hd115741115758_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115742115755_)))
                              (_tl115740115760_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115742115755_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115740115760_))
                              (let ((_e115745115763_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115740115760_))))
                                (let ((_hd115744115766_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115745115763_)))
                                      (_tl115743115768_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115745115763_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl115743115768_))
                                      ((lambda (_L115771_)
                                         (let ((__tmp118685
                                                (lambda (_g115782115784_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _L115771_
                                                     _g115782115784_))))
                                               (__tmp118684
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _self115734_
                                                   'ids))))
                                           (declare (not safe))
                                           (find __tmp118685 __tmp118684)))
                                       _hd115744115766_)
                                      (let ()
                                        (declare (not safe))
                                        (_g115737115750_ _g115738115753_)))))
                              (let ()
                                (declare (not safe))
                                (_g115737115750_ _g115738115753_)))))
                      (let ()
                        (declare (not safe))
                        (_g115737115750_ _g115738115753_))))))
          (declare (not safe))
          (_g115736115787_ _stx115735_))))
    (define gxc#find-var-refs-setq%
      (lambda (_self115659_ _stx115660_)
        (let* ((_g115662115679_
                (lambda (_g115663115676_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115663115676_))))
               (_g115661115731_
                (lambda (_g115663115682_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115663115682_))
                      (let ((_e115668115684_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115663115682_))))
                        (let ((_hd115667115687_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115668115684_)))
                              (_tl115666115689_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115668115684_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115666115689_))
                              (let ((_e115671115692_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115666115689_))))
                                (let ((_hd115670115695_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115671115692_)))
                                      (_tl115669115697_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115671115692_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115669115697_))
                                      (let ((_e115674115700_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115669115697_))))
                                        (let ((_hd115673115703_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115674115700_)))
                                              (_tl115672115705_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115674115700_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115672115705_))
                                              ((lambda (_L115708_ _L115709_)
                                                 (let ((_$e115728_
                                                        (let ((__tmp118687
                                                               (lambda (_g115723115725_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=? _L115709_ _g115723115725_))))
                      (__tmp118686
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _self115659_ 'ids))))
                  (declare (not safe))
                  (find __tmp118687 __tmp118686))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e115728_
                                                       _$e115728_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _self115659_
                                                          _L115708_)))))
                                               _hd115673115703_
                                               _hd115670115695_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115662115679_
                                                 _g115663115682_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115662115679_ _g115663115682_)))))
                              (let ()
                                (declare (not safe))
                                (_g115662115679_ _g115663115682_)))))
                      (let ()
                        (declare (not safe))
                        (_g115662115679_ _g115663115682_))))))
          (declare (not safe))
          (_g115661115731_ _stx115660_))))))
