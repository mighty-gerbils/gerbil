(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1710687285)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_stx102610_)
        (let* ((_self102612_ (gxc#current-compile-method))
               (_$e102614_
                (let ((__tmp102783
                       (let ()
                         (declare (not safe))
                         (gxc#stx-car-e _stx102610_))))
                  (declare (not safe))
                  (method-ref _self102612_ __tmp102783))))
          (if _$e102614_
              ((lambda (_method102617_)
                 (declare (not safe))
                 (_method102617_ _self102612_ _stx102610_))
               _$e102614_)
              (let ((__tmp102785
                     (let () (declare (not safe)) (gxc#stx-car-e _stx102610_)))
                    (__tmp102784
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _stx102610_))))
                (declare (not safe))
                (error '"missing method"
                       _self102612_
                       __tmp102785
                       __tmp102784))))))
    (define gxc#compile-e__1
      (lambda (_self102620_ _stx102621_)
        (let ((_$e102623_
               (let ((__tmp102786
                      (let ()
                        (declare (not safe))
                        (gxc#stx-car-e _stx102621_))))
                 (declare (not safe))
                 (method-ref _self102620_ __tmp102786))))
          (if _$e102623_
              ((lambda (_method102626_)
                 (declare (not safe))
                 (_method102626_ _self102620_ _stx102621_))
               _$e102623_)
              (let ((__tmp102788
                     (let () (declare (not safe)) (gxc#stx-car-e _stx102621_)))
                    (__tmp102787
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _stx102621_))))
                (declare (not safe))
                (error '"missing method"
                       _self102620_
                       __tmp102788
                       __tmp102787))))))
    (define gxc#compile-e
      (lambda _g102790_
        (let ((_g102789_ (let () (declare (not safe)) (##length _g102790_))))
          (cond ((let () (declare (not safe)) (##fx= _g102789_ 1))
                 (apply (lambda (_stx102610_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _stx102610_)))
                        _g102790_))
                ((let () (declare (not safe)) (##fx= _g102789_ 2))
                 (apply (lambda (_self102620_ _stx102621_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__1 _self102620_ _stx102621_)))
                        _g102790_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g102790_))))))
    (define gxc#stx-car-e
      (lambda (_stx102608_)
        (let ((__tmp102791
               (car (let () (declare (not safe)) (gx#stx-e _stx102608_)))))
          (declare (not safe))
          (gx#stx-e __tmp102791))))
    (define gxc#void-method (lambda (_self102605_ _stx102606_) '#!void))
    (define gxc#false-method (lambda (_self102602_ _stx102603_) '#f))
    (define gxc#true-method (lambda (_self102599_ _stx102600_) '#t))
    (define gxc#identity-method
      (lambda (_self102596_ _stx102597_) _stx102597_))
    (define gxc#::void-expression::t
      (let ((__tmp102792 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp102792
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _$args102593_
        (apply make-instance gxc#::void-expression::t _$args102593_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp102793
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
        (make-promise __tmp102793)))
    (define gxc#::void-special-form::t
      (let ((__tmp102794 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp102794
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _$args102589_
        (apply make-instance gxc#::void-special-form::t _$args102589_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp102795
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
        (make-promise __tmp102795)))
    (define gxc#::void::t
      (let ((__tmp102796
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (make-class-type 'gxc#::void::t '::void __tmp102796 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _$args102585_ (apply make-instance gxc#::void::t _$args102585_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp102797
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (make-promise __tmp102797)))
    (define gxc#::false-expression::t
      (let ((__tmp102798 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp102798
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _$args102581_
        (apply make-instance gxc#::false-expression::t _$args102581_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp102799
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
        (make-promise __tmp102799)))
    (define gxc#::false-special-form::t
      (let ((__tmp102800 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp102800
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _$args102577_
        (apply make-instance gxc#::false-special-form::t _$args102577_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp102801
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
        (make-promise __tmp102801)))
    (define gxc#::false::t
      (let ((__tmp102802
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (make-class-type 'gxc#::false::t '::false __tmp102802 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _$args102573_
        (apply make-instance gxc#::false::t _$args102573_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp102803
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (make-promise __tmp102803)))
    (define gxc#::identity-expression::t
      (let ((__tmp102804 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp102804
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _$args102569_
        (apply make-instance gxc#::identity-expression::t _$args102569_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp102805
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
        (make-promise __tmp102805)))
    (define gxc#::identity-special-form::t
      (let ((__tmp102806 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp102806
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _$args102565_
        (apply make-instance gxc#::identity-special-form::t _$args102565_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp102807
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
        (make-promise __tmp102807)))
    (define gxc#::identity::t
      (let ((__tmp102808
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::identity::t
         '::identity
         __tmp102808
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _$args102561_
        (apply make-instance gxc#::identity::t _$args102561_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp102809
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (make-promise __tmp102809)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp102810 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp102810
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _$args102557_
        (apply make-instance gxc#::basic-xform-expression::t _$args102557_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp102811
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
        (make-promise __tmp102811)))
    (define gxc#::basic-xform::t
      (let ((__tmp102812
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp102812
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _$args102553_
        (apply make-instance gxc#::basic-xform::t _$args102553_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp102813
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
        (make-promise __tmp102813)))
    (define gxc#apply-begin%
      (lambda (_self102509_ _stx102510_)
        (let* ((_g102512102522_
                (lambda (_g102513102519_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102513102519_))))
               (_g102511102549_
                (lambda (_g102513102525_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102513102525_))
                      (let ((_e102517102527_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102513102525_))))
                        (let ((_hd102516102530_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102517102527_)))
                              (_tl102515102532_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102517102527_))))
                          ((lambda (_L102535_)
                             (for-each
                              (lambda (_g102544102546_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1
                                   _self102509_
                                   _g102544102546_)))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _L102535_))))
                           _tl102515102532_)))
                      (let ()
                        (declare (not safe))
                        (_g102512102522_ _g102513102525_))))))
          (declare (not safe))
          (_g102511102549_ _stx102510_))))
    (define gxc#apply-last-begin%
      (lambda (_self102470_ _stx102471_)
        (let* ((_g102473102483_
                (lambda (_g102474102480_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102474102480_))))
               (_g102472102506_
                (lambda (_g102474102486_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102474102486_))
                      (let ((_e102478102488_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102474102486_))))
                        (let ((_hd102477102491_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102478102488_)))
                              (_tl102476102493_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102478102488_))))
                          ((lambda (_L102496_)
                             (let ((__tmp102814 (last _L102496_)))
                               (declare (not safe))
                               (gxc#compile-e__1 _self102470_ __tmp102814)))
                           _tl102476102493_)))
                      (let ()
                        (declare (not safe))
                        (_g102473102483_ _g102474102486_))))))
          (declare (not safe))
          (_g102472102506_ _stx102471_))))
    (define gxc#apply-begin-syntax%
      (lambda (_self102466_ _stx102467_)
        (let ((__tmp102817
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#apply-begin% _self102466_ _stx102467_))))
              (__tmp102815
               (let ((__tmp102816 (gx#current-expander-phi)))
                 (declare (not safe))
                 (fx+ __tmp102816 '1))))
          (declare (not safe))
          (call-with-parameters
           __tmp102817
           gx#current-expander-phi
           __tmp102815))))
    (define gxc#apply-module%
      (lambda (_self102405_ _stx102406_)
        (let* ((_g102408102422_
                (lambda (_g102409102419_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102409102419_))))
               (_g102407102463_
                (lambda (_g102409102425_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102409102425_))
                      (let ((_e102414102427_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102409102425_))))
                        (let ((_hd102413102430_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102414102427_)))
                              (_tl102412102432_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102414102427_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102412102432_))
                              (let ((_e102417102435_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102412102432_))))
                                (let ((_hd102416102438_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102417102435_)))
                                      (_tl102415102440_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102417102435_))))
                                  ((lambda (_L102443_ _L102444_)
                                     (let* ((_ctx102457_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L102444_)))
                                            (_ctx-stx102459_
                                             (##structure-ref
                                              _ctx102457_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp102818
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self102405_
                                                   _ctx-stx102459_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp102818
                                          gx#current-expander-context
                                          _ctx102457_))))
                                   _tl102415102440_
                                   _hd102416102438_)))
                              (let ()
                                (declare (not safe))
                                (_g102408102422_ _g102409102425_)))))
                      (let ()
                        (declare (not safe))
                        (_g102408102422_ _g102409102425_))))))
          (declare (not safe))
          (_g102407102463_ _stx102406_))))
    (define gxc#apply-begin-annotation%
      (lambda (_self102337_ _stx102338_)
        (let* ((_g102340102357_
                (lambda (_g102341102354_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102341102354_))))
               (_g102339102402_
                (lambda (_g102341102360_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102341102360_))
                      (let ((_e102346102362_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102341102360_))))
                        (let ((_hd102345102365_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102346102362_)))
                              (_tl102344102367_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102346102362_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102344102367_))
                              (let ((_e102349102370_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102344102367_))))
                                (let ((_hd102348102373_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102349102370_)))
                                      (_tl102347102375_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102349102370_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl102347102375_))
                                      (let ((_e102352102378_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl102347102375_))))
                                        (let ((_hd102351102381_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e102352102378_)))
                                              (_tl102350102383_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e102352102378_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl102350102383_))
                                              ((lambda (_L102386_ _L102387_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self102337_
                                                    _L102386_)))
                                               _hd102351102381_
                                               _hd102348102373_)
                                              (let ()
                                                (declare (not safe))
                                                (_g102340102357_
                                                 _g102341102360_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g102340102357_ _g102341102360_)))))
                              (let ()
                                (declare (not safe))
                                (_g102340102357_ _g102341102360_)))))
                      (let ()
                        (declare (not safe))
                        (_g102340102357_ _g102341102360_))))))
          (declare (not safe))
          (_g102339102402_ _stx102338_))))
    (define gxc#apply-define-values%
      (lambda (_self102269_ _stx102270_)
        (let* ((_g102272102289_
                (lambda (_g102273102286_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102273102286_))))
               (_g102271102334_
                (lambda (_g102273102292_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102273102292_))
                      (let ((_e102278102294_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102273102292_))))
                        (let ((_hd102277102297_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102278102294_)))
                              (_tl102276102299_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102278102294_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102276102299_))
                              (let ((_e102281102302_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102276102299_))))
                                (let ((_hd102280102305_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102281102302_)))
                                      (_tl102279102307_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102281102302_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl102279102307_))
                                      (let ((_e102284102310_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl102279102307_))))
                                        (let ((_hd102283102313_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e102284102310_)))
                                              (_tl102282102315_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e102284102310_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl102282102315_))
                                              ((lambda (_L102318_ _L102319_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self102269_
                                                    _L102318_)))
                                               _hd102283102313_
                                               _hd102280102305_)
                                              (let ()
                                                (declare (not safe))
                                                (_g102272102289_
                                                 _g102273102292_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g102272102289_ _g102273102292_)))))
                              (let ()
                                (declare (not safe))
                                (_g102272102289_ _g102273102292_)))))
                      (let ()
                        (declare (not safe))
                        (_g102272102289_ _g102273102292_))))))
          (declare (not safe))
          (_g102271102334_ _stx102270_))))
    (define gxc#apply-define-syntax%
      (lambda (_self102200_ _stx102201_)
        (let* ((_g102203102220_
                (lambda (_g102204102217_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102204102217_))))
               (_g102202102266_
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
                                                 (let ((__tmp102821
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _self102200_
                                                             _L102249_))))
                                                       (__tmp102819
                                                        (let ((__tmp102820
                                                               (gx#current-expander-phi)))
                                                          (declare (not safe))
                                                          (fx+ __tmp102820
                                                               '1))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp102821
                                                    gx#current-expander-phi
                                                    __tmp102819)))
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
          (_g102202102266_ _stx102201_))))
    (define gxc#apply-body-lambda%
      (lambda (_self102132_ _stx102133_)
        (let* ((_g102135102152_
                (lambda (_g102136102149_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102136102149_))))
               (_g102134102197_
                (lambda (_g102136102155_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102136102155_))
                      (let ((_e102141102157_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102136102155_))))
                        (let ((_hd102140102160_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102141102157_)))
                              (_tl102139102162_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102141102157_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102139102162_))
                              (let ((_e102144102165_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102139102162_))))
                                (let ((_hd102143102168_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102144102165_)))
                                      (_tl102142102170_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102144102165_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl102142102170_))
                                      (let ((_e102147102173_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl102142102170_))))
                                        (let ((_hd102146102176_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e102147102173_)))
                                              (_tl102145102178_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e102147102173_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl102145102178_))
                                              ((lambda (_L102181_ _L102182_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self102132_
                                                    _L102181_)))
                                               _hd102146102176_
                                               _hd102143102168_)
                                              (let ()
                                                (declare (not safe))
                                                (_g102135102152_
                                                 _g102136102155_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g102135102152_ _g102136102155_)))))
                              (let ()
                                (declare (not safe))
                                (_g102135102152_ _g102136102155_)))))
                      (let ()
                        (declare (not safe))
                        (_g102135102152_ _g102136102155_))))))
          (declare (not safe))
          (_g102134102197_ _stx102133_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_self102014_ _stx102015_)
        (let* ((_g102017102045_
                (lambda (_g102018102042_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102018102042_))))
               (_g102016102129_
                (lambda (_g102018102048_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102018102048_))
                      (let ((_e102023102050_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102018102048_))))
                        (let ((_hd102022102053_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102023102050_)))
                              (_tl102021102055_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102023102050_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl102021102055_))
                              (let ((_g102822_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl102021102055_
                                        '0))))
                                (begin
                                  (let ((_g102823_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g102822_)
                                               (##vector-length _g102822_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g102823_ 2)))
                                        (error "Context expects 2 values"
                                               _g102823_)))
                                  (let ((_target102024102058_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g102822_ 0)))
                                        (_tl102026102060_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g102822_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl102026102060_))
                                        (letrec ((_loop102027102063_
                                                  (lambda (_hd102025102066_
                                                           _body102031102068_
                                                           _hd102032102070_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd102025102066_))
                                                        (let ((_e102028102073_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd102025102066_))))
                  (let ((_lp-hd102029102076_
                         (let () (declare (not safe)) (##car _e102028102073_)))
                        (_lp-tl102030102078_
                         (let ()
                           (declare (not safe))
                           (##cdr _e102028102073_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd102029102076_))
                        (let ((_e102037102081_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd102029102076_))))
                          (let ((_hd102036102084_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e102037102081_)))
                                (_tl102035102086_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e102037102081_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl102035102086_))
                                (let ((_e102040102089_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl102035102086_))))
                                  (let ((_hd102039102092_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e102040102089_)))
                                        (_tl102038102094_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e102040102089_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl102038102094_))
                                        (let ((__tmp102826
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd102039102092_
                                                       _body102031102068_)))
                                              (__tmp102825
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd102036102084_
                                                       _hd102032102070_))))
                                          (declare (not safe))
                                          (_loop102027102063_
                                           _lp-tl102030102078_
                                           __tmp102826
                                           __tmp102825))
                                        (let ()
                                          (declare (not safe))
                                          (_g102017102045_ _g102018102048_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g102017102045_ _g102018102048_)))))
                        (let ()
                          (declare (not safe))
                          (_g102017102045_ _g102018102048_)))))
                (let ((_body102033102097_ (reverse _body102031102068_))
                      (_hd102034102099_ (reverse _hd102032102070_)))
                  ((lambda (_L102102_ _L102103_)
                     (for-each
                      (lambda (_g102117102119_)
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _self102014_ _g102117102119_)))
                      (let ((__tmp102824
                             (lambda (_g102121102124_ _g102122102126_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g102121102124_ _g102122102126_)))))
                        (declare (not safe))
                        (foldr1 __tmp102824 '() _L102102_))))
                   _body102033102097_
                   _hd102034102099_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop102027102063_
                                             _target102024102058_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g102017102045_
                                           _g102018102048_))))))
                              (let ()
                                (declare (not safe))
                                (_g102017102045_ _g102018102048_)))))
                      (let ()
                        (declare (not safe))
                        (_g102017102045_ _g102018102048_))))))
          (declare (not safe))
          (_g102016102129_ _stx102015_))))
    (define gxc#apply-body-let-values%
      (lambda (_self101867_ _stx101868_)
        (let* ((_g101870101905_
                (lambda (_g101871101902_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101871101902_))))
               (_g101869102011_
                (lambda (_g101871101908_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101871101908_))
                      (let ((_e101877101910_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101871101908_))))
                        (let ((_hd101876101913_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101877101910_)))
                              (_tl101875101915_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101877101910_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101875101915_))
                              (let ((_e101880101918_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101875101915_))))
                                (let ((_hd101879101921_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101880101918_)))
                                      (_tl101878101923_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101880101918_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd101879101921_))
                                      (let ((_g102827_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd101879101921_
                                                '0))))
                                        (begin
                                          (let ((_g102828_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g102827_)
                                                       (##vector-length
                                                        _g102827_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g102828_ 2)))
                                                (error "Context expects 2 values"
                                                       _g102828_)))
                                          (let ((_target101881101926_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g102827_ 0)))
                                                (_tl101883101928_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g102827_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl101883101928_))
                                                (letrec ((_loop101884101931_
                                                          (lambda (_hd101882101934_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr101888101936_
                           _hd101889101938_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd101882101934_))
                        (let ((_e101885101941_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd101882101934_))))
                          (let ((_lp-hd101886101944_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e101885101941_)))
                                (_lp-tl101887101946_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e101885101941_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd101886101944_))
                                (let ((_e101894101949_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd101886101944_))))
                                  (let ((_hd101893101952_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e101894101949_)))
                                        (_tl101892101954_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e101894101949_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl101892101954_))
                                        (let ((_e101897101957_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl101892101954_))))
                                          (let ((_hd101896101960_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e101897101957_)))
                                                (_tl101895101962_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e101897101957_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl101895101962_))
                                                (let ((__tmp102832
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd101896101960_
                                                               _expr101888101936_)))
                                                      (__tmp102831
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd101893101952_
                                                               _hd101889101938_))))
                                                  (declare (not safe))
                                                  (_loop101884101931_
                                                   _lp-tl101887101946_
                                                   __tmp102832
                                                   __tmp102831))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g101870101905_
                                                   _g101871101908_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g101870101905_ _g101871101908_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g101870101905_ _g101871101908_)))))
                        (let ((_expr101890101965_ (reverse _expr101888101936_))
                              (_hd101891101967_ (reverse _hd101889101938_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101878101923_))
                              (let ((_e101900101970_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101878101923_))))
                                (let ((_hd101899101973_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101900101970_)))
                                      (_tl101898101975_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101900101970_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl101898101975_))
                                      ((lambda (_L101978_ _L101979_ _L101980_)
                                         (for-each
                                          (lambda (_g101999102001_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self101867_
                                               _g101999102001_)))
                                          (let ((__tmp102830
                                                 (lambda (_g102003102006_
                                                          _g102004102008_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g102003102006_
                                                           _g102004102008_))))
                                                (__tmp102829
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L101978_ '()))))
                                            (declare (not safe))
                                            (foldr1 __tmp102830
                                                    __tmp102829
                                                    _L101979_))))
                                       _hd101899101973_
                                       _expr101890101965_
                                       _hd101891101967_)
                                      (let ()
                                        (declare (not safe))
                                        (_g101870101905_ _g101871101908_)))))
                              (let ()
                                (declare (not safe))
                                (_g101870101905_ _g101871101908_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop101884101931_
                                                     _target101881101926_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g101870101905_
                                                   _g101871101908_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g101870101905_ _g101871101908_)))))
                              (let ()
                                (declare (not safe))
                                (_g101870101905_ _g101871101908_)))))
                      (let ()
                        (declare (not safe))
                        (_g101870101905_ _g101871101908_))))))
          (declare (not safe))
          (_g101869102011_ _stx101868_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_self101812_ _stx101813_)
        (let* ((_g101815101829_
                (lambda (_g101816101826_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101816101826_))))
               (_g101814101864_
                (lambda (_g101816101832_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101816101832_))
                      (let ((_e101821101834_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101816101832_))))
                        (let ((_hd101820101837_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101821101834_)))
                              (_tl101819101839_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101821101834_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101819101839_))
                              (let ((_e101824101842_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101819101839_))))
                                (let ((_hd101823101845_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101824101842_)))
                                      (_tl101822101847_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101824101842_))))
                                  ((lambda (_L101850_ _L101851_)
                                     (let ((__tmp102833 (last _L101850_)))
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _self101812_
                                        __tmp102833)))
                                   _tl101822101847_
                                   _hd101823101845_)))
                              (let ()
                                (declare (not safe))
                                (_g101815101829_ _g101816101832_)))))
                      (let ()
                        (declare (not safe))
                        (_g101815101829_ _g101816101832_))))))
          (declare (not safe))
          (_g101814101864_ _stx101813_))))
    (define gxc#apply-body-setq%
      (lambda (_self101744_ _stx101745_)
        (let* ((_g101747101764_
                (lambda (_g101748101761_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101748101761_))))
               (_g101746101809_
                (lambda (_g101748101767_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101748101767_))
                      (let ((_e101753101769_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101748101767_))))
                        (let ((_hd101752101772_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101753101769_)))
                              (_tl101751101774_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101753101769_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101751101774_))
                              (let ((_e101756101777_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101751101774_))))
                                (let ((_hd101755101780_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101756101777_)))
                                      (_tl101754101782_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101756101777_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl101754101782_))
                                      (let ((_e101759101785_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl101754101782_))))
                                        (let ((_hd101758101788_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e101759101785_)))
                                              (_tl101757101790_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e101759101785_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl101757101790_))
                                              ((lambda (_L101793_ _L101794_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self101744_
                                                    _L101793_)))
                                               _hd101758101788_
                                               _hd101755101780_)
                                              (let ()
                                                (declare (not safe))
                                                (_g101747101764_
                                                 _g101748101767_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g101747101764_ _g101748101767_)))))
                              (let ()
                                (declare (not safe))
                                (_g101747101764_ _g101748101767_)))))
                      (let ()
                        (declare (not safe))
                        (_g101747101764_ _g101748101767_))))))
          (declare (not safe))
          (_g101746101809_ _stx101745_))))
    (define gxc#apply-operands
      (lambda (_self101657_ _stx101658_)
        (let* ((_g101660101679_
                (lambda (_g101661101676_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101661101676_))))
               (_g101659101741_
                (lambda (_g101661101682_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101661101682_))
                      (let ((_e101665101684_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101661101682_))))
                        (let ((_hd101664101687_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101665101684_)))
                              (_tl101663101689_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101665101684_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl101663101689_))
                              (let ((_g102834_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl101663101689_
                                        '0))))
                                (begin
                                  (let ((_g102835_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g102834_)
                                               (##vector-length _g102834_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g102835_ 2)))
                                        (error "Context expects 2 values"
                                               _g102835_)))
                                  (let ((_target101666101692_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g102834_ 0)))
                                        (_tl101668101694_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g102834_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl101668101694_))
                                        (letrec ((_loop101669101697_
                                                  (lambda (_hd101667101700_
                                                           _rands101673101702_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd101667101700_))
                                                        (let ((_e101670101705_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd101667101700_))))
                  (let ((_lp-hd101671101708_
                         (let () (declare (not safe)) (##car _e101670101705_)))
                        (_lp-tl101672101710_
                         (let ()
                           (declare (not safe))
                           (##cdr _e101670101705_))))
                    (let ((__tmp102837
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd101671101708_ _rands101673101702_))))
                      (declare (not safe))
                      (_loop101669101697_ _lp-tl101672101710_ __tmp102837))))
                (let ((_rands101674101713_ (reverse _rands101673101702_)))
                  ((lambda (_L101716_)
                     (for-each
                      (lambda (_g101729101731_)
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _self101657_ _g101729101731_)))
                      (let ((__tmp102836
                             (lambda (_g101733101736_ _g101734101738_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g101733101736_ _g101734101738_)))))
                        (declare (not safe))
                        (foldr1 __tmp102836 '() _L101716_))))
                   _rands101674101713_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop101669101697_
                                             _target101666101692_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g101660101679_
                                           _g101661101682_))))))
                              (let ()
                                (declare (not safe))
                                (_g101660101679_ _g101661101682_)))))
                      (let ()
                        (declare (not safe))
                        (_g101660101679_ _g101661101682_))))))
          (declare (not safe))
          (_g101659101741_ _stx101658_))))
    (define gxc#xform-wrap-source
      (lambda (_stx101654_ _src-stx101655_)
        (let ((__tmp102838
               (let () (declare (not safe)) (gx#stx-source _src-stx101655_))))
          (declare (not safe))
          (gx#stx-wrap-source _stx101654_ __tmp102838))))
    (define gxc#xform-begin%
      (lambda (_self101609_ _stx101610_)
        (let* ((_g101612101622_
                (lambda (_g101613101619_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101613101619_))))
               (_g101611101651_
                (lambda (_g101613101625_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101613101625_))
                      (let ((_e101617101627_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101613101625_))))
                        (let ((_hd101616101630_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101617101627_)))
                              (_tl101615101632_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101617101627_))))
                          ((lambda (_L101635_)
                             (let* ((_forms101649_
                                     (map (lambda (_g101644101646_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self101609_
                                               _g101644101646_)))
                                          _L101635_))
                                    (__tmp102839
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#begin _forms101649_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp102839
                                _stx101610_)))
                           _tl101615101632_)))
                      (let ()
                        (declare (not safe))
                        (_g101612101622_ _g101613101625_))))))
          (declare (not safe))
          (_g101611101651_ _stx101610_))))
    (define gxc#xform-begin-syntax%
      (lambda (_self101563_ _stx101564_)
        (let* ((_g101566101576_
                (lambda (_g101567101573_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101567101573_))))
               (_g101565101606_
                (lambda (_g101567101579_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101567101579_))
                      (let ((_e101571101581_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101567101579_))))
                        (let ((_hd101570101584_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101571101581_)))
                              (_tl101569101586_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101571101581_))))
                          ((lambda (_L101589_)
                             (let ((__tmp102842
                                    (lambda ()
                                      (let* ((_forms101604_
                                              (map (lambda (_g101599101601_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _self101563_
                                                        _g101599101601_)))
                                                   _L101589_))
                                             (__tmp102843
                                              (let ()
                                                (declare (not safe))
                                                (cons '%#begin-syntax
                                                      _forms101604_))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp102843
                                         _stx101564_))))
                                   (__tmp102840
                                    (let ((__tmp102841
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp102841 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp102842
                                gx#current-expander-phi
                                __tmp102840)))
                           _tl101569101586_)))
                      (let ()
                        (declare (not safe))
                        (_g101566101576_ _g101567101579_))))))
          (declare (not safe))
          (_g101565101606_ _stx101564_))))
    (define gxc#xform-module%
      (lambda (_self101500_ _stx101501_)
        (let* ((_g101503101517_
                (lambda (_g101504101514_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101504101514_))))
               (_g101502101560_
                (lambda (_g101504101520_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101504101520_))
                      (let ((_e101509101522_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101504101520_))))
                        (let ((_hd101508101525_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101509101522_)))
                              (_tl101507101527_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101509101522_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101507101527_))
                              (let ((_e101512101530_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101507101527_))))
                                (let ((_hd101511101533_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101512101530_)))
                                      (_tl101510101535_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101512101530_))))
                                  ((lambda (_L101538_ _L101539_)
                                     (let* ((_ctx101552_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L101539_)))
                                            (_code101554_
                                             (##structure-ref
                                              _ctx101552_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_code101557_
                                             (let ((__tmp102844
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _self101500_
                                                         _code101554_)))))
                                               (declare (not safe))
                                               (call-with-parameters
                                                __tmp102844
                                                gx#current-expander-context
                                                _ctx101552_))))
                                       (##structure-set!
                                        _ctx101552_
                                        _code101557_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp102845
                                              (let ((__tmp102846
                                                     (let ((__tmp102847
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _code101557_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L101539_ __tmp102847))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#module __tmp102846))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp102845
                                          _stx101501_))))
                                   _tl101510101535_
                                   _hd101511101533_)))
                              (let ()
                                (declare (not safe))
                                (_g101503101517_ _g101504101520_)))))
                      (let ()
                        (declare (not safe))
                        (_g101503101517_ _g101504101520_))))))
          (declare (not safe))
          (_g101502101560_ _stx101501_))))
    (define gxc#xform-define-values%
      (lambda (_self101430_ _stx101431_)
        (let* ((_g101433101450_
                (lambda (_g101434101447_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101434101447_))))
               (_g101432101497_
                (lambda (_g101434101453_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101434101453_))
                      (let ((_e101439101455_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101434101453_))))
                        (let ((_hd101438101458_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101439101455_)))
                              (_tl101437101460_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101439101455_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101437101460_))
                              (let ((_e101442101463_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101437101460_))))
                                (let ((_hd101441101466_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101442101463_)))
                                      (_tl101440101468_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101442101463_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl101440101468_))
                                      (let ((_e101445101471_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl101440101468_))))
                                        (let ((_hd101444101474_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e101445101471_)))
                                              (_tl101443101476_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e101445101471_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl101443101476_))
                                              ((lambda (_L101479_ _L101480_)
                                                 (let* ((_expr101495_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self101430_
                                                            _L101479_)))
                                                        (__tmp102848
                                                         (let ((__tmp102849
                                                                (let ((__tmp102850
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _expr101495_ '()))))
                          (declare (not safe))
                          (cons _L101480_ __tmp102850))))
                   (declare (not safe))
                   (cons '%#define-values __tmp102849))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp102848
                                                    _stx101431_)))
                                               _hd101444101474_
                                               _hd101441101466_)
                                              (let ()
                                                (declare (not safe))
                                                (_g101433101450_
                                                 _g101434101453_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g101433101450_ _g101434101453_)))))
                              (let ()
                                (declare (not safe))
                                (_g101433101450_ _g101434101453_)))))
                      (let ()
                        (declare (not safe))
                        (_g101433101450_ _g101434101453_))))))
          (declare (not safe))
          (_g101432101497_ _stx101431_))))
    (define gxc#xform-define-syntax%
      (lambda (_self101359_ _stx101360_)
        (let* ((_g101362101379_
                (lambda (_g101363101376_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101363101376_))))
               (_g101361101427_
                (lambda (_g101363101382_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101363101382_))
                      (let ((_e101368101384_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101363101382_))))
                        (let ((_hd101367101387_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101368101384_)))
                              (_tl101366101389_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101368101384_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101366101389_))
                              (let ((_e101371101392_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101366101389_))))
                                (let ((_hd101370101395_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101371101392_)))
                                      (_tl101369101397_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101371101392_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl101369101397_))
                                      (let ((_e101374101400_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl101369101397_))))
                                        (let ((_hd101373101403_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e101374101400_)))
                                              (_tl101372101405_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e101374101400_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl101372101405_))
                                              ((lambda (_L101408_ _L101409_)
                                                 (let ((__tmp102853
                                                        (lambda ()
                                                          (let* ((_expr101425_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__1 _self101359_ _L101408_)))
                         (__tmp102854
                          (let ((__tmp102855
                                 (let ((__tmp102856
                                        (let ()
                                          (declare (not safe))
                                          (cons _expr101425_ '()))))
                                   (declare (not safe))
                                   (cons _L101409_ __tmp102856))))
                            (declare (not safe))
                            (cons '%#define-syntax __tmp102855))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp102854 _stx101360_))))
               (__tmp102851
                (let ((__tmp102852 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp102852 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp102853
                                                    gx#current-expander-phi
                                                    __tmp102851)))
                                               _hd101373101403_
                                               _hd101370101395_)
                                              (let ()
                                                (declare (not safe))
                                                (_g101362101379_
                                                 _g101363101382_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g101362101379_ _g101363101382_)))))
                              (let ()
                                (declare (not safe))
                                (_g101362101379_ _g101363101382_)))))
                      (let ()
                        (declare (not safe))
                        (_g101362101379_ _g101363101382_))))))
          (declare (not safe))
          (_g101361101427_ _stx101360_))))
    (define gxc#xform-begin-annotation%
      (lambda (_self101289_ _stx101290_)
        (let* ((_g101292101309_
                (lambda (_g101293101306_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101293101306_))))
               (_g101291101356_
                (lambda (_g101293101312_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101293101312_))
                      (let ((_e101298101314_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101293101312_))))
                        (let ((_hd101297101317_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101298101314_)))
                              (_tl101296101319_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101298101314_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101296101319_))
                              (let ((_e101301101322_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101296101319_))))
                                (let ((_hd101300101325_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101301101322_)))
                                      (_tl101299101327_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101301101322_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl101299101327_))
                                      (let ((_e101304101330_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl101299101327_))))
                                        (let ((_hd101303101333_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e101304101330_)))
                                              (_tl101302101335_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e101304101330_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl101302101335_))
                                              ((lambda (_L101338_ _L101339_)
                                                 (let* ((_expr101354_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self101289_
                                                            _L101338_)))
                                                        (__tmp102857
                                                         (let ((__tmp102858
                                                                (let ((__tmp102859
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _expr101354_ '()))))
                          (declare (not safe))
                          (cons _L101339_ __tmp102859))))
                   (declare (not safe))
                   (cons '%#begin-annotation __tmp102858))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp102857
                                                    _stx101290_)))
                                               _hd101303101333_
                                               _hd101300101325_)
                                              (let ()
                                                (declare (not safe))
                                                (_g101292101309_
                                                 _g101293101312_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g101292101309_ _g101293101312_)))))
                              (let ()
                                (declare (not safe))
                                (_g101292101309_ _g101293101312_)))))
                      (let ()
                        (declare (not safe))
                        (_g101292101309_ _g101293101312_))))))
          (declare (not safe))
          (_g101291101356_ _stx101290_))))
    (define gxc#xform-lambda%
      (lambda (_self101228_ _stx101229_)
        (let* ((_g101231101245_
                (lambda (_g101232101242_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101232101242_))))
               (_g101230101286_
                (lambda (_g101232101248_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101232101248_))
                      (let ((_e101237101250_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101232101248_))))
                        (let ((_hd101236101253_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101237101250_)))
                              (_tl101235101255_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101237101250_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101235101255_))
                              (let ((_e101240101258_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101235101255_))))
                                (let ((_hd101239101261_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101240101258_)))
                                      (_tl101238101263_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101240101258_))))
                                  ((lambda (_L101266_ _L101267_)
                                     (let* ((_body101284_
                                             (map (lambda (_g101279101281_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _self101228_
                                                       _g101279101281_)))
                                                  _L101266_))
                                            (__tmp102860
                                             (let ((__tmp102861
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L101267_
                                                            _body101284_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp102861))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp102860
                                        _stx101229_)))
                                   _tl101238101263_
                                   _hd101239101261_)))
                              (let ()
                                (declare (not safe))
                                (_g101231101245_ _g101232101248_)))))
                      (let ()
                        (declare (not safe))
                        (_g101231101245_ _g101232101248_))))))
          (declare (not safe))
          (_g101230101286_ _stx101229_))))
    (define gxc#xform-case-lambda%
      (lambda (_self101137_ _stx101138_)
        (letrec ((_clause-e101140_
                  (lambda (_clause101181_)
                    (let* ((_g101183101194_
                            (lambda (_g101184101191_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g101184101191_))))
                           (_g101182101225_
                            (lambda (_g101184101197_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g101184101197_))
                                  (let ((_e101189101199_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g101184101197_))))
                                    (let ((_hd101188101202_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e101189101199_)))
                                          (_tl101187101204_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e101189101199_))))
                                      ((lambda (_L101207_ _L101208_)
                                         (let ((_body101223_
                                                (map (lambda (_g101218101220_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _self101137_
                                                          _g101218101220_)))
                                                     _L101207_)))
                                           (declare (not safe))
                                           (cons _L101208_ _body101223_)))
                                       _tl101187101204_
                                       _hd101188101202_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g101183101194_ _g101184101197_))))))
                      (declare (not safe))
                      (_g101182101225_ _clause101181_)))))
          (let* ((_g101142101152_
                  (lambda (_g101143101149_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g101143101149_))))
                 (_g101141101178_
                  (lambda (_g101143101155_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g101143101155_))
                        (let ((_e101147101157_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g101143101155_))))
                          (let ((_hd101146101160_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e101147101157_)))
                                (_tl101145101162_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e101147101157_))))
                            ((lambda (_L101165_)
                               (let* ((_clauses101176_
                                       (map _clause-e101140_ _L101165_))
                                      (__tmp102862
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses101176_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp102862
                                  _stx101138_)))
                             _tl101145101162_)))
                        (let ()
                          (declare (not safe))
                          (_g101142101152_ _g101143101155_))))))
            (declare (not safe))
            (_g101141101178_ _stx101138_)))))
    (define gxc#xform-let-values%
      (lambda (_self100923_ _stx100924_)
        (let* ((_g100926100959_
                (lambda (_g100927100956_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g100927100956_))))
               (_g100925101134_
                (lambda (_g100927100962_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g100927100962_))
                      (let ((_e100934100964_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g100927100962_))))
                        (let ((_hd100933100967_
                               (let ()
                                 (declare (not safe))
                                 (##car _e100934100964_)))
                              (_tl100932100969_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e100934100964_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl100932100969_))
                              (let ((_e100937100972_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl100932100969_))))
                                (let ((_hd100936100975_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e100937100972_)))
                                      (_tl100935100977_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e100937100972_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd100936100975_))
                                      (let ((_g102863_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd100936100975_
                                                '0))))
                                        (begin
                                          (let ((_g102864_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g102863_)
                                                       (##vector-length
                                                        _g102863_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g102864_ 2)))
                                                (error "Context expects 2 values"
                                                       _g102864_)))
                                          (let ((_target100938100980_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g102863_ 0)))
                                                (_tl100940100982_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g102863_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl100940100982_))
                                                (letrec ((_loop100941100985_
                                                          (lambda (_hd100939100988_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr100945100990_
                           _hd100946100992_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd100939100988_))
                        (let ((_e100942100995_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd100939100988_))))
                          (let ((_lp-hd100943100998_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e100942100995_)))
                                (_lp-tl100944101000_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e100942100995_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd100943100998_))
                                (let ((_e100951101003_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd100943100998_))))
                                  (let ((_hd100950101006_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e100951101003_)))
                                        (_tl100949101008_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e100951101003_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl100949101008_))
                                        (let ((_e100954101011_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl100949101008_))))
                                          (let ((_hd100953101014_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e100954101011_)))
                                                (_tl100952101016_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e100954101011_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl100952101016_))
                                                (let ((__tmp102877
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd100953101014_
                                                               _expr100945100990_)))
                                                      (__tmp102876
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd100950101006_
                                                               _hd100946100992_))))
                                                  (declare (not safe))
                                                  (_loop100941100985_
                                                   _lp-tl100944101000_
                                                   __tmp102877
                                                   __tmp102876))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g100926100959_
                                                   _g100927100962_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g100926100959_ _g100927100962_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g100926100959_ _g100927100962_)))))
                        (let ((_expr100947101019_ (reverse _expr100945100990_))
                              (_hd100948101021_ (reverse _hd100946100992_)))
                          ((lambda (_L101024_ _L101025_ _L101026_ _L101027_)
                             (let* ((_g101046101062_
                                     (lambda (_g101047101059_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g101047101059_))))
                                    (_g101045101120_
                                     (lambda (_g101047101065_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _g101047101065_))
                                           (let ((_g102865_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _g101047101065_
                                                     '0))))
                                             (begin
                                               (let ((_g102866_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g102865_)
                                                            (##vector-length
                                                             _g102865_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g102866_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g102866_)))
                                               (let ((_target101049101067_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g102865_
                                                         0)))
                                                     (_tl101051101069_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g102865_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl101051101069_))
                                                     (letrec ((_loop101052101072_
                                                               (lambda (_hd101050101075_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr101056101077_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _hd101050101075_))
                             (let ((_e101053101080_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _hd101050101075_))))
                               (let ((_lp-hd101054101083_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e101053101080_)))
                                     (_lp-tl101055101085_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e101053101080_))))
                                 (let ((__tmp102873
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd101054101083_
                                                _expr101056101077_))))
                                   (declare (not safe))
                                   (_loop101052101072_
                                    _lp-tl101055101085_
                                    __tmp102873))))
                             (let ((_expr101057101088_
                                    (reverse _expr101056101077_)))
                               ((lambda (_L101091_)
                                  (let ()
                                    (let* ((_body101108_
                                            (map (lambda (_g101103101105_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self100923_
                                                      _g101103101105_)))
                                                 _L101024_))
                                           (__tmp102867
                                            (let ((__tmp102868
                                                   (let ((__tmp102869
                                                          (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _L101091_
                                                               _L101026_))
                                                            (let ((__tmp102870
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g101109101113_
                                    _g101110101115_
                                    _g101111101117_)
                             (let ((__tmp102871
                                    (let ((__tmp102872
                                           (let ()
                                             (declare (not safe))
                                             (cons _g101109101113_ '()))))
                                      (declare (not safe))
                                      (cons _g101110101115_ __tmp102872))))
                               (declare (not safe))
                               (cons __tmp102871 _g101111101117_)))))
                      (declare (not safe))
                      (foldr2 __tmp102870 '() _L101091_ _L101026_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp102869
                                                           _body101108_))))
                                              (declare (not safe))
                                              (cons _L101027_ __tmp102868))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp102867
                                       _stx100924_))))
                                _expr101057101088_))))))
               (let ()
                 (declare (not safe))
                 (_loop101052101072_ _target101049101067_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g101046101062_
                                                        _g101047101065_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_g101046101062_
                                              _g101047101065_)))))
                                    (__tmp102874
                                     (map (lambda (_g101122101124_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self100923_
                                               _g101122101124_)))
                                          (let ((__tmp102875
                                                 (lambda (_g101126101129_
                                                          _g101127101131_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g101126101129_
                                                           _g101127101131_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp102875
                                                    '()
                                                    _L101025_)))))
                               (declare (not safe))
                               (_g101045101120_ __tmp102874)))
                           _tl100935100977_
                           _expr100947101019_
                           _hd100948101021_
                           _hd100933100967_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop100941100985_
                                                     _target100938100980_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g100926100959_
                                                   _g100927100962_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g100926100959_ _g100927100962_)))))
                              (let ()
                                (declare (not safe))
                                (_g100926100959_ _g100927100962_)))))
                      (let ()
                        (declare (not safe))
                        (_g100926100959_ _g100927100962_))))))
          (declare (not safe))
          (_g100925101134_ _stx100924_))))
    (define gxc#xform-operands
      (lambda (_self100875_ _stx100876_)
        (let* ((_g100878100889_
                (lambda (_g100879100886_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g100879100886_))))
               (_g100877100920_
                (lambda (_g100879100892_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g100879100892_))
                      (let ((_e100884100894_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g100879100892_))))
                        (let ((_hd100883100897_
                               (let ()
                                 (declare (not safe))
                                 (##car _e100884100894_)))
                              (_tl100882100899_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e100884100894_))))
                          ((lambda (_L100902_ _L100903_)
                             (let* ((_rands100918_
                                     (map (lambda (_g100913100915_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self100875_
                                               _g100913100915_)))
                                          _L100902_))
                                    (__tmp102878
                                     (let ()
                                       (declare (not safe))
                                       (cons _L100903_ _rands100918_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp102878
                                _stx100876_)))
                           _tl100882100899_
                           _hd100883100897_)))
                      (let ()
                        (declare (not safe))
                        (_g100878100889_ _g100879100892_))))))
          (declare (not safe))
          (_g100877100920_ _stx100876_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_self100805_ _stx100806_)
        (let* ((_g100808100825_
                (lambda (_g100809100822_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g100809100822_))))
               (_g100807100872_
                (lambda (_g100809100828_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g100809100828_))
                      (let ((_e100814100830_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g100809100828_))))
                        (let ((_hd100813100833_
                               (let ()
                                 (declare (not safe))
                                 (##car _e100814100830_)))
                              (_tl100812100835_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e100814100830_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl100812100835_))
                              (let ((_e100817100838_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl100812100835_))))
                                (let ((_hd100816100841_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e100817100838_)))
                                      (_tl100815100843_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e100817100838_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl100815100843_))
                                      (let ((_e100820100846_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl100815100843_))))
                                        (let ((_hd100819100849_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e100820100846_)))
                                              (_tl100818100851_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e100820100846_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl100818100851_))
                                              ((lambda (_L100854_ _L100855_)
                                                 (let* ((_expr100870_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self100805_
                                                            _L100854_)))
                                                        (__tmp102879
                                                         (let ((__tmp102880
                                                                (let ((__tmp102881
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _expr100870_ '()))))
                          (declare (not safe))
                          (cons _L100855_ __tmp102881))))
                   (declare (not safe))
                   (cons '%#set! __tmp102880))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp102879
                                                    _stx100806_)))
                                               _hd100819100849_
                                               _hd100816100841_)
                                              (let ()
                                                (declare (not safe))
                                                (_g100808100825_
                                                 _g100809100828_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g100808100825_ _g100809100828_)))))
                              (let ()
                                (declare (not safe))
                                (_g100808100825_ _g100809100828_)))))
                      (let ()
                        (declare (not safe))
                        (_g100808100825_ _g100809100828_))))))
          (declare (not safe))
          (_g100807100872_ _stx100806_))))))
