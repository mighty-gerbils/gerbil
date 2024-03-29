(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1711709197)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_stx99363_)
        (let* ((_self99365_ (gxc#current-compile-method))
               (_$e99367_
                (let ((__tmp99536
                       (let ()
                         (declare (not safe))
                         (gxc#stx-car-e _stx99363_))))
                  (declare (not safe))
                  (method-ref _self99365_ __tmp99536))))
          (if _$e99367_
              ((lambda (_method99370_)
                 (declare (not safe))
                 (_method99370_ _self99365_ _stx99363_))
               _$e99367_)
              (let ((__tmp99538
                     (let () (declare (not safe)) (gxc#stx-car-e _stx99363_)))
                    (__tmp99537
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _stx99363_))))
                (declare (not safe))
                (error '"missing method"
                       _self99365_
                       __tmp99538
                       __tmp99537))))))
    (define gxc#compile-e__1
      (lambda (_self99373_ _stx99374_)
        (let ((_$e99376_
               (let ((__tmp99539
                      (let ()
                        (declare (not safe))
                        (gxc#stx-car-e _stx99374_))))
                 (declare (not safe))
                 (method-ref _self99373_ __tmp99539))))
          (if _$e99376_
              ((lambda (_method99379_)
                 (declare (not safe))
                 (_method99379_ _self99373_ _stx99374_))
               _$e99376_)
              (let ((__tmp99541
                     (let () (declare (not safe)) (gxc#stx-car-e _stx99374_)))
                    (__tmp99540
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _stx99374_))))
                (declare (not safe))
                (error '"missing method"
                       _self99373_
                       __tmp99541
                       __tmp99540))))))
    (define gxc#compile-e
      (lambda _g99543_
        (let ((_g99542_ (let () (declare (not safe)) (##length _g99543_))))
          (cond ((let () (declare (not safe)) (##fx= _g99542_ 1))
                 (apply (lambda (_stx99363_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _stx99363_)))
                        _g99543_))
                ((let () (declare (not safe)) (##fx= _g99542_ 2))
                 (apply (lambda (_self99373_ _stx99374_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__1 _self99373_ _stx99374_)))
                        _g99543_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g99543_))))))
    (define gxc#stx-car-e
      (lambda (_stx99361_)
        (let ((__tmp99544
               (car (let () (declare (not safe)) (gx#stx-e _stx99361_)))))
          (declare (not safe))
          (gx#stx-e __tmp99544))))
    (define gxc#void-method (lambda (_self99358_ _stx99359_) '#!void))
    (define gxc#false-method (lambda (_self99355_ _stx99356_) '#f))
    (define gxc#true-method (lambda (_self99352_ _stx99353_) '#t))
    (define gxc#identity-method (lambda (_self99349_ _stx99350_) _stx99350_))
    (define gxc#::void-expression::t
      (let ((__tmp99545 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp99545
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _$args99346_
        (apply make-instance gxc#::void-expression::t _$args99346_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp99546
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
        (__make-promise __tmp99546)))
    (define gxc#::void-special-form::t
      (let ((__tmp99547 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp99547
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _$args99342_
        (apply make-instance gxc#::void-special-form::t _$args99342_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp99548
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
        (__make-promise __tmp99548)))
    (define gxc#::void::t
      (let ((__tmp99549
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp99549 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _$args99338_ (apply make-instance gxc#::void::t _$args99338_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp99550
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp99550)))
    (define gxc#::false-expression::t
      (let ((__tmp99551 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp99551
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _$args99334_
        (apply make-instance gxc#::false-expression::t _$args99334_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp99552
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
        (__make-promise __tmp99552)))
    (define gxc#::false-special-form::t
      (let ((__tmp99553 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp99553
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _$args99330_
        (apply make-instance gxc#::false-special-form::t _$args99330_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp99554
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
        (__make-promise __tmp99554)))
    (define gxc#::false::t
      (let ((__tmp99555
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp99555 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _$args99326_ (apply make-instance gxc#::false::t _$args99326_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp99556
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp99556)))
    (define gxc#::identity-expression::t
      (let ((__tmp99557 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp99557
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _$args99322_
        (apply make-instance gxc#::identity-expression::t _$args99322_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp99558
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
        (__make-promise __tmp99558)))
    (define gxc#::identity-special-form::t
      (let ((__tmp99559 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp99559
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _$args99318_
        (apply make-instance gxc#::identity-special-form::t _$args99318_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp99560
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
        (__make-promise __tmp99560)))
    (define gxc#::identity::t
      (let ((__tmp99561
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp99561
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _$args99314_
        (apply make-instance gxc#::identity::t _$args99314_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp99562
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp99562)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp99563 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp99563
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _$args99310_
        (apply make-instance gxc#::basic-xform-expression::t _$args99310_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp99564
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
        (__make-promise __tmp99564)))
    (define gxc#::basic-xform::t
      (let ((__tmp99565
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp99565
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _$args99306_
        (apply make-instance gxc#::basic-xform::t _$args99306_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp99566
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
        (__make-promise __tmp99566)))
    (define gxc#apply-begin%
      (lambda (_self99262_ _stx99263_)
        (let* ((_g9926599275_
                (lambda (_g9926699272_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9926699272_))))
               (_g9926499302_
                (lambda (_g9926699278_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9926699278_))
                      (let ((_e9927099280_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9926699278_))))
                        (let ((_hd9926999283_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9927099280_)))
                              (_tl9926899285_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9927099280_))))
                          ((lambda (_L99288_)
                             (for-each
                              (lambda (_g9929799299_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1
                                   _self99262_
                                   _g9929799299_)))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _L99288_))))
                           _tl9926899285_)))
                      (let ()
                        (declare (not safe))
                        (_g9926599275_ _g9926699278_))))))
          (declare (not safe))
          (_g9926499302_ _stx99263_))))
    (define gxc#apply-last-begin%
      (lambda (_self99223_ _stx99224_)
        (let* ((_g9922699236_
                (lambda (_g9922799233_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9922799233_))))
               (_g9922599259_
                (lambda (_g9922799239_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9922799239_))
                      (let ((_e9923199241_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9922799239_))))
                        (let ((_hd9923099244_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9923199241_)))
                              (_tl9922999246_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9923199241_))))
                          ((lambda (_L99249_)
                             (let ((__tmp99567 (last _L99249_)))
                               (declare (not safe))
                               (gxc#compile-e__1 _self99223_ __tmp99567)))
                           _tl9922999246_)))
                      (let ()
                        (declare (not safe))
                        (_g9922699236_ _g9922799239_))))))
          (declare (not safe))
          (_g9922599259_ _stx99224_))))
    (define gxc#apply-begin-syntax%
      (lambda (_self99219_ _stx99220_)
        (let ((__tmp99570
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#apply-begin% _self99219_ _stx99220_))))
              (__tmp99568
               (let ((__tmp99569 (gx#current-expander-phi)))
                 (declare (not safe))
                 (##fx+ __tmp99569 '1))))
          (declare (not safe))
          (__call-with-parameters
           __tmp99570
           gx#current-expander-phi
           __tmp99568))))
    (define gxc#apply-module%
      (lambda (_self99158_ _stx99159_)
        (let* ((_g9916199175_
                (lambda (_g9916299172_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9916299172_))))
               (_g9916099216_
                (lambda (_g9916299178_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9916299178_))
                      (let ((_e9916799180_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9916299178_))))
                        (let ((_hd9916699183_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9916799180_)))
                              (_tl9916599185_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9916799180_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9916599185_))
                              (let ((_e9917099188_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl9916599185_))))
                                (let ((_hd9916999191_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9917099188_)))
                                      (_tl9916899193_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9917099188_))))
                                  ((lambda (_L99196_ _L99197_)
                                     (let* ((_ctx99210_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L99197_)))
                                            (_ctx-stx99212_
                                             (##structure-ref
                                              _ctx99210_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp99571
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self99158_
                                                   _ctx-stx99212_)))))
                                         (declare (not safe))
                                         (__call-with-parameters
                                          __tmp99571
                                          gx#current-expander-context
                                          _ctx99210_))))
                                   _tl9916899193_
                                   _hd9916999191_)))
                              (let ()
                                (declare (not safe))
                                (_g9916199175_ _g9916299178_)))))
                      (let ()
                        (declare (not safe))
                        (_g9916199175_ _g9916299178_))))))
          (declare (not safe))
          (_g9916099216_ _stx99159_))))
    (define gxc#apply-begin-annotation%
      (lambda (_self99090_ _stx99091_)
        (let* ((_g9909399110_
                (lambda (_g9909499107_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9909499107_))))
               (_g9909299155_
                (lambda (_g9909499113_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9909499113_))
                      (let ((_e9909999115_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9909499113_))))
                        (let ((_hd9909899118_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9909999115_)))
                              (_tl9909799120_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9909999115_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9909799120_))
                              (let ((_e9910299123_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl9909799120_))))
                                (let ((_hd9910199126_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9910299123_)))
                                      (_tl9910099128_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9910299123_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl9910099128_))
                                      (let ((_e9910599131_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl9910099128_))))
                                        (let ((_hd9910499134_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9910599131_)))
                                              (_tl9910399136_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9910599131_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl9910399136_))
                                              ((lambda (_L99139_ _L99140_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self99090_
                                                    _L99139_)))
                                               _hd9910499134_
                                               _hd9910199126_)
                                              (let ()
                                                (declare (not safe))
                                                (_g9909399110_
                                                 _g9909499113_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g9909399110_ _g9909499113_)))))
                              (let ()
                                (declare (not safe))
                                (_g9909399110_ _g9909499113_)))))
                      (let ()
                        (declare (not safe))
                        (_g9909399110_ _g9909499113_))))))
          (declare (not safe))
          (_g9909299155_ _stx99091_))))
    (define gxc#apply-define-values%
      (lambda (_self99022_ _stx99023_)
        (let* ((_g9902599042_
                (lambda (_g9902699039_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9902699039_))))
               (_g9902499087_
                (lambda (_g9902699045_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9902699045_))
                      (let ((_e9903199047_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9902699045_))))
                        (let ((_hd9903099050_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9903199047_)))
                              (_tl9902999052_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9903199047_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9902999052_))
                              (let ((_e9903499055_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl9902999052_))))
                                (let ((_hd9903399058_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9903499055_)))
                                      (_tl9903299060_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9903499055_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl9903299060_))
                                      (let ((_e9903799063_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl9903299060_))))
                                        (let ((_hd9903699066_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9903799063_)))
                                              (_tl9903599068_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9903799063_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl9903599068_))
                                              ((lambda (_L99071_ _L99072_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self99022_
                                                    _L99071_)))
                                               _hd9903699066_
                                               _hd9903399058_)
                                              (let ()
                                                (declare (not safe))
                                                (_g9902599042_
                                                 _g9902699045_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g9902599042_ _g9902699045_)))))
                              (let ()
                                (declare (not safe))
                                (_g9902599042_ _g9902699045_)))))
                      (let ()
                        (declare (not safe))
                        (_g9902599042_ _g9902699045_))))))
          (declare (not safe))
          (_g9902499087_ _stx99023_))))
    (define gxc#apply-define-syntax%
      (lambda (_self98953_ _stx98954_)
        (let* ((_g9895698973_
                (lambda (_g9895798970_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9895798970_))))
               (_g9895599019_
                (lambda (_g9895798976_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9895798976_))
                      (let ((_e9896298978_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9895798976_))))
                        (let ((_hd9896198981_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9896298978_)))
                              (_tl9896098983_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9896298978_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9896098983_))
                              (let ((_e9896598986_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl9896098983_))))
                                (let ((_hd9896498989_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9896598986_)))
                                      (_tl9896398991_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9896598986_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl9896398991_))
                                      (let ((_e9896898994_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl9896398991_))))
                                        (let ((_hd9896798997_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9896898994_)))
                                              (_tl9896698999_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9896898994_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl9896698999_))
                                              ((lambda (_L99002_ _L99003_)
                                                 (let ((__tmp99574
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _self98953_
                                                             _L99002_))))
                                                       (__tmp99572
                                                        (let ((__tmp99573
                                                               (gx#current-expander-phi)))
                                                          (declare (not safe))
                                                          (##fx+ __tmp99573
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp99574
                                                    gx#current-expander-phi
                                                    __tmp99572)))
                                               _hd9896798997_
                                               _hd9896498989_)
                                              (let ()
                                                (declare (not safe))
                                                (_g9895698973_
                                                 _g9895798976_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g9895698973_ _g9895798976_)))))
                              (let ()
                                (declare (not safe))
                                (_g9895698973_ _g9895798976_)))))
                      (let ()
                        (declare (not safe))
                        (_g9895698973_ _g9895798976_))))))
          (declare (not safe))
          (_g9895599019_ _stx98954_))))
    (define gxc#apply-body-lambda%
      (lambda (_self98885_ _stx98886_)
        (let* ((_g9888898905_
                (lambda (_g9888998902_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9888998902_))))
               (_g9888798950_
                (lambda (_g9888998908_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9888998908_))
                      (let ((_e9889498910_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9888998908_))))
                        (let ((_hd9889398913_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9889498910_)))
                              (_tl9889298915_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9889498910_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9889298915_))
                              (let ((_e9889798918_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl9889298915_))))
                                (let ((_hd9889698921_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9889798918_)))
                                      (_tl9889598923_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9889798918_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl9889598923_))
                                      (let ((_e9890098926_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl9889598923_))))
                                        (let ((_hd9889998929_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9890098926_)))
                                              (_tl9889898931_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9890098926_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl9889898931_))
                                              ((lambda (_L98934_ _L98935_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self98885_
                                                    _L98934_)))
                                               _hd9889998929_
                                               _hd9889698921_)
                                              (let ()
                                                (declare (not safe))
                                                (_g9888898905_
                                                 _g9888998908_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g9888898905_ _g9888998908_)))))
                              (let ()
                                (declare (not safe))
                                (_g9888898905_ _g9888998908_)))))
                      (let ()
                        (declare (not safe))
                        (_g9888898905_ _g9888998908_))))))
          (declare (not safe))
          (_g9888798950_ _stx98886_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_self98767_ _stx98768_)
        (let* ((_g9877098798_
                (lambda (_g9877198795_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9877198795_))))
               (_g9876998882_
                (lambda (_g9877198801_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9877198801_))
                      (let ((_e9877698803_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9877198801_))))
                        (let ((_hd9877598806_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9877698803_)))
                              (_tl9877498808_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9877698803_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl9877498808_))
                              (let ((_g99575_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl9877498808_
                                        '0))))
                                (begin
                                  (let ((_g99576_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g99575_)
                                               (##vector-length _g99575_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g99576_ 2)))
                                        (error "Context expects 2 values"
                                               _g99576_)))
                                  (let ((_target9877798811_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g99575_ 0)))
                                        (_tl9877998813_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g99575_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl9877998813_))
                                        (letrec ((_loop9878098816_
                                                  (lambda (_hd9877898819_
                                                           _body9878498821_
                                                           _hd9878598823_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd9877898819_))
                                                        (let ((_e9878198826_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd9877898819_))))
                  (let ((_lp-hd9878298829_
                         (let () (declare (not safe)) (##car _e9878198826_)))
                        (_lp-tl9878398831_
                         (let () (declare (not safe)) (##cdr _e9878198826_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd9878298829_))
                        (let ((_e9879098834_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd9878298829_))))
                          (let ((_hd9878998837_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9879098834_)))
                                (_tl9878898839_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9879098834_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl9878898839_))
                                (let ((_e9879398842_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl9878898839_))))
                                  (let ((_hd9879298845_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e9879398842_)))
                                        (_tl9879198847_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e9879398842_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl9879198847_))
                                        (let ((__tmp99578
                                               (cons _hd9879298845_
                                                     _body9878498821_))
                                              (__tmp99577
                                               (cons _hd9878998837_
                                                     _hd9878598823_)))
                                          (declare (not safe))
                                          (_loop9878098816_
                                           _lp-tl9878398831_
                                           __tmp99578
                                           __tmp99577))
                                        (let ()
                                          (declare (not safe))
                                          (_g9877098798_ _g9877198801_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g9877098798_ _g9877198801_)))))
                        (let ()
                          (declare (not safe))
                          (_g9877098798_ _g9877198801_)))))
                (let ((_body9878698850_ (reverse _body9878498821_))
                      (_hd9878798852_ (reverse _hd9878598823_)))
                  ((lambda (_L98855_ _L98856_)
                     (for-each
                      (lambda (_g9887098872_)
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _self98767_ _g9887098872_)))
                      (let ((__tmp99579
                             (lambda (_g9887498877_ _g9887598879_)
                               (cons _g9887498877_ _g9887598879_))))
                        (declare (not safe))
                        (__foldr1 __tmp99579 '() _L98855_))))
                   _body9878698850_
                   _hd9878798852_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop9878098816_
                                             _target9877798811_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g9877098798_ _g9877198801_))))))
                              (let ()
                                (declare (not safe))
                                (_g9877098798_ _g9877198801_)))))
                      (let ()
                        (declare (not safe))
                        (_g9877098798_ _g9877198801_))))))
          (declare (not safe))
          (_g9876998882_ _stx98768_))))
    (define gxc#apply-body-let-values%
      (lambda (_self98620_ _stx98621_)
        (let* ((_g9862398658_
                (lambda (_g9862498655_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9862498655_))))
               (_g9862298764_
                (lambda (_g9862498661_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9862498661_))
                      (let ((_e9863098663_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9862498661_))))
                        (let ((_hd9862998666_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9863098663_)))
                              (_tl9862898668_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9863098663_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9862898668_))
                              (let ((_e9863398671_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl9862898668_))))
                                (let ((_hd9863298674_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9863398671_)))
                                      (_tl9863198676_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9863398671_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd9863298674_))
                                      (let ((_g99580_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd9863298674_
                                                '0))))
                                        (begin
                                          (let ((_g99581_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g99580_)
                                                       (##vector-length
                                                        _g99580_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g99581_ 2)))
                                                (error "Context expects 2 values"
                                                       _g99581_)))
                                          (let ((_target9863498679_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g99580_ 0)))
                                                (_tl9863698681_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g99580_ 1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl9863698681_))
                                                (letrec ((_loop9863798684_
                                                          (lambda (_hd9863598687_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr9864198689_
                           _hd9864298691_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd9863598687_))
                        (let ((_e9863898694_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd9863598687_))))
                          (let ((_lp-hd9863998697_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9863898694_)))
                                (_lp-tl9864098699_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9863898694_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd9863998697_))
                                (let ((_e9864798702_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd9863998697_))))
                                  (let ((_hd9864698705_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e9864798702_)))
                                        (_tl9864598707_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e9864798702_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl9864598707_))
                                        (let ((_e9865098710_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl9864598707_))))
                                          (let ((_hd9864998713_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e9865098710_)))
                                                (_tl9864898715_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e9865098710_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl9864898715_))
                                                (let ((__tmp99583
                                                       (cons _hd9864998713_
                                                             _expr9864198689_))
                                                      (__tmp99582
                                                       (cons _hd9864698705_
                                                             _hd9864298691_)))
                                                  (declare (not safe))
                                                  (_loop9863798684_
                                                   _lp-tl9864098699_
                                                   __tmp99583
                                                   __tmp99582))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g9862398658_
                                                   _g9862498661_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g9862398658_ _g9862498661_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g9862398658_ _g9862498661_)))))
                        (let ((_expr9864398718_ (reverse _expr9864198689_))
                              (_hd9864498720_ (reverse _hd9864298691_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9863198676_))
                              (let ((_e9865398723_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl9863198676_))))
                                (let ((_hd9865298726_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9865398723_)))
                                      (_tl9865198728_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9865398723_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl9865198728_))
                                      ((lambda (_L98731_ _L98732_ _L98733_)
                                         (for-each
                                          (lambda (_g9875298754_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self98620_
                                               _g9875298754_)))
                                          (let ((__tmp99585
                                                 (lambda (_g9875698759_
                                                          _g9875798761_)
                                                   (cons _g9875698759_
                                                         _g9875798761_)))
                                                (__tmp99584
                                                 (cons _L98731_ '())))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp99585
                                             __tmp99584
                                             _L98732_))))
                                       _hd9865298726_
                                       _expr9864398718_
                                       _hd9864498720_)
                                      (let ()
                                        (declare (not safe))
                                        (_g9862398658_ _g9862498661_)))))
                              (let ()
                                (declare (not safe))
                                (_g9862398658_ _g9862498661_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop9863798684_
                                                     _target9863498679_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g9862398658_
                                                   _g9862498661_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g9862398658_ _g9862498661_)))))
                              (let ()
                                (declare (not safe))
                                (_g9862398658_ _g9862498661_)))))
                      (let ()
                        (declare (not safe))
                        (_g9862398658_ _g9862498661_))))))
          (declare (not safe))
          (_g9862298764_ _stx98621_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_self98565_ _stx98566_)
        (let* ((_g9856898582_
                (lambda (_g9856998579_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9856998579_))))
               (_g9856798617_
                (lambda (_g9856998585_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9856998585_))
                      (let ((_e9857498587_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9856998585_))))
                        (let ((_hd9857398590_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9857498587_)))
                              (_tl9857298592_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9857498587_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9857298592_))
                              (let ((_e9857798595_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl9857298592_))))
                                (let ((_hd9857698598_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9857798595_)))
                                      (_tl9857598600_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9857798595_))))
                                  ((lambda (_L98603_ _L98604_)
                                     (let ((__tmp99586 (last _L98603_)))
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _self98565_
                                        __tmp99586)))
                                   _tl9857598600_
                                   _hd9857698598_)))
                              (let ()
                                (declare (not safe))
                                (_g9856898582_ _g9856998585_)))))
                      (let ()
                        (declare (not safe))
                        (_g9856898582_ _g9856998585_))))))
          (declare (not safe))
          (_g9856798617_ _stx98566_))))
    (define gxc#apply-body-setq%
      (lambda (_self98497_ _stx98498_)
        (let* ((_g9850098517_
                (lambda (_g9850198514_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9850198514_))))
               (_g9849998562_
                (lambda (_g9850198520_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9850198520_))
                      (let ((_e9850698522_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9850198520_))))
                        (let ((_hd9850598525_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9850698522_)))
                              (_tl9850498527_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9850698522_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9850498527_))
                              (let ((_e9850998530_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl9850498527_))))
                                (let ((_hd9850898533_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9850998530_)))
                                      (_tl9850798535_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9850998530_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl9850798535_))
                                      (let ((_e9851298538_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl9850798535_))))
                                        (let ((_hd9851198541_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9851298538_)))
                                              (_tl9851098543_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9851298538_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl9851098543_))
                                              ((lambda (_L98546_ _L98547_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self98497_
                                                    _L98546_)))
                                               _hd9851198541_
                                               _hd9850898533_)
                                              (let ()
                                                (declare (not safe))
                                                (_g9850098517_
                                                 _g9850198520_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g9850098517_ _g9850198520_)))))
                              (let ()
                                (declare (not safe))
                                (_g9850098517_ _g9850198520_)))))
                      (let ()
                        (declare (not safe))
                        (_g9850098517_ _g9850198520_))))))
          (declare (not safe))
          (_g9849998562_ _stx98498_))))
    (define gxc#apply-operands
      (lambda (_self98410_ _stx98411_)
        (let* ((_g9841398432_
                (lambda (_g9841498429_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9841498429_))))
               (_g9841298494_
                (lambda (_g9841498435_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9841498435_))
                      (let ((_e9841898437_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9841498435_))))
                        (let ((_hd9841798440_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9841898437_)))
                              (_tl9841698442_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9841898437_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl9841698442_))
                              (let ((_g99587_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl9841698442_
                                        '0))))
                                (begin
                                  (let ((_g99588_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g99587_)
                                               (##vector-length _g99587_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g99588_ 2)))
                                        (error "Context expects 2 values"
                                               _g99588_)))
                                  (let ((_target9841998445_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g99587_ 0)))
                                        (_tl9842198447_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g99587_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl9842198447_))
                                        (letrec ((_loop9842298450_
                                                  (lambda (_hd9842098453_
                                                           _rands9842698455_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd9842098453_))
                                                        (let ((_e9842398458_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd9842098453_))))
                  (let ((_lp-hd9842498461_
                         (let () (declare (not safe)) (##car _e9842398458_)))
                        (_lp-tl9842598463_
                         (let () (declare (not safe)) (##cdr _e9842398458_))))
                    (let ((__tmp99589
                           (cons _lp-hd9842498461_ _rands9842698455_)))
                      (declare (not safe))
                      (_loop9842298450_ _lp-tl9842598463_ __tmp99589))))
                (let ((_rands9842798466_ (reverse _rands9842698455_)))
                  ((lambda (_L98469_)
                     (for-each
                      (lambda (_g9848298484_)
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _self98410_ _g9848298484_)))
                      (let ((__tmp99590
                             (lambda (_g9848698489_ _g9848798491_)
                               (cons _g9848698489_ _g9848798491_))))
                        (declare (not safe))
                        (__foldr1 __tmp99590 '() _L98469_))))
                   _rands9842798466_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop9842298450_
                                             _target9841998445_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g9841398432_ _g9841498435_))))))
                              (let ()
                                (declare (not safe))
                                (_g9841398432_ _g9841498435_)))))
                      (let ()
                        (declare (not safe))
                        (_g9841398432_ _g9841498435_))))))
          (declare (not safe))
          (_g9841298494_ _stx98411_))))
    (define gxc#xform-wrap-source
      (lambda (_stx98407_ _src-stx98408_)
        (let ((__tmp99591
               (let () (declare (not safe)) (gx#stx-source _src-stx98408_))))
          (declare (not safe))
          (gx#stx-wrap-source _stx98407_ __tmp99591))))
    (define gxc#xform-begin%
      (lambda (_self98362_ _stx98363_)
        (let* ((_g9836598375_
                (lambda (_g9836698372_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9836698372_))))
               (_g9836498404_
                (lambda (_g9836698378_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9836698378_))
                      (let ((_e9837098380_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9836698378_))))
                        (let ((_hd9836998383_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9837098380_)))
                              (_tl9836898385_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9837098380_))))
                          ((lambda (_L98388_)
                             (let* ((_forms98402_
                                     (map (lambda (_g9839798399_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self98362_
                                               _g9839798399_)))
                                          _L98388_))
                                    (__tmp99592 (cons '%#begin _forms98402_)))
                               (declare (not safe))
                               (gxc#xform-wrap-source __tmp99592 _stx98363_)))
                           _tl9836898385_)))
                      (let ()
                        (declare (not safe))
                        (_g9836598375_ _g9836698378_))))))
          (declare (not safe))
          (_g9836498404_ _stx98363_))))
    (define gxc#xform-begin-syntax%
      (lambda (_self98316_ _stx98317_)
        (let* ((_g9831998329_
                (lambda (_g9832098326_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9832098326_))))
               (_g9831898359_
                (lambda (_g9832098332_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9832098332_))
                      (let ((_e9832498334_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9832098332_))))
                        (let ((_hd9832398337_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9832498334_)))
                              (_tl9832298339_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9832498334_))))
                          ((lambda (_L98342_)
                             (let ((__tmp99595
                                    (lambda ()
                                      (let* ((_forms98357_
                                              (map (lambda (_g9835298354_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _self98316_
                                                        _g9835298354_)))
                                                   _L98342_))
                                             (__tmp99596
                                              (cons '%#begin-syntax
                                                    _forms98357_)))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp99596
                                         _stx98317_))))
                                   (__tmp99593
                                    (let ((__tmp99594
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (##fx+ __tmp99594 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp99595
                                gx#current-expander-phi
                                __tmp99593)))
                           _tl9832298339_)))
                      (let ()
                        (declare (not safe))
                        (_g9831998329_ _g9832098332_))))))
          (declare (not safe))
          (_g9831898359_ _stx98317_))))
    (define gxc#xform-module%
      (lambda (_self98253_ _stx98254_)
        (let* ((_g9825698270_
                (lambda (_g9825798267_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9825798267_))))
               (_g9825598313_
                (lambda (_g9825798273_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9825798273_))
                      (let ((_e9826298275_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9825798273_))))
                        (let ((_hd9826198278_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9826298275_)))
                              (_tl9826098280_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9826298275_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9826098280_))
                              (let ((_e9826598283_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl9826098280_))))
                                (let ((_hd9826498286_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9826598283_)))
                                      (_tl9826398288_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9826598283_))))
                                  ((lambda (_L98291_ _L98292_)
                                     (let* ((_ctx98305_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L98292_)))
                                            (_code98307_
                                             (##structure-ref
                                              _ctx98305_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_code98310_
                                             (let ((__tmp99597
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _self98253_
                                                         _code98307_)))))
                                               (declare (not safe))
                                               (__call-with-parameters
                                                __tmp99597
                                                gx#current-expander-context
                                                _ctx98305_))))
                                       (##structure-set!
                                        _ctx98305_
                                        _code98310_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp99598
                                              (cons '%#module
                                                    (cons _L98292_
                                                          (cons _code98310_
                                                                '())))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp99598
                                          _stx98254_))))
                                   _tl9826398288_
                                   _hd9826498286_)))
                              (let ()
                                (declare (not safe))
                                (_g9825698270_ _g9825798273_)))))
                      (let ()
                        (declare (not safe))
                        (_g9825698270_ _g9825798273_))))))
          (declare (not safe))
          (_g9825598313_ _stx98254_))))
    (define gxc#xform-define-values%
      (lambda (_self98183_ _stx98184_)
        (let* ((_g9818698203_
                (lambda (_g9818798200_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9818798200_))))
               (_g9818598250_
                (lambda (_g9818798206_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9818798206_))
                      (let ((_e9819298208_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9818798206_))))
                        (let ((_hd9819198211_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9819298208_)))
                              (_tl9819098213_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9819298208_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9819098213_))
                              (let ((_e9819598216_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl9819098213_))))
                                (let ((_hd9819498219_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9819598216_)))
                                      (_tl9819398221_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9819598216_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl9819398221_))
                                      (let ((_e9819898224_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl9819398221_))))
                                        (let ((_hd9819798227_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9819898224_)))
                                              (_tl9819698229_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9819898224_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl9819698229_))
                                              ((lambda (_L98232_ _L98233_)
                                                 (let* ((_expr98248_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self98183_
                                                            _L98232_)))
                                                        (__tmp99599
                                                         (cons '%#define-values
                                                               (cons _L98233_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _expr98248_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp99599
                                                    _stx98184_)))
                                               _hd9819798227_
                                               _hd9819498219_)
                                              (let ()
                                                (declare (not safe))
                                                (_g9818698203_
                                                 _g9818798206_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g9818698203_ _g9818798206_)))))
                              (let ()
                                (declare (not safe))
                                (_g9818698203_ _g9818798206_)))))
                      (let ()
                        (declare (not safe))
                        (_g9818698203_ _g9818798206_))))))
          (declare (not safe))
          (_g9818598250_ _stx98184_))))
    (define gxc#xform-define-syntax%
      (lambda (_self98112_ _stx98113_)
        (let* ((_g9811598132_
                (lambda (_g9811698129_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9811698129_))))
               (_g9811498180_
                (lambda (_g9811698135_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9811698135_))
                      (let ((_e9812198137_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9811698135_))))
                        (let ((_hd9812098140_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9812198137_)))
                              (_tl9811998142_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9812198137_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9811998142_))
                              (let ((_e9812498145_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl9811998142_))))
                                (let ((_hd9812398148_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9812498145_)))
                                      (_tl9812298150_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9812498145_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl9812298150_))
                                      (let ((_e9812798153_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl9812298150_))))
                                        (let ((_hd9812698156_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9812798153_)))
                                              (_tl9812598158_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9812798153_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl9812598158_))
                                              ((lambda (_L98161_ _L98162_)
                                                 (let ((__tmp99602
                                                        (lambda ()
                                                          (let* ((_expr98178_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__1 _self98112_ _L98161_)))
                         (__tmp99603
                          (cons '%#define-syntax
                                (cons _L98162_ (cons _expr98178_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp99603 _stx98113_))))
               (__tmp99600
                (let ((__tmp99601 (gx#current-expander-phi)))
                  (declare (not safe))
                  (##fx+ __tmp99601 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp99602
                                                    gx#current-expander-phi
                                                    __tmp99600)))
                                               _hd9812698156_
                                               _hd9812398148_)
                                              (let ()
                                                (declare (not safe))
                                                (_g9811598132_
                                                 _g9811698135_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g9811598132_ _g9811698135_)))))
                              (let ()
                                (declare (not safe))
                                (_g9811598132_ _g9811698135_)))))
                      (let ()
                        (declare (not safe))
                        (_g9811598132_ _g9811698135_))))))
          (declare (not safe))
          (_g9811498180_ _stx98113_))))
    (define gxc#xform-begin-annotation%
      (lambda (_self98042_ _stx98043_)
        (let* ((_g9804598062_
                (lambda (_g9804698059_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9804698059_))))
               (_g9804498109_
                (lambda (_g9804698065_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9804698065_))
                      (let ((_e9805198067_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9804698065_))))
                        (let ((_hd9805098070_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9805198067_)))
                              (_tl9804998072_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9805198067_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9804998072_))
                              (let ((_e9805498075_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl9804998072_))))
                                (let ((_hd9805398078_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9805498075_)))
                                      (_tl9805298080_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9805498075_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl9805298080_))
                                      (let ((_e9805798083_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl9805298080_))))
                                        (let ((_hd9805698086_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9805798083_)))
                                              (_tl9805598088_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9805798083_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl9805598088_))
                                              ((lambda (_L98091_ _L98092_)
                                                 (let* ((_expr98107_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self98042_
                                                            _L98091_)))
                                                        (__tmp99604
                                                         (cons '%#begin-annotation
                                                               (cons _L98092_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _expr98107_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp99604
                                                    _stx98043_)))
                                               _hd9805698086_
                                               _hd9805398078_)
                                              (let ()
                                                (declare (not safe))
                                                (_g9804598062_
                                                 _g9804698065_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g9804598062_ _g9804698065_)))))
                              (let ()
                                (declare (not safe))
                                (_g9804598062_ _g9804698065_)))))
                      (let ()
                        (declare (not safe))
                        (_g9804598062_ _g9804698065_))))))
          (declare (not safe))
          (_g9804498109_ _stx98043_))))
    (define gxc#xform-lambda%
      (lambda (_self97981_ _stx97982_)
        (let* ((_g9798497998_
                (lambda (_g9798597995_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9798597995_))))
               (_g9798398039_
                (lambda (_g9798598001_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9798598001_))
                      (let ((_e9799098003_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9798598001_))))
                        (let ((_hd9798998006_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9799098003_)))
                              (_tl9798898008_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9799098003_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9798898008_))
                              (let ((_e9799398011_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl9798898008_))))
                                (let ((_hd9799298014_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9799398011_)))
                                      (_tl9799198016_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9799398011_))))
                                  ((lambda (_L98019_ _L98020_)
                                     (let* ((_body98037_
                                             (map (lambda (_g9803298034_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _self97981_
                                                       _g9803298034_)))
                                                  _L98019_))
                                            (__tmp99605
                                             (cons '%#lambda
                                                   (cons _L98020_
                                                         _body98037_))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp99605
                                        _stx97982_)))
                                   _tl9799198016_
                                   _hd9799298014_)))
                              (let ()
                                (declare (not safe))
                                (_g9798497998_ _g9798598001_)))))
                      (let ()
                        (declare (not safe))
                        (_g9798497998_ _g9798598001_))))))
          (declare (not safe))
          (_g9798398039_ _stx97982_))))
    (define gxc#xform-case-lambda%
      (lambda (_self97890_ _stx97891_)
        (letrec ((_clause-e97893_
                  (lambda (_clause97934_)
                    (let* ((_g9793697947_
                            (lambda (_g9793797944_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g9793797944_))))
                           (_g9793597978_
                            (lambda (_g9793797950_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g9793797950_))
                                  (let ((_e9794297952_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g9793797950_))))
                                    (let ((_hd9794197955_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e9794297952_)))
                                          (_tl9794097957_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e9794297952_))))
                                      ((lambda (_L97960_ _L97961_)
                                         (let ((_body97976_
                                                (map (lambda (_g9797197973_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _self97890_
                                                          _g9797197973_)))
                                                     _L97960_)))
                                           (cons _L97961_ _body97976_)))
                                       _tl9794097957_
                                       _hd9794197955_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g9793697947_ _g9793797950_))))))
                      (declare (not safe))
                      (_g9793597978_ _clause97934_)))))
          (let* ((_g9789597905_
                  (lambda (_g9789697902_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g9789697902_))))
                 (_g9789497931_
                  (lambda (_g9789697908_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g9789697908_))
                        (let ((_e9790097910_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g9789697908_))))
                          (let ((_hd9789997913_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9790097910_)))
                                (_tl9789897915_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9790097910_))))
                            ((lambda (_L97918_)
                               (let* ((_clauses97929_
                                       (map _clause-e97893_ _L97918_))
                                      (__tmp99606
                                       (cons '%#case-lambda _clauses97929_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp99606
                                  _stx97891_)))
                             _tl9789897915_)))
                        (let ()
                          (declare (not safe))
                          (_g9789597905_ _g9789697908_))))))
            (declare (not safe))
            (_g9789497931_ _stx97891_)))))
    (define gxc#xform-let-values%
      (lambda (_self97676_ _stx97677_)
        (let* ((_g9767997712_
                (lambda (_g9768097709_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9768097709_))))
               (_g9767897887_
                (lambda (_g9768097715_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9768097715_))
                      (let ((_e9768797717_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9768097715_))))
                        (let ((_hd9768697720_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9768797717_)))
                              (_tl9768597722_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9768797717_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9768597722_))
                              (let ((_e9769097725_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl9768597722_))))
                                (let ((_hd9768997728_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9769097725_)))
                                      (_tl9768897730_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9769097725_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd9768997728_))
                                      (let ((_g99607_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd9768997728_
                                                '0))))
                                        (begin
                                          (let ((_g99608_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g99607_)
                                                       (##vector-length
                                                        _g99607_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g99608_ 2)))
                                                (error "Context expects 2 values"
                                                       _g99608_)))
                                          (let ((_target9769197733_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g99607_ 0)))
                                                (_tl9769397735_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g99607_ 1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl9769397735_))
                                                (letrec ((_loop9769497738_
                                                          (lambda (_hd9769297741_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr9769897743_
                           _hd9769997745_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd9769297741_))
                        (let ((_e9769597748_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd9769297741_))))
                          (let ((_lp-hd9769697751_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9769597748_)))
                                (_lp-tl9769797753_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9769597748_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd9769697751_))
                                (let ((_e9770497756_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd9769697751_))))
                                  (let ((_hd9770397759_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e9770497756_)))
                                        (_tl9770297761_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e9770497756_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl9770297761_))
                                        (let ((_e9770797764_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl9770297761_))))
                                          (let ((_hd9770697767_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e9770797764_)))
                                                (_tl9770597769_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e9770797764_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl9770597769_))
                                                (let ((__tmp99610
                                                       (cons _hd9770697767_
                                                             _expr9769897743_))
                                                      (__tmp99609
                                                       (cons _hd9770397759_
                                                             _hd9769997745_)))
                                                  (declare (not safe))
                                                  (_loop9769497738_
                                                   _lp-tl9769797753_
                                                   __tmp99610
                                                   __tmp99609))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g9767997712_
                                                   _g9768097715_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g9767997712_ _g9768097715_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g9767997712_ _g9768097715_)))))
                        (let ((_expr9770097772_ (reverse _expr9769897743_))
                              (_hd9770197774_ (reverse _hd9769997745_)))
                          ((lambda (_L97777_ _L97778_ _L97779_ _L97780_)
                             (let* ((_g9779997815_
                                     (lambda (_g9780097812_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g9780097812_))))
                                    (_g9779897873_
                                     (lambda (_g9780097818_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null? _g9780097818_))
                                           (let ((_g99611_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _g9780097818_
                                                     '0))))
                                             (begin
                                               (let ((_g99612_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g99611_)
                                                            (##vector-length
                                                             _g99611_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g99612_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g99612_)))
                                               (let ((_target9780297820_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g99611_
                                                         0)))
                                                     (_tl9780497822_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g99611_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl9780497822_))
                                                     (letrec ((_loop9780597825_
                                                               (lambda (_hd9780397828_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr9780997830_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _hd9780397828_))
                             (let ((_e9780697833_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _hd9780397828_))))
                               (let ((_lp-hd9780797836_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e9780697833_)))
                                     (_lp-tl9780897838_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e9780697833_))))
                                 (let ((__tmp99613
                                        (cons _lp-hd9780797836_
                                              _expr9780997830_)))
                                   (declare (not safe))
                                   (_loop9780597825_
                                    _lp-tl9780897838_
                                    __tmp99613))))
                             (let ((_expr9781097841_
                                    (reverse _expr9780997830_)))
                               ((lambda (_L97844_)
                                  (let ()
                                    (let* ((_body97861_
                                            (map (lambda (_g9785697858_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self97676_
                                                      _g9785697858_)))
                                                 _L97777_))
                                           (__tmp99614
                                            (cons _L97780_
                                                  (cons (begin
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-check-splice-targets
                                                             _L97844_
                                                             _L97779_))
                                                          (let ((__tmp99615
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g9786297866_ _g9786397868_ _g9786497870_)
                           (cons (cons _g9786397868_ (cons _g9786297866_ '()))
                                 _g9786497870_))))
                    (declare (not safe))
                    (__foldr2 __tmp99615 '() _L97844_ _L97779_)))
                _body97861_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp99614
                                       _stx97677_))))
                                _expr9781097841_))))))
               (let ()
                 (declare (not safe))
                 (_loop9780597825_ _target9780297820_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g9779997815_
                                                        _g9780097818_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_g9779997815_ _g9780097818_)))))
                                    (__tmp99616
                                     (map (lambda (_g9787597877_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self97676_
                                               _g9787597877_)))
                                          (let ((__tmp99617
                                                 (lambda (_g9787997882_
                                                          _g9788097884_)
                                                   (cons _g9787997882_
                                                         _g9788097884_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp99617
                                             '()
                                             _L97778_)))))
                               (declare (not safe))
                               (_g9779897873_ __tmp99616)))
                           _tl9768897730_
                           _expr9770097772_
                           _hd9770197774_
                           _hd9768697720_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop9769497738_
                                                     _target9769197733_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g9767997712_
                                                   _g9768097715_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g9767997712_ _g9768097715_)))))
                              (let ()
                                (declare (not safe))
                                (_g9767997712_ _g9768097715_)))))
                      (let ()
                        (declare (not safe))
                        (_g9767997712_ _g9768097715_))))))
          (declare (not safe))
          (_g9767897887_ _stx97677_))))
    (define gxc#xform-operands
      (lambda (_self97628_ _stx97629_)
        (let* ((_g9763197642_
                (lambda (_g9763297639_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9763297639_))))
               (_g9763097673_
                (lambda (_g9763297645_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9763297645_))
                      (let ((_e9763797647_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9763297645_))))
                        (let ((_hd9763697650_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9763797647_)))
                              (_tl9763597652_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9763797647_))))
                          ((lambda (_L97655_ _L97656_)
                             (let* ((_rands97671_
                                     (map (lambda (_g9766697668_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self97628_
                                               _g9766697668_)))
                                          _L97655_))
                                    (__tmp99618 (cons _L97656_ _rands97671_)))
                               (declare (not safe))
                               (gxc#xform-wrap-source __tmp99618 _stx97629_)))
                           _tl9763597652_
                           _hd9763697650_)))
                      (let ()
                        (declare (not safe))
                        (_g9763197642_ _g9763297645_))))))
          (declare (not safe))
          (_g9763097673_ _stx97629_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_self97558_ _stx97559_)
        (let* ((_g9756197578_
                (lambda (_g9756297575_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9756297575_))))
               (_g9756097625_
                (lambda (_g9756297581_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9756297581_))
                      (let ((_e9756797583_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9756297581_))))
                        (let ((_hd9756697586_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9756797583_)))
                              (_tl9756597588_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9756797583_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9756597588_))
                              (let ((_e9757097591_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl9756597588_))))
                                (let ((_hd9756997594_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9757097591_)))
                                      (_tl9756897596_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9757097591_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl9756897596_))
                                      (let ((_e9757397599_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl9756897596_))))
                                        (let ((_hd9757297602_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9757397599_)))
                                              (_tl9757197604_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9757397599_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl9757197604_))
                                              ((lambda (_L97607_ _L97608_)
                                                 (let* ((_expr97623_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self97558_
                                                            _L97607_)))
                                                        (__tmp99619
                                                         (cons '%#set!
                                                               (cons _L97608_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _expr97623_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp99619
                                                    _stx97559_)))
                                               _hd9757297602_
                                               _hd9756997594_)
                                              (let ()
                                                (declare (not safe))
                                                (_g9756197578_
                                                 _g9756297581_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g9756197578_ _g9756297581_)))))
                              (let ()
                                (declare (not safe))
                                (_g9756197578_ _g9756297581_)))))
                      (let ()
                        (declare (not safe))
                        (_g9756197578_ _g9756297581_))))))
          (declare (not safe))
          (_g9756097625_ _stx97559_))))))
