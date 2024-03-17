(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1710715076)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_stx102531_)
        (let* ((_self102533_ (gxc#current-compile-method))
               (_$e102535_
                (let ((__tmp102704
                       (let ()
                         (declare (not safe))
                         (gxc#stx-car-e _stx102531_))))
                  (declare (not safe))
                  (method-ref _self102533_ __tmp102704))))
          (if _$e102535_
              ((lambda (_method102538_)
                 (declare (not safe))
                 (_method102538_ _self102533_ _stx102531_))
               _$e102535_)
              (let ((__tmp102706
                     (let () (declare (not safe)) (gxc#stx-car-e _stx102531_)))
                    (__tmp102705
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _stx102531_))))
                (declare (not safe))
                (error '"missing method"
                       _self102533_
                       __tmp102706
                       __tmp102705))))))
    (define gxc#compile-e__1
      (lambda (_self102541_ _stx102542_)
        (let ((_$e102544_
               (let ((__tmp102707
                      (let ()
                        (declare (not safe))
                        (gxc#stx-car-e _stx102542_))))
                 (declare (not safe))
                 (method-ref _self102541_ __tmp102707))))
          (if _$e102544_
              ((lambda (_method102547_)
                 (declare (not safe))
                 (_method102547_ _self102541_ _stx102542_))
               _$e102544_)
              (let ((__tmp102709
                     (let () (declare (not safe)) (gxc#stx-car-e _stx102542_)))
                    (__tmp102708
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _stx102542_))))
                (declare (not safe))
                (error '"missing method"
                       _self102541_
                       __tmp102709
                       __tmp102708))))))
    (define gxc#compile-e
      (lambda _g102711_
        (let ((_g102710_ (let () (declare (not safe)) (##length _g102711_))))
          (cond ((let () (declare (not safe)) (##fx= _g102710_ 1))
                 (apply (lambda (_stx102531_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _stx102531_)))
                        _g102711_))
                ((let () (declare (not safe)) (##fx= _g102710_ 2))
                 (apply (lambda (_self102541_ _stx102542_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__1 _self102541_ _stx102542_)))
                        _g102711_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g102711_))))))
    (define gxc#stx-car-e
      (lambda (_stx102529_)
        (let ((__tmp102712
               (car (let () (declare (not safe)) (gx#stx-e _stx102529_)))))
          (declare (not safe))
          (gx#stx-e __tmp102712))))
    (define gxc#void-method (lambda (_self102526_ _stx102527_) '#!void))
    (define gxc#false-method (lambda (_self102523_ _stx102524_) '#f))
    (define gxc#true-method (lambda (_self102520_ _stx102521_) '#t))
    (define gxc#identity-method
      (lambda (_self102517_ _stx102518_) _stx102518_))
    (define gxc#::void-expression::t
      (let ((__tmp102713 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp102713
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _$args102514_
        (apply make-instance gxc#::void-expression::t _$args102514_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp102714
             (lambda ()
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::void-expression::t
                  '%#begin-annotation
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::void-expression::t
                  '%#lambda
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::void-expression::t
                  '%#case-lambda
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::void-expression::t
                  '%#let-values
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::void-expression::t
                  '%#letrec-values
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::void-expression::t
                  '%#letrec*-values
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::void-expression::t
                  '%#quote
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::void-expression::t
                  '%#quote-syntax
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::void-expression::t
                  '%#call
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::void-expression::t
                  '%#call-unchecked
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::void-expression::t
                  '%#if
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::void-expression::t
                  '%#ref
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::void-expression::t
                  '%#set!
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::void-expression::t
                  '%#struct-instance?
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::void-expression::t
                  '%#struct-direct-instance?
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::void-expression::t
                  '%#struct-ref
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::void-expression::t
                  '%#struct-set!
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::void-expression::t
                  '%#struct-direct-ref
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::void-expression::t
                  '%#struct-direct-set!
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::void-expression::t
                  '%#struct-unchecked-ref
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::void-expression::t
                  '%#struct-unchecked-set!
                  gxc#void-method)))))
        (declare (not safe))
        (make-promise __tmp102714)))
    (define gxc#::void-special-form::t
      (let ((__tmp102715 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp102715
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _$args102510_
        (apply make-instance gxc#::void-special-form::t _$args102510_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp102716
             (lambda ()
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::void-special-form::t
                  '%#begin
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::void-special-form::t
                  '%#begin-syntax
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::void-special-form::t
                  '%#begin-foreign
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::void-special-form::t
                  '%#module
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::void-special-form::t
                  '%#import
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::void-special-form::t
                  '%#export
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::void-special-form::t
                  '%#provide
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::void-special-form::t
                  '%#extern
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::void-special-form::t
                  '%#define-values
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::void-special-form::t
                  '%#define-syntax
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::void-special-form::t
                  '%#define-alias
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::void-special-form::t
                  '%#declare
                  gxc#void-method)))))
        (declare (not safe))
        (make-promise __tmp102716)))
    (define gxc#::void::t
      (let ((__tmp102717
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (make-class-type 'gxc#::void::t '::void __tmp102717 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _$args102506_ (apply make-instance gxc#::void::t _$args102506_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp102718
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (make-promise __tmp102718)))
    (define gxc#::false-expression::t
      (let ((__tmp102719 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp102719
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _$args102502_
        (apply make-instance gxc#::false-expression::t _$args102502_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp102720
             (lambda ()
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::false-expression::t
                  '%#begin-annotation
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::false-expression::t
                  '%#lambda
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::false-expression::t
                  '%#case-lambda
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::false-expression::t
                  '%#let-values
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::false-expression::t
                  '%#letrec-values
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::false-expression::t
                  '%#letrec*-values
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::false-expression::t
                  '%#quote
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::false-expression::t
                  '%#quote-syntax
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::false-expression::t
                  '%#call
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::false-expression::t
                  '%#call-unchecked
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::false-expression::t
                  '%#if
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::false-expression::t
                  '%#ref
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::false-expression::t
                  '%#set!
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::false-expression::t
                  '%#struct-instance?
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::false-expression::t
                  '%#struct-direct-instance?
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::false-expression::t
                  '%#struct-ref
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::false-expression::t
                  '%#struct-set!
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::false-expression::t
                  '%#struct-direct-ref
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::false-expression::t
                  '%#struct-direct-set!
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::false-expression::t
                  '%#struct-unchecked-ref
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::false-expression::t
                  '%#struct-unchecked-set!
                  gxc#false-method)))))
        (declare (not safe))
        (make-promise __tmp102720)))
    (define gxc#::false-special-form::t
      (let ((__tmp102721 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp102721
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _$args102498_
        (apply make-instance gxc#::false-special-form::t _$args102498_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp102722
             (lambda ()
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::false-special-form::t
                  '%#begin
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::false-special-form::t
                  '%#begin-syntax
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::false-special-form::t
                  '%#begin-foreign
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::false-special-form::t
                  '%#module
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::false-special-form::t
                  '%#import
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::false-special-form::t
                  '%#export
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::false-special-form::t
                  '%#provide
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::false-special-form::t
                  '%#extern
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::false-special-form::t
                  '%#define-values
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::false-special-form::t
                  '%#define-syntax
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::false-special-form::t
                  '%#define-alias
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::false-special-form::t
                  '%#declare
                  gxc#false-method)))))
        (declare (not safe))
        (make-promise __tmp102722)))
    (define gxc#::false::t
      (let ((__tmp102723
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (make-class-type 'gxc#::false::t '::false __tmp102723 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _$args102494_
        (apply make-instance gxc#::false::t _$args102494_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp102724
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (make-promise __tmp102724)))
    (define gxc#::identity-expression::t
      (let ((__tmp102725 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp102725
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _$args102490_
        (apply make-instance gxc#::identity-expression::t _$args102490_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp102726
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
        (make-promise __tmp102726)))
    (define gxc#::identity-special-form::t
      (let ((__tmp102727 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp102727
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _$args102486_
        (apply make-instance gxc#::identity-special-form::t _$args102486_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp102728
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
        (make-promise __tmp102728)))
    (define gxc#::identity::t
      (let ((__tmp102729
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::identity::t
         '::identity
         __tmp102729
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _$args102482_
        (apply make-instance gxc#::identity::t _$args102482_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp102730
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (make-promise __tmp102730)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp102731 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp102731
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _$args102478_
        (apply make-instance gxc#::basic-xform-expression::t _$args102478_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp102732
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
        (make-promise __tmp102732)))
    (define gxc#::basic-xform::t
      (let ((__tmp102733
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp102733
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _$args102474_
        (apply make-instance gxc#::basic-xform::t _$args102474_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp102734
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
        (make-promise __tmp102734)))
    (define gxc#apply-begin%
      (lambda (_self102430_ _stx102431_)
        (let* ((_g102433102443_
                (lambda (_g102434102440_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102434102440_))))
               (_g102432102470_
                (lambda (_g102434102446_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102434102446_))
                      (let ((_e102438102448_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102434102446_))))
                        (let ((_hd102437102451_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102438102448_)))
                              (_tl102436102453_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102438102448_))))
                          ((lambda (_L102456_)
                             (for-each
                              (lambda (_g102465102467_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1
                                   _self102430_
                                   _g102465102467_)))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _L102456_))))
                           _tl102436102453_)))
                      (let ()
                        (declare (not safe))
                        (_g102433102443_ _g102434102446_))))))
          (declare (not safe))
          (_g102432102470_ _stx102431_))))
    (define gxc#apply-last-begin%
      (lambda (_self102391_ _stx102392_)
        (let* ((_g102394102404_
                (lambda (_g102395102401_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102395102401_))))
               (_g102393102427_
                (lambda (_g102395102407_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102395102407_))
                      (let ((_e102399102409_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102395102407_))))
                        (let ((_hd102398102412_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102399102409_)))
                              (_tl102397102414_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102399102409_))))
                          ((lambda (_L102417_)
                             (let ((__tmp102735 (last _L102417_)))
                               (declare (not safe))
                               (gxc#compile-e__1 _self102391_ __tmp102735)))
                           _tl102397102414_)))
                      (let ()
                        (declare (not safe))
                        (_g102394102404_ _g102395102407_))))))
          (declare (not safe))
          (_g102393102427_ _stx102392_))))
    (define gxc#apply-begin-syntax%
      (lambda (_self102387_ _stx102388_)
        (let ((__tmp102738
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#apply-begin% _self102387_ _stx102388_))))
              (__tmp102736
               (let ((__tmp102737 (gx#current-expander-phi)))
                 (declare (not safe))
                 (fx+ __tmp102737 '1))))
          (declare (not safe))
          (call-with-parameters
           __tmp102738
           gx#current-expander-phi
           __tmp102736))))
    (define gxc#apply-module%
      (lambda (_self102326_ _stx102327_)
        (let* ((_g102329102343_
                (lambda (_g102330102340_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102330102340_))))
               (_g102328102384_
                (lambda (_g102330102346_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102330102346_))
                      (let ((_e102335102348_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102330102346_))))
                        (let ((_hd102334102351_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102335102348_)))
                              (_tl102333102353_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102335102348_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102333102353_))
                              (let ((_e102338102356_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102333102353_))))
                                (let ((_hd102337102359_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102338102356_)))
                                      (_tl102336102361_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102338102356_))))
                                  ((lambda (_L102364_ _L102365_)
                                     (let* ((_ctx102378_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L102365_)))
                                            (_ctx-stx102380_
                                             (##structure-ref
                                              _ctx102378_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp102739
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self102326_
                                                   _ctx-stx102380_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp102739
                                          gx#current-expander-context
                                          _ctx102378_))))
                                   _tl102336102361_
                                   _hd102337102359_)))
                              (let ()
                                (declare (not safe))
                                (_g102329102343_ _g102330102346_)))))
                      (let ()
                        (declare (not safe))
                        (_g102329102343_ _g102330102346_))))))
          (declare (not safe))
          (_g102328102384_ _stx102327_))))
    (define gxc#apply-begin-annotation%
      (lambda (_self102258_ _stx102259_)
        (let* ((_g102261102278_
                (lambda (_g102262102275_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102262102275_))))
               (_g102260102323_
                (lambda (_g102262102281_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102262102281_))
                      (let ((_e102267102283_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102262102281_))))
                        (let ((_hd102266102286_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102267102283_)))
                              (_tl102265102288_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102267102283_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102265102288_))
                              (let ((_e102270102291_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102265102288_))))
                                (let ((_hd102269102294_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102270102291_)))
                                      (_tl102268102296_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102270102291_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl102268102296_))
                                      (let ((_e102273102299_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl102268102296_))))
                                        (let ((_hd102272102302_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e102273102299_)))
                                              (_tl102271102304_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e102273102299_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl102271102304_))
                                              ((lambda (_L102307_ _L102308_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self102258_
                                                    _L102307_)))
                                               _hd102272102302_
                                               _hd102269102294_)
                                              (let ()
                                                (declare (not safe))
                                                (_g102261102278_
                                                 _g102262102281_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g102261102278_ _g102262102281_)))))
                              (let ()
                                (declare (not safe))
                                (_g102261102278_ _g102262102281_)))))
                      (let ()
                        (declare (not safe))
                        (_g102261102278_ _g102262102281_))))))
          (declare (not safe))
          (_g102260102323_ _stx102259_))))
    (define gxc#apply-define-values%
      (lambda (_self102190_ _stx102191_)
        (let* ((_g102193102210_
                (lambda (_g102194102207_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102194102207_))))
               (_g102192102255_
                (lambda (_g102194102213_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102194102213_))
                      (let ((_e102199102215_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102194102213_))))
                        (let ((_hd102198102218_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102199102215_)))
                              (_tl102197102220_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102199102215_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102197102220_))
                              (let ((_e102202102223_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102197102220_))))
                                (let ((_hd102201102226_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102202102223_)))
                                      (_tl102200102228_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102202102223_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl102200102228_))
                                      (let ((_e102205102231_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl102200102228_))))
                                        (let ((_hd102204102234_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e102205102231_)))
                                              (_tl102203102236_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e102205102231_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl102203102236_))
                                              ((lambda (_L102239_ _L102240_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self102190_
                                                    _L102239_)))
                                               _hd102204102234_
                                               _hd102201102226_)
                                              (let ()
                                                (declare (not safe))
                                                (_g102193102210_
                                                 _g102194102213_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g102193102210_ _g102194102213_)))))
                              (let ()
                                (declare (not safe))
                                (_g102193102210_ _g102194102213_)))))
                      (let ()
                        (declare (not safe))
                        (_g102193102210_ _g102194102213_))))))
          (declare (not safe))
          (_g102192102255_ _stx102191_))))
    (define gxc#apply-define-syntax%
      (lambda (_self102121_ _stx102122_)
        (let* ((_g102124102141_
                (lambda (_g102125102138_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102125102138_))))
               (_g102123102187_
                (lambda (_g102125102144_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102125102144_))
                      (let ((_e102130102146_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102125102144_))))
                        (let ((_hd102129102149_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102130102146_)))
                              (_tl102128102151_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102130102146_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102128102151_))
                              (let ((_e102133102154_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102128102151_))))
                                (let ((_hd102132102157_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102133102154_)))
                                      (_tl102131102159_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102133102154_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl102131102159_))
                                      (let ((_e102136102162_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl102131102159_))))
                                        (let ((_hd102135102165_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e102136102162_)))
                                              (_tl102134102167_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e102136102162_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl102134102167_))
                                              ((lambda (_L102170_ _L102171_)
                                                 (let ((__tmp102742
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _self102121_
                                                             _L102170_))))
                                                       (__tmp102740
                                                        (let ((__tmp102741
                                                               (gx#current-expander-phi)))
                                                          (declare (not safe))
                                                          (fx+ __tmp102741
                                                               '1))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp102742
                                                    gx#current-expander-phi
                                                    __tmp102740)))
                                               _hd102135102165_
                                               _hd102132102157_)
                                              (let ()
                                                (declare (not safe))
                                                (_g102124102141_
                                                 _g102125102144_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g102124102141_ _g102125102144_)))))
                              (let ()
                                (declare (not safe))
                                (_g102124102141_ _g102125102144_)))))
                      (let ()
                        (declare (not safe))
                        (_g102124102141_ _g102125102144_))))))
          (declare (not safe))
          (_g102123102187_ _stx102122_))))
    (define gxc#apply-body-lambda%
      (lambda (_self102053_ _stx102054_)
        (let* ((_g102056102073_
                (lambda (_g102057102070_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102057102070_))))
               (_g102055102118_
                (lambda (_g102057102076_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102057102076_))
                      (let ((_e102062102078_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102057102076_))))
                        (let ((_hd102061102081_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102062102078_)))
                              (_tl102060102083_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102062102078_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102060102083_))
                              (let ((_e102065102086_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102060102083_))))
                                (let ((_hd102064102089_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102065102086_)))
                                      (_tl102063102091_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102065102086_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl102063102091_))
                                      (let ((_e102068102094_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl102063102091_))))
                                        (let ((_hd102067102097_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e102068102094_)))
                                              (_tl102066102099_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e102068102094_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl102066102099_))
                                              ((lambda (_L102102_ _L102103_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self102053_
                                                    _L102102_)))
                                               _hd102067102097_
                                               _hd102064102089_)
                                              (let ()
                                                (declare (not safe))
                                                (_g102056102073_
                                                 _g102057102076_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g102056102073_ _g102057102076_)))))
                              (let ()
                                (declare (not safe))
                                (_g102056102073_ _g102057102076_)))))
                      (let ()
                        (declare (not safe))
                        (_g102056102073_ _g102057102076_))))))
          (declare (not safe))
          (_g102055102118_ _stx102054_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_self101935_ _stx101936_)
        (let* ((_g101938101966_
                (lambda (_g101939101963_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101939101963_))))
               (_g101937102050_
                (lambda (_g101939101969_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101939101969_))
                      (let ((_e101944101971_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101939101969_))))
                        (let ((_hd101943101974_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101944101971_)))
                              (_tl101942101976_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101944101971_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl101942101976_))
                              (let ((_g102743_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl101942101976_
                                        '0))))
                                (begin
                                  (let ((_g102744_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g102743_)
                                               (##vector-length _g102743_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g102744_ 2)))
                                        (error "Context expects 2 values"
                                               _g102744_)))
                                  (let ((_target101945101979_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g102743_ 0)))
                                        (_tl101947101981_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g102743_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl101947101981_))
                                        (letrec ((_loop101948101984_
                                                  (lambda (_hd101946101987_
                                                           _body101952101989_
                                                           _hd101953101991_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd101946101987_))
                                                        (let ((_e101949101994_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd101946101987_))))
                  (let ((_lp-hd101950101997_
                         (let () (declare (not safe)) (##car _e101949101994_)))
                        (_lp-tl101951101999_
                         (let ()
                           (declare (not safe))
                           (##cdr _e101949101994_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd101950101997_))
                        (let ((_e101958102002_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd101950101997_))))
                          (let ((_hd101957102005_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e101958102002_)))
                                (_tl101956102007_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e101958102002_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl101956102007_))
                                (let ((_e101961102010_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl101956102007_))))
                                  (let ((_hd101960102013_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e101961102010_)))
                                        (_tl101959102015_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e101961102010_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl101959102015_))
                                        (let ((__tmp102747
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd101960102013_
                                                       _body101952101989_)))
                                              (__tmp102746
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd101957102005_
                                                       _hd101953101991_))))
                                          (declare (not safe))
                                          (_loop101948101984_
                                           _lp-tl101951101999_
                                           __tmp102747
                                           __tmp102746))
                                        (let ()
                                          (declare (not safe))
                                          (_g101938101966_ _g101939101969_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g101938101966_ _g101939101969_)))))
                        (let ()
                          (declare (not safe))
                          (_g101938101966_ _g101939101969_)))))
                (let ((_body101954102018_ (reverse _body101952101989_))
                      (_hd101955102020_ (reverse _hd101953101991_)))
                  ((lambda (_L102023_ _L102024_)
                     (for-each
                      (lambda (_g102038102040_)
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _self101935_ _g102038102040_)))
                      (let ((__tmp102745
                             (lambda (_g102042102045_ _g102043102047_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g102042102045_ _g102043102047_)))))
                        (declare (not safe))
                        (foldr1 __tmp102745 '() _L102023_))))
                   _body101954102018_
                   _hd101955102020_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop101948101984_
                                             _target101945101979_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g101938101966_
                                           _g101939101969_))))))
                              (let ()
                                (declare (not safe))
                                (_g101938101966_ _g101939101969_)))))
                      (let ()
                        (declare (not safe))
                        (_g101938101966_ _g101939101969_))))))
          (declare (not safe))
          (_g101937102050_ _stx101936_))))
    (define gxc#apply-body-let-values%
      (lambda (_self101788_ _stx101789_)
        (let* ((_g101791101826_
                (lambda (_g101792101823_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101792101823_))))
               (_g101790101932_
                (lambda (_g101792101829_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101792101829_))
                      (let ((_e101798101831_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101792101829_))))
                        (let ((_hd101797101834_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101798101831_)))
                              (_tl101796101836_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101798101831_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101796101836_))
                              (let ((_e101801101839_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101796101836_))))
                                (let ((_hd101800101842_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101801101839_)))
                                      (_tl101799101844_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101801101839_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd101800101842_))
                                      (let ((_g102748_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd101800101842_
                                                '0))))
                                        (begin
                                          (let ((_g102749_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g102748_)
                                                       (##vector-length
                                                        _g102748_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g102749_ 2)))
                                                (error "Context expects 2 values"
                                                       _g102749_)))
                                          (let ((_target101802101847_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g102748_ 0)))
                                                (_tl101804101849_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g102748_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl101804101849_))
                                                (letrec ((_loop101805101852_
                                                          (lambda (_hd101803101855_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr101809101857_
                           _hd101810101859_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd101803101855_))
                        (let ((_e101806101862_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd101803101855_))))
                          (let ((_lp-hd101807101865_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e101806101862_)))
                                (_lp-tl101808101867_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e101806101862_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd101807101865_))
                                (let ((_e101815101870_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd101807101865_))))
                                  (let ((_hd101814101873_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e101815101870_)))
                                        (_tl101813101875_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e101815101870_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl101813101875_))
                                        (let ((_e101818101878_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl101813101875_))))
                                          (let ((_hd101817101881_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e101818101878_)))
                                                (_tl101816101883_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e101818101878_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl101816101883_))
                                                (let ((__tmp102753
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd101817101881_
                                                               _expr101809101857_)))
                                                      (__tmp102752
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd101814101873_
                                                               _hd101810101859_))))
                                                  (declare (not safe))
                                                  (_loop101805101852_
                                                   _lp-tl101808101867_
                                                   __tmp102753
                                                   __tmp102752))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g101791101826_
                                                   _g101792101829_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g101791101826_ _g101792101829_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g101791101826_ _g101792101829_)))))
                        (let ((_expr101811101886_ (reverse _expr101809101857_))
                              (_hd101812101888_ (reverse _hd101810101859_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101799101844_))
                              (let ((_e101821101891_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101799101844_))))
                                (let ((_hd101820101894_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101821101891_)))
                                      (_tl101819101896_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101821101891_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl101819101896_))
                                      ((lambda (_L101899_ _L101900_ _L101901_)
                                         (for-each
                                          (lambda (_g101920101922_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self101788_
                                               _g101920101922_)))
                                          (let ((__tmp102751
                                                 (lambda (_g101924101927_
                                                          _g101925101929_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g101924101927_
                                                           _g101925101929_))))
                                                (__tmp102750
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L101899_ '()))))
                                            (declare (not safe))
                                            (foldr1 __tmp102751
                                                    __tmp102750
                                                    _L101900_))))
                                       _hd101820101894_
                                       _expr101811101886_
                                       _hd101812101888_)
                                      (let ()
                                        (declare (not safe))
                                        (_g101791101826_ _g101792101829_)))))
                              (let ()
                                (declare (not safe))
                                (_g101791101826_ _g101792101829_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop101805101852_
                                                     _target101802101847_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g101791101826_
                                                   _g101792101829_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g101791101826_ _g101792101829_)))))
                              (let ()
                                (declare (not safe))
                                (_g101791101826_ _g101792101829_)))))
                      (let ()
                        (declare (not safe))
                        (_g101791101826_ _g101792101829_))))))
          (declare (not safe))
          (_g101790101932_ _stx101789_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_self101733_ _stx101734_)
        (let* ((_g101736101750_
                (lambda (_g101737101747_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101737101747_))))
               (_g101735101785_
                (lambda (_g101737101753_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101737101753_))
                      (let ((_e101742101755_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101737101753_))))
                        (let ((_hd101741101758_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101742101755_)))
                              (_tl101740101760_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101742101755_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101740101760_))
                              (let ((_e101745101763_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101740101760_))))
                                (let ((_hd101744101766_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101745101763_)))
                                      (_tl101743101768_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101745101763_))))
                                  ((lambda (_L101771_ _L101772_)
                                     (let ((__tmp102754 (last _L101771_)))
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _self101733_
                                        __tmp102754)))
                                   _tl101743101768_
                                   _hd101744101766_)))
                              (let ()
                                (declare (not safe))
                                (_g101736101750_ _g101737101753_)))))
                      (let ()
                        (declare (not safe))
                        (_g101736101750_ _g101737101753_))))))
          (declare (not safe))
          (_g101735101785_ _stx101734_))))
    (define gxc#apply-body-setq%
      (lambda (_self101665_ _stx101666_)
        (let* ((_g101668101685_
                (lambda (_g101669101682_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101669101682_))))
               (_g101667101730_
                (lambda (_g101669101688_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101669101688_))
                      (let ((_e101674101690_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101669101688_))))
                        (let ((_hd101673101693_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101674101690_)))
                              (_tl101672101695_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101674101690_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101672101695_))
                              (let ((_e101677101698_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101672101695_))))
                                (let ((_hd101676101701_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101677101698_)))
                                      (_tl101675101703_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101677101698_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl101675101703_))
                                      (let ((_e101680101706_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl101675101703_))))
                                        (let ((_hd101679101709_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e101680101706_)))
                                              (_tl101678101711_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e101680101706_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl101678101711_))
                                              ((lambda (_L101714_ _L101715_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self101665_
                                                    _L101714_)))
                                               _hd101679101709_
                                               _hd101676101701_)
                                              (let ()
                                                (declare (not safe))
                                                (_g101668101685_
                                                 _g101669101688_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g101668101685_ _g101669101688_)))))
                              (let ()
                                (declare (not safe))
                                (_g101668101685_ _g101669101688_)))))
                      (let ()
                        (declare (not safe))
                        (_g101668101685_ _g101669101688_))))))
          (declare (not safe))
          (_g101667101730_ _stx101666_))))
    (define gxc#apply-operands
      (lambda (_self101578_ _stx101579_)
        (let* ((_g101581101600_
                (lambda (_g101582101597_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101582101597_))))
               (_g101580101662_
                (lambda (_g101582101603_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101582101603_))
                      (let ((_e101586101605_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101582101603_))))
                        (let ((_hd101585101608_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101586101605_)))
                              (_tl101584101610_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101586101605_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl101584101610_))
                              (let ((_g102755_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl101584101610_
                                        '0))))
                                (begin
                                  (let ((_g102756_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g102755_)
                                               (##vector-length _g102755_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g102756_ 2)))
                                        (error "Context expects 2 values"
                                               _g102756_)))
                                  (let ((_target101587101613_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g102755_ 0)))
                                        (_tl101589101615_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g102755_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl101589101615_))
                                        (letrec ((_loop101590101618_
                                                  (lambda (_hd101588101621_
                                                           _rands101594101623_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd101588101621_))
                                                        (let ((_e101591101626_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd101588101621_))))
                  (let ((_lp-hd101592101629_
                         (let () (declare (not safe)) (##car _e101591101626_)))
                        (_lp-tl101593101631_
                         (let ()
                           (declare (not safe))
                           (##cdr _e101591101626_))))
                    (let ((__tmp102758
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd101592101629_ _rands101594101623_))))
                      (declare (not safe))
                      (_loop101590101618_ _lp-tl101593101631_ __tmp102758))))
                (let ((_rands101595101634_ (reverse _rands101594101623_)))
                  ((lambda (_L101637_)
                     (for-each
                      (lambda (_g101650101652_)
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _self101578_ _g101650101652_)))
                      (let ((__tmp102757
                             (lambda (_g101654101657_ _g101655101659_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g101654101657_ _g101655101659_)))))
                        (declare (not safe))
                        (foldr1 __tmp102757 '() _L101637_))))
                   _rands101595101634_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop101590101618_
                                             _target101587101613_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g101581101600_
                                           _g101582101603_))))))
                              (let ()
                                (declare (not safe))
                                (_g101581101600_ _g101582101603_)))))
                      (let ()
                        (declare (not safe))
                        (_g101581101600_ _g101582101603_))))))
          (declare (not safe))
          (_g101580101662_ _stx101579_))))
    (define gxc#xform-wrap-source
      (lambda (_stx101575_ _src-stx101576_)
        (let ((__tmp102759
               (let () (declare (not safe)) (gx#stx-source _src-stx101576_))))
          (declare (not safe))
          (gx#stx-wrap-source _stx101575_ __tmp102759))))
    (define gxc#xform-begin%
      (lambda (_self101530_ _stx101531_)
        (let* ((_g101533101543_
                (lambda (_g101534101540_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101534101540_))))
               (_g101532101572_
                (lambda (_g101534101546_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101534101546_))
                      (let ((_e101538101548_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101534101546_))))
                        (let ((_hd101537101551_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101538101548_)))
                              (_tl101536101553_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101538101548_))))
                          ((lambda (_L101556_)
                             (let* ((_forms101570_
                                     (map (lambda (_g101565101567_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self101530_
                                               _g101565101567_)))
                                          _L101556_))
                                    (__tmp102760
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#begin _forms101570_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp102760
                                _stx101531_)))
                           _tl101536101553_)))
                      (let ()
                        (declare (not safe))
                        (_g101533101543_ _g101534101546_))))))
          (declare (not safe))
          (_g101532101572_ _stx101531_))))
    (define gxc#xform-begin-syntax%
      (lambda (_self101484_ _stx101485_)
        (let* ((_g101487101497_
                (lambda (_g101488101494_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101488101494_))))
               (_g101486101527_
                (lambda (_g101488101500_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101488101500_))
                      (let ((_e101492101502_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101488101500_))))
                        (let ((_hd101491101505_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101492101502_)))
                              (_tl101490101507_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101492101502_))))
                          ((lambda (_L101510_)
                             (let ((__tmp102763
                                    (lambda ()
                                      (let* ((_forms101525_
                                              (map (lambda (_g101520101522_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _self101484_
                                                        _g101520101522_)))
                                                   _L101510_))
                                             (__tmp102764
                                              (let ()
                                                (declare (not safe))
                                                (cons '%#begin-syntax
                                                      _forms101525_))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp102764
                                         _stx101485_))))
                                   (__tmp102761
                                    (let ((__tmp102762
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp102762 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp102763
                                gx#current-expander-phi
                                __tmp102761)))
                           _tl101490101507_)))
                      (let ()
                        (declare (not safe))
                        (_g101487101497_ _g101488101500_))))))
          (declare (not safe))
          (_g101486101527_ _stx101485_))))
    (define gxc#xform-module%
      (lambda (_self101421_ _stx101422_)
        (let* ((_g101424101438_
                (lambda (_g101425101435_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101425101435_))))
               (_g101423101481_
                (lambda (_g101425101441_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101425101441_))
                      (let ((_e101430101443_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101425101441_))))
                        (let ((_hd101429101446_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101430101443_)))
                              (_tl101428101448_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101430101443_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101428101448_))
                              (let ((_e101433101451_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101428101448_))))
                                (let ((_hd101432101454_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101433101451_)))
                                      (_tl101431101456_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101433101451_))))
                                  ((lambda (_L101459_ _L101460_)
                                     (let* ((_ctx101473_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L101460_)))
                                            (_code101475_
                                             (##structure-ref
                                              _ctx101473_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_code101478_
                                             (let ((__tmp102765
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _self101421_
                                                         _code101475_)))))
                                               (declare (not safe))
                                               (call-with-parameters
                                                __tmp102765
                                                gx#current-expander-context
                                                _ctx101473_))))
                                       (##structure-set!
                                        _ctx101473_
                                        _code101478_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp102766
                                              (let ((__tmp102767
                                                     (let ((__tmp102768
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _code101478_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L101460_ __tmp102768))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#module __tmp102767))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp102766
                                          _stx101422_))))
                                   _tl101431101456_
                                   _hd101432101454_)))
                              (let ()
                                (declare (not safe))
                                (_g101424101438_ _g101425101441_)))))
                      (let ()
                        (declare (not safe))
                        (_g101424101438_ _g101425101441_))))))
          (declare (not safe))
          (_g101423101481_ _stx101422_))))
    (define gxc#xform-define-values%
      (lambda (_self101351_ _stx101352_)
        (let* ((_g101354101371_
                (lambda (_g101355101368_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101355101368_))))
               (_g101353101418_
                (lambda (_g101355101374_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101355101374_))
                      (let ((_e101360101376_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101355101374_))))
                        (let ((_hd101359101379_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101360101376_)))
                              (_tl101358101381_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101360101376_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101358101381_))
                              (let ((_e101363101384_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101358101381_))))
                                (let ((_hd101362101387_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101363101384_)))
                                      (_tl101361101389_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101363101384_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl101361101389_))
                                      (let ((_e101366101392_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl101361101389_))))
                                        (let ((_hd101365101395_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e101366101392_)))
                                              (_tl101364101397_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e101366101392_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl101364101397_))
                                              ((lambda (_L101400_ _L101401_)
                                                 (let* ((_expr101416_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self101351_
                                                            _L101400_)))
                                                        (__tmp102769
                                                         (let ((__tmp102770
                                                                (let ((__tmp102771
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _expr101416_ '()))))
                          (declare (not safe))
                          (cons _L101401_ __tmp102771))))
                   (declare (not safe))
                   (cons '%#define-values __tmp102770))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp102769
                                                    _stx101352_)))
                                               _hd101365101395_
                                               _hd101362101387_)
                                              (let ()
                                                (declare (not safe))
                                                (_g101354101371_
                                                 _g101355101374_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g101354101371_ _g101355101374_)))))
                              (let ()
                                (declare (not safe))
                                (_g101354101371_ _g101355101374_)))))
                      (let ()
                        (declare (not safe))
                        (_g101354101371_ _g101355101374_))))))
          (declare (not safe))
          (_g101353101418_ _stx101352_))))
    (define gxc#xform-define-syntax%
      (lambda (_self101280_ _stx101281_)
        (let* ((_g101283101300_
                (lambda (_g101284101297_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101284101297_))))
               (_g101282101348_
                (lambda (_g101284101303_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101284101303_))
                      (let ((_e101289101305_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101284101303_))))
                        (let ((_hd101288101308_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101289101305_)))
                              (_tl101287101310_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101289101305_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101287101310_))
                              (let ((_e101292101313_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101287101310_))))
                                (let ((_hd101291101316_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101292101313_)))
                                      (_tl101290101318_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101292101313_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl101290101318_))
                                      (let ((_e101295101321_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl101290101318_))))
                                        (let ((_hd101294101324_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e101295101321_)))
                                              (_tl101293101326_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e101295101321_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl101293101326_))
                                              ((lambda (_L101329_ _L101330_)
                                                 (let ((__tmp102774
                                                        (lambda ()
                                                          (let* ((_expr101346_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__1 _self101280_ _L101329_)))
                         (__tmp102775
                          (let ((__tmp102776
                                 (let ((__tmp102777
                                        (let ()
                                          (declare (not safe))
                                          (cons _expr101346_ '()))))
                                   (declare (not safe))
                                   (cons _L101330_ __tmp102777))))
                            (declare (not safe))
                            (cons '%#define-syntax __tmp102776))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp102775 _stx101281_))))
               (__tmp102772
                (let ((__tmp102773 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp102773 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp102774
                                                    gx#current-expander-phi
                                                    __tmp102772)))
                                               _hd101294101324_
                                               _hd101291101316_)
                                              (let ()
                                                (declare (not safe))
                                                (_g101283101300_
                                                 _g101284101303_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g101283101300_ _g101284101303_)))))
                              (let ()
                                (declare (not safe))
                                (_g101283101300_ _g101284101303_)))))
                      (let ()
                        (declare (not safe))
                        (_g101283101300_ _g101284101303_))))))
          (declare (not safe))
          (_g101282101348_ _stx101281_))))
    (define gxc#xform-begin-annotation%
      (lambda (_self101210_ _stx101211_)
        (let* ((_g101213101230_
                (lambda (_g101214101227_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101214101227_))))
               (_g101212101277_
                (lambda (_g101214101233_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101214101233_))
                      (let ((_e101219101235_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101214101233_))))
                        (let ((_hd101218101238_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101219101235_)))
                              (_tl101217101240_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101219101235_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101217101240_))
                              (let ((_e101222101243_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101217101240_))))
                                (let ((_hd101221101246_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101222101243_)))
                                      (_tl101220101248_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101222101243_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl101220101248_))
                                      (let ((_e101225101251_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl101220101248_))))
                                        (let ((_hd101224101254_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e101225101251_)))
                                              (_tl101223101256_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e101225101251_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl101223101256_))
                                              ((lambda (_L101259_ _L101260_)
                                                 (let* ((_expr101275_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self101210_
                                                            _L101259_)))
                                                        (__tmp102778
                                                         (let ((__tmp102779
                                                                (let ((__tmp102780
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _expr101275_ '()))))
                          (declare (not safe))
                          (cons _L101260_ __tmp102780))))
                   (declare (not safe))
                   (cons '%#begin-annotation __tmp102779))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp102778
                                                    _stx101211_)))
                                               _hd101224101254_
                                               _hd101221101246_)
                                              (let ()
                                                (declare (not safe))
                                                (_g101213101230_
                                                 _g101214101233_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g101213101230_ _g101214101233_)))))
                              (let ()
                                (declare (not safe))
                                (_g101213101230_ _g101214101233_)))))
                      (let ()
                        (declare (not safe))
                        (_g101213101230_ _g101214101233_))))))
          (declare (not safe))
          (_g101212101277_ _stx101211_))))
    (define gxc#xform-lambda%
      (lambda (_self101149_ _stx101150_)
        (let* ((_g101152101166_
                (lambda (_g101153101163_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101153101163_))))
               (_g101151101207_
                (lambda (_g101153101169_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101153101169_))
                      (let ((_e101158101171_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101153101169_))))
                        (let ((_hd101157101174_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101158101171_)))
                              (_tl101156101176_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101158101171_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101156101176_))
                              (let ((_e101161101179_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101156101176_))))
                                (let ((_hd101160101182_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101161101179_)))
                                      (_tl101159101184_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101161101179_))))
                                  ((lambda (_L101187_ _L101188_)
                                     (let* ((_body101205_
                                             (map (lambda (_g101200101202_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _self101149_
                                                       _g101200101202_)))
                                                  _L101187_))
                                            (__tmp102781
                                             (let ((__tmp102782
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L101188_
                                                            _body101205_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp102782))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp102781
                                        _stx101150_)))
                                   _tl101159101184_
                                   _hd101160101182_)))
                              (let ()
                                (declare (not safe))
                                (_g101152101166_ _g101153101169_)))))
                      (let ()
                        (declare (not safe))
                        (_g101152101166_ _g101153101169_))))))
          (declare (not safe))
          (_g101151101207_ _stx101150_))))
    (define gxc#xform-case-lambda%
      (lambda (_self101058_ _stx101059_)
        (letrec ((_clause-e101061_
                  (lambda (_clause101102_)
                    (let* ((_g101104101115_
                            (lambda (_g101105101112_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g101105101112_))))
                           (_g101103101146_
                            (lambda (_g101105101118_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g101105101118_))
                                  (let ((_e101110101120_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g101105101118_))))
                                    (let ((_hd101109101123_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e101110101120_)))
                                          (_tl101108101125_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e101110101120_))))
                                      ((lambda (_L101128_ _L101129_)
                                         (let ((_body101144_
                                                (map (lambda (_g101139101141_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _self101058_
                                                          _g101139101141_)))
                                                     _L101128_)))
                                           (declare (not safe))
                                           (cons _L101129_ _body101144_)))
                                       _tl101108101125_
                                       _hd101109101123_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g101104101115_ _g101105101118_))))))
                      (declare (not safe))
                      (_g101103101146_ _clause101102_)))))
          (let* ((_g101063101073_
                  (lambda (_g101064101070_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g101064101070_))))
                 (_g101062101099_
                  (lambda (_g101064101076_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g101064101076_))
                        (let ((_e101068101078_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g101064101076_))))
                          (let ((_hd101067101081_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e101068101078_)))
                                (_tl101066101083_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e101068101078_))))
                            ((lambda (_L101086_)
                               (let* ((_clauses101097_
                                       (map _clause-e101061_ _L101086_))
                                      (__tmp102783
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses101097_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp102783
                                  _stx101059_)))
                             _tl101066101083_)))
                        (let ()
                          (declare (not safe))
                          (_g101063101073_ _g101064101076_))))))
            (declare (not safe))
            (_g101062101099_ _stx101059_)))))
    (define gxc#xform-let-values%
      (lambda (_self100844_ _stx100845_)
        (let* ((_g100847100880_
                (lambda (_g100848100877_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g100848100877_))))
               (_g100846101055_
                (lambda (_g100848100883_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g100848100883_))
                      (let ((_e100855100885_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g100848100883_))))
                        (let ((_hd100854100888_
                               (let ()
                                 (declare (not safe))
                                 (##car _e100855100885_)))
                              (_tl100853100890_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e100855100885_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl100853100890_))
                              (let ((_e100858100893_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl100853100890_))))
                                (let ((_hd100857100896_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e100858100893_)))
                                      (_tl100856100898_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e100858100893_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd100857100896_))
                                      (let ((_g102784_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd100857100896_
                                                '0))))
                                        (begin
                                          (let ((_g102785_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g102784_)
                                                       (##vector-length
                                                        _g102784_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g102785_ 2)))
                                                (error "Context expects 2 values"
                                                       _g102785_)))
                                          (let ((_target100859100901_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g102784_ 0)))
                                                (_tl100861100903_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g102784_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl100861100903_))
                                                (letrec ((_loop100862100906_
                                                          (lambda (_hd100860100909_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr100866100911_
                           _hd100867100913_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd100860100909_))
                        (let ((_e100863100916_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd100860100909_))))
                          (let ((_lp-hd100864100919_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e100863100916_)))
                                (_lp-tl100865100921_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e100863100916_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd100864100919_))
                                (let ((_e100872100924_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd100864100919_))))
                                  (let ((_hd100871100927_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e100872100924_)))
                                        (_tl100870100929_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e100872100924_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl100870100929_))
                                        (let ((_e100875100932_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl100870100929_))))
                                          (let ((_hd100874100935_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e100875100932_)))
                                                (_tl100873100937_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e100875100932_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl100873100937_))
                                                (let ((__tmp102798
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd100874100935_
                                                               _expr100866100911_)))
                                                      (__tmp102797
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd100871100927_
                                                               _hd100867100913_))))
                                                  (declare (not safe))
                                                  (_loop100862100906_
                                                   _lp-tl100865100921_
                                                   __tmp102798
                                                   __tmp102797))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g100847100880_
                                                   _g100848100883_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g100847100880_ _g100848100883_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g100847100880_ _g100848100883_)))))
                        (let ((_expr100868100940_ (reverse _expr100866100911_))
                              (_hd100869100942_ (reverse _hd100867100913_)))
                          ((lambda (_L100945_ _L100946_ _L100947_ _L100948_)
                             (let* ((_g100967100983_
                                     (lambda (_g100968100980_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g100968100980_))))
                                    (_g100966101041_
                                     (lambda (_g100968100986_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _g100968100986_))
                                           (let ((_g102786_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _g100968100986_
                                                     '0))))
                                             (begin
                                               (let ((_g102787_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g102786_)
                                                            (##vector-length
                                                             _g102786_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g102787_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g102787_)))
                                               (let ((_target100970100988_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g102786_
                                                         0)))
                                                     (_tl100972100990_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g102786_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl100972100990_))
                                                     (letrec ((_loop100973100993_
                                                               (lambda (_hd100971100996_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr100977100998_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _hd100971100996_))
                             (let ((_e100974101001_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _hd100971100996_))))
                               (let ((_lp-hd100975101004_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e100974101001_)))
                                     (_lp-tl100976101006_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e100974101001_))))
                                 (let ((__tmp102794
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd100975101004_
                                                _expr100977100998_))))
                                   (declare (not safe))
                                   (_loop100973100993_
                                    _lp-tl100976101006_
                                    __tmp102794))))
                             (let ((_expr100978101009_
                                    (reverse _expr100977100998_)))
                               ((lambda (_L101012_)
                                  (let ()
                                    (let* ((_body101029_
                                            (map (lambda (_g101024101026_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self100844_
                                                      _g101024101026_)))
                                                 _L100945_))
                                           (__tmp102788
                                            (let ((__tmp102789
                                                   (let ((__tmp102790
                                                          (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _L101012_
                                                               _L100947_))
                                                            (let ((__tmp102791
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g101030101034_
                                    _g101031101036_
                                    _g101032101038_)
                             (let ((__tmp102792
                                    (let ((__tmp102793
                                           (let ()
                                             (declare (not safe))
                                             (cons _g101030101034_ '()))))
                                      (declare (not safe))
                                      (cons _g101031101036_ __tmp102793))))
                               (declare (not safe))
                               (cons __tmp102792 _g101032101038_)))))
                      (declare (not safe))
                      (foldr2 __tmp102791 '() _L101012_ _L100947_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp102790
                                                           _body101029_))))
                                              (declare (not safe))
                                              (cons _L100948_ __tmp102789))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp102788
                                       _stx100845_))))
                                _expr100978101009_))))))
               (let ()
                 (declare (not safe))
                 (_loop100973100993_ _target100970100988_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g100967100983_
                                                        _g100968100986_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_g100967100983_
                                              _g100968100986_)))))
                                    (__tmp102795
                                     (map (lambda (_g101043101045_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self100844_
                                               _g101043101045_)))
                                          (let ((__tmp102796
                                                 (lambda (_g101047101050_
                                                          _g101048101052_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g101047101050_
                                                           _g101048101052_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp102796
                                                    '()
                                                    _L100946_)))))
                               (declare (not safe))
                               (_g100966101041_ __tmp102795)))
                           _tl100856100898_
                           _expr100868100940_
                           _hd100869100942_
                           _hd100854100888_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop100862100906_
                                                     _target100859100901_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g100847100880_
                                                   _g100848100883_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g100847100880_ _g100848100883_)))))
                              (let ()
                                (declare (not safe))
                                (_g100847100880_ _g100848100883_)))))
                      (let ()
                        (declare (not safe))
                        (_g100847100880_ _g100848100883_))))))
          (declare (not safe))
          (_g100846101055_ _stx100845_))))
    (define gxc#xform-operands
      (lambda (_self100796_ _stx100797_)
        (let* ((_g100799100810_
                (lambda (_g100800100807_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g100800100807_))))
               (_g100798100841_
                (lambda (_g100800100813_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g100800100813_))
                      (let ((_e100805100815_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g100800100813_))))
                        (let ((_hd100804100818_
                               (let ()
                                 (declare (not safe))
                                 (##car _e100805100815_)))
                              (_tl100803100820_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e100805100815_))))
                          ((lambda (_L100823_ _L100824_)
                             (let* ((_rands100839_
                                     (map (lambda (_g100834100836_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self100796_
                                               _g100834100836_)))
                                          _L100823_))
                                    (__tmp102799
                                     (let ()
                                       (declare (not safe))
                                       (cons _L100824_ _rands100839_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp102799
                                _stx100797_)))
                           _tl100803100820_
                           _hd100804100818_)))
                      (let ()
                        (declare (not safe))
                        (_g100799100810_ _g100800100813_))))))
          (declare (not safe))
          (_g100798100841_ _stx100797_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_self100726_ _stx100727_)
        (let* ((_g100729100746_
                (lambda (_g100730100743_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g100730100743_))))
               (_g100728100793_
                (lambda (_g100730100749_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g100730100749_))
                      (let ((_e100735100751_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g100730100749_))))
                        (let ((_hd100734100754_
                               (let ()
                                 (declare (not safe))
                                 (##car _e100735100751_)))
                              (_tl100733100756_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e100735100751_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl100733100756_))
                              (let ((_e100738100759_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl100733100756_))))
                                (let ((_hd100737100762_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e100738100759_)))
                                      (_tl100736100764_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e100738100759_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl100736100764_))
                                      (let ((_e100741100767_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl100736100764_))))
                                        (let ((_hd100740100770_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e100741100767_)))
                                              (_tl100739100772_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e100741100767_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl100739100772_))
                                              ((lambda (_L100775_ _L100776_)
                                                 (let* ((_expr100791_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self100726_
                                                            _L100775_)))
                                                        (__tmp102800
                                                         (let ((__tmp102801
                                                                (let ((__tmp102802
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _expr100791_ '()))))
                          (declare (not safe))
                          (cons _L100776_ __tmp102802))))
                   (declare (not safe))
                   (cons '%#set! __tmp102801))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp102800
                                                    _stx100727_)))
                                               _hd100740100770_
                                               _hd100737100762_)
                                              (let ()
                                                (declare (not safe))
                                                (_g100729100746_
                                                 _g100730100749_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g100729100746_ _g100730100749_)))))
                              (let ()
                                (declare (not safe))
                                (_g100729100746_ _g100730100749_)))))
                      (let ()
                        (declare (not safe))
                        (_g100729100746_ _g100730100749_))))))
          (declare (not safe))
          (_g100728100793_ _stx100727_))))))
