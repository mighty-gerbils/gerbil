(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1710699091)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_stx102541_)
        (let* ((_self102543_ (gxc#current-compile-method))
               (_$e102545_
                (let ((__tmp102714
                       (let ()
                         (declare (not safe))
                         (gxc#stx-car-e _stx102541_))))
                  (declare (not safe))
                  (method-ref _self102543_ __tmp102714))))
          (if _$e102545_
              ((lambda (_method102548_)
                 (declare (not safe))
                 (_method102548_ _self102543_ _stx102541_))
               _$e102545_)
              (let ((__tmp102716
                     (let () (declare (not safe)) (gxc#stx-car-e _stx102541_)))
                    (__tmp102715
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _stx102541_))))
                (declare (not safe))
                (error '"missing method"
                       _self102543_
                       __tmp102716
                       __tmp102715))))))
    (define gxc#compile-e__1
      (lambda (_self102551_ _stx102552_)
        (let ((_$e102554_
               (let ((__tmp102717
                      (let ()
                        (declare (not safe))
                        (gxc#stx-car-e _stx102552_))))
                 (declare (not safe))
                 (method-ref _self102551_ __tmp102717))))
          (if _$e102554_
              ((lambda (_method102557_)
                 (declare (not safe))
                 (_method102557_ _self102551_ _stx102552_))
               _$e102554_)
              (let ((__tmp102719
                     (let () (declare (not safe)) (gxc#stx-car-e _stx102552_)))
                    (__tmp102718
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _stx102552_))))
                (declare (not safe))
                (error '"missing method"
                       _self102551_
                       __tmp102719
                       __tmp102718))))))
    (define gxc#compile-e
      (lambda _g102721_
        (let ((_g102720_ (let () (declare (not safe)) (##length _g102721_))))
          (cond ((let () (declare (not safe)) (##fx= _g102720_ 1))
                 (apply (lambda (_stx102541_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _stx102541_)))
                        _g102721_))
                ((let () (declare (not safe)) (##fx= _g102720_ 2))
                 (apply (lambda (_self102551_ _stx102552_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__1 _self102551_ _stx102552_)))
                        _g102721_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g102721_))))))
    (define gxc#stx-car-e
      (lambda (_stx102539_)
        (let ((__tmp102722
               (car (let () (declare (not safe)) (gx#stx-e _stx102539_)))))
          (declare (not safe))
          (gx#stx-e __tmp102722))))
    (define gxc#void-method (lambda (_self102536_ _stx102537_) '#!void))
    (define gxc#false-method (lambda (_self102533_ _stx102534_) '#f))
    (define gxc#true-method (lambda (_self102530_ _stx102531_) '#t))
    (define gxc#identity-method
      (lambda (_self102527_ _stx102528_) _stx102528_))
    (define gxc#::void-expression::t
      (let ((__tmp102723 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp102723
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _$args102524_
        (apply make-instance gxc#::void-expression::t _$args102524_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp102724
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
        (make-promise __tmp102724)))
    (define gxc#::void-special-form::t
      (let ((__tmp102725 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp102725
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _$args102520_
        (apply make-instance gxc#::void-special-form::t _$args102520_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp102726
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
        (make-promise __tmp102726)))
    (define gxc#::void::t
      (let ((__tmp102727
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (make-class-type 'gxc#::void::t '::void __tmp102727 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _$args102516_ (apply make-instance gxc#::void::t _$args102516_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp102728
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (make-promise __tmp102728)))
    (define gxc#::false-expression::t
      (let ((__tmp102729 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp102729
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _$args102512_
        (apply make-instance gxc#::false-expression::t _$args102512_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp102730
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
        (make-promise __tmp102730)))
    (define gxc#::false-special-form::t
      (let ((__tmp102731 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp102731
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _$args102508_
        (apply make-instance gxc#::false-special-form::t _$args102508_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp102732
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
        (make-promise __tmp102732)))
    (define gxc#::false::t
      (let ((__tmp102733
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (make-class-type 'gxc#::false::t '::false __tmp102733 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _$args102504_
        (apply make-instance gxc#::false::t _$args102504_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp102734
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (make-promise __tmp102734)))
    (define gxc#::identity-expression::t
      (let ((__tmp102735 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp102735
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _$args102500_
        (apply make-instance gxc#::identity-expression::t _$args102500_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp102736
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
        (make-promise __tmp102736)))
    (define gxc#::identity-special-form::t
      (let ((__tmp102737 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp102737
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _$args102496_
        (apply make-instance gxc#::identity-special-form::t _$args102496_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp102738
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
        (make-promise __tmp102738)))
    (define gxc#::identity::t
      (let ((__tmp102739
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::identity::t
         '::identity
         __tmp102739
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _$args102492_
        (apply make-instance gxc#::identity::t _$args102492_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp102740
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (make-promise __tmp102740)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp102741 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp102741
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _$args102488_
        (apply make-instance gxc#::basic-xform-expression::t _$args102488_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp102742
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
        (make-promise __tmp102742)))
    (define gxc#::basic-xform::t
      (let ((__tmp102743
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp102743
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _$args102484_
        (apply make-instance gxc#::basic-xform::t _$args102484_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp102744
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
        (make-promise __tmp102744)))
    (define gxc#apply-begin%
      (lambda (_self102440_ _stx102441_)
        (let* ((_g102443102453_
                (lambda (_g102444102450_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102444102450_))))
               (_g102442102480_
                (lambda (_g102444102456_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102444102456_))
                      (let ((_e102448102458_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102444102456_))))
                        (let ((_hd102447102461_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102448102458_)))
                              (_tl102446102463_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102448102458_))))
                          ((lambda (_L102466_)
                             (for-each
                              (lambda (_g102475102477_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1
                                   _self102440_
                                   _g102475102477_)))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _L102466_))))
                           _tl102446102463_)))
                      (let ()
                        (declare (not safe))
                        (_g102443102453_ _g102444102456_))))))
          (declare (not safe))
          (_g102442102480_ _stx102441_))))
    (define gxc#apply-last-begin%
      (lambda (_self102401_ _stx102402_)
        (let* ((_g102404102414_
                (lambda (_g102405102411_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102405102411_))))
               (_g102403102437_
                (lambda (_g102405102417_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102405102417_))
                      (let ((_e102409102419_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102405102417_))))
                        (let ((_hd102408102422_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102409102419_)))
                              (_tl102407102424_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102409102419_))))
                          ((lambda (_L102427_)
                             (let ((__tmp102745 (last _L102427_)))
                               (declare (not safe))
                               (gxc#compile-e__1 _self102401_ __tmp102745)))
                           _tl102407102424_)))
                      (let ()
                        (declare (not safe))
                        (_g102404102414_ _g102405102417_))))))
          (declare (not safe))
          (_g102403102437_ _stx102402_))))
    (define gxc#apply-begin-syntax%
      (lambda (_self102397_ _stx102398_)
        (let ((__tmp102748
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#apply-begin% _self102397_ _stx102398_))))
              (__tmp102746
               (let ((__tmp102747 (gx#current-expander-phi)))
                 (declare (not safe))
                 (fx+ __tmp102747 '1))))
          (declare (not safe))
          (call-with-parameters
           __tmp102748
           gx#current-expander-phi
           __tmp102746))))
    (define gxc#apply-module%
      (lambda (_self102336_ _stx102337_)
        (let* ((_g102339102353_
                (lambda (_g102340102350_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102340102350_))))
               (_g102338102394_
                (lambda (_g102340102356_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102340102356_))
                      (let ((_e102345102358_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102340102356_))))
                        (let ((_hd102344102361_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102345102358_)))
                              (_tl102343102363_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102345102358_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102343102363_))
                              (let ((_e102348102366_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102343102363_))))
                                (let ((_hd102347102369_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102348102366_)))
                                      (_tl102346102371_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102348102366_))))
                                  ((lambda (_L102374_ _L102375_)
                                     (let* ((_ctx102388_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L102375_)))
                                            (_ctx-stx102390_
                                             (##structure-ref
                                              _ctx102388_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp102749
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self102336_
                                                   _ctx-stx102390_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp102749
                                          gx#current-expander-context
                                          _ctx102388_))))
                                   _tl102346102371_
                                   _hd102347102369_)))
                              (let ()
                                (declare (not safe))
                                (_g102339102353_ _g102340102356_)))))
                      (let ()
                        (declare (not safe))
                        (_g102339102353_ _g102340102356_))))))
          (declare (not safe))
          (_g102338102394_ _stx102337_))))
    (define gxc#apply-begin-annotation%
      (lambda (_self102268_ _stx102269_)
        (let* ((_g102271102288_
                (lambda (_g102272102285_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102272102285_))))
               (_g102270102333_
                (lambda (_g102272102291_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102272102291_))
                      (let ((_e102277102293_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102272102291_))))
                        (let ((_hd102276102296_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102277102293_)))
                              (_tl102275102298_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102277102293_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102275102298_))
                              (let ((_e102280102301_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102275102298_))))
                                (let ((_hd102279102304_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102280102301_)))
                                      (_tl102278102306_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102280102301_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl102278102306_))
                                      (let ((_e102283102309_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl102278102306_))))
                                        (let ((_hd102282102312_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e102283102309_)))
                                              (_tl102281102314_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e102283102309_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl102281102314_))
                                              ((lambda (_L102317_ _L102318_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self102268_
                                                    _L102317_)))
                                               _hd102282102312_
                                               _hd102279102304_)
                                              (let ()
                                                (declare (not safe))
                                                (_g102271102288_
                                                 _g102272102291_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g102271102288_ _g102272102291_)))))
                              (let ()
                                (declare (not safe))
                                (_g102271102288_ _g102272102291_)))))
                      (let ()
                        (declare (not safe))
                        (_g102271102288_ _g102272102291_))))))
          (declare (not safe))
          (_g102270102333_ _stx102269_))))
    (define gxc#apply-define-values%
      (lambda (_self102200_ _stx102201_)
        (let* ((_g102203102220_
                (lambda (_g102204102217_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102204102217_))))
               (_g102202102265_
                (lambda (_g102204102223_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102204102223_))
                      (let ((_e102209102225_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102204102223_))))
                        (let ((_hd102208102228_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102209102225_)))
                              (_tl102207102230_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102209102225_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102207102230_))
                              (let ((_e102212102233_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102207102230_))))
                                (let ((_hd102211102236_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102212102233_)))
                                      (_tl102210102238_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102212102233_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl102210102238_))
                                      (let ((_e102215102241_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl102210102238_))))
                                        (let ((_hd102214102244_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e102215102241_)))
                                              (_tl102213102246_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e102215102241_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl102213102246_))
                                              ((lambda (_L102249_ _L102250_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self102200_
                                                    _L102249_)))
                                               _hd102214102244_
                                               _hd102211102236_)
                                              (let ()
                                                (declare (not safe))
                                                (_g102203102220_
                                                 _g102204102223_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g102203102220_ _g102204102223_)))))
                              (let ()
                                (declare (not safe))
                                (_g102203102220_ _g102204102223_)))))
                      (let ()
                        (declare (not safe))
                        (_g102203102220_ _g102204102223_))))))
          (declare (not safe))
          (_g102202102265_ _stx102201_))))
    (define gxc#apply-define-syntax%
      (lambda (_self102131_ _stx102132_)
        (let* ((_g102134102151_
                (lambda (_g102135102148_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102135102148_))))
               (_g102133102197_
                (lambda (_g102135102154_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102135102154_))
                      (let ((_e102140102156_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102135102154_))))
                        (let ((_hd102139102159_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102140102156_)))
                              (_tl102138102161_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102140102156_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102138102161_))
                              (let ((_e102143102164_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102138102161_))))
                                (let ((_hd102142102167_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102143102164_)))
                                      (_tl102141102169_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102143102164_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl102141102169_))
                                      (let ((_e102146102172_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl102141102169_))))
                                        (let ((_hd102145102175_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e102146102172_)))
                                              (_tl102144102177_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e102146102172_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl102144102177_))
                                              ((lambda (_L102180_ _L102181_)
                                                 (let ((__tmp102752
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _self102131_
                                                             _L102180_))))
                                                       (__tmp102750
                                                        (let ((__tmp102751
                                                               (gx#current-expander-phi)))
                                                          (declare (not safe))
                                                          (fx+ __tmp102751
                                                               '1))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp102752
                                                    gx#current-expander-phi
                                                    __tmp102750)))
                                               _hd102145102175_
                                               _hd102142102167_)
                                              (let ()
                                                (declare (not safe))
                                                (_g102134102151_
                                                 _g102135102154_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g102134102151_ _g102135102154_)))))
                              (let ()
                                (declare (not safe))
                                (_g102134102151_ _g102135102154_)))))
                      (let ()
                        (declare (not safe))
                        (_g102134102151_ _g102135102154_))))))
          (declare (not safe))
          (_g102133102197_ _stx102132_))))
    (define gxc#apply-body-lambda%
      (lambda (_self102063_ _stx102064_)
        (let* ((_g102066102083_
                (lambda (_g102067102080_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102067102080_))))
               (_g102065102128_
                (lambda (_g102067102086_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102067102086_))
                      (let ((_e102072102088_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102067102086_))))
                        (let ((_hd102071102091_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102072102088_)))
                              (_tl102070102093_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102072102088_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102070102093_))
                              (let ((_e102075102096_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102070102093_))))
                                (let ((_hd102074102099_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102075102096_)))
                                      (_tl102073102101_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102075102096_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl102073102101_))
                                      (let ((_e102078102104_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl102073102101_))))
                                        (let ((_hd102077102107_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e102078102104_)))
                                              (_tl102076102109_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e102078102104_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl102076102109_))
                                              ((lambda (_L102112_ _L102113_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self102063_
                                                    _L102112_)))
                                               _hd102077102107_
                                               _hd102074102099_)
                                              (let ()
                                                (declare (not safe))
                                                (_g102066102083_
                                                 _g102067102086_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g102066102083_ _g102067102086_)))))
                              (let ()
                                (declare (not safe))
                                (_g102066102083_ _g102067102086_)))))
                      (let ()
                        (declare (not safe))
                        (_g102066102083_ _g102067102086_))))))
          (declare (not safe))
          (_g102065102128_ _stx102064_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_self101945_ _stx101946_)
        (let* ((_g101948101976_
                (lambda (_g101949101973_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101949101973_))))
               (_g101947102060_
                (lambda (_g101949101979_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101949101979_))
                      (let ((_e101954101981_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101949101979_))))
                        (let ((_hd101953101984_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101954101981_)))
                              (_tl101952101986_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101954101981_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl101952101986_))
                              (let ((_g102753_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl101952101986_
                                        '0))))
                                (begin
                                  (let ((_g102754_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g102753_)
                                               (##vector-length _g102753_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g102754_ 2)))
                                        (error "Context expects 2 values"
                                               _g102754_)))
                                  (let ((_target101955101989_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g102753_ 0)))
                                        (_tl101957101991_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g102753_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl101957101991_))
                                        (letrec ((_loop101958101994_
                                                  (lambda (_hd101956101997_
                                                           _body101962101999_
                                                           _hd101963102001_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd101956101997_))
                                                        (let ((_e101959102004_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd101956101997_))))
                  (let ((_lp-hd101960102007_
                         (let () (declare (not safe)) (##car _e101959102004_)))
                        (_lp-tl101961102009_
                         (let ()
                           (declare (not safe))
                           (##cdr _e101959102004_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd101960102007_))
                        (let ((_e101968102012_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd101960102007_))))
                          (let ((_hd101967102015_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e101968102012_)))
                                (_tl101966102017_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e101968102012_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl101966102017_))
                                (let ((_e101971102020_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl101966102017_))))
                                  (let ((_hd101970102023_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e101971102020_)))
                                        (_tl101969102025_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e101971102020_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl101969102025_))
                                        (let ((__tmp102757
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd101970102023_
                                                       _body101962101999_)))
                                              (__tmp102756
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd101967102015_
                                                       _hd101963102001_))))
                                          (declare (not safe))
                                          (_loop101958101994_
                                           _lp-tl101961102009_
                                           __tmp102757
                                           __tmp102756))
                                        (let ()
                                          (declare (not safe))
                                          (_g101948101976_ _g101949101979_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g101948101976_ _g101949101979_)))))
                        (let ()
                          (declare (not safe))
                          (_g101948101976_ _g101949101979_)))))
                (let ((_body101964102028_ (reverse _body101962101999_))
                      (_hd101965102030_ (reverse _hd101963102001_)))
                  ((lambda (_L102033_ _L102034_)
                     (for-each
                      (lambda (_g102048102050_)
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _self101945_ _g102048102050_)))
                      (let ((__tmp102755
                             (lambda (_g102052102055_ _g102053102057_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g102052102055_ _g102053102057_)))))
                        (declare (not safe))
                        (foldr1 __tmp102755 '() _L102033_))))
                   _body101964102028_
                   _hd101965102030_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop101958101994_
                                             _target101955101989_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g101948101976_
                                           _g101949101979_))))))
                              (let ()
                                (declare (not safe))
                                (_g101948101976_ _g101949101979_)))))
                      (let ()
                        (declare (not safe))
                        (_g101948101976_ _g101949101979_))))))
          (declare (not safe))
          (_g101947102060_ _stx101946_))))
    (define gxc#apply-body-let-values%
      (lambda (_self101798_ _stx101799_)
        (let* ((_g101801101836_
                (lambda (_g101802101833_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101802101833_))))
               (_g101800101942_
                (lambda (_g101802101839_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101802101839_))
                      (let ((_e101808101841_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101802101839_))))
                        (let ((_hd101807101844_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101808101841_)))
                              (_tl101806101846_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101808101841_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101806101846_))
                              (let ((_e101811101849_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101806101846_))))
                                (let ((_hd101810101852_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101811101849_)))
                                      (_tl101809101854_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101811101849_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd101810101852_))
                                      (let ((_g102758_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd101810101852_
                                                '0))))
                                        (begin
                                          (let ((_g102759_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g102758_)
                                                       (##vector-length
                                                        _g102758_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g102759_ 2)))
                                                (error "Context expects 2 values"
                                                       _g102759_)))
                                          (let ((_target101812101857_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g102758_ 0)))
                                                (_tl101814101859_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g102758_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl101814101859_))
                                                (letrec ((_loop101815101862_
                                                          (lambda (_hd101813101865_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr101819101867_
                           _hd101820101869_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd101813101865_))
                        (let ((_e101816101872_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd101813101865_))))
                          (let ((_lp-hd101817101875_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e101816101872_)))
                                (_lp-tl101818101877_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e101816101872_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd101817101875_))
                                (let ((_e101825101880_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd101817101875_))))
                                  (let ((_hd101824101883_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e101825101880_)))
                                        (_tl101823101885_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e101825101880_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl101823101885_))
                                        (let ((_e101828101888_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl101823101885_))))
                                          (let ((_hd101827101891_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e101828101888_)))
                                                (_tl101826101893_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e101828101888_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl101826101893_))
                                                (let ((__tmp102763
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd101827101891_
                                                               _expr101819101867_)))
                                                      (__tmp102762
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd101824101883_
                                                               _hd101820101869_))))
                                                  (declare (not safe))
                                                  (_loop101815101862_
                                                   _lp-tl101818101877_
                                                   __tmp102763
                                                   __tmp102762))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g101801101836_
                                                   _g101802101839_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g101801101836_ _g101802101839_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g101801101836_ _g101802101839_)))))
                        (let ((_expr101821101896_ (reverse _expr101819101867_))
                              (_hd101822101898_ (reverse _hd101820101869_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101809101854_))
                              (let ((_e101831101901_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101809101854_))))
                                (let ((_hd101830101904_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101831101901_)))
                                      (_tl101829101906_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101831101901_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl101829101906_))
                                      ((lambda (_L101909_ _L101910_ _L101911_)
                                         (for-each
                                          (lambda (_g101930101932_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self101798_
                                               _g101930101932_)))
                                          (let ((__tmp102761
                                                 (lambda (_g101934101937_
                                                          _g101935101939_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g101934101937_
                                                           _g101935101939_))))
                                                (__tmp102760
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L101909_ '()))))
                                            (declare (not safe))
                                            (foldr1 __tmp102761
                                                    __tmp102760
                                                    _L101910_))))
                                       _hd101830101904_
                                       _expr101821101896_
                                       _hd101822101898_)
                                      (let ()
                                        (declare (not safe))
                                        (_g101801101836_ _g101802101839_)))))
                              (let ()
                                (declare (not safe))
                                (_g101801101836_ _g101802101839_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop101815101862_
                                                     _target101812101857_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g101801101836_
                                                   _g101802101839_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g101801101836_ _g101802101839_)))))
                              (let ()
                                (declare (not safe))
                                (_g101801101836_ _g101802101839_)))))
                      (let ()
                        (declare (not safe))
                        (_g101801101836_ _g101802101839_))))))
          (declare (not safe))
          (_g101800101942_ _stx101799_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_self101743_ _stx101744_)
        (let* ((_g101746101760_
                (lambda (_g101747101757_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101747101757_))))
               (_g101745101795_
                (lambda (_g101747101763_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101747101763_))
                      (let ((_e101752101765_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101747101763_))))
                        (let ((_hd101751101768_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101752101765_)))
                              (_tl101750101770_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101752101765_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101750101770_))
                              (let ((_e101755101773_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101750101770_))))
                                (let ((_hd101754101776_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101755101773_)))
                                      (_tl101753101778_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101755101773_))))
                                  ((lambda (_L101781_ _L101782_)
                                     (let ((__tmp102764 (last _L101781_)))
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _self101743_
                                        __tmp102764)))
                                   _tl101753101778_
                                   _hd101754101776_)))
                              (let ()
                                (declare (not safe))
                                (_g101746101760_ _g101747101763_)))))
                      (let ()
                        (declare (not safe))
                        (_g101746101760_ _g101747101763_))))))
          (declare (not safe))
          (_g101745101795_ _stx101744_))))
    (define gxc#apply-body-setq%
      (lambda (_self101675_ _stx101676_)
        (let* ((_g101678101695_
                (lambda (_g101679101692_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101679101692_))))
               (_g101677101740_
                (lambda (_g101679101698_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101679101698_))
                      (let ((_e101684101700_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101679101698_))))
                        (let ((_hd101683101703_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101684101700_)))
                              (_tl101682101705_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101684101700_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101682101705_))
                              (let ((_e101687101708_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101682101705_))))
                                (let ((_hd101686101711_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101687101708_)))
                                      (_tl101685101713_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101687101708_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl101685101713_))
                                      (let ((_e101690101716_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl101685101713_))))
                                        (let ((_hd101689101719_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e101690101716_)))
                                              (_tl101688101721_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e101690101716_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl101688101721_))
                                              ((lambda (_L101724_ _L101725_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self101675_
                                                    _L101724_)))
                                               _hd101689101719_
                                               _hd101686101711_)
                                              (let ()
                                                (declare (not safe))
                                                (_g101678101695_
                                                 _g101679101698_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g101678101695_ _g101679101698_)))))
                              (let ()
                                (declare (not safe))
                                (_g101678101695_ _g101679101698_)))))
                      (let ()
                        (declare (not safe))
                        (_g101678101695_ _g101679101698_))))))
          (declare (not safe))
          (_g101677101740_ _stx101676_))))
    (define gxc#apply-operands
      (lambda (_self101588_ _stx101589_)
        (let* ((_g101591101610_
                (lambda (_g101592101607_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101592101607_))))
               (_g101590101672_
                (lambda (_g101592101613_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101592101613_))
                      (let ((_e101596101615_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101592101613_))))
                        (let ((_hd101595101618_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101596101615_)))
                              (_tl101594101620_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101596101615_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl101594101620_))
                              (let ((_g102765_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl101594101620_
                                        '0))))
                                (begin
                                  (let ((_g102766_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g102765_)
                                               (##vector-length _g102765_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g102766_ 2)))
                                        (error "Context expects 2 values"
                                               _g102766_)))
                                  (let ((_target101597101623_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g102765_ 0)))
                                        (_tl101599101625_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g102765_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl101599101625_))
                                        (letrec ((_loop101600101628_
                                                  (lambda (_hd101598101631_
                                                           _rands101604101633_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd101598101631_))
                                                        (let ((_e101601101636_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd101598101631_))))
                  (let ((_lp-hd101602101639_
                         (let () (declare (not safe)) (##car _e101601101636_)))
                        (_lp-tl101603101641_
                         (let ()
                           (declare (not safe))
                           (##cdr _e101601101636_))))
                    (let ((__tmp102768
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd101602101639_ _rands101604101633_))))
                      (declare (not safe))
                      (_loop101600101628_ _lp-tl101603101641_ __tmp102768))))
                (let ((_rands101605101644_ (reverse _rands101604101633_)))
                  ((lambda (_L101647_)
                     (for-each
                      (lambda (_g101660101662_)
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _self101588_ _g101660101662_)))
                      (let ((__tmp102767
                             (lambda (_g101664101667_ _g101665101669_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g101664101667_ _g101665101669_)))))
                        (declare (not safe))
                        (foldr1 __tmp102767 '() _L101647_))))
                   _rands101605101644_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop101600101628_
                                             _target101597101623_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g101591101610_
                                           _g101592101613_))))))
                              (let ()
                                (declare (not safe))
                                (_g101591101610_ _g101592101613_)))))
                      (let ()
                        (declare (not safe))
                        (_g101591101610_ _g101592101613_))))))
          (declare (not safe))
          (_g101590101672_ _stx101589_))))
    (define gxc#xform-wrap-source
      (lambda (_stx101585_ _src-stx101586_)
        (let ((__tmp102769
               (let () (declare (not safe)) (gx#stx-source _src-stx101586_))))
          (declare (not safe))
          (gx#stx-wrap-source _stx101585_ __tmp102769))))
    (define gxc#xform-begin%
      (lambda (_self101540_ _stx101541_)
        (let* ((_g101543101553_
                (lambda (_g101544101550_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101544101550_))))
               (_g101542101582_
                (lambda (_g101544101556_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101544101556_))
                      (let ((_e101548101558_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101544101556_))))
                        (let ((_hd101547101561_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101548101558_)))
                              (_tl101546101563_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101548101558_))))
                          ((lambda (_L101566_)
                             (let* ((_forms101580_
                                     (map (lambda (_g101575101577_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self101540_
                                               _g101575101577_)))
                                          _L101566_))
                                    (__tmp102770
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#begin _forms101580_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp102770
                                _stx101541_)))
                           _tl101546101563_)))
                      (let ()
                        (declare (not safe))
                        (_g101543101553_ _g101544101556_))))))
          (declare (not safe))
          (_g101542101582_ _stx101541_))))
    (define gxc#xform-begin-syntax%
      (lambda (_self101494_ _stx101495_)
        (let* ((_g101497101507_
                (lambda (_g101498101504_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101498101504_))))
               (_g101496101537_
                (lambda (_g101498101510_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101498101510_))
                      (let ((_e101502101512_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101498101510_))))
                        (let ((_hd101501101515_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101502101512_)))
                              (_tl101500101517_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101502101512_))))
                          ((lambda (_L101520_)
                             (let ((__tmp102773
                                    (lambda ()
                                      (let* ((_forms101535_
                                              (map (lambda (_g101530101532_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _self101494_
                                                        _g101530101532_)))
                                                   _L101520_))
                                             (__tmp102774
                                              (let ()
                                                (declare (not safe))
                                                (cons '%#begin-syntax
                                                      _forms101535_))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp102774
                                         _stx101495_))))
                                   (__tmp102771
                                    (let ((__tmp102772
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp102772 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp102773
                                gx#current-expander-phi
                                __tmp102771)))
                           _tl101500101517_)))
                      (let ()
                        (declare (not safe))
                        (_g101497101507_ _g101498101510_))))))
          (declare (not safe))
          (_g101496101537_ _stx101495_))))
    (define gxc#xform-module%
      (lambda (_self101431_ _stx101432_)
        (let* ((_g101434101448_
                (lambda (_g101435101445_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101435101445_))))
               (_g101433101491_
                (lambda (_g101435101451_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101435101451_))
                      (let ((_e101440101453_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101435101451_))))
                        (let ((_hd101439101456_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101440101453_)))
                              (_tl101438101458_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101440101453_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101438101458_))
                              (let ((_e101443101461_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101438101458_))))
                                (let ((_hd101442101464_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101443101461_)))
                                      (_tl101441101466_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101443101461_))))
                                  ((lambda (_L101469_ _L101470_)
                                     (let* ((_ctx101483_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L101470_)))
                                            (_code101485_
                                             (##structure-ref
                                              _ctx101483_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_code101488_
                                             (let ((__tmp102775
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _self101431_
                                                         _code101485_)))))
                                               (declare (not safe))
                                               (call-with-parameters
                                                __tmp102775
                                                gx#current-expander-context
                                                _ctx101483_))))
                                       (##structure-set!
                                        _ctx101483_
                                        _code101488_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp102776
                                              (let ((__tmp102777
                                                     (let ((__tmp102778
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _code101488_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L101470_ __tmp102778))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#module __tmp102777))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp102776
                                          _stx101432_))))
                                   _tl101441101466_
                                   _hd101442101464_)))
                              (let ()
                                (declare (not safe))
                                (_g101434101448_ _g101435101451_)))))
                      (let ()
                        (declare (not safe))
                        (_g101434101448_ _g101435101451_))))))
          (declare (not safe))
          (_g101433101491_ _stx101432_))))
    (define gxc#xform-define-values%
      (lambda (_self101361_ _stx101362_)
        (let* ((_g101364101381_
                (lambda (_g101365101378_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101365101378_))))
               (_g101363101428_
                (lambda (_g101365101384_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101365101384_))
                      (let ((_e101370101386_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101365101384_))))
                        (let ((_hd101369101389_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101370101386_)))
                              (_tl101368101391_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101370101386_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101368101391_))
                              (let ((_e101373101394_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101368101391_))))
                                (let ((_hd101372101397_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101373101394_)))
                                      (_tl101371101399_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101373101394_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl101371101399_))
                                      (let ((_e101376101402_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl101371101399_))))
                                        (let ((_hd101375101405_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e101376101402_)))
                                              (_tl101374101407_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e101376101402_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl101374101407_))
                                              ((lambda (_L101410_ _L101411_)
                                                 (let* ((_expr101426_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self101361_
                                                            _L101410_)))
                                                        (__tmp102779
                                                         (let ((__tmp102780
                                                                (let ((__tmp102781
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _expr101426_ '()))))
                          (declare (not safe))
                          (cons _L101411_ __tmp102781))))
                   (declare (not safe))
                   (cons '%#define-values __tmp102780))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp102779
                                                    _stx101362_)))
                                               _hd101375101405_
                                               _hd101372101397_)
                                              (let ()
                                                (declare (not safe))
                                                (_g101364101381_
                                                 _g101365101384_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g101364101381_ _g101365101384_)))))
                              (let ()
                                (declare (not safe))
                                (_g101364101381_ _g101365101384_)))))
                      (let ()
                        (declare (not safe))
                        (_g101364101381_ _g101365101384_))))))
          (declare (not safe))
          (_g101363101428_ _stx101362_))))
    (define gxc#xform-define-syntax%
      (lambda (_self101290_ _stx101291_)
        (let* ((_g101293101310_
                (lambda (_g101294101307_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101294101307_))))
               (_g101292101358_
                (lambda (_g101294101313_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101294101313_))
                      (let ((_e101299101315_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101294101313_))))
                        (let ((_hd101298101318_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101299101315_)))
                              (_tl101297101320_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101299101315_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101297101320_))
                              (let ((_e101302101323_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101297101320_))))
                                (let ((_hd101301101326_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101302101323_)))
                                      (_tl101300101328_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101302101323_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl101300101328_))
                                      (let ((_e101305101331_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl101300101328_))))
                                        (let ((_hd101304101334_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e101305101331_)))
                                              (_tl101303101336_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e101305101331_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl101303101336_))
                                              ((lambda (_L101339_ _L101340_)
                                                 (let ((__tmp102784
                                                        (lambda ()
                                                          (let* ((_expr101356_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__1 _self101290_ _L101339_)))
                         (__tmp102785
                          (let ((__tmp102786
                                 (let ((__tmp102787
                                        (let ()
                                          (declare (not safe))
                                          (cons _expr101356_ '()))))
                                   (declare (not safe))
                                   (cons _L101340_ __tmp102787))))
                            (declare (not safe))
                            (cons '%#define-syntax __tmp102786))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp102785 _stx101291_))))
               (__tmp102782
                (let ((__tmp102783 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp102783 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp102784
                                                    gx#current-expander-phi
                                                    __tmp102782)))
                                               _hd101304101334_
                                               _hd101301101326_)
                                              (let ()
                                                (declare (not safe))
                                                (_g101293101310_
                                                 _g101294101313_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g101293101310_ _g101294101313_)))))
                              (let ()
                                (declare (not safe))
                                (_g101293101310_ _g101294101313_)))))
                      (let ()
                        (declare (not safe))
                        (_g101293101310_ _g101294101313_))))))
          (declare (not safe))
          (_g101292101358_ _stx101291_))))
    (define gxc#xform-begin-annotation%
      (lambda (_self101220_ _stx101221_)
        (let* ((_g101223101240_
                (lambda (_g101224101237_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101224101237_))))
               (_g101222101287_
                (lambda (_g101224101243_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101224101243_))
                      (let ((_e101229101245_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101224101243_))))
                        (let ((_hd101228101248_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101229101245_)))
                              (_tl101227101250_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101229101245_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101227101250_))
                              (let ((_e101232101253_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101227101250_))))
                                (let ((_hd101231101256_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101232101253_)))
                                      (_tl101230101258_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101232101253_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl101230101258_))
                                      (let ((_e101235101261_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl101230101258_))))
                                        (let ((_hd101234101264_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e101235101261_)))
                                              (_tl101233101266_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e101235101261_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl101233101266_))
                                              ((lambda (_L101269_ _L101270_)
                                                 (let* ((_expr101285_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self101220_
                                                            _L101269_)))
                                                        (__tmp102788
                                                         (let ((__tmp102789
                                                                (let ((__tmp102790
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _expr101285_ '()))))
                          (declare (not safe))
                          (cons _L101270_ __tmp102790))))
                   (declare (not safe))
                   (cons '%#begin-annotation __tmp102789))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp102788
                                                    _stx101221_)))
                                               _hd101234101264_
                                               _hd101231101256_)
                                              (let ()
                                                (declare (not safe))
                                                (_g101223101240_
                                                 _g101224101243_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g101223101240_ _g101224101243_)))))
                              (let ()
                                (declare (not safe))
                                (_g101223101240_ _g101224101243_)))))
                      (let ()
                        (declare (not safe))
                        (_g101223101240_ _g101224101243_))))))
          (declare (not safe))
          (_g101222101287_ _stx101221_))))
    (define gxc#xform-lambda%
      (lambda (_self101159_ _stx101160_)
        (let* ((_g101162101176_
                (lambda (_g101163101173_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101163101173_))))
               (_g101161101217_
                (lambda (_g101163101179_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101163101179_))
                      (let ((_e101168101181_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101163101179_))))
                        (let ((_hd101167101184_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101168101181_)))
                              (_tl101166101186_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101168101181_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101166101186_))
                              (let ((_e101171101189_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101166101186_))))
                                (let ((_hd101170101192_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101171101189_)))
                                      (_tl101169101194_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101171101189_))))
                                  ((lambda (_L101197_ _L101198_)
                                     (let* ((_body101215_
                                             (map (lambda (_g101210101212_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _self101159_
                                                       _g101210101212_)))
                                                  _L101197_))
                                            (__tmp102791
                                             (let ((__tmp102792
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L101198_
                                                            _body101215_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp102792))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp102791
                                        _stx101160_)))
                                   _tl101169101194_
                                   _hd101170101192_)))
                              (let ()
                                (declare (not safe))
                                (_g101162101176_ _g101163101179_)))))
                      (let ()
                        (declare (not safe))
                        (_g101162101176_ _g101163101179_))))))
          (declare (not safe))
          (_g101161101217_ _stx101160_))))
    (define gxc#xform-case-lambda%
      (lambda (_self101068_ _stx101069_)
        (letrec ((_clause-e101071_
                  (lambda (_clause101112_)
                    (let* ((_g101114101125_
                            (lambda (_g101115101122_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g101115101122_))))
                           (_g101113101156_
                            (lambda (_g101115101128_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g101115101128_))
                                  (let ((_e101120101130_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g101115101128_))))
                                    (let ((_hd101119101133_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e101120101130_)))
                                          (_tl101118101135_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e101120101130_))))
                                      ((lambda (_L101138_ _L101139_)
                                         (let ((_body101154_
                                                (map (lambda (_g101149101151_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _self101068_
                                                          _g101149101151_)))
                                                     _L101138_)))
                                           (declare (not safe))
                                           (cons _L101139_ _body101154_)))
                                       _tl101118101135_
                                       _hd101119101133_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g101114101125_ _g101115101128_))))))
                      (declare (not safe))
                      (_g101113101156_ _clause101112_)))))
          (let* ((_g101073101083_
                  (lambda (_g101074101080_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g101074101080_))))
                 (_g101072101109_
                  (lambda (_g101074101086_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g101074101086_))
                        (let ((_e101078101088_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g101074101086_))))
                          (let ((_hd101077101091_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e101078101088_)))
                                (_tl101076101093_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e101078101088_))))
                            ((lambda (_L101096_)
                               (let* ((_clauses101107_
                                       (map _clause-e101071_ _L101096_))
                                      (__tmp102793
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses101107_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp102793
                                  _stx101069_)))
                             _tl101076101093_)))
                        (let ()
                          (declare (not safe))
                          (_g101073101083_ _g101074101086_))))))
            (declare (not safe))
            (_g101072101109_ _stx101069_)))))
    (define gxc#xform-let-values%
      (lambda (_self100854_ _stx100855_)
        (let* ((_g100857100890_
                (lambda (_g100858100887_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g100858100887_))))
               (_g100856101065_
                (lambda (_g100858100893_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g100858100893_))
                      (let ((_e100865100895_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g100858100893_))))
                        (let ((_hd100864100898_
                               (let ()
                                 (declare (not safe))
                                 (##car _e100865100895_)))
                              (_tl100863100900_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e100865100895_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl100863100900_))
                              (let ((_e100868100903_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl100863100900_))))
                                (let ((_hd100867100906_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e100868100903_)))
                                      (_tl100866100908_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e100868100903_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd100867100906_))
                                      (let ((_g102794_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd100867100906_
                                                '0))))
                                        (begin
                                          (let ((_g102795_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g102794_)
                                                       (##vector-length
                                                        _g102794_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g102795_ 2)))
                                                (error "Context expects 2 values"
                                                       _g102795_)))
                                          (let ((_target100869100911_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g102794_ 0)))
                                                (_tl100871100913_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g102794_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl100871100913_))
                                                (letrec ((_loop100872100916_
                                                          (lambda (_hd100870100919_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr100876100921_
                           _hd100877100923_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd100870100919_))
                        (let ((_e100873100926_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd100870100919_))))
                          (let ((_lp-hd100874100929_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e100873100926_)))
                                (_lp-tl100875100931_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e100873100926_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd100874100929_))
                                (let ((_e100882100934_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd100874100929_))))
                                  (let ((_hd100881100937_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e100882100934_)))
                                        (_tl100880100939_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e100882100934_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl100880100939_))
                                        (let ((_e100885100942_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl100880100939_))))
                                          (let ((_hd100884100945_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e100885100942_)))
                                                (_tl100883100947_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e100885100942_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl100883100947_))
                                                (let ((__tmp102808
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd100884100945_
                                                               _expr100876100921_)))
                                                      (__tmp102807
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd100881100937_
                                                               _hd100877100923_))))
                                                  (declare (not safe))
                                                  (_loop100872100916_
                                                   _lp-tl100875100931_
                                                   __tmp102808
                                                   __tmp102807))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g100857100890_
                                                   _g100858100893_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g100857100890_ _g100858100893_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g100857100890_ _g100858100893_)))))
                        (let ((_expr100878100950_ (reverse _expr100876100921_))
                              (_hd100879100952_ (reverse _hd100877100923_)))
                          ((lambda (_L100955_ _L100956_ _L100957_ _L100958_)
                             (let* ((_g100977100993_
                                     (lambda (_g100978100990_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g100978100990_))))
                                    (_g100976101051_
                                     (lambda (_g100978100996_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _g100978100996_))
                                           (let ((_g102796_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _g100978100996_
                                                     '0))))
                                             (begin
                                               (let ((_g102797_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g102796_)
                                                            (##vector-length
                                                             _g102796_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g102797_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g102797_)))
                                               (let ((_target100980100998_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g102796_
                                                         0)))
                                                     (_tl100982101000_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g102796_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl100982101000_))
                                                     (letrec ((_loop100983101003_
                                                               (lambda (_hd100981101006_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr100987101008_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _hd100981101006_))
                             (let ((_e100984101011_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _hd100981101006_))))
                               (let ((_lp-hd100985101014_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e100984101011_)))
                                     (_lp-tl100986101016_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e100984101011_))))
                                 (let ((__tmp102804
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd100985101014_
                                                _expr100987101008_))))
                                   (declare (not safe))
                                   (_loop100983101003_
                                    _lp-tl100986101016_
                                    __tmp102804))))
                             (let ((_expr100988101019_
                                    (reverse _expr100987101008_)))
                               ((lambda (_L101022_)
                                  (let ()
                                    (let* ((_body101039_
                                            (map (lambda (_g101034101036_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self100854_
                                                      _g101034101036_)))
                                                 _L100955_))
                                           (__tmp102798
                                            (let ((__tmp102799
                                                   (let ((__tmp102800
                                                          (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _L101022_
                                                               _L100957_))
                                                            (let ((__tmp102801
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g101040101044_
                                    _g101041101046_
                                    _g101042101048_)
                             (let ((__tmp102802
                                    (let ((__tmp102803
                                           (let ()
                                             (declare (not safe))
                                             (cons _g101040101044_ '()))))
                                      (declare (not safe))
                                      (cons _g101041101046_ __tmp102803))))
                               (declare (not safe))
                               (cons __tmp102802 _g101042101048_)))))
                      (declare (not safe))
                      (foldr2 __tmp102801 '() _L101022_ _L100957_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp102800
                                                           _body101039_))))
                                              (declare (not safe))
                                              (cons _L100958_ __tmp102799))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp102798
                                       _stx100855_))))
                                _expr100988101019_))))))
               (let ()
                 (declare (not safe))
                 (_loop100983101003_ _target100980100998_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g100977100993_
                                                        _g100978100996_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_g100977100993_
                                              _g100978100996_)))))
                                    (__tmp102805
                                     (map (lambda (_g101053101055_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self100854_
                                               _g101053101055_)))
                                          (let ((__tmp102806
                                                 (lambda (_g101057101060_
                                                          _g101058101062_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g101057101060_
                                                           _g101058101062_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp102806
                                                    '()
                                                    _L100956_)))))
                               (declare (not safe))
                               (_g100976101051_ __tmp102805)))
                           _tl100866100908_
                           _expr100878100950_
                           _hd100879100952_
                           _hd100864100898_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop100872100916_
                                                     _target100869100911_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g100857100890_
                                                   _g100858100893_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g100857100890_ _g100858100893_)))))
                              (let ()
                                (declare (not safe))
                                (_g100857100890_ _g100858100893_)))))
                      (let ()
                        (declare (not safe))
                        (_g100857100890_ _g100858100893_))))))
          (declare (not safe))
          (_g100856101065_ _stx100855_))))
    (define gxc#xform-operands
      (lambda (_self100806_ _stx100807_)
        (let* ((_g100809100820_
                (lambda (_g100810100817_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g100810100817_))))
               (_g100808100851_
                (lambda (_g100810100823_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g100810100823_))
                      (let ((_e100815100825_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g100810100823_))))
                        (let ((_hd100814100828_
                               (let ()
                                 (declare (not safe))
                                 (##car _e100815100825_)))
                              (_tl100813100830_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e100815100825_))))
                          ((lambda (_L100833_ _L100834_)
                             (let* ((_rands100849_
                                     (map (lambda (_g100844100846_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self100806_
                                               _g100844100846_)))
                                          _L100833_))
                                    (__tmp102809
                                     (let ()
                                       (declare (not safe))
                                       (cons _L100834_ _rands100849_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp102809
                                _stx100807_)))
                           _tl100813100830_
                           _hd100814100828_)))
                      (let ()
                        (declare (not safe))
                        (_g100809100820_ _g100810100823_))))))
          (declare (not safe))
          (_g100808100851_ _stx100807_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_self100736_ _stx100737_)
        (let* ((_g100739100756_
                (lambda (_g100740100753_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g100740100753_))))
               (_g100738100803_
                (lambda (_g100740100759_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g100740100759_))
                      (let ((_e100745100761_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g100740100759_))))
                        (let ((_hd100744100764_
                               (let ()
                                 (declare (not safe))
                                 (##car _e100745100761_)))
                              (_tl100743100766_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e100745100761_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl100743100766_))
                              (let ((_e100748100769_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl100743100766_))))
                                (let ((_hd100747100772_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e100748100769_)))
                                      (_tl100746100774_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e100748100769_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl100746100774_))
                                      (let ((_e100751100777_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl100746100774_))))
                                        (let ((_hd100750100780_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e100751100777_)))
                                              (_tl100749100782_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e100751100777_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl100749100782_))
                                              ((lambda (_L100785_ _L100786_)
                                                 (let* ((_expr100801_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self100736_
                                                            _L100785_)))
                                                        (__tmp102810
                                                         (let ((__tmp102811
                                                                (let ((__tmp102812
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _expr100801_ '()))))
                          (declare (not safe))
                          (cons _L100786_ __tmp102812))))
                   (declare (not safe))
                   (cons '%#set! __tmp102811))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp102810
                                                    _stx100737_)))
                                               _hd100750100780_
                                               _hd100747100772_)
                                              (let ()
                                                (declare (not safe))
                                                (_g100739100756_
                                                 _g100740100759_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g100739100756_ _g100740100759_)))))
                              (let ()
                                (declare (not safe))
                                (_g100739100756_ _g100740100759_)))))
                      (let ()
                        (declare (not safe))
                        (_g100739100756_ _g100740100759_))))))
          (declare (not safe))
          (_g100738100803_ _stx100737_))))))
