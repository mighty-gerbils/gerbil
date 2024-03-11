(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1710139354)
  (begin
    (define gxc#&identity-expression::t
      (let ((__tmp118550 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#&identity-expression::t
         '&identity-expression
         __tmp118550
         '()
         '()
         '#f)))
    (define gxc#&identity-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#&identity-expression::t)))
    (define gxc#make-&identity-expression
      (lambda _$args118286_
        (apply make-instance gxc#&identity-expression::t _$args118286_)))
    (define gxc#&identity-expression-bind-methods!
      (let ((__tmp118551
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
        (make-promise __tmp118551)))
    (define gxc#&identity-special-form::t
      (let ((__tmp118552 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#&identity-special-form::t
         '&identity-special-form
         __tmp118552
         '()
         '()
         '#f)))
    (define gxc#&identity-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#&identity-special-form::t)))
    (define gxc#make-&identity-special-form
      (lambda _$args118282_
        (apply make-instance gxc#&identity-special-form::t _$args118282_)))
    (define gxc#&identity-special-form-bind-methods!
      (let ((__tmp118553
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
        (make-promise __tmp118553)))
    (define gxc#&identity::t
      (let ((__tmp118554
             (list gxc#&identity-special-form::t gxc#&identity-expression::t)))
        (declare (not safe))
        (make-class-type
         'gxc#&identity::t
         '&identity
         __tmp118554
         '()
         '()
         '#f)))
    (define gxc#&identity?
      (let () (declare (not safe)) (make-class-predicate gxc#&identity::t)))
    (define gxc#make-&identity
      (lambda _$args118278_
        (apply make-instance gxc#&identity::t _$args118278_)))
    (define gxc#&identity-bind-methods!
      (let ((__tmp118555
             (lambda ()
               (force gxc#&identity-special-form-bind-methods!)
               (force gxc#&identity-expression-bind-methods!))))
        (declare (not safe))
        (make-promise __tmp118555)))
    (define gxc#&basic-xform-expression::t
      (let ((__tmp118556 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#&basic-xform-expression::t
         '&basic-xform-expression
         __tmp118556
         '()
         '()
         '#f)))
    (define gxc#&basic-xform-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#&basic-xform-expression::t)))
    (define gxc#make-&basic-xform-expression
      (lambda _$args118274_
        (apply make-instance gxc#&basic-xform-expression::t _$args118274_)))
    (define gxc#&basic-xform-expression-bind-methods!
      (let ((__tmp118557
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
        (make-promise __tmp118557)))
    (define gxc#&basic-xform::t
      (let ((__tmp118558
             (list gxc#&basic-xform-expression::t gxc#&identity::t)))
        (declare (not safe))
        (make-class-type
         'gxc#&basic-xform::t
         '&basic-xform
         __tmp118558
         '()
         '()
         '#f)))
    (define gxc#&basic-xform?
      (let () (declare (not safe)) (make-class-predicate gxc#&basic-xform::t)))
    (define gxc#make-&basic-xform
      (lambda _$args118270_
        (apply make-instance gxc#&basic-xform::t _$args118270_)))
    (define gxc#&basic-xform-bind-methods!
      (let ((__tmp118559
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
        (make-promise __tmp118559)))
    (define gxc#&collect-mutators::t
      (let ((__tmp118562 (list gxc#&void::t))
            (__tmp118560
             (let ((__tmp118561
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp118561 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#&collect-mutators::t
         '&collect-mutators
         __tmp118562
         '()
         __tmp118560
         '#f)))
    (define gxc#&collect-mutators?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#&collect-mutators::t)))
    (define gxc#make-&collect-mutators
      (lambda _$args118266_
        (apply make-instance gxc#&collect-mutators::t _$args118266_)))
    (define gxc#&collect-mutators-bind-methods!
      (let ((__tmp118563
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
        (make-promise __tmp118563)))
    (define gxc#apply-collect-mutators
      (lambda (_stx118258_)
        (force gxc#&collect-mutators-bind-methods!)
        (let* ((_self118261_
                (let ((__obj118538
                       (let ()
                         (declare (not safe))
                         (##structure gxc#&collect-mutators::t))))
                  __obj118538))
               (__tmp118564
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self118261_ _stx118258_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp118564
           gxc#current-compile-method
           _self118261_))))
    (define gxc#&collect-methods::t
      (let ((__tmp118567 (list gxc#&void::t))
            (__tmp118565
             (let ((__tmp118566
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp118566 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#&collect-methods::t
         '&collect-methods
         __tmp118567
         '()
         __tmp118565
         '#f)))
    (define gxc#&collect-methods?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#&collect-methods::t)))
    (define gxc#make-&collect-methods
      (lambda _$args118255_
        (apply make-instance gxc#&collect-methods::t _$args118255_)))
    (define gxc#&collect-methods-bind-methods!
      (let ((__tmp118568
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
        (make-promise __tmp118568)))
    (define gxc#apply-collect-methods
      (lambda (_stx118247_)
        (force gxc#&collect-methods-bind-methods!)
        (let* ((_self118250_
                (let ((__obj118540
                       (let ()
                         (declare (not safe))
                         (##structure gxc#&collect-methods::t))))
                  __obj118540))
               (__tmp118569
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self118250_ _stx118247_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp118569
           gxc#current-compile-method
           _self118250_))))
    (define gxc#&expression-subst::t
      (let ((__tmp118572 (list gxc#&basic-xform-expression::t))
            (__tmp118570
             (let ((__tmp118571
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp118571 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#&expression-subst::t
         '&expression-subst
         __tmp118572
         '(id new-id)
         __tmp118570
         '#f)))
    (define gxc#&expression-subst?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#&expression-subst::t)))
    (define gxc#make-&expression-subst
      (lambda _$args118244_
        (apply make-instance gxc#&expression-subst::t _$args118244_)))
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
      (let ((__tmp118573
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
        (make-promise __tmp118573)))
    (define gxc#apply-expression-subst__%
      (lambda (_g118574_ _id118210118214_ _new-id118211118216_ _stx118218_)
        (let* ((_id118221_
                (if (let ()
                      (declare (not safe))
                      (eq? _id118210118214_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _id118210118214_))
               (_new-id118223_
                (if (let ()
                      (declare (not safe))
                      (eq? _new-id118211118216_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _new-id118211118216_)))
          (force gxc#&expression-subst-bind-methods!)
          (let* ((_self118225_
                  (let ((__obj118542
                         (let ()
                           (declare (not safe))
                           (##structure gxc#&expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj118542
                       _id118221_
                       '1
                       gxc#&expression-subst::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj118542
                       _new-id118223_
                       '2
                       gxc#&expression-subst::t
                       '#f))
                    __obj118542))
                 (__tmp118575
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self118225_ _stx118218_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp118575
             gxc#current-compile-method
             _self118225_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_keys118209118232_ . _args118234_)
        (apply gxc#apply-expression-subst__%
               _keys118209118232_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys118209118232_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys118209118232_ 'new-id: absent-value))
               _args118234_)))
    (define gxc#apply-expression-subst
      (lambda _args118212118240_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _args118212118240_)))
    (define gxc#&expression-subst*::t
      (let ((__tmp118578 (list gxc#&basic-xform-expression::t))
            (__tmp118576
             (let ((__tmp118577
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp118577 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#&expression-subst*::t
         '&expression-subst*
         __tmp118578
         '(subst)
         __tmp118576
         '#f)))
    (define gxc#&expression-subst*?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#&expression-subst*::t)))
    (define gxc#make-&expression-subst*
      (lambda _$args118205_
        (apply make-instance gxc#&expression-subst*::t _$args118205_)))
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
      (let ((__tmp118579
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
        (make-promise __tmp118579)))
    (define gxc#apply-expression-subst*__%
      (lambda (_g118580_ _subst118176118179_ _stx118181_)
        (let ((_subst118184_
               (if (let ()
                     (declare (not safe))
                     (eq? _subst118176118179_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _subst118176118179_)))
          (force gxc#&expression-subst*-bind-methods!)
          (let* ((_self118186_
                  (let ((__obj118544
                         (let ()
                           (declare (not safe))
                           (##structure gxc#&expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj118544
                       _subst118184_
                       '1
                       gxc#&expression-subst*::t
                       '#f))
                    __obj118544))
                 (__tmp118581
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self118186_ _stx118181_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp118581
             gxc#current-compile-method
             _self118186_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_keys118175118193_ . _args118195_)
        (apply gxc#apply-expression-subst*__%
               _keys118175118193_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys118175118193_ 'subst: absent-value))
               _args118195_)))
    (define gxc#apply-expression-subst*
      (lambda _args118177118201_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _args118177118201_)))
    (define gxc#&find-expression::t
      (let ((__tmp118582 (list gxc#&false-expression::t)))
        (declare (not safe))
        (make-class-type
         'gxc#&find-expression::t
         '&find-expression
         __tmp118582
         '()
         '()
         '#f)))
    (define gxc#&find-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#&find-expression::t)))
    (define gxc#make-&find-expression
      (lambda _$args118171_
        (apply make-instance gxc#&find-expression::t _$args118171_)))
    (define gxc#&find-expression-bind-methods!
      (let ((__tmp118583
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
        (make-promise __tmp118583)))
    (define gxc#&find-var-refs::t
      (let ((__tmp118586 (list gxc#&find-expression::t))
            (__tmp118584
             (let ((__tmp118585
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp118585 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#&find-var-refs::t
         '&find-var-refs
         __tmp118586
         '(ids)
         __tmp118584
         '#f)))
    (define gxc#&find-var-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#&find-var-refs::t)))
    (define gxc#make-&find-var-refs
      (lambda _$args118167_
        (apply make-instance gxc#&find-var-refs::t _$args118167_)))
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
      (let ((__tmp118587
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
        (make-promise __tmp118587)))
    (define gxc#apply-find-var-refs__%
      (lambda (_g118588_ _ids118138118141_ _stx118143_)
        (let ((_ids118146_
               (if (let ()
                     (declare (not safe))
                     (eq? _ids118138118141_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _ids118138118141_)))
          (force gxc#&find-var-refs-bind-methods!)
          (let* ((_self118148_
                  (let ((__obj118547
                         (let ()
                           (declare (not safe))
                           (##structure gxc#&find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj118547
                       _ids118146_
                       '1
                       gxc#&find-var-refs::t
                       '#f))
                    __obj118547))
                 (__tmp118589
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self118148_ _stx118143_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp118589
             gxc#current-compile-method
             _self118148_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_keys118137118155_ . _args118157_)
        (apply gxc#apply-find-var-refs__%
               _keys118137118155_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys118137118155_ 'ids: absent-value))
               _args118157_)))
    (define gxc#apply-find-var-refs
      (lambda _args118139118163_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _args118139118163_)))
    (define gxc#&collect-runtime-refs::t
      (let ((__tmp118592 (list gxc#&collect-expression-refs::t))
            (__tmp118590
             (let ((__tmp118591
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp118591 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#&collect-runtime-refs::t
         '&collect-runtime-refs
         __tmp118592
         '()
         __tmp118590
         '#f)))
    (define gxc#&collect-runtime-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#&collect-runtime-refs::t)))
    (define gxc#make-&collect-runtime-refs
      (lambda _$args118133_
        (apply make-instance gxc#&collect-runtime-refs::t _$args118133_)))
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
      (let ((__tmp118593
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
        (make-promise __tmp118593)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_g118594_ _table118104118107_ _stx118109_)
        (let ((_table118112_
               (if (let ()
                     (declare (not safe))
                     (eq? _table118104118107_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _table118104118107_)))
          (force gxc#&collect-runtime-refs-bind-methods!)
          (let* ((_self118114_
                  (let ((__obj118549
                         (let ()
                           (declare (not safe))
                           (##structure gxc#&collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj118549
                       _table118112_
                       '1
                       gxc#&collect-runtime-refs::t
                       '#f))
                    __obj118549))
                 (__tmp118595
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self118114_ _stx118109_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp118595
             gxc#current-compile-method
             _self118114_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_keys118103118121_ . _args118123_)
        (apply gxc#apply-collect-runtime-refs__%
               _keys118103118121_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys118103118121_ 'table: absent-value))
               _args118123_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _args118105118129_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _args118105118129_)))
    (define gxc#xform-wrap-source
      (lambda (_stx118099_ _src-stx118100_)
        (let ((__tmp118596
               (let () (declare (not safe)) (gx#stx-source _src-stx118100_))))
          (declare (not safe))
          (gx#stx-wrap-source _stx118099_ __tmp118596))))
    (define gxc#xform-begin%
      (lambda (_self118054_ _stx118055_)
        (let* ((_g118057118067_
                (lambda (_g118058118064_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118058118064_))))
               (_g118056118096_
                (lambda (_g118058118070_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118058118070_))
                      (let ((_e118062118072_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118058118070_))))
                        (let ((_hd118061118075_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118062118072_)))
                              (_tl118060118077_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118062118072_))))
                          ((lambda (_L118080_)
                             (let* ((_forms118094_
                                     (map (lambda (_g118089118091_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self118054_
                                               _g118089118091_)))
                                          _L118080_))
                                    (__tmp118597
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#begin _forms118094_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp118597
                                _stx118055_)))
                           _tl118060118077_)))
                      (let ()
                        (declare (not safe))
                        (_g118057118067_ _g118058118070_))))))
          (declare (not safe))
          (_g118056118096_ _stx118055_))))
    (define gxc#xform-begin-syntax%
      (lambda (_self118008_ _stx118009_)
        (let* ((_g118011118021_
                (lambda (_g118012118018_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g118012118018_))))
               (_g118010118051_
                (lambda (_g118012118024_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g118012118024_))
                      (let ((_e118016118026_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g118012118024_))))
                        (let ((_hd118015118029_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118016118026_)))
                              (_tl118014118031_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118016118026_))))
                          ((lambda (_L118034_)
                             (let ((__tmp118600
                                    (lambda ()
                                      (let* ((_forms118049_
                                              (map (lambda (_g118044118046_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _self118008_
                                                        _g118044118046_)))
                                                   _L118034_))
                                             (__tmp118601
                                              (let ()
                                                (declare (not safe))
                                                (cons '%#begin-syntax
                                                      _forms118049_))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp118601
                                         _stx118009_))))
                                   (__tmp118598
                                    (let ((__tmp118599
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp118599 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp118600
                                gx#current-expander-phi
                                __tmp118598)))
                           _tl118014118031_)))
                      (let ()
                        (declare (not safe))
                        (_g118011118021_ _g118012118024_))))))
          (declare (not safe))
          (_g118010118051_ _stx118009_))))
    (define gxc#xform-module%
      (lambda (_self117945_ _stx117946_)
        (let* ((_g117948117962_
                (lambda (_g117949117959_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117949117959_))))
               (_g117947118005_
                (lambda (_g117949117965_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117949117965_))
                      (let ((_e117954117967_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117949117965_))))
                        (let ((_hd117953117970_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117954117967_)))
                              (_tl117952117972_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117954117967_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117952117972_))
                              (let ((_e117957117975_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117952117972_))))
                                (let ((_hd117956117978_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117957117975_)))
                                      (_tl117955117980_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117957117975_))))
                                  ((lambda (_L117983_ _L117984_)
                                     (let* ((_ctx117997_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L117984_)))
                                            (_code117999_
                                             (##structure-ref
                                              _ctx117997_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_code118002_
                                             (let ((__tmp118602
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _self117945_
                                                         _code117999_)))))
                                               (declare (not safe))
                                               (call-with-parameters
                                                __tmp118602
                                                gx#current-expander-context
                                                _ctx117997_))))
                                       (##structure-set!
                                        _ctx117997_
                                        _code118002_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp118603
                                              (let ((__tmp118604
                                                     (let ((__tmp118605
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _code118002_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L117984_ __tmp118605))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#module __tmp118604))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp118603
                                          _stx117946_))))
                                   _tl117955117980_
                                   _hd117956117978_)))
                              (let ()
                                (declare (not safe))
                                (_g117948117962_ _g117949117965_)))))
                      (let ()
                        (declare (not safe))
                        (_g117948117962_ _g117949117965_))))))
          (declare (not safe))
          (_g117947118005_ _stx117946_))))
    (define gxc#xform-define-values%
      (lambda (_self117875_ _stx117876_)
        (let* ((_g117878117895_
                (lambda (_g117879117892_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117879117892_))))
               (_g117877117942_
                (lambda (_g117879117898_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117879117898_))
                      (let ((_e117884117900_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117879117898_))))
                        (let ((_hd117883117903_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117884117900_)))
                              (_tl117882117905_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117884117900_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117882117905_))
                              (let ((_e117887117908_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117882117905_))))
                                (let ((_hd117886117911_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117887117908_)))
                                      (_tl117885117913_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117887117908_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl117885117913_))
                                      (let ((_e117890117916_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl117885117913_))))
                                        (let ((_hd117889117919_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e117890117916_)))
                                              (_tl117888117921_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e117890117916_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl117888117921_))
                                              ((lambda (_L117924_ _L117925_)
                                                 (let* ((_expr117940_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self117875_
                                                            _L117924_)))
                                                        (__tmp118606
                                                         (let ((__tmp118607
                                                                (let ((__tmp118608
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _expr117940_ '()))))
                          (declare (not safe))
                          (cons _L117925_ __tmp118608))))
                   (declare (not safe))
                   (cons '%#define-values __tmp118607))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp118606
                                                    _stx117876_)))
                                               _hd117889117919_
                                               _hd117886117911_)
                                              (let ()
                                                (declare (not safe))
                                                (_g117878117895_
                                                 _g117879117898_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g117878117895_ _g117879117898_)))))
                              (let ()
                                (declare (not safe))
                                (_g117878117895_ _g117879117898_)))))
                      (let ()
                        (declare (not safe))
                        (_g117878117895_ _g117879117898_))))))
          (declare (not safe))
          (_g117877117942_ _stx117876_))))
    (define gxc#xform-define-syntax%
      (lambda (_self117804_ _stx117805_)
        (let* ((_g117807117824_
                (lambda (_g117808117821_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117808117821_))))
               (_g117806117872_
                (lambda (_g117808117827_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117808117827_))
                      (let ((_e117813117829_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117808117827_))))
                        (let ((_hd117812117832_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117813117829_)))
                              (_tl117811117834_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117813117829_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117811117834_))
                              (let ((_e117816117837_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117811117834_))))
                                (let ((_hd117815117840_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117816117837_)))
                                      (_tl117814117842_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117816117837_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl117814117842_))
                                      (let ((_e117819117845_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl117814117842_))))
                                        (let ((_hd117818117848_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e117819117845_)))
                                              (_tl117817117850_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e117819117845_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl117817117850_))
                                              ((lambda (_L117853_ _L117854_)
                                                 (let ((__tmp118611
                                                        (lambda ()
                                                          (let* ((_expr117870_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__1 _self117804_ _L117853_)))
                         (__tmp118612
                          (let ((__tmp118613
                                 (let ((__tmp118614
                                        (let ()
                                          (declare (not safe))
                                          (cons _expr117870_ '()))))
                                   (declare (not safe))
                                   (cons _L117854_ __tmp118614))))
                            (declare (not safe))
                            (cons '%#define-syntax __tmp118613))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp118612 _stx117805_))))
               (__tmp118609
                (let ((__tmp118610 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp118610 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp118611
                                                    gx#current-expander-phi
                                                    __tmp118609)))
                                               _hd117818117848_
                                               _hd117815117840_)
                                              (let ()
                                                (declare (not safe))
                                                (_g117807117824_
                                                 _g117808117827_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g117807117824_ _g117808117827_)))))
                              (let ()
                                (declare (not safe))
                                (_g117807117824_ _g117808117827_)))))
                      (let ()
                        (declare (not safe))
                        (_g117807117824_ _g117808117827_))))))
          (declare (not safe))
          (_g117806117872_ _stx117805_))))
    (define gxc#xform-begin-annotation%
      (lambda (_self117734_ _stx117735_)
        (let* ((_g117737117754_
                (lambda (_g117738117751_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117738117751_))))
               (_g117736117801_
                (lambda (_g117738117757_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117738117757_))
                      (let ((_e117743117759_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117738117757_))))
                        (let ((_hd117742117762_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117743117759_)))
                              (_tl117741117764_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117743117759_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117741117764_))
                              (let ((_e117746117767_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117741117764_))))
                                (let ((_hd117745117770_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117746117767_)))
                                      (_tl117744117772_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117746117767_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl117744117772_))
                                      (let ((_e117749117775_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl117744117772_))))
                                        (let ((_hd117748117778_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e117749117775_)))
                                              (_tl117747117780_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e117749117775_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl117747117780_))
                                              ((lambda (_L117783_ _L117784_)
                                                 (let* ((_expr117799_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self117734_
                                                            _L117783_)))
                                                        (__tmp118615
                                                         (let ((__tmp118616
                                                                (let ((__tmp118617
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _expr117799_ '()))))
                          (declare (not safe))
                          (cons _L117784_ __tmp118617))))
                   (declare (not safe))
                   (cons '%#begin-annotation __tmp118616))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp118615
                                                    _stx117735_)))
                                               _hd117748117778_
                                               _hd117745117770_)
                                              (let ()
                                                (declare (not safe))
                                                (_g117737117754_
                                                 _g117738117757_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g117737117754_ _g117738117757_)))))
                              (let ()
                                (declare (not safe))
                                (_g117737117754_ _g117738117757_)))))
                      (let ()
                        (declare (not safe))
                        (_g117737117754_ _g117738117757_))))))
          (declare (not safe))
          (_g117736117801_ _stx117735_))))
    (define gxc#xform-lambda%
      (lambda (_self117673_ _stx117674_)
        (let* ((_g117676117690_
                (lambda (_g117677117687_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117677117687_))))
               (_g117675117731_
                (lambda (_g117677117693_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117677117693_))
                      (let ((_e117682117695_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117677117693_))))
                        (let ((_hd117681117698_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117682117695_)))
                              (_tl117680117700_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117682117695_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117680117700_))
                              (let ((_e117685117703_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117680117700_))))
                                (let ((_hd117684117706_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117685117703_)))
                                      (_tl117683117708_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117685117703_))))
                                  ((lambda (_L117711_ _L117712_)
                                     (let* ((_body117729_
                                             (map (lambda (_g117724117726_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _self117673_
                                                       _g117724117726_)))
                                                  _L117711_))
                                            (__tmp118618
                                             (let ((__tmp118619
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L117712_
                                                            _body117729_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp118619))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp118618
                                        _stx117674_)))
                                   _tl117683117708_
                                   _hd117684117706_)))
                              (let ()
                                (declare (not safe))
                                (_g117676117690_ _g117677117693_)))))
                      (let ()
                        (declare (not safe))
                        (_g117676117690_ _g117677117693_))))))
          (declare (not safe))
          (_g117675117731_ _stx117674_))))
    (define gxc#xform-case-lambda%
      (lambda (_self117582_ _stx117583_)
        (letrec ((_clause-e117585_
                  (lambda (_clause117626_)
                    (let* ((_g117628117639_
                            (lambda (_g117629117636_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g117629117636_))))
                           (_g117627117670_
                            (lambda (_g117629117642_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g117629117642_))
                                  (let ((_e117634117644_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g117629117642_))))
                                    (let ((_hd117633117647_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e117634117644_)))
                                          (_tl117632117649_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e117634117644_))))
                                      ((lambda (_L117652_ _L117653_)
                                         (let ((_body117668_
                                                (map (lambda (_g117663117665_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _self117582_
                                                          _g117663117665_)))
                                                     _L117652_)))
                                           (declare (not safe))
                                           (cons _L117653_ _body117668_)))
                                       _tl117632117649_
                                       _hd117633117647_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g117628117639_ _g117629117642_))))))
                      (declare (not safe))
                      (_g117627117670_ _clause117626_)))))
          (let* ((_g117587117597_
                  (lambda (_g117588117594_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g117588117594_))))
                 (_g117586117623_
                  (lambda (_g117588117600_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g117588117600_))
                        (let ((_e117592117602_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g117588117600_))))
                          (let ((_hd117591117605_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e117592117602_)))
                                (_tl117590117607_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e117592117602_))))
                            ((lambda (_L117610_)
                               (let* ((_clauses117621_
                                       (map _clause-e117585_ _L117610_))
                                      (__tmp118620
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses117621_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp118620
                                  _stx117583_)))
                             _tl117590117607_)))
                        (let ()
                          (declare (not safe))
                          (_g117587117597_ _g117588117600_))))))
            (declare (not safe))
            (_g117586117623_ _stx117583_)))))
    (define gxc#xform-let-values%
      (lambda (_self117368_ _stx117369_)
        (let* ((_g117371117404_
                (lambda (_g117372117401_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117372117401_))))
               (_g117370117579_
                (lambda (_g117372117407_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117372117407_))
                      (let ((_e117379117409_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117372117407_))))
                        (let ((_hd117378117412_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117379117409_)))
                              (_tl117377117414_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117379117409_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117377117414_))
                              (let ((_e117382117417_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117377117414_))))
                                (let ((_hd117381117420_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117382117417_)))
                                      (_tl117380117422_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117382117417_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd117381117420_))
                                      (let ((_g118621_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd117381117420_
                                                '0))))
                                        (begin
                                          (let ((_g118622_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g118621_)
                                                       (##vector-length
                                                        _g118621_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g118622_ 2)))
                                                (error "Context expects 2 values"
                                                       _g118622_)))
                                          (let ((_target117383117425_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g118621_ 0)))
                                                (_tl117385117427_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g118621_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl117385117427_))
                                                (letrec ((_loop117386117430_
                                                          (lambda (_hd117384117433_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr117390117435_
                           _hd117391117437_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd117384117433_))
                        (let ((_e117387117440_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd117384117433_))))
                          (let ((_lp-hd117388117443_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e117387117440_)))
                                (_lp-tl117389117445_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e117387117440_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd117388117443_))
                                (let ((_e117396117448_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd117388117443_))))
                                  (let ((_hd117395117451_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e117396117448_)))
                                        (_tl117394117453_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e117396117448_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl117394117453_))
                                        (let ((_e117399117456_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl117394117453_))))
                                          (let ((_hd117398117459_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e117399117456_)))
                                                (_tl117397117461_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e117399117456_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl117397117461_))
                                                (let ((__tmp118635
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd117398117459_
                                                               _expr117390117435_)))
                                                      (__tmp118634
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd117395117451_
                                                               _hd117391117437_))))
                                                  (declare (not safe))
                                                  (_loop117386117430_
                                                   _lp-tl117389117445_
                                                   __tmp118635
                                                   __tmp118634))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g117371117404_
                                                   _g117372117407_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g117371117404_ _g117372117407_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g117371117404_ _g117372117407_)))))
                        (let ((_expr117392117464_ (reverse _expr117390117435_))
                              (_hd117393117466_ (reverse _hd117391117437_)))
                          ((lambda (_L117469_ _L117470_ _L117471_ _L117472_)
                             (let* ((_g117491117507_
                                     (lambda (_g117492117504_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g117492117504_))))
                                    (_g117490117565_
                                     (lambda (_g117492117510_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _g117492117510_))
                                           (let ((_g118623_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _g117492117510_
                                                     '0))))
                                             (begin
                                               (let ((_g118624_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g118623_)
                                                            (##vector-length
                                                             _g118623_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g118624_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g118624_)))
                                               (let ((_target117494117512_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g118623_
                                                         0)))
                                                     (_tl117496117514_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g118623_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl117496117514_))
                                                     (letrec ((_loop117497117517_
                                                               (lambda (_hd117495117520_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr117501117522_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _hd117495117520_))
                             (let ((_e117498117525_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _hd117495117520_))))
                               (let ((_lp-hd117499117528_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e117498117525_)))
                                     (_lp-tl117500117530_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e117498117525_))))
                                 (let ((__tmp118631
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd117499117528_
                                                _expr117501117522_))))
                                   (declare (not safe))
                                   (_loop117497117517_
                                    _lp-tl117500117530_
                                    __tmp118631))))
                             (let ((_expr117502117533_
                                    (reverse _expr117501117522_)))
                               ((lambda (_L117536_)
                                  (let ()
                                    (let* ((_body117553_
                                            (map (lambda (_g117548117550_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self117368_
                                                      _g117548117550_)))
                                                 _L117469_))
                                           (__tmp118625
                                            (let ((__tmp118626
                                                   (let ((__tmp118627
                                                          (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _L117536_
                                                               _L117471_))
                                                            (let ((__tmp118628
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g117554117558_
                                    _g117555117560_
                                    _g117556117562_)
                             (let ((__tmp118629
                                    (let ((__tmp118630
                                           (let ()
                                             (declare (not safe))
                                             (cons _g117554117558_ '()))))
                                      (declare (not safe))
                                      (cons _g117555117560_ __tmp118630))))
                               (declare (not safe))
                               (cons __tmp118629 _g117556117562_)))))
                      (declare (not safe))
                      (foldr2 __tmp118628 '() _L117536_ _L117471_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp118627
                                                           _body117553_))))
                                              (declare (not safe))
                                              (cons _L117472_ __tmp118626))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp118625
                                       _stx117369_))))
                                _expr117502117533_))))))
               (let ()
                 (declare (not safe))
                 (_loop117497117517_ _target117494117512_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g117491117507_
                                                        _g117492117510_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_g117491117507_
                                              _g117492117510_)))))
                                    (__tmp118632
                                     (map (lambda (_g117567117569_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self117368_
                                               _g117567117569_)))
                                          (let ((__tmp118633
                                                 (lambda (_g117571117574_
                                                          _g117572117576_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g117571117574_
                                                           _g117572117576_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp118633
                                                    '()
                                                    _L117470_)))))
                               (declare (not safe))
                               (_g117490117565_ __tmp118632)))
                           _tl117380117422_
                           _expr117392117464_
                           _hd117393117466_
                           _hd117378117412_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop117386117430_
                                                     _target117383117425_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g117371117404_
                                                   _g117372117407_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g117371117404_ _g117372117407_)))))
                              (let ()
                                (declare (not safe))
                                (_g117371117404_ _g117372117407_)))))
                      (let ()
                        (declare (not safe))
                        (_g117371117404_ _g117372117407_))))))
          (declare (not safe))
          (_g117370117579_ _stx117369_))))
    (define gxc#xform-operands
      (lambda (_self117320_ _stx117321_)
        (let* ((_g117323117334_
                (lambda (_g117324117331_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117324117331_))))
               (_g117322117365_
                (lambda (_g117324117337_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117324117337_))
                      (let ((_e117329117339_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117324117337_))))
                        (let ((_hd117328117342_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117329117339_)))
                              (_tl117327117344_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117329117339_))))
                          ((lambda (_L117347_ _L117348_)
                             (let* ((_rands117363_
                                     (map (lambda (_g117358117360_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self117320_
                                               _g117358117360_)))
                                          _L117347_))
                                    (__tmp118636
                                     (let ()
                                       (declare (not safe))
                                       (cons _L117348_ _rands117363_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp118636
                                _stx117321_)))
                           _tl117327117344_
                           _hd117328117342_)))
                      (let ()
                        (declare (not safe))
                        (_g117323117334_ _g117324117337_))))))
          (declare (not safe))
          (_g117322117365_ _stx117321_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_self117250_ _stx117251_)
        (let* ((_g117253117270_
                (lambda (_g117254117267_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117254117267_))))
               (_g117252117317_
                (lambda (_g117254117273_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117254117273_))
                      (let ((_e117259117275_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117254117273_))))
                        (let ((_hd117258117278_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117259117275_)))
                              (_tl117257117280_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117259117275_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117257117280_))
                              (let ((_e117262117283_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117257117280_))))
                                (let ((_hd117261117286_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117262117283_)))
                                      (_tl117260117288_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117262117283_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl117260117288_))
                                      (let ((_e117265117291_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl117260117288_))))
                                        (let ((_hd117264117294_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e117265117291_)))
                                              (_tl117263117296_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e117265117291_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl117263117296_))
                                              ((lambda (_L117299_ _L117300_)
                                                 (let* ((_expr117315_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self117250_
                                                            _L117299_)))
                                                        (__tmp118637
                                                         (let ((__tmp118638
                                                                (let ((__tmp118639
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _expr117315_ '()))))
                          (declare (not safe))
                          (cons _L117300_ __tmp118639))))
                   (declare (not safe))
                   (cons '%#set! __tmp118638))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp118637
                                                    _stx117251_)))
                                               _hd117264117294_
                                               _hd117261117286_)
                                              (let ()
                                                (declare (not safe))
                                                (_g117253117270_
                                                 _g117254117273_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g117253117270_ _g117254117273_)))))
                              (let ()
                                (declare (not safe))
                                (_g117253117270_ _g117254117273_)))))
                      (let ()
                        (declare (not safe))
                        (_g117253117270_ _g117254117273_))))))
          (declare (not safe))
          (_g117252117317_ _stx117251_))))
    (define gxc#collect-mutators-setq%
      (lambda (_self117180_ _stx117181_)
        (let* ((_g117183117200_
                (lambda (_g117184117197_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117184117197_))))
               (_g117182117247_
                (lambda (_g117184117203_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117184117203_))
                      (let ((_e117189117205_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117184117203_))))
                        (let ((_hd117188117208_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117189117205_)))
                              (_tl117187117210_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117189117205_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117187117210_))
                              (let ((_e117192117213_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117187117210_))))
                                (let ((_hd117191117216_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117192117213_)))
                                      (_tl117190117218_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117192117213_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl117190117218_))
                                      (let ((_e117195117221_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl117190117218_))))
                                        (let ((_hd117194117224_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e117195117221_)))
                                              (_tl117193117226_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e117195117221_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl117193117226_))
                                              ((lambda (_L117229_ _L117230_)
                                                 (let ((_sym117245_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L117230_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _sym117245_))
                                                   (let ((__tmp118640
                                                          (gxc#current-compile-mutators)))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp118640
                                                      _sym117245_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self117180_
                                                      _L117229_))))
                                               _hd117194117224_
                                               _hd117191117216_)
                                              (let ()
                                                (declare (not safe))
                                                (_g117183117200_
                                                 _g117184117203_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g117183117200_ _g117184117203_)))))
                              (let ()
                                (declare (not safe))
                                (_g117183117200_ _g117184117203_)))))
                      (let ()
                        (declare (not safe))
                        (_g117183117200_ _g117184117203_))))))
          (declare (not safe))
          (_g117182117247_ _stx117181_))))
    (define gxc#collect-methods-call%
      (lambda (_self116733_ _stx116734_)
        (let* ((___stx118289118290_ _stx116734_)
               (_g116738116840_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx118289118290_)))))
          (let ((___kont118291118292_
                 (lambda (_L117130_ _L117131_ _L117132_ _L117133_ _L117134_)
                   (let ((__tmp118641
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L117131_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp118641))))
                (___kont118293118294_
                 (lambda (_L116956_ _L116957_ _L116958_ _L116959_)
                   (let ((__tmp118642
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L116956_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp118642))))
                (___kont118295118296_ (lambda () '#!void)))
            (let ((___match118424118425_
                   (lambda (_e116747117002_
                            _hd116746117005_
                            _tl116745117007_
                            _e116750117010_
                            _hd116749117013_
                            _tl116748117015_
                            _e116753117018_
                            _hd116752117021_
                            _tl116751117023_
                            _e116756117026_
                            _hd116755117029_
                            _tl116754117031_
                            _e116759117034_
                            _hd116758117037_
                            _tl116757117039_
                            _e116762117042_
                            _hd116761117045_
                            _tl116760117047_
                            _e116765117050_
                            _hd116764117053_
                            _tl116763117055_
                            _e116768117058_
                            _hd116767117061_
                            _tl116766117063_
                            _e116771117066_
                            _hd116770117069_
                            _tl116769117071_
                            _e116774117074_
                            _hd116773117077_
                            _tl116772117079_
                            _e116777117082_
                            _hd116776117085_
                            _tl116775117087_
                            _e116780117090_
                            _hd116779117093_
                            _tl116778117095_
                            _e116783117098_
                            _hd116782117101_
                            _tl116781117103_
                            _e116786117106_
                            _hd116785117109_
                            _tl116784117111_
                            _e116789117114_
                            _hd116788117117_
                            _tl116787117119_
                            _e116792117122_
                            _hd116791117125_
                            _tl116790117127_)
                     (let ((_L117130_ _hd116791117125_)
                           (_L117131_ _hd116782117101_)
                           (_L117132_ _hd116773117077_)
                           (_L117133_ _hd116764117053_)
                           (_L117134_ _hd116755117029_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L117134_
                              'bind-method!))
                           (___kont118291118292_
                            _L117130_
                            _L117131_
                            _L117132_
                            _L117133_
                            _L117134_)
                           (___kont118295118296_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx118289118290_))
                  (let ((_e116747117002_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx118289118290_))))
                    (let ((_tl116745117007_
                           (let ()
                             (declare (not safe))
                             (##cdr _e116747117002_)))
                          (_hd116746117005_
                           (let ()
                             (declare (not safe))
                             (##car _e116747117002_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl116745117007_))
                          (let ((_e116750117010_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl116745117007_))))
                            (let ((_tl116748117015_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e116750117010_)))
                                  (_hd116749117013_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e116750117010_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd116749117013_))
                                  (let ((_e116753117018_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd116749117013_))))
                                    (let ((_tl116751117023_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e116753117018_)))
                                          (_hd116752117021_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e116753117018_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd116752117021_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd116752117021_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl116751117023_))
                                                  (let ((_e116756117026_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl116751117023_))))
                                                    (let ((_tl116754117031_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e116756117026_)))
                                                          (_hd116755117029_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e116756117026_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl116754117031_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl116748117015_))
                      (let ((_e116759117034_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl116748117015_))))
                        (let ((_tl116757117039_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116759117034_)))
                              (_hd116758117037_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116759117034_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd116758117037_))
                              (let ((_e116762117042_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd116758117037_))))
                                (let ((_tl116760117047_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116762117042_)))
                                      (_hd116761117045_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116762117042_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd116761117045_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd116761117045_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl116760117047_))
                                              (let ((_e116765117050_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl116760117047_))))
                                                (let ((_tl116763117055_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e116765117050_)))
                                                      (_hd116764117053_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e116765117050_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl116763117055_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl116757117039_))
                                                          (let ((_e116768117058_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl116757117039_))))
                    (let ((_tl116766117063_
                           (let ()
                             (declare (not safe))
                             (##cdr _e116768117058_)))
                          (_hd116767117061_
                           (let ()
                             (declare (not safe))
                             (##car _e116768117058_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd116767117061_))
                          (let ((_e116771117066_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd116767117061_))))
                            (let ((_tl116769117071_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e116771117066_)))
                                  (_hd116770117069_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e116771117066_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd116770117069_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd116770117069_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl116769117071_))
                                          (let ((_e116774117074_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl116769117071_))))
                                            (let ((_tl116772117079_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e116774117074_)))
                                                  (_hd116773117077_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e116774117074_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl116772117079_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl116766117063_))
                                                      (let ((_e116777117082_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl116766117063_))))
                (let ((_tl116775117087_
                       (let () (declare (not safe)) (##cdr _e116777117082_)))
                      (_hd116776117085_
                       (let () (declare (not safe)) (##car _e116777117082_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd116776117085_))
                      (let ((_e116780117090_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd116776117085_))))
                        (let ((_tl116778117095_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116780117090_)))
                              (_hd116779117093_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116780117090_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd116779117093_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd116779117093_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116778117095_))
                                      (let ((_e116783117098_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116778117095_))))
                                        (let ((_tl116781117103_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116783117098_)))
                                              (_hd116782117101_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116783117098_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116781117103_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl116775117087_))
                                                  (let ((_e116786117106_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl116775117087_))))
                                                    (let ((_tl116784117111_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e116786117106_)))
                                                          (_hd116785117109_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e116786117106_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd116785117109_))
                                                          (let ((_e116789117114_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd116785117109_))))
                    (let ((_tl116787117119_
                           (let ()
                             (declare (not safe))
                             (##cdr _e116789117114_)))
                          (_hd116788117117_
                           (let ()
                             (declare (not safe))
                             (##car _e116789117114_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd116788117117_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd116788117117_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl116787117119_))
                                  (let ((_e116792117122_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl116787117119_))))
                                    (let ((_tl116790117127_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e116792117122_)))
                                          (_hd116791117125_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e116792117122_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl116790117127_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116784117111_))
                                              (___match118424118425_
                                               _e116747117002_
                                               _hd116746117005_
                                               _tl116745117007_
                                               _e116750117010_
                                               _hd116749117013_
                                               _tl116748117015_
                                               _e116753117018_
                                               _hd116752117021_
                                               _tl116751117023_
                                               _e116756117026_
                                               _hd116755117029_
                                               _tl116754117031_
                                               _e116759117034_
                                               _hd116758117037_
                                               _tl116757117039_
                                               _e116762117042_
                                               _hd116761117045_
                                               _tl116760117047_
                                               _e116765117050_
                                               _hd116764117053_
                                               _tl116763117055_
                                               _e116768117058_
                                               _hd116767117061_
                                               _tl116766117063_
                                               _e116771117066_
                                               _hd116770117069_
                                               _tl116769117071_
                                               _e116774117074_
                                               _hd116773117077_
                                               _tl116772117079_
                                               _e116777117082_
                                               _hd116776117085_
                                               _tl116775117087_
                                               _e116780117090_
                                               _hd116779117093_
                                               _tl116778117095_
                                               _e116783117098_
                                               _hd116782117101_
                                               _tl116781117103_
                                               _e116786117106_
                                               _hd116785117109_
                                               _tl116784117111_
                                               _e116789117114_
                                               _hd116788117117_
                                               _tl116787117119_
                                               _e116792117122_
                                               _hd116791117125_
                                               _tl116790117127_)
                                              (___kont118295118296_))
                                          (___kont118295118296_))))
                                  (___kont118295118296_))
                              (___kont118295118296_))
                          (___kont118295118296_))))
                  (___kont118295118296_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl116775117087_))
                                                      (if (let ((__tmp118643
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp118643 'bind-method!))
                  (let ((_L116956_ _hd116782117101_)
                        (_L116957_ _hd116773117077_)
                        (_L116958_ _hd116764117053_)
                        (_L116959_ _hd116755117029_))
                    (___kont118293118294_
                     _L116956_
                     _L116957_
                     _L116958_
                     _L116959_))
                  (___kont118295118296_))
              (___kont118295118296_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont118295118296_))))
                                      (___kont118295118296_))
                                  (___kont118295118296_))
                              (___kont118295118296_))))
                      (___kont118295118296_))))
              (___kont118295118296_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont118295118296_))))
                                          (___kont118295118296_))
                                      (___kont118295118296_))
                                  (___kont118295118296_))))
                          (___kont118295118296_))))
                  (___kont118295118296_))
              (___kont118295118296_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont118295118296_))
                                          (___kont118295118296_))
                                      (___kont118295118296_))))
                              (___kont118295118296_))))
                      (___kont118295118296_))
                  (___kont118295118296_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont118295118296_))
                                              (___kont118295118296_))
                                          (___kont118295118296_))))
                                  (___kont118295118296_))))
                          (___kont118295118296_))))
                  (___kont118295118296_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_self116681_ _stx116682_)
        (let* ((_g116684116697_
                (lambda (_g116685116694_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116685116694_))))
               (_g116683116730_
                (lambda (_g116685116700_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116685116700_))
                      (let ((_e116689116702_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116685116700_))))
                        (let ((_hd116688116705_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116689116702_)))
                              (_tl116687116707_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116689116702_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116687116707_))
                              (let ((_e116692116710_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116687116707_))))
                                (let ((_hd116691116713_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116692116710_)))
                                      (_tl116690116715_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116692116710_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl116690116715_))
                                      ((lambda (_L116718_)
                                         (if (let ((__tmp118647
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _self116681_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L116718_
                                                __tmp118647))
                                             (let ((__tmp118644
                                                    (let ((__tmp118645
                                                           (let ((__tmp118646
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self116681_ 'new-id))))
                     (declare (not safe))
                     (cons __tmp118646 '()))))
              (declare (not safe))
              (cons '%#ref __tmp118645))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp118644
                                                _stx116682_))
                                             _stx116682_))
                                       _hd116691116713_)
                                      (let ()
                                        (declare (not safe))
                                        (_g116684116697_ _g116685116700_)))))
                              (let ()
                                (declare (not safe))
                                (_g116684116697_ _g116685116700_)))))
                      (let ()
                        (declare (not safe))
                        (_g116684116697_ _g116685116700_))))))
          (declare (not safe))
          (_g116683116730_ _stx116682_))))
    (define gxc#expression-subst*-ref%
      (lambda (_self116622_ _stx116623_)
        (let* ((_g116625116638_
                (lambda (_g116626116635_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116626116635_))))
               (_g116624116678_
                (lambda (_g116626116641_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116626116641_))
                      (let ((_e116630116643_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116626116641_))))
                        (let ((_hd116629116646_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116630116643_)))
                              (_tl116628116648_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116630116643_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116628116648_))
                              (let ((_e116633116651_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116628116648_))))
                                (let ((_hd116632116654_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116633116651_)))
                                      (_tl116631116656_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116633116651_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl116631116656_))
                                      ((lambda (_L116659_)
                                         (let ((_$e116673_
                                                (let ((__tmp118649
                                                       (lambda (_sub116671_)
                                                         (let ((__tmp118650
                                                                (car _sub116671_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _L116659_
                                                            __tmp118650))))
                                                      (__tmp118648
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _self116622_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (find __tmp118649
                                                        __tmp118648))))
                                           (if _$e116673_
                                               ((lambda (_sub116676_)
                                                  (let ((__tmp118651
                                                         (let ((__tmp118652
                                                                (let ((__tmp118653
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _sub116676_)))
                          (declare (not safe))
                          (cons __tmp118653 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp118652))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp118651
                                                     _stx116623_)))
                                                _$e116673_)
                                               _stx116623_)))
                                       _hd116632116654_)
                                      (let ()
                                        (declare (not safe))
                                        (_g116625116638_ _g116626116641_)))))
                              (let ()
                                (declare (not safe))
                                (_g116625116638_ _g116626116641_)))))
                      (let ()
                        (declare (not safe))
                        (_g116625116638_ _g116626116641_))))))
          (declare (not safe))
          (_g116624116678_ _stx116623_))))
    (define gxc#expression-subst-setq%
      (lambda (_self116551_ _stx116552_)
        (let* ((_g116554116571_
                (lambda (_g116555116568_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116555116568_))))
               (_g116553116619_
                (lambda (_g116555116574_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116555116574_))
                      (let ((_e116560116576_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116555116574_))))
                        (let ((_hd116559116579_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116560116576_)))
                              (_tl116558116581_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116560116576_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116558116581_))
                              (let ((_e116563116584_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116558116581_))))
                                (let ((_hd116562116587_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116563116584_)))
                                      (_tl116561116589_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116563116584_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116561116589_))
                                      (let ((_e116566116592_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116561116589_))))
                                        (let ((_hd116565116595_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116566116592_)))
                                              (_tl116564116597_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116566116592_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116564116597_))
                                              ((lambda (_L116600_ _L116601_)
                                                 (let ((_new-expr116616_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _self116551_
                                                           _L116600_)))
                                                       (_new-xid116617_
                                                        (if (let ((__tmp118654
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _self116551_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _L116601_ __tmp118654))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _self116551_ 'new-id))
                    _L116601_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp118655
                                                          (let ((__tmp118656
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp118657
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr116616_ '()))))
                           (declare (not safe))
                           (cons _new-xid116617_ __tmp118657))))
                    (declare (not safe))
                    (cons '%#set! __tmp118656))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp118655
                                                      _stx116552_))))
                                               _hd116565116595_
                                               _hd116562116587_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116554116571_
                                                 _g116555116574_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116554116571_ _g116555116574_)))))
                              (let ()
                                (declare (not safe))
                                (_g116554116571_ _g116555116574_)))))
                      (let ()
                        (declare (not safe))
                        (_g116554116571_ _g116555116574_))))))
          (declare (not safe))
          (_g116553116619_ _stx116552_))))
    (define gxc#expression-subst*-setq%
      (lambda (_self116475_ _stx116476_)
        (let* ((_g116478116495_
                (lambda (_g116479116492_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116479116492_))))
               (_g116477116548_
                (lambda (_g116479116498_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116479116498_))
                      (let ((_e116484116500_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116479116498_))))
                        (let ((_hd116483116503_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116484116500_)))
                              (_tl116482116505_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116484116500_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116482116505_))
                              (let ((_e116487116508_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116482116505_))))
                                (let ((_hd116486116511_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116487116508_)))
                                      (_tl116485116513_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116487116508_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116485116513_))
                                      (let ((_e116490116516_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116485116513_))))
                                        (let ((_hd116489116519_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116490116516_)))
                                              (_tl116488116521_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116490116516_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116488116521_))
                                              ((lambda (_L116524_ _L116525_)
                                                 (let ((_new-expr116545_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _self116475_
                                                           _L116524_)))
                                                       (_new-xid116546_
                                                        (let ((_$e116542_
                                                               (let ((__tmp118659
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_sub116540_)
                                (let ((__tmp118660 (car _sub116540_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _L116525_
                                   __tmp118660))))
                             (__tmp118658
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _self116475_ 'subst))))
                         (declare (not safe))
                         (find __tmp118659 __tmp118658))))
                  (if _$e116542_ (cdr _$e116542_) _L116525_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp118661
                                                          (let ((__tmp118662
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp118663
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr116545_ '()))))
                           (declare (not safe))
                           (cons _new-xid116546_ __tmp118663))))
                    (declare (not safe))
                    (cons '%#set! __tmp118662))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp118661
                                                      _stx116476_))))
                                               _hd116489116519_
                                               _hd116486116511_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116478116495_
                                                 _g116479116498_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116478116495_ _g116479116498_)))))
                              (let ()
                                (declare (not safe))
                                (_g116478116495_ _g116479116498_)))))
                      (let ()
                        (declare (not safe))
                        (_g116478116495_ _g116479116498_))))))
          (declare (not safe))
          (_g116477116548_ _stx116476_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_self116421_ _stx116422_)
        (let* ((_g116424116437_
                (lambda (_g116425116434_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116425116434_))))
               (_g116423116472_
                (lambda (_g116425116440_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116425116440_))
                      (let ((_e116429116442_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116425116440_))))
                        (let ((_hd116428116445_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116429116442_)))
                              (_tl116427116447_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116429116442_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116427116447_))
                              (let ((_e116432116450_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116427116447_))))
                                (let ((_hd116431116453_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116432116450_)))
                                      (_tl116430116455_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116432116450_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl116430116455_))
                                      ((lambda (_L116458_)
                                         (let* ((_eid116470_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L116458_)))
                                                (__tmp118664
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _self116421_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp118664
                                            _eid116470_
                                            1+
                                            '0)))
                                       _hd116431116453_)
                                      (let ()
                                        (declare (not safe))
                                        (_g116424116437_ _g116425116440_)))))
                              (let ()
                                (declare (not safe))
                                (_g116424116437_ _g116425116440_)))))
                      (let ()
                        (declare (not safe))
                        (_g116424116437_ _g116425116440_))))))
          (declare (not safe))
          (_g116423116472_ _stx116422_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_self116351_ _stx116352_)
        (let* ((_g116354116371_
                (lambda (_g116355116368_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116355116368_))))
               (_g116353116418_
                (lambda (_g116355116374_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116355116374_))
                      (let ((_e116360116376_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116355116374_))))
                        (let ((_hd116359116379_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116360116376_)))
                              (_tl116358116381_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116360116376_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116358116381_))
                              (let ((_e116363116384_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116358116381_))))
                                (let ((_hd116362116387_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116363116384_)))
                                      (_tl116361116389_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116363116384_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116361116389_))
                                      (let ((_e116366116392_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116361116389_))))
                                        (let ((_hd116365116395_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116366116392_)))
                                              (_tl116364116397_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116366116392_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116364116397_))
                                              ((lambda (_L116400_ _L116401_)
                                                 (let ((_eid116416_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L116401_))))
                                                   (let ((__tmp118665
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self116351_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp118665
                                                      _eid116416_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self116351_
                                                      _L116400_))))
                                               _hd116365116395_
                                               _hd116362116387_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116354116371_
                                                 _g116355116374_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116354116371_ _g116355116374_)))))
                              (let ()
                                (declare (not safe))
                                (_g116354116371_ _g116355116374_)))))
                      (let ()
                        (declare (not safe))
                        (_g116354116371_ _g116355116374_))))))
          (declare (not safe))
          (_g116353116418_ _stx116352_))))
    (define gxc#find-body%
      (lambda (_self116264_ _stx116265_)
        (let* ((_g116267116286_
                (lambda (_g116268116283_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116268116283_))))
               (_g116266116348_
                (lambda (_g116268116289_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116268116289_))
                      (let ((_e116272116291_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116268116289_))))
                        (let ((_hd116271116294_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116272116291_)))
                              (_tl116270116296_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116272116291_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl116270116296_))
                              (let ((_g118666_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl116270116296_
                                        '0))))
                                (begin
                                  (let ((_g118667_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g118666_)
                                               (##vector-length _g118666_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g118667_ 2)))
                                        (error "Context expects 2 values"
                                               _g118667_)))
                                  (let ((_target116273116299_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g118666_ 0)))
                                        (_tl116275116301_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g118666_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl116275116301_))
                                        (letrec ((_loop116276116304_
                                                  (lambda (_hd116274116307_
                                                           _expr116280116309_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd116274116307_))
                                                        (let ((_e116277116312_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd116274116307_))))
                  (let ((_lp-hd116278116315_
                         (let () (declare (not safe)) (##car _e116277116312_)))
                        (_lp-tl116279116317_
                         (let ()
                           (declare (not safe))
                           (##cdr _e116277116312_))))
                    (let ((__tmp118671
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd116278116315_ _expr116280116309_))))
                      (declare (not safe))
                      (_loop116276116304_ _lp-tl116279116317_ __tmp118671))))
                (let ((_expr116281116320_ (reverse _expr116280116309_)))
                  ((lambda (_L116323_)
                     (let ((__tmp118670
                            (lambda (_g116336116338_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _self116264_
                                 _g116336116338_))))
                           (__tmp118668
                            (let ((__tmp118669
                                   (lambda (_g116340116343_ _g116341116345_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g116340116343_
                                             _g116341116345_)))))
                              (declare (not safe))
                              (foldr1 __tmp118669 '() _L116323_))))
                       (declare (not safe))
                       (ormap1 __tmp118670 __tmp118668)))
                   _expr116281116320_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop116276116304_
                                             _target116273116299_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g116267116286_
                                           _g116268116289_))))))
                              (let ()
                                (declare (not safe))
                                (_g116267116286_ _g116268116289_)))))
                      (let ()
                        (declare (not safe))
                        (_g116267116286_ _g116268116289_))))))
          (declare (not safe))
          (_g116266116348_ _stx116265_))))
    (define gxc#find-begin-annotation%
      (lambda (_self116196_ _stx116197_)
        (let* ((_g116199116216_
                (lambda (_g116200116213_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116200116213_))))
               (_g116198116261_
                (lambda (_g116200116219_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116200116219_))
                      (let ((_e116205116221_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116200116219_))))
                        (let ((_hd116204116224_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116205116221_)))
                              (_tl116203116226_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116205116221_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116203116226_))
                              (let ((_e116208116229_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116203116226_))))
                                (let ((_hd116207116232_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116208116229_)))
                                      (_tl116206116234_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116208116229_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116206116234_))
                                      (let ((_e116211116237_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116206116234_))))
                                        (let ((_hd116210116240_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116211116237_)))
                                              (_tl116209116242_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116211116237_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116209116242_))
                                              ((lambda (_L116245_ _L116246_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self116196_
                                                    _L116245_)))
                                               _hd116210116240_
                                               _hd116207116232_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116199116216_
                                                 _g116200116219_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116199116216_ _g116200116219_)))))
                              (let ()
                                (declare (not safe))
                                (_g116199116216_ _g116200116219_)))))
                      (let ()
                        (declare (not safe))
                        (_g116199116216_ _g116200116219_))))))
          (declare (not safe))
          (_g116198116261_ _stx116197_))))
    (define gxc#find-lambda%
      (lambda (_self116128_ _stx116129_)
        (let* ((_g116131116148_
                (lambda (_g116132116145_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116132116145_))))
               (_g116130116193_
                (lambda (_g116132116151_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116132116151_))
                      (let ((_e116137116153_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116132116151_))))
                        (let ((_hd116136116156_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116137116153_)))
                              (_tl116135116158_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116137116153_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116135116158_))
                              (let ((_e116140116161_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116135116158_))))
                                (let ((_hd116139116164_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116140116161_)))
                                      (_tl116138116166_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116140116161_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116138116166_))
                                      (let ((_e116143116169_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116138116166_))))
                                        (let ((_hd116142116172_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116143116169_)))
                                              (_tl116141116174_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116143116169_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116141116174_))
                                              ((lambda (_L116177_ _L116178_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self116128_
                                                    _L116177_)))
                                               _hd116142116172_
                                               _hd116139116164_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116131116148_
                                                 _g116132116151_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116131116148_ _g116132116151_)))))
                              (let ()
                                (declare (not safe))
                                (_g116131116148_ _g116132116151_)))))
                      (let ()
                        (declare (not safe))
                        (_g116131116148_ _g116132116151_))))))
          (declare (not safe))
          (_g116130116193_ _stx116129_))))
    (define gxc#find-case-lambda%
      (lambda (_self116010_ _stx116011_)
        (let* ((_g116013116041_
                (lambda (_g116014116038_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116014116038_))))
               (_g116012116125_
                (lambda (_g116014116044_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116014116044_))
                      (let ((_e116019116046_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116014116044_))))
                        (let ((_hd116018116049_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116019116046_)))
                              (_tl116017116051_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116019116046_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl116017116051_))
                              (let ((_g118672_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl116017116051_
                                        '0))))
                                (begin
                                  (let ((_g118673_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g118672_)
                                               (##vector-length _g118672_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g118673_ 2)))
                                        (error "Context expects 2 values"
                                               _g118673_)))
                                  (let ((_target116020116054_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g118672_ 0)))
                                        (_tl116022116056_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g118672_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl116022116056_))
                                        (letrec ((_loop116023116059_
                                                  (lambda (_hd116021116062_
                                                           _body116027116064_
                                                           _hd116028116066_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd116021116062_))
                                                        (let ((_e116024116069_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd116021116062_))))
                  (let ((_lp-hd116025116072_
                         (let () (declare (not safe)) (##car _e116024116069_)))
                        (_lp-tl116026116074_
                         (let ()
                           (declare (not safe))
                           (##cdr _e116024116069_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd116025116072_))
                        (let ((_e116033116077_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd116025116072_))))
                          (let ((_hd116032116080_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e116033116077_)))
                                (_tl116031116082_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e116033116077_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl116031116082_))
                                (let ((_e116036116085_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl116031116082_))))
                                  (let ((_hd116035116088_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e116036116085_)))
                                        (_tl116034116090_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e116036116085_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl116034116090_))
                                        (let ((__tmp118678
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd116035116088_
                                                       _body116027116064_)))
                                              (__tmp118677
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd116032116080_
                                                       _hd116028116066_))))
                                          (declare (not safe))
                                          (_loop116023116059_
                                           _lp-tl116026116074_
                                           __tmp118678
                                           __tmp118677))
                                        (let ()
                                          (declare (not safe))
                                          (_g116013116041_ _g116014116044_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g116013116041_ _g116014116044_)))))
                        (let ()
                          (declare (not safe))
                          (_g116013116041_ _g116014116044_)))))
                (let ((_body116029116093_ (reverse _body116027116064_))
                      (_hd116030116095_ (reverse _hd116028116066_)))
                  ((lambda (_L116098_ _L116099_)
                     (let ((__tmp118676
                            (lambda (_g116113116115_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _self116010_
                                 _g116113116115_))))
                           (__tmp118674
                            (let ((__tmp118675
                                   (lambda (_g116117116120_ _g116118116122_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g116117116120_
                                             _g116118116122_)))))
                              (declare (not safe))
                              (foldr1 __tmp118675 '() _L116098_))))
                       (declare (not safe))
                       (ormap1 __tmp118676 __tmp118674)))
                   _body116029116093_
                   _hd116030116095_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop116023116059_
                                             _target116020116054_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g116013116041_
                                           _g116014116044_))))))
                              (let ()
                                (declare (not safe))
                                (_g116013116041_ _g116014116044_)))))
                      (let ()
                        (declare (not safe))
                        (_g116013116041_ _g116014116044_))))))
          (declare (not safe))
          (_g116012116125_ _stx116011_))))
    (define gxc#find-let-values%
      (lambda (_self115860_ _stx115861_)
        (let* ((_g115863115898_
                (lambda (_g115864115895_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115864115895_))))
               (_g115862116007_
                (lambda (_g115864115901_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115864115901_))
                      (let ((_e115870115903_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115864115901_))))
                        (let ((_hd115869115906_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115870115903_)))
                              (_tl115868115908_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115870115903_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115868115908_))
                              (let ((_e115873115911_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115868115908_))))
                                (let ((_hd115872115914_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115873115911_)))
                                      (_tl115871115916_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115873115911_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd115872115914_))
                                      (let ((_g118679_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd115872115914_
                                                '0))))
                                        (begin
                                          (let ((_g118680_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g118679_)
                                                       (##vector-length
                                                        _g118679_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g118680_ 2)))
                                                (error "Context expects 2 values"
                                                       _g118680_)))
                                          (let ((_target115874115919_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g118679_ 0)))
                                                (_tl115876115921_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g118679_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl115876115921_))
                                                (letrec ((_loop115877115924_
                                                          (lambda (_hd115875115927_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr115881115929_
                           _bind115882115931_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd115875115927_))
                        (let ((_e115878115934_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd115875115927_))))
                          (let ((_lp-hd115879115937_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e115878115934_)))
                                (_lp-tl115880115939_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e115878115934_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd115879115937_))
                                (let ((_e115887115942_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd115879115937_))))
                                  (let ((_hd115886115945_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e115887115942_)))
                                        (_tl115885115947_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e115887115942_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl115885115947_))
                                        (let ((_e115890115950_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl115885115947_))))
                                          (let ((_hd115889115953_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e115890115950_)))
                                                (_tl115888115955_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e115890115950_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl115888115955_))
                                                (let ((__tmp118685
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd115889115953_
                                                               _expr115881115929_)))
                                                      (__tmp118684
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd115886115945_
                                                               _bind115882115931_))))
                                                  (declare (not safe))
                                                  (_loop115877115924_
                                                   _lp-tl115880115939_
                                                   __tmp118685
                                                   __tmp118684))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g115863115898_
                                                   _g115864115901_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g115863115898_ _g115864115901_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g115863115898_ _g115864115901_)))))
                        (let ((_expr115883115958_ (reverse _expr115881115929_))
                              (_bind115884115960_
                               (reverse _bind115882115931_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115871115916_))
                              (let ((_e115893115963_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115871115916_))))
                                (let ((_hd115892115966_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115893115963_)))
                                      (_tl115891115968_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115893115963_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl115891115968_))
                                      ((lambda (_L115971_ _L115972_ _L115973_)
                                         (let ((_$e116004_
                                                (let ((__tmp118683
                                                       (lambda (_g115992115994_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self115860_
                                                            _g115992115994_))))
                                                      (__tmp118681
                                                       (let ((__tmp118682
                                                              (lambda (_g115996115999_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g115997116001_)
                        (let ()
                          (declare (not safe))
                          (cons _g115996115999_ _g115997116001_)))))
                 (declare (not safe))
                 (foldr1 __tmp118682 '() _L115972_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap1 __tmp118683
                                                          __tmp118681))))
                                           (if _$e116004_
                                               _$e116004_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _self115860_
                                                  _L115971_)))))
                                       _hd115892115966_
                                       _expr115883115958_
                                       _bind115884115960_)
                                      (let ()
                                        (declare (not safe))
                                        (_g115863115898_ _g115864115901_)))))
                              (let ()
                                (declare (not safe))
                                (_g115863115898_ _g115864115901_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop115877115924_
                                                     _target115874115919_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g115863115898_
                                                   _g115864115901_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115863115898_ _g115864115901_)))))
                              (let ()
                                (declare (not safe))
                                (_g115863115898_ _g115864115901_)))))
                      (let ()
                        (declare (not safe))
                        (_g115863115898_ _g115864115901_))))))
          (declare (not safe))
          (_g115862116007_ _stx115861_))))
    (define gxc#find-setq%
      (lambda (_self115792_ _stx115793_)
        (let* ((_g115795115812_
                (lambda (_g115796115809_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115796115809_))))
               (_g115794115857_
                (lambda (_g115796115815_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115796115815_))
                      (let ((_e115801115817_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115796115815_))))
                        (let ((_hd115800115820_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115801115817_)))
                              (_tl115799115822_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115801115817_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115799115822_))
                              (let ((_e115804115825_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115799115822_))))
                                (let ((_hd115803115828_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115804115825_)))
                                      (_tl115802115830_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115804115825_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115802115830_))
                                      (let ((_e115807115833_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115802115830_))))
                                        (let ((_hd115806115836_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115807115833_)))
                                              (_tl115805115838_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115807115833_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115805115838_))
                                              ((lambda (_L115841_ _L115842_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self115792_
                                                    _L115841_)))
                                               _hd115806115836_
                                               _hd115803115828_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115795115812_
                                                 _g115796115815_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115795115812_ _g115796115815_)))))
                              (let ()
                                (declare (not safe))
                                (_g115795115812_ _g115796115815_)))))
                      (let ()
                        (declare (not safe))
                        (_g115795115812_ _g115796115815_))))))
          (declare (not safe))
          (_g115794115857_ _stx115793_))))
    (define gxc#find-var-refs-ref%
      (lambda (_self115736_ _stx115737_)
        (let* ((_g115739115752_
                (lambda (_g115740115749_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115740115749_))))
               (_g115738115789_
                (lambda (_g115740115755_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115740115755_))
                      (let ((_e115744115757_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115740115755_))))
                        (let ((_hd115743115760_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115744115757_)))
                              (_tl115742115762_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115744115757_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115742115762_))
                              (let ((_e115747115765_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115742115762_))))
                                (let ((_hd115746115768_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115747115765_)))
                                      (_tl115745115770_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115747115765_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl115745115770_))
                                      ((lambda (_L115773_)
                                         (let ((__tmp118687
                                                (lambda (_g115784115786_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _L115773_
                                                     _g115784115786_))))
                                               (__tmp118686
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _self115736_
                                                   'ids))))
                                           (declare (not safe))
                                           (find __tmp118687 __tmp118686)))
                                       _hd115746115768_)
                                      (let ()
                                        (declare (not safe))
                                        (_g115739115752_ _g115740115755_)))))
                              (let ()
                                (declare (not safe))
                                (_g115739115752_ _g115740115755_)))))
                      (let ()
                        (declare (not safe))
                        (_g115739115752_ _g115740115755_))))))
          (declare (not safe))
          (_g115738115789_ _stx115737_))))
    (define gxc#find-var-refs-setq%
      (lambda (_self115661_ _stx115662_)
        (let* ((_g115664115681_
                (lambda (_g115665115678_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115665115678_))))
               (_g115663115733_
                (lambda (_g115665115684_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115665115684_))
                      (let ((_e115670115686_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115665115684_))))
                        (let ((_hd115669115689_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115670115686_)))
                              (_tl115668115691_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115670115686_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115668115691_))
                              (let ((_e115673115694_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115668115691_))))
                                (let ((_hd115672115697_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115673115694_)))
                                      (_tl115671115699_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115673115694_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115671115699_))
                                      (let ((_e115676115702_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115671115699_))))
                                        (let ((_hd115675115705_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115676115702_)))
                                              (_tl115674115707_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115676115702_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115674115707_))
                                              ((lambda (_L115710_ _L115711_)
                                                 (let ((_$e115730_
                                                        (let ((__tmp118689
                                                               (lambda (_g115725115727_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=? _L115711_ _g115725115727_))))
                      (__tmp118688
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _self115661_ 'ids))))
                  (declare (not safe))
                  (find __tmp118689 __tmp118688))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e115730_
                                                       _$e115730_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _self115661_
                                                          _L115710_)))))
                                               _hd115675115705_
                                               _hd115672115697_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115664115681_
                                                 _g115665115684_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115664115681_ _g115665115684_)))))
                              (let ()
                                (declare (not safe))
                                (_g115664115681_ _g115665115684_)))))
                      (let ()
                        (declare (not safe))
                        (_g115664115681_ _g115665115684_))))))
          (declare (not safe))
          (_g115663115733_ _stx115662_))))))
