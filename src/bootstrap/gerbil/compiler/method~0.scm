(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1710770269)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_stx102861_)
        (let* ((_self102863_ (gxc#current-compile-method))
               (_$e102865_
                (let ((__tmp103034
                       (let ()
                         (declare (not safe))
                         (gxc#stx-car-e _stx102861_))))
                  (declare (not safe))
                  (method-ref _self102863_ __tmp103034))))
          (if _$e102865_
              ((lambda (_method102868_)
                 (declare (not safe))
                 (_method102868_ _self102863_ _stx102861_))
               _$e102865_)
              (let ((__tmp103036
                     (let () (declare (not safe)) (gxc#stx-car-e _stx102861_)))
                    (__tmp103035
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _stx102861_))))
                (declare (not safe))
                (error '"missing method"
                       _self102863_
                       __tmp103036
                       __tmp103035))))))
    (define gxc#compile-e__1
      (lambda (_self102871_ _stx102872_)
        (let ((_$e102874_
               (let ((__tmp103037
                      (let ()
                        (declare (not safe))
                        (gxc#stx-car-e _stx102872_))))
                 (declare (not safe))
                 (method-ref _self102871_ __tmp103037))))
          (if _$e102874_
              ((lambda (_method102877_)
                 (declare (not safe))
                 (_method102877_ _self102871_ _stx102872_))
               _$e102874_)
              (let ((__tmp103039
                     (let () (declare (not safe)) (gxc#stx-car-e _stx102872_)))
                    (__tmp103038
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _stx102872_))))
                (declare (not safe))
                (error '"missing method"
                       _self102871_
                       __tmp103039
                       __tmp103038))))))
    (define gxc#compile-e
      (lambda _g103041_
        (let ((_g103040_ (let () (declare (not safe)) (##length _g103041_))))
          (cond ((let () (declare (not safe)) (##fx= _g103040_ 1))
                 (apply (lambda (_stx102861_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _stx102861_)))
                        _g103041_))
                ((let () (declare (not safe)) (##fx= _g103040_ 2))
                 (apply (lambda (_self102871_ _stx102872_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__1 _self102871_ _stx102872_)))
                        _g103041_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g103041_))))))
    (define gxc#stx-car-e
      (lambda (_stx102859_)
        (let ((__tmp103042
               (car (let () (declare (not safe)) (gx#stx-e _stx102859_)))))
          (declare (not safe))
          (gx#stx-e __tmp103042))))
    (define gxc#void-method (lambda (_self102856_ _stx102857_) '#!void))
    (define gxc#false-method (lambda (_self102853_ _stx102854_) '#f))
    (define gxc#true-method (lambda (_self102850_ _stx102851_) '#t))
    (define gxc#identity-method
      (lambda (_self102847_ _stx102848_) _stx102848_))
    (define gxc#::void-expression::t
      (let ((__tmp103043 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp103043
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _$args102844_
        (apply make-instance gxc#::void-expression::t _$args102844_)))
    (define gxc#::void-expression-bind-methods!
      (make-promise
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
           (bind-method!__0 gxc#::void-expression::t '%#quote gxc#void-method))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::void-expression::t
            '%#quote-syntax
            gxc#void-method))
         (let ()
           (declare (not safe))
           (bind-method!__0 gxc#::void-expression::t '%#call gxc#void-method))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::void-expression::t
            '%#call-unchecked
            gxc#void-method))
         (let ()
           (declare (not safe))
           (bind-method!__0 gxc#::void-expression::t '%#if gxc#void-method))
         (let ()
           (declare (not safe))
           (bind-method!__0 gxc#::void-expression::t '%#ref gxc#void-method))
         (let ()
           (declare (not safe))
           (bind-method!__0 gxc#::void-expression::t '%#set! gxc#void-method))
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
    (define gxc#::void-special-form::t
      (let ((__tmp103044 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp103044
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _$args102840_
        (apply make-instance gxc#::void-special-form::t _$args102840_)))
    (define gxc#::void-special-form-bind-methods!
      (make-promise
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
    (define gxc#::void::t
      (let ((__tmp103045
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (make-class-type 'gxc#::void::t '::void __tmp103045 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _$args102836_ (apply make-instance gxc#::void::t _$args102836_)))
    (define gxc#::void-bind-methods!
      (make-promise
       (lambda ()
         (force gxc#::void-special-form-bind-methods!)
         (force gxc#::void-expression-bind-methods!))))
    (define gxc#::false-expression::t
      (let ((__tmp103046 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp103046
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _$args102832_
        (apply make-instance gxc#::false-expression::t _$args102832_)))
    (define gxc#::false-expression-bind-methods!
      (make-promise
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
           (bind-method!__0 gxc#::false-expression::t '%#if gxc#false-method))
         (let ()
           (declare (not safe))
           (bind-method!__0 gxc#::false-expression::t '%#ref gxc#false-method))
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
    (define gxc#::false-special-form::t
      (let ((__tmp103047 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp103047
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _$args102828_
        (apply make-instance gxc#::false-special-form::t _$args102828_)))
    (define gxc#::false-special-form-bind-methods!
      (make-promise
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
    (define gxc#::false::t
      (let ((__tmp103048
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (make-class-type 'gxc#::false::t '::false __tmp103048 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _$args102824_
        (apply make-instance gxc#::false::t _$args102824_)))
    (define gxc#::false-bind-methods!
      (make-promise
       (lambda ()
         (force gxc#::false-special-form-bind-methods!)
         (force gxc#::false-expression-bind-methods!))))
    (define gxc#::identity-expression::t
      (let ((__tmp103049 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp103049
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _$args102820_
        (apply make-instance gxc#::identity-expression::t _$args102820_)))
    (define gxc#::identity-expression-bind-methods!
      (make-promise
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
    (define gxc#::identity-special-form::t
      (let ((__tmp103050 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp103050
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _$args102816_
        (apply make-instance gxc#::identity-special-form::t _$args102816_)))
    (define gxc#::identity-special-form-bind-methods!
      (make-promise
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
    (define gxc#::identity::t
      (let ((__tmp103051
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::identity::t
         '::identity
         __tmp103051
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _$args102812_
        (apply make-instance gxc#::identity::t _$args102812_)))
    (define gxc#::identity-bind-methods!
      (make-promise
       (lambda ()
         (force gxc#::identity-special-form-bind-methods!)
         (force gxc#::identity-expression-bind-methods!))))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp103052 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp103052
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _$args102808_
        (apply make-instance gxc#::basic-xform-expression::t _$args102808_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (make-promise
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
    (define gxc#::basic-xform::t
      (let ((__tmp103053
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp103053
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _$args102804_
        (apply make-instance gxc#::basic-xform::t _$args102804_)))
    (define gxc#::basic-xform-bind-methods!
      (make-promise
       (lambda ()
         (force gxc#::basic-xform-expression-bind-methods!)
         (force gxc#::identity-bind-methods!)
         (let ()
           (declare (not safe))
           (bind-method!__0 gxc#::basic-xform::t '%#begin gxc#xform-begin%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::basic-xform::t
            '%#begin-syntax
            gxc#xform-begin-syntax%))
         (let ()
           (declare (not safe))
           (bind-method!__0 gxc#::basic-xform::t '%#module gxc#xform-module%))
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
    (define gxc#apply-begin%
      (lambda (_self102760_ _stx102761_)
        (let* ((_g102763102773_
                (lambda (_g102764102770_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102764102770_))))
               (_g102762102800_
                (lambda (_g102764102776_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102764102776_))
                      (let ((_e102768102778_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102764102776_))))
                        (let ((_hd102767102781_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102768102778_)))
                              (_tl102766102783_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102768102778_))))
                          ((lambda (_L102786_)
                             (for-each
                              (lambda (_g102795102797_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1
                                   _self102760_
                                   _g102795102797_)))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _L102786_))))
                           _tl102766102783_)))
                      (let ()
                        (declare (not safe))
                        (_g102763102773_ _g102764102776_))))))
          (declare (not safe))
          (_g102762102800_ _stx102761_))))
    (define gxc#apply-last-begin%
      (lambda (_self102721_ _stx102722_)
        (let* ((_g102724102734_
                (lambda (_g102725102731_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102725102731_))))
               (_g102723102757_
                (lambda (_g102725102737_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102725102737_))
                      (let ((_e102729102739_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102725102737_))))
                        (let ((_hd102728102742_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102729102739_)))
                              (_tl102727102744_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102729102739_))))
                          ((lambda (_L102747_)
                             (let ((__tmp103054 (last _L102747_)))
                               (declare (not safe))
                               (gxc#compile-e__1 _self102721_ __tmp103054)))
                           _tl102727102744_)))
                      (let ()
                        (declare (not safe))
                        (_g102724102734_ _g102725102737_))))))
          (declare (not safe))
          (_g102723102757_ _stx102722_))))
    (define gxc#apply-begin-syntax%
      (lambda (_self102717_ _stx102718_)
        (let ((__tmp103057
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#apply-begin% _self102717_ _stx102718_))))
              (__tmp103055
               (let ((__tmp103056 (gx#current-expander-phi)))
                 (declare (not safe))
                 (fx+ __tmp103056 '1))))
          (declare (not safe))
          (call-with-parameters
           __tmp103057
           gx#current-expander-phi
           __tmp103055))))
    (define gxc#apply-module%
      (lambda (_self102656_ _stx102657_)
        (let* ((_g102659102673_
                (lambda (_g102660102670_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102660102670_))))
               (_g102658102714_
                (lambda (_g102660102676_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102660102676_))
                      (let ((_e102665102678_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102660102676_))))
                        (let ((_hd102664102681_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102665102678_)))
                              (_tl102663102683_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102665102678_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102663102683_))
                              (let ((_e102668102686_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102663102683_))))
                                (let ((_hd102667102689_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102668102686_)))
                                      (_tl102666102691_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102668102686_))))
                                  ((lambda (_L102694_ _L102695_)
                                     (let* ((_ctx102708_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L102695_)))
                                            (_ctx-stx102710_
                                             (##structure-ref
                                              _ctx102708_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp103058
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self102656_
                                                   _ctx-stx102710_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp103058
                                          gx#current-expander-context
                                          _ctx102708_))))
                                   _tl102666102691_
                                   _hd102667102689_)))
                              (let ()
                                (declare (not safe))
                                (_g102659102673_ _g102660102676_)))))
                      (let ()
                        (declare (not safe))
                        (_g102659102673_ _g102660102676_))))))
          (declare (not safe))
          (_g102658102714_ _stx102657_))))
    (define gxc#apply-begin-annotation%
      (lambda (_self102588_ _stx102589_)
        (let* ((_g102591102608_
                (lambda (_g102592102605_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102592102605_))))
               (_g102590102653_
                (lambda (_g102592102611_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102592102611_))
                      (let ((_e102597102613_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102592102611_))))
                        (let ((_hd102596102616_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102597102613_)))
                              (_tl102595102618_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102597102613_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102595102618_))
                              (let ((_e102600102621_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102595102618_))))
                                (let ((_hd102599102624_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102600102621_)))
                                      (_tl102598102626_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102600102621_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl102598102626_))
                                      (let ((_e102603102629_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl102598102626_))))
                                        (let ((_hd102602102632_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e102603102629_)))
                                              (_tl102601102634_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e102603102629_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl102601102634_))
                                              ((lambda (_L102637_ _L102638_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self102588_
                                                    _L102637_)))
                                               _hd102602102632_
                                               _hd102599102624_)
                                              (let ()
                                                (declare (not safe))
                                                (_g102591102608_
                                                 _g102592102611_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g102591102608_ _g102592102611_)))))
                              (let ()
                                (declare (not safe))
                                (_g102591102608_ _g102592102611_)))))
                      (let ()
                        (declare (not safe))
                        (_g102591102608_ _g102592102611_))))))
          (declare (not safe))
          (_g102590102653_ _stx102589_))))
    (define gxc#apply-define-values%
      (lambda (_self102520_ _stx102521_)
        (let* ((_g102523102540_
                (lambda (_g102524102537_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102524102537_))))
               (_g102522102585_
                (lambda (_g102524102543_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102524102543_))
                      (let ((_e102529102545_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102524102543_))))
                        (let ((_hd102528102548_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102529102545_)))
                              (_tl102527102550_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102529102545_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102527102550_))
                              (let ((_e102532102553_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102527102550_))))
                                (let ((_hd102531102556_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102532102553_)))
                                      (_tl102530102558_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102532102553_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl102530102558_))
                                      (let ((_e102535102561_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl102530102558_))))
                                        (let ((_hd102534102564_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e102535102561_)))
                                              (_tl102533102566_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e102535102561_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl102533102566_))
                                              ((lambda (_L102569_ _L102570_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self102520_
                                                    _L102569_)))
                                               _hd102534102564_
                                               _hd102531102556_)
                                              (let ()
                                                (declare (not safe))
                                                (_g102523102540_
                                                 _g102524102543_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g102523102540_ _g102524102543_)))))
                              (let ()
                                (declare (not safe))
                                (_g102523102540_ _g102524102543_)))))
                      (let ()
                        (declare (not safe))
                        (_g102523102540_ _g102524102543_))))))
          (declare (not safe))
          (_g102522102585_ _stx102521_))))
    (define gxc#apply-define-syntax%
      (lambda (_self102451_ _stx102452_)
        (let* ((_g102454102471_
                (lambda (_g102455102468_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102455102468_))))
               (_g102453102517_
                (lambda (_g102455102474_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102455102474_))
                      (let ((_e102460102476_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102455102474_))))
                        (let ((_hd102459102479_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102460102476_)))
                              (_tl102458102481_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102460102476_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102458102481_))
                              (let ((_e102463102484_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102458102481_))))
                                (let ((_hd102462102487_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102463102484_)))
                                      (_tl102461102489_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102463102484_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl102461102489_))
                                      (let ((_e102466102492_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl102461102489_))))
                                        (let ((_hd102465102495_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e102466102492_)))
                                              (_tl102464102497_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e102466102492_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl102464102497_))
                                              ((lambda (_L102500_ _L102501_)
                                                 (let ((__tmp103061
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _self102451_
                                                             _L102500_))))
                                                       (__tmp103059
                                                        (let ((__tmp103060
                                                               (gx#current-expander-phi)))
                                                          (declare (not safe))
                                                          (fx+ __tmp103060
                                                               '1))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp103061
                                                    gx#current-expander-phi
                                                    __tmp103059)))
                                               _hd102465102495_
                                               _hd102462102487_)
                                              (let ()
                                                (declare (not safe))
                                                (_g102454102471_
                                                 _g102455102474_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g102454102471_ _g102455102474_)))))
                              (let ()
                                (declare (not safe))
                                (_g102454102471_ _g102455102474_)))))
                      (let ()
                        (declare (not safe))
                        (_g102454102471_ _g102455102474_))))))
          (declare (not safe))
          (_g102453102517_ _stx102452_))))
    (define gxc#apply-body-lambda%
      (lambda (_self102383_ _stx102384_)
        (let* ((_g102386102403_
                (lambda (_g102387102400_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102387102400_))))
               (_g102385102448_
                (lambda (_g102387102406_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102387102406_))
                      (let ((_e102392102408_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102387102406_))))
                        (let ((_hd102391102411_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102392102408_)))
                              (_tl102390102413_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102392102408_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102390102413_))
                              (let ((_e102395102416_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102390102413_))))
                                (let ((_hd102394102419_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102395102416_)))
                                      (_tl102393102421_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102395102416_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl102393102421_))
                                      (let ((_e102398102424_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl102393102421_))))
                                        (let ((_hd102397102427_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e102398102424_)))
                                              (_tl102396102429_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e102398102424_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl102396102429_))
                                              ((lambda (_L102432_ _L102433_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self102383_
                                                    _L102432_)))
                                               _hd102397102427_
                                               _hd102394102419_)
                                              (let ()
                                                (declare (not safe))
                                                (_g102386102403_
                                                 _g102387102406_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g102386102403_ _g102387102406_)))))
                              (let ()
                                (declare (not safe))
                                (_g102386102403_ _g102387102406_)))))
                      (let ()
                        (declare (not safe))
                        (_g102386102403_ _g102387102406_))))))
          (declare (not safe))
          (_g102385102448_ _stx102384_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_self102265_ _stx102266_)
        (let* ((_g102268102296_
                (lambda (_g102269102293_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102269102293_))))
               (_g102267102380_
                (lambda (_g102269102299_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102269102299_))
                      (let ((_e102274102301_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102269102299_))))
                        (let ((_hd102273102304_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102274102301_)))
                              (_tl102272102306_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102274102301_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl102272102306_))
                              (let ((_g103062_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl102272102306_
                                        '0))))
                                (begin
                                  (let ((_g103063_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g103062_)
                                               (##vector-length _g103062_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g103063_ 2)))
                                        (error "Context expects 2 values"
                                               _g103063_)))
                                  (let ((_target102275102309_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g103062_ 0)))
                                        (_tl102277102311_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g103062_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl102277102311_))
                                        (letrec ((_loop102278102314_
                                                  (lambda (_hd102276102317_
                                                           _body102282102319_
                                                           _hd102283102321_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd102276102317_))
                                                        (let ((_e102279102324_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd102276102317_))))
                  (let ((_lp-hd102280102327_
                         (let () (declare (not safe)) (##car _e102279102324_)))
                        (_lp-tl102281102329_
                         (let ()
                           (declare (not safe))
                           (##cdr _e102279102324_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd102280102327_))
                        (let ((_e102288102332_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd102280102327_))))
                          (let ((_hd102287102335_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e102288102332_)))
                                (_tl102286102337_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e102288102332_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl102286102337_))
                                (let ((_e102291102340_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl102286102337_))))
                                  (let ((_hd102290102343_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e102291102340_)))
                                        (_tl102289102345_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e102291102340_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl102289102345_))
                                        (let ((__tmp103066
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd102290102343_
                                                       _body102282102319_)))
                                              (__tmp103065
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd102287102335_
                                                       _hd102283102321_))))
                                          (declare (not safe))
                                          (_loop102278102314_
                                           _lp-tl102281102329_
                                           __tmp103066
                                           __tmp103065))
                                        (let ()
                                          (declare (not safe))
                                          (_g102268102296_ _g102269102299_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g102268102296_ _g102269102299_)))))
                        (let ()
                          (declare (not safe))
                          (_g102268102296_ _g102269102299_)))))
                (let ((_body102284102348_ (reverse _body102282102319_))
                      (_hd102285102350_ (reverse _hd102283102321_)))
                  ((lambda (_L102353_ _L102354_)
                     (for-each
                      (lambda (_g102368102370_)
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _self102265_ _g102368102370_)))
                      (let ((__tmp103064
                             (lambda (_g102372102375_ _g102373102377_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g102372102375_ _g102373102377_)))))
                        (declare (not safe))
                        (foldr1 __tmp103064 '() _L102353_))))
                   _body102284102348_
                   _hd102285102350_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop102278102314_
                                             _target102275102309_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g102268102296_
                                           _g102269102299_))))))
                              (let ()
                                (declare (not safe))
                                (_g102268102296_ _g102269102299_)))))
                      (let ()
                        (declare (not safe))
                        (_g102268102296_ _g102269102299_))))))
          (declare (not safe))
          (_g102267102380_ _stx102266_))))
    (define gxc#apply-body-let-values%
      (lambda (_self102118_ _stx102119_)
        (let* ((_g102121102156_
                (lambda (_g102122102153_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102122102153_))))
               (_g102120102262_
                (lambda (_g102122102159_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102122102159_))
                      (let ((_e102128102161_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102122102159_))))
                        (let ((_hd102127102164_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102128102161_)))
                              (_tl102126102166_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102128102161_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102126102166_))
                              (let ((_e102131102169_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102126102166_))))
                                (let ((_hd102130102172_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102131102169_)))
                                      (_tl102129102174_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102131102169_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd102130102172_))
                                      (let ((_g103067_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd102130102172_
                                                '0))))
                                        (begin
                                          (let ((_g103068_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g103067_)
                                                       (##vector-length
                                                        _g103067_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g103068_ 2)))
                                                (error "Context expects 2 values"
                                                       _g103068_)))
                                          (let ((_target102132102177_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g103067_ 0)))
                                                (_tl102134102179_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g103067_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl102134102179_))
                                                (letrec ((_loop102135102182_
                                                          (lambda (_hd102133102185_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr102139102187_
                           _hd102140102189_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd102133102185_))
                        (let ((_e102136102192_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd102133102185_))))
                          (let ((_lp-hd102137102195_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e102136102192_)))
                                (_lp-tl102138102197_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e102136102192_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd102137102195_))
                                (let ((_e102145102200_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd102137102195_))))
                                  (let ((_hd102144102203_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e102145102200_)))
                                        (_tl102143102205_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e102145102200_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl102143102205_))
                                        (let ((_e102148102208_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl102143102205_))))
                                          (let ((_hd102147102211_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e102148102208_)))
                                                (_tl102146102213_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e102148102208_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl102146102213_))
                                                (let ((__tmp103072
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd102147102211_
                                                               _expr102139102187_)))
                                                      (__tmp103071
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd102144102203_
                                                               _hd102140102189_))))
                                                  (declare (not safe))
                                                  (_loop102135102182_
                                                   _lp-tl102138102197_
                                                   __tmp103072
                                                   __tmp103071))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g102121102156_
                                                   _g102122102159_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g102121102156_ _g102122102159_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g102121102156_ _g102122102159_)))))
                        (let ((_expr102141102216_ (reverse _expr102139102187_))
                              (_hd102142102218_ (reverse _hd102140102189_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102129102174_))
                              (let ((_e102151102221_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102129102174_))))
                                (let ((_hd102150102224_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102151102221_)))
                                      (_tl102149102226_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102151102221_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl102149102226_))
                                      ((lambda (_L102229_ _L102230_ _L102231_)
                                         (for-each
                                          (lambda (_g102250102252_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self102118_
                                               _g102250102252_)))
                                          (let ((__tmp103070
                                                 (lambda (_g102254102257_
                                                          _g102255102259_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g102254102257_
                                                           _g102255102259_))))
                                                (__tmp103069
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L102229_ '()))))
                                            (declare (not safe))
                                            (foldr1 __tmp103070
                                                    __tmp103069
                                                    _L102230_))))
                                       _hd102150102224_
                                       _expr102141102216_
                                       _hd102142102218_)
                                      (let ()
                                        (declare (not safe))
                                        (_g102121102156_ _g102122102159_)))))
                              (let ()
                                (declare (not safe))
                                (_g102121102156_ _g102122102159_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop102135102182_
                                                     _target102132102177_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g102121102156_
                                                   _g102122102159_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g102121102156_ _g102122102159_)))))
                              (let ()
                                (declare (not safe))
                                (_g102121102156_ _g102122102159_)))))
                      (let ()
                        (declare (not safe))
                        (_g102121102156_ _g102122102159_))))))
          (declare (not safe))
          (_g102120102262_ _stx102119_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_self102063_ _stx102064_)
        (let* ((_g102066102080_
                (lambda (_g102067102077_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102067102077_))))
               (_g102065102115_
                (lambda (_g102067102083_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102067102083_))
                      (let ((_e102072102085_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102067102083_))))
                        (let ((_hd102071102088_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102072102085_)))
                              (_tl102070102090_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102072102085_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102070102090_))
                              (let ((_e102075102093_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102070102090_))))
                                (let ((_hd102074102096_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102075102093_)))
                                      (_tl102073102098_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102075102093_))))
                                  ((lambda (_L102101_ _L102102_)
                                     (let ((__tmp103073 (last _L102101_)))
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _self102063_
                                        __tmp103073)))
                                   _tl102073102098_
                                   _hd102074102096_)))
                              (let ()
                                (declare (not safe))
                                (_g102066102080_ _g102067102083_)))))
                      (let ()
                        (declare (not safe))
                        (_g102066102080_ _g102067102083_))))))
          (declare (not safe))
          (_g102065102115_ _stx102064_))))
    (define gxc#apply-body-setq%
      (lambda (_self101995_ _stx101996_)
        (let* ((_g101998102015_
                (lambda (_g101999102012_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101999102012_))))
               (_g101997102060_
                (lambda (_g101999102018_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101999102018_))
                      (let ((_e102004102020_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101999102018_))))
                        (let ((_hd102003102023_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102004102020_)))
                              (_tl102002102025_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102004102020_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102002102025_))
                              (let ((_e102007102028_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102002102025_))))
                                (let ((_hd102006102031_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102007102028_)))
                                      (_tl102005102033_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102007102028_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl102005102033_))
                                      (let ((_e102010102036_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl102005102033_))))
                                        (let ((_hd102009102039_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e102010102036_)))
                                              (_tl102008102041_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e102010102036_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl102008102041_))
                                              ((lambda (_L102044_ _L102045_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self101995_
                                                    _L102044_)))
                                               _hd102009102039_
                                               _hd102006102031_)
                                              (let ()
                                                (declare (not safe))
                                                (_g101998102015_
                                                 _g101999102018_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g101998102015_ _g101999102018_)))))
                              (let ()
                                (declare (not safe))
                                (_g101998102015_ _g101999102018_)))))
                      (let ()
                        (declare (not safe))
                        (_g101998102015_ _g101999102018_))))))
          (declare (not safe))
          (_g101997102060_ _stx101996_))))
    (define gxc#apply-operands
      (lambda (_self101908_ _stx101909_)
        (let* ((_g101911101930_
                (lambda (_g101912101927_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101912101927_))))
               (_g101910101992_
                (lambda (_g101912101933_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101912101933_))
                      (let ((_e101916101935_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101912101933_))))
                        (let ((_hd101915101938_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101916101935_)))
                              (_tl101914101940_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101916101935_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl101914101940_))
                              (let ((_g103074_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl101914101940_
                                        '0))))
                                (begin
                                  (let ((_g103075_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g103074_)
                                               (##vector-length _g103074_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g103075_ 2)))
                                        (error "Context expects 2 values"
                                               _g103075_)))
                                  (let ((_target101917101943_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g103074_ 0)))
                                        (_tl101919101945_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g103074_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl101919101945_))
                                        (letrec ((_loop101920101948_
                                                  (lambda (_hd101918101951_
                                                           _rands101924101953_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd101918101951_))
                                                        (let ((_e101921101956_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd101918101951_))))
                  (let ((_lp-hd101922101959_
                         (let () (declare (not safe)) (##car _e101921101956_)))
                        (_lp-tl101923101961_
                         (let ()
                           (declare (not safe))
                           (##cdr _e101921101956_))))
                    (let ((__tmp103077
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd101922101959_ _rands101924101953_))))
                      (declare (not safe))
                      (_loop101920101948_ _lp-tl101923101961_ __tmp103077))))
                (let ((_rands101925101964_ (reverse _rands101924101953_)))
                  ((lambda (_L101967_)
                     (for-each
                      (lambda (_g101980101982_)
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _self101908_ _g101980101982_)))
                      (let ((__tmp103076
                             (lambda (_g101984101987_ _g101985101989_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g101984101987_ _g101985101989_)))))
                        (declare (not safe))
                        (foldr1 __tmp103076 '() _L101967_))))
                   _rands101925101964_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop101920101948_
                                             _target101917101943_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g101911101930_
                                           _g101912101933_))))))
                              (let ()
                                (declare (not safe))
                                (_g101911101930_ _g101912101933_)))))
                      (let ()
                        (declare (not safe))
                        (_g101911101930_ _g101912101933_))))))
          (declare (not safe))
          (_g101910101992_ _stx101909_))))
    (define gxc#xform-wrap-source
      (lambda (_stx101905_ _src-stx101906_)
        (let ((__tmp103078
               (let () (declare (not safe)) (gx#stx-source _src-stx101906_))))
          (declare (not safe))
          (gx#stx-wrap-source _stx101905_ __tmp103078))))
    (define gxc#xform-begin%
      (lambda (_self101860_ _stx101861_)
        (let* ((_g101863101873_
                (lambda (_g101864101870_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101864101870_))))
               (_g101862101902_
                (lambda (_g101864101876_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101864101876_))
                      (let ((_e101868101878_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101864101876_))))
                        (let ((_hd101867101881_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101868101878_)))
                              (_tl101866101883_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101868101878_))))
                          ((lambda (_L101886_)
                             (let* ((_forms101900_
                                     (map (lambda (_g101895101897_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self101860_
                                               _g101895101897_)))
                                          _L101886_))
                                    (__tmp103079
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#begin _forms101900_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp103079
                                _stx101861_)))
                           _tl101866101883_)))
                      (let ()
                        (declare (not safe))
                        (_g101863101873_ _g101864101876_))))))
          (declare (not safe))
          (_g101862101902_ _stx101861_))))
    (define gxc#xform-begin-syntax%
      (lambda (_self101814_ _stx101815_)
        (let* ((_g101817101827_
                (lambda (_g101818101824_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101818101824_))))
               (_g101816101857_
                (lambda (_g101818101830_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101818101830_))
                      (let ((_e101822101832_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101818101830_))))
                        (let ((_hd101821101835_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101822101832_)))
                              (_tl101820101837_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101822101832_))))
                          ((lambda (_L101840_)
                             (let ((__tmp103082
                                    (lambda ()
                                      (let* ((_forms101855_
                                              (map (lambda (_g101850101852_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _self101814_
                                                        _g101850101852_)))
                                                   _L101840_))
                                             (__tmp103083
                                              (let ()
                                                (declare (not safe))
                                                (cons '%#begin-syntax
                                                      _forms101855_))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp103083
                                         _stx101815_))))
                                   (__tmp103080
                                    (let ((__tmp103081
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp103081 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp103082
                                gx#current-expander-phi
                                __tmp103080)))
                           _tl101820101837_)))
                      (let ()
                        (declare (not safe))
                        (_g101817101827_ _g101818101830_))))))
          (declare (not safe))
          (_g101816101857_ _stx101815_))))
    (define gxc#xform-module%
      (lambda (_self101751_ _stx101752_)
        (let* ((_g101754101768_
                (lambda (_g101755101765_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101755101765_))))
               (_g101753101811_
                (lambda (_g101755101771_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101755101771_))
                      (let ((_e101760101773_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101755101771_))))
                        (let ((_hd101759101776_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101760101773_)))
                              (_tl101758101778_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101760101773_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101758101778_))
                              (let ((_e101763101781_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101758101778_))))
                                (let ((_hd101762101784_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101763101781_)))
                                      (_tl101761101786_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101763101781_))))
                                  ((lambda (_L101789_ _L101790_)
                                     (let* ((_ctx101803_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L101790_)))
                                            (_code101805_
                                             (##structure-ref
                                              _ctx101803_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_code101808_
                                             (let ((__tmp103084
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _self101751_
                                                         _code101805_)))))
                                               (declare (not safe))
                                               (call-with-parameters
                                                __tmp103084
                                                gx#current-expander-context
                                                _ctx101803_))))
                                       (##structure-set!
                                        _ctx101803_
                                        _code101808_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp103085
                                              (let ((__tmp103086
                                                     (let ((__tmp103087
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _code101808_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L101790_ __tmp103087))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#module __tmp103086))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp103085
                                          _stx101752_))))
                                   _tl101761101786_
                                   _hd101762101784_)))
                              (let ()
                                (declare (not safe))
                                (_g101754101768_ _g101755101771_)))))
                      (let ()
                        (declare (not safe))
                        (_g101754101768_ _g101755101771_))))))
          (declare (not safe))
          (_g101753101811_ _stx101752_))))
    (define gxc#xform-define-values%
      (lambda (_self101681_ _stx101682_)
        (let* ((_g101684101701_
                (lambda (_g101685101698_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101685101698_))))
               (_g101683101748_
                (lambda (_g101685101704_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101685101704_))
                      (let ((_e101690101706_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101685101704_))))
                        (let ((_hd101689101709_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101690101706_)))
                              (_tl101688101711_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101690101706_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101688101711_))
                              (let ((_e101693101714_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101688101711_))))
                                (let ((_hd101692101717_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101693101714_)))
                                      (_tl101691101719_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101693101714_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl101691101719_))
                                      (let ((_e101696101722_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl101691101719_))))
                                        (let ((_hd101695101725_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e101696101722_)))
                                              (_tl101694101727_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e101696101722_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl101694101727_))
                                              ((lambda (_L101730_ _L101731_)
                                                 (let* ((_expr101746_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self101681_
                                                            _L101730_)))
                                                        (__tmp103088
                                                         (let ((__tmp103089
                                                                (let ((__tmp103090
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _expr101746_ '()))))
                          (declare (not safe))
                          (cons _L101731_ __tmp103090))))
                   (declare (not safe))
                   (cons '%#define-values __tmp103089))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp103088
                                                    _stx101682_)))
                                               _hd101695101725_
                                               _hd101692101717_)
                                              (let ()
                                                (declare (not safe))
                                                (_g101684101701_
                                                 _g101685101704_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g101684101701_ _g101685101704_)))))
                              (let ()
                                (declare (not safe))
                                (_g101684101701_ _g101685101704_)))))
                      (let ()
                        (declare (not safe))
                        (_g101684101701_ _g101685101704_))))))
          (declare (not safe))
          (_g101683101748_ _stx101682_))))
    (define gxc#xform-define-syntax%
      (lambda (_self101610_ _stx101611_)
        (let* ((_g101613101630_
                (lambda (_g101614101627_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101614101627_))))
               (_g101612101678_
                (lambda (_g101614101633_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101614101633_))
                      (let ((_e101619101635_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101614101633_))))
                        (let ((_hd101618101638_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101619101635_)))
                              (_tl101617101640_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101619101635_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101617101640_))
                              (let ((_e101622101643_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101617101640_))))
                                (let ((_hd101621101646_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101622101643_)))
                                      (_tl101620101648_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101622101643_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl101620101648_))
                                      (let ((_e101625101651_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl101620101648_))))
                                        (let ((_hd101624101654_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e101625101651_)))
                                              (_tl101623101656_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e101625101651_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl101623101656_))
                                              ((lambda (_L101659_ _L101660_)
                                                 (let ((__tmp103093
                                                        (lambda ()
                                                          (let* ((_expr101676_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__1 _self101610_ _L101659_)))
                         (__tmp103094
                          (let ((__tmp103095
                                 (let ((__tmp103096
                                        (let ()
                                          (declare (not safe))
                                          (cons _expr101676_ '()))))
                                   (declare (not safe))
                                   (cons _L101660_ __tmp103096))))
                            (declare (not safe))
                            (cons '%#define-syntax __tmp103095))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp103094 _stx101611_))))
               (__tmp103091
                (let ((__tmp103092 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp103092 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp103093
                                                    gx#current-expander-phi
                                                    __tmp103091)))
                                               _hd101624101654_
                                               _hd101621101646_)
                                              (let ()
                                                (declare (not safe))
                                                (_g101613101630_
                                                 _g101614101633_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g101613101630_ _g101614101633_)))))
                              (let ()
                                (declare (not safe))
                                (_g101613101630_ _g101614101633_)))))
                      (let ()
                        (declare (not safe))
                        (_g101613101630_ _g101614101633_))))))
          (declare (not safe))
          (_g101612101678_ _stx101611_))))
    (define gxc#xform-begin-annotation%
      (lambda (_self101540_ _stx101541_)
        (let* ((_g101543101560_
                (lambda (_g101544101557_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101544101557_))))
               (_g101542101607_
                (lambda (_g101544101563_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101544101563_))
                      (let ((_e101549101565_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101544101563_))))
                        (let ((_hd101548101568_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101549101565_)))
                              (_tl101547101570_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101549101565_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101547101570_))
                              (let ((_e101552101573_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101547101570_))))
                                (let ((_hd101551101576_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101552101573_)))
                                      (_tl101550101578_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101552101573_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl101550101578_))
                                      (let ((_e101555101581_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl101550101578_))))
                                        (let ((_hd101554101584_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e101555101581_)))
                                              (_tl101553101586_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e101555101581_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl101553101586_))
                                              ((lambda (_L101589_ _L101590_)
                                                 (let* ((_expr101605_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self101540_
                                                            _L101589_)))
                                                        (__tmp103097
                                                         (let ((__tmp103098
                                                                (let ((__tmp103099
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _expr101605_ '()))))
                          (declare (not safe))
                          (cons _L101590_ __tmp103099))))
                   (declare (not safe))
                   (cons '%#begin-annotation __tmp103098))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp103097
                                                    _stx101541_)))
                                               _hd101554101584_
                                               _hd101551101576_)
                                              (let ()
                                                (declare (not safe))
                                                (_g101543101560_
                                                 _g101544101563_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g101543101560_ _g101544101563_)))))
                              (let ()
                                (declare (not safe))
                                (_g101543101560_ _g101544101563_)))))
                      (let ()
                        (declare (not safe))
                        (_g101543101560_ _g101544101563_))))))
          (declare (not safe))
          (_g101542101607_ _stx101541_))))
    (define gxc#xform-lambda%
      (lambda (_self101479_ _stx101480_)
        (let* ((_g101482101496_
                (lambda (_g101483101493_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101483101493_))))
               (_g101481101537_
                (lambda (_g101483101499_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101483101499_))
                      (let ((_e101488101501_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101483101499_))))
                        (let ((_hd101487101504_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101488101501_)))
                              (_tl101486101506_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101488101501_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101486101506_))
                              (let ((_e101491101509_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101486101506_))))
                                (let ((_hd101490101512_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101491101509_)))
                                      (_tl101489101514_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101491101509_))))
                                  ((lambda (_L101517_ _L101518_)
                                     (let* ((_body101535_
                                             (map (lambda (_g101530101532_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _self101479_
                                                       _g101530101532_)))
                                                  _L101517_))
                                            (__tmp103100
                                             (let ((__tmp103101
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L101518_
                                                            _body101535_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp103101))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp103100
                                        _stx101480_)))
                                   _tl101489101514_
                                   _hd101490101512_)))
                              (let ()
                                (declare (not safe))
                                (_g101482101496_ _g101483101499_)))))
                      (let ()
                        (declare (not safe))
                        (_g101482101496_ _g101483101499_))))))
          (declare (not safe))
          (_g101481101537_ _stx101480_))))
    (define gxc#xform-case-lambda%
      (lambda (_self101388_ _stx101389_)
        (letrec ((_clause-e101391_
                  (lambda (_clause101432_)
                    (let* ((_g101434101445_
                            (lambda (_g101435101442_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g101435101442_))))
                           (_g101433101476_
                            (lambda (_g101435101448_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g101435101448_))
                                  (let ((_e101440101450_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g101435101448_))))
                                    (let ((_hd101439101453_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e101440101450_)))
                                          (_tl101438101455_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e101440101450_))))
                                      ((lambda (_L101458_ _L101459_)
                                         (let ((_body101474_
                                                (map (lambda (_g101469101471_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _self101388_
                                                          _g101469101471_)))
                                                     _L101458_)))
                                           (declare (not safe))
                                           (cons _L101459_ _body101474_)))
                                       _tl101438101455_
                                       _hd101439101453_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g101434101445_ _g101435101448_))))))
                      (declare (not safe))
                      (_g101433101476_ _clause101432_)))))
          (let* ((_g101393101403_
                  (lambda (_g101394101400_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g101394101400_))))
                 (_g101392101429_
                  (lambda (_g101394101406_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g101394101406_))
                        (let ((_e101398101408_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g101394101406_))))
                          (let ((_hd101397101411_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e101398101408_)))
                                (_tl101396101413_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e101398101408_))))
                            ((lambda (_L101416_)
                               (let* ((_clauses101427_
                                       (map _clause-e101391_ _L101416_))
                                      (__tmp103102
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses101427_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp103102
                                  _stx101389_)))
                             _tl101396101413_)))
                        (let ()
                          (declare (not safe))
                          (_g101393101403_ _g101394101406_))))))
            (declare (not safe))
            (_g101392101429_ _stx101389_)))))
    (define gxc#xform-let-values%
      (lambda (_self101174_ _stx101175_)
        (let* ((_g101177101210_
                (lambda (_g101178101207_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101178101207_))))
               (_g101176101385_
                (lambda (_g101178101213_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101178101213_))
                      (let ((_e101185101215_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101178101213_))))
                        (let ((_hd101184101218_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101185101215_)))
                              (_tl101183101220_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101185101215_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101183101220_))
                              (let ((_e101188101223_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101183101220_))))
                                (let ((_hd101187101226_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101188101223_)))
                                      (_tl101186101228_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101188101223_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd101187101226_))
                                      (let ((_g103103_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd101187101226_
                                                '0))))
                                        (begin
                                          (let ((_g103104_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g103103_)
                                                       (##vector-length
                                                        _g103103_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g103104_ 2)))
                                                (error "Context expects 2 values"
                                                       _g103104_)))
                                          (let ((_target101189101231_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g103103_ 0)))
                                                (_tl101191101233_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g103103_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl101191101233_))
                                                (letrec ((_loop101192101236_
                                                          (lambda (_hd101190101239_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr101196101241_
                           _hd101197101243_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd101190101239_))
                        (let ((_e101193101246_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd101190101239_))))
                          (let ((_lp-hd101194101249_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e101193101246_)))
                                (_lp-tl101195101251_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e101193101246_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd101194101249_))
                                (let ((_e101202101254_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd101194101249_))))
                                  (let ((_hd101201101257_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e101202101254_)))
                                        (_tl101200101259_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e101202101254_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl101200101259_))
                                        (let ((_e101205101262_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl101200101259_))))
                                          (let ((_hd101204101265_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e101205101262_)))
                                                (_tl101203101267_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e101205101262_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl101203101267_))
                                                (let ((__tmp103117
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd101204101265_
                                                               _expr101196101241_)))
                                                      (__tmp103116
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd101201101257_
                                                               _hd101197101243_))))
                                                  (declare (not safe))
                                                  (_loop101192101236_
                                                   _lp-tl101195101251_
                                                   __tmp103117
                                                   __tmp103116))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g101177101210_
                                                   _g101178101213_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g101177101210_ _g101178101213_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g101177101210_ _g101178101213_)))))
                        (let ((_expr101198101270_ (reverse _expr101196101241_))
                              (_hd101199101272_ (reverse _hd101197101243_)))
                          ((lambda (_L101275_ _L101276_ _L101277_ _L101278_)
                             (let* ((_g101297101313_
                                     (lambda (_g101298101310_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g101298101310_))))
                                    (_g101296101371_
                                     (lambda (_g101298101316_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _g101298101316_))
                                           (let ((_g103105_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _g101298101316_
                                                     '0))))
                                             (begin
                                               (let ((_g103106_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g103105_)
                                                            (##vector-length
                                                             _g103105_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g103106_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g103106_)))
                                               (let ((_target101300101318_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g103105_
                                                         0)))
                                                     (_tl101302101320_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g103105_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl101302101320_))
                                                     (letrec ((_loop101303101323_
                                                               (lambda (_hd101301101326_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr101307101328_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _hd101301101326_))
                             (let ((_e101304101331_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _hd101301101326_))))
                               (let ((_lp-hd101305101334_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e101304101331_)))
                                     (_lp-tl101306101336_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e101304101331_))))
                                 (let ((__tmp103113
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd101305101334_
                                                _expr101307101328_))))
                                   (declare (not safe))
                                   (_loop101303101323_
                                    _lp-tl101306101336_
                                    __tmp103113))))
                             (let ((_expr101308101339_
                                    (reverse _expr101307101328_)))
                               ((lambda (_L101342_)
                                  (let ()
                                    (let* ((_body101359_
                                            (map (lambda (_g101354101356_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self101174_
                                                      _g101354101356_)))
                                                 _L101275_))
                                           (__tmp103107
                                            (let ((__tmp103108
                                                   (let ((__tmp103109
                                                          (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _L101342_
                                                               _L101277_))
                                                            (let ((__tmp103110
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g101360101364_
                                    _g101361101366_
                                    _g101362101368_)
                             (let ((__tmp103111
                                    (let ((__tmp103112
                                           (let ()
                                             (declare (not safe))
                                             (cons _g101360101364_ '()))))
                                      (declare (not safe))
                                      (cons _g101361101366_ __tmp103112))))
                               (declare (not safe))
                               (cons __tmp103111 _g101362101368_)))))
                      (declare (not safe))
                      (foldr2 __tmp103110 '() _L101342_ _L101277_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp103109
                                                           _body101359_))))
                                              (declare (not safe))
                                              (cons _L101278_ __tmp103108))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp103107
                                       _stx101175_))))
                                _expr101308101339_))))))
               (let ()
                 (declare (not safe))
                 (_loop101303101323_ _target101300101318_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g101297101313_
                                                        _g101298101316_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_g101297101313_
                                              _g101298101316_)))))
                                    (__tmp103114
                                     (map (lambda (_g101373101375_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self101174_
                                               _g101373101375_)))
                                          (let ((__tmp103115
                                                 (lambda (_g101377101380_
                                                          _g101378101382_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g101377101380_
                                                           _g101378101382_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp103115
                                                    '()
                                                    _L101276_)))))
                               (declare (not safe))
                               (_g101296101371_ __tmp103114)))
                           _tl101186101228_
                           _expr101198101270_
                           _hd101199101272_
                           _hd101184101218_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop101192101236_
                                                     _target101189101231_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g101177101210_
                                                   _g101178101213_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g101177101210_ _g101178101213_)))))
                              (let ()
                                (declare (not safe))
                                (_g101177101210_ _g101178101213_)))))
                      (let ()
                        (declare (not safe))
                        (_g101177101210_ _g101178101213_))))))
          (declare (not safe))
          (_g101176101385_ _stx101175_))))
    (define gxc#xform-operands
      (lambda (_self101126_ _stx101127_)
        (let* ((_g101129101140_
                (lambda (_g101130101137_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101130101137_))))
               (_g101128101171_
                (lambda (_g101130101143_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101130101143_))
                      (let ((_e101135101145_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101130101143_))))
                        (let ((_hd101134101148_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101135101145_)))
                              (_tl101133101150_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101135101145_))))
                          ((lambda (_L101153_ _L101154_)
                             (let* ((_rands101169_
                                     (map (lambda (_g101164101166_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self101126_
                                               _g101164101166_)))
                                          _L101153_))
                                    (__tmp103118
                                     (let ()
                                       (declare (not safe))
                                       (cons _L101154_ _rands101169_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp103118
                                _stx101127_)))
                           _tl101133101150_
                           _hd101134101148_)))
                      (let ()
                        (declare (not safe))
                        (_g101129101140_ _g101130101143_))))))
          (declare (not safe))
          (_g101128101171_ _stx101127_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_self101056_ _stx101057_)
        (let* ((_g101059101076_
                (lambda (_g101060101073_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101060101073_))))
               (_g101058101123_
                (lambda (_g101060101079_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101060101079_))
                      (let ((_e101065101081_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101060101079_))))
                        (let ((_hd101064101084_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101065101081_)))
                              (_tl101063101086_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101065101081_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101063101086_))
                              (let ((_e101068101089_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101063101086_))))
                                (let ((_hd101067101092_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101068101089_)))
                                      (_tl101066101094_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101068101089_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl101066101094_))
                                      (let ((_e101071101097_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl101066101094_))))
                                        (let ((_hd101070101100_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e101071101097_)))
                                              (_tl101069101102_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e101071101097_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl101069101102_))
                                              ((lambda (_L101105_ _L101106_)
                                                 (let* ((_expr101121_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self101056_
                                                            _L101105_)))
                                                        (__tmp103119
                                                         (let ((__tmp103120
                                                                (let ((__tmp103121
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _expr101121_ '()))))
                          (declare (not safe))
                          (cons _L101106_ __tmp103121))))
                   (declare (not safe))
                   (cons '%#set! __tmp103120))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp103119
                                                    _stx101057_)))
                                               _hd101070101100_
                                               _hd101067101092_)
                                              (let ()
                                                (declare (not safe))
                                                (_g101059101076_
                                                 _g101060101079_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g101059101076_ _g101060101079_)))))
                              (let ()
                                (declare (not safe))
                                (_g101059101076_ _g101060101079_)))))
                      (let ()
                        (declare (not safe))
                        (_g101059101076_ _g101060101079_))))))
          (declare (not safe))
          (_g101058101123_ _stx101057_))))))
