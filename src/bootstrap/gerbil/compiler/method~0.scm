(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1710954837)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_stx102894_)
        (let* ((_self102896_ (gxc#current-compile-method))
               (_$e102898_
                (let ((__tmp103067
                       (let ()
                         (declare (not safe))
                         (gxc#stx-car-e _stx102894_))))
                  (declare (not safe))
                  (method-ref _self102896_ __tmp103067))))
          (if _$e102898_
              ((lambda (_method102901_)
                 (declare (not safe))
                 (_method102901_ _self102896_ _stx102894_))
               _$e102898_)
              (let ((__tmp103069
                     (let () (declare (not safe)) (gxc#stx-car-e _stx102894_)))
                    (__tmp103068
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _stx102894_))))
                (declare (not safe))
                (error '"missing method"
                       _self102896_
                       __tmp103069
                       __tmp103068))))))
    (define gxc#compile-e__1
      (lambda (_self102904_ _stx102905_)
        (let ((_$e102907_
               (let ((__tmp103070
                      (let ()
                        (declare (not safe))
                        (gxc#stx-car-e _stx102905_))))
                 (declare (not safe))
                 (method-ref _self102904_ __tmp103070))))
          (if _$e102907_
              ((lambda (_method102910_)
                 (declare (not safe))
                 (_method102910_ _self102904_ _stx102905_))
               _$e102907_)
              (let ((__tmp103072
                     (let () (declare (not safe)) (gxc#stx-car-e _stx102905_)))
                    (__tmp103071
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _stx102905_))))
                (declare (not safe))
                (error '"missing method"
                       _self102904_
                       __tmp103072
                       __tmp103071))))))
    (define gxc#compile-e
      (lambda _g103074_
        (let ((_g103073_ (let () (declare (not safe)) (##length _g103074_))))
          (cond ((let () (declare (not safe)) (##fx= _g103073_ 1))
                 (apply (lambda (_stx102894_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _stx102894_)))
                        _g103074_))
                ((let () (declare (not safe)) (##fx= _g103073_ 2))
                 (apply (lambda (_self102904_ _stx102905_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__1 _self102904_ _stx102905_)))
                        _g103074_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g103074_))))))
    (define gxc#stx-car-e
      (lambda (_stx102892_)
        (let ((__tmp103075
               (car (let () (declare (not safe)) (gx#stx-e _stx102892_)))))
          (declare (not safe))
          (gx#stx-e __tmp103075))))
    (define gxc#void-method (lambda (_self102889_ _stx102890_) '#!void))
    (define gxc#false-method (lambda (_self102886_ _stx102887_) '#f))
    (define gxc#true-method (lambda (_self102883_ _stx102884_) '#t))
    (define gxc#identity-method
      (lambda (_self102880_ _stx102881_) _stx102881_))
    (define gxc#::void-expression::t
      (let ((__tmp103076 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp103076
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _$args102877_
        (apply make-instance gxc#::void-expression::t _$args102877_)))
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
      (let ((__tmp103077 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp103077
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _$args102873_
        (apply make-instance gxc#::void-special-form::t _$args102873_)))
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
      (let ((__tmp103078
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (make-class-type 'gxc#::void::t '::void __tmp103078 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _$args102869_ (apply make-instance gxc#::void::t _$args102869_)))
    (define gxc#::void-bind-methods!
      (make-promise
       (lambda ()
         (force gxc#::void-special-form-bind-methods!)
         (force gxc#::void-expression-bind-methods!))))
    (define gxc#::false-expression::t
      (let ((__tmp103079 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp103079
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _$args102865_
        (apply make-instance gxc#::false-expression::t _$args102865_)))
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
      (let ((__tmp103080 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp103080
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _$args102861_
        (apply make-instance gxc#::false-special-form::t _$args102861_)))
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
      (let ((__tmp103081
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (make-class-type 'gxc#::false::t '::false __tmp103081 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _$args102857_
        (apply make-instance gxc#::false::t _$args102857_)))
    (define gxc#::false-bind-methods!
      (make-promise
       (lambda ()
         (force gxc#::false-special-form-bind-methods!)
         (force gxc#::false-expression-bind-methods!))))
    (define gxc#::identity-expression::t
      (let ((__tmp103082 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp103082
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _$args102853_
        (apply make-instance gxc#::identity-expression::t _$args102853_)))
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
      (let ((__tmp103083 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp103083
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _$args102849_
        (apply make-instance gxc#::identity-special-form::t _$args102849_)))
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
      (let ((__tmp103084
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::identity::t
         '::identity
         __tmp103084
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _$args102845_
        (apply make-instance gxc#::identity::t _$args102845_)))
    (define gxc#::identity-bind-methods!
      (make-promise
       (lambda ()
         (force gxc#::identity-special-form-bind-methods!)
         (force gxc#::identity-expression-bind-methods!))))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp103085 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp103085
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _$args102841_
        (apply make-instance gxc#::basic-xform-expression::t _$args102841_)))
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
      (let ((__tmp103086
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp103086
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _$args102837_
        (apply make-instance gxc#::basic-xform::t _$args102837_)))
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
      (lambda (_self102793_ _stx102794_)
        (let* ((_g102796102806_
                (lambda (_g102797102803_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102797102803_))))
               (_g102795102833_
                (lambda (_g102797102809_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102797102809_))
                      (let ((_e102801102811_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102797102809_))))
                        (let ((_hd102800102814_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102801102811_)))
                              (_tl102799102816_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102801102811_))))
                          ((lambda (_L102819_)
                             (for-each
                              (lambda (_g102828102830_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1
                                   _self102793_
                                   _g102828102830_)))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _L102819_))))
                           _tl102799102816_)))
                      (let ()
                        (declare (not safe))
                        (_g102796102806_ _g102797102809_))))))
          (declare (not safe))
          (_g102795102833_ _stx102794_))))
    (define gxc#apply-last-begin%
      (lambda (_self102754_ _stx102755_)
        (let* ((_g102757102767_
                (lambda (_g102758102764_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102758102764_))))
               (_g102756102790_
                (lambda (_g102758102770_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102758102770_))
                      (let ((_e102762102772_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102758102770_))))
                        (let ((_hd102761102775_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102762102772_)))
                              (_tl102760102777_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102762102772_))))
                          ((lambda (_L102780_)
                             (let ((__tmp103087 (last _L102780_)))
                               (declare (not safe))
                               (gxc#compile-e__1 _self102754_ __tmp103087)))
                           _tl102760102777_)))
                      (let ()
                        (declare (not safe))
                        (_g102757102767_ _g102758102770_))))))
          (declare (not safe))
          (_g102756102790_ _stx102755_))))
    (define gxc#apply-begin-syntax%
      (lambda (_self102750_ _stx102751_)
        (let ((__tmp103090
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#apply-begin% _self102750_ _stx102751_))))
              (__tmp103088
               (let ((__tmp103089 (gx#current-expander-phi)))
                 (declare (not safe))
                 (fx+ __tmp103089 '1))))
          (declare (not safe))
          (call-with-parameters
           __tmp103090
           gx#current-expander-phi
           __tmp103088))))
    (define gxc#apply-module%
      (lambda (_self102689_ _stx102690_)
        (let* ((_g102692102706_
                (lambda (_g102693102703_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102693102703_))))
               (_g102691102747_
                (lambda (_g102693102709_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102693102709_))
                      (let ((_e102698102711_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102693102709_))))
                        (let ((_hd102697102714_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102698102711_)))
                              (_tl102696102716_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102698102711_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102696102716_))
                              (let ((_e102701102719_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102696102716_))))
                                (let ((_hd102700102722_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102701102719_)))
                                      (_tl102699102724_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102701102719_))))
                                  ((lambda (_L102727_ _L102728_)
                                     (let* ((_ctx102741_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L102728_)))
                                            (_ctx-stx102743_
                                             (##structure-ref
                                              _ctx102741_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp103091
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self102689_
                                                   _ctx-stx102743_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp103091
                                          gx#current-expander-context
                                          _ctx102741_))))
                                   _tl102699102724_
                                   _hd102700102722_)))
                              (let ()
                                (declare (not safe))
                                (_g102692102706_ _g102693102709_)))))
                      (let ()
                        (declare (not safe))
                        (_g102692102706_ _g102693102709_))))))
          (declare (not safe))
          (_g102691102747_ _stx102690_))))
    (define gxc#apply-begin-annotation%
      (lambda (_self102621_ _stx102622_)
        (let* ((_g102624102641_
                (lambda (_g102625102638_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102625102638_))))
               (_g102623102686_
                (lambda (_g102625102644_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102625102644_))
                      (let ((_e102630102646_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102625102644_))))
                        (let ((_hd102629102649_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102630102646_)))
                              (_tl102628102651_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102630102646_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102628102651_))
                              (let ((_e102633102654_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102628102651_))))
                                (let ((_hd102632102657_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102633102654_)))
                                      (_tl102631102659_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102633102654_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl102631102659_))
                                      (let ((_e102636102662_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl102631102659_))))
                                        (let ((_hd102635102665_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e102636102662_)))
                                              (_tl102634102667_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e102636102662_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl102634102667_))
                                              ((lambda (_L102670_ _L102671_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self102621_
                                                    _L102670_)))
                                               _hd102635102665_
                                               _hd102632102657_)
                                              (let ()
                                                (declare (not safe))
                                                (_g102624102641_
                                                 _g102625102644_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g102624102641_ _g102625102644_)))))
                              (let ()
                                (declare (not safe))
                                (_g102624102641_ _g102625102644_)))))
                      (let ()
                        (declare (not safe))
                        (_g102624102641_ _g102625102644_))))))
          (declare (not safe))
          (_g102623102686_ _stx102622_))))
    (define gxc#apply-define-values%
      (lambda (_self102553_ _stx102554_)
        (let* ((_g102556102573_
                (lambda (_g102557102570_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102557102570_))))
               (_g102555102618_
                (lambda (_g102557102576_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102557102576_))
                      (let ((_e102562102578_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102557102576_))))
                        (let ((_hd102561102581_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102562102578_)))
                              (_tl102560102583_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102562102578_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102560102583_))
                              (let ((_e102565102586_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102560102583_))))
                                (let ((_hd102564102589_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102565102586_)))
                                      (_tl102563102591_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102565102586_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl102563102591_))
                                      (let ((_e102568102594_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl102563102591_))))
                                        (let ((_hd102567102597_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e102568102594_)))
                                              (_tl102566102599_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e102568102594_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl102566102599_))
                                              ((lambda (_L102602_ _L102603_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self102553_
                                                    _L102602_)))
                                               _hd102567102597_
                                               _hd102564102589_)
                                              (let ()
                                                (declare (not safe))
                                                (_g102556102573_
                                                 _g102557102576_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g102556102573_ _g102557102576_)))))
                              (let ()
                                (declare (not safe))
                                (_g102556102573_ _g102557102576_)))))
                      (let ()
                        (declare (not safe))
                        (_g102556102573_ _g102557102576_))))))
          (declare (not safe))
          (_g102555102618_ _stx102554_))))
    (define gxc#apply-define-syntax%
      (lambda (_self102484_ _stx102485_)
        (let* ((_g102487102504_
                (lambda (_g102488102501_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102488102501_))))
               (_g102486102550_
                (lambda (_g102488102507_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102488102507_))
                      (let ((_e102493102509_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102488102507_))))
                        (let ((_hd102492102512_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102493102509_)))
                              (_tl102491102514_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102493102509_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102491102514_))
                              (let ((_e102496102517_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102491102514_))))
                                (let ((_hd102495102520_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102496102517_)))
                                      (_tl102494102522_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102496102517_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl102494102522_))
                                      (let ((_e102499102525_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl102494102522_))))
                                        (let ((_hd102498102528_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e102499102525_)))
                                              (_tl102497102530_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e102499102525_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl102497102530_))
                                              ((lambda (_L102533_ _L102534_)
                                                 (let ((__tmp103094
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _self102484_
                                                             _L102533_))))
                                                       (__tmp103092
                                                        (let ((__tmp103093
                                                               (gx#current-expander-phi)))
                                                          (declare (not safe))
                                                          (fx+ __tmp103093
                                                               '1))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp103094
                                                    gx#current-expander-phi
                                                    __tmp103092)))
                                               _hd102498102528_
                                               _hd102495102520_)
                                              (let ()
                                                (declare (not safe))
                                                (_g102487102504_
                                                 _g102488102507_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g102487102504_ _g102488102507_)))))
                              (let ()
                                (declare (not safe))
                                (_g102487102504_ _g102488102507_)))))
                      (let ()
                        (declare (not safe))
                        (_g102487102504_ _g102488102507_))))))
          (declare (not safe))
          (_g102486102550_ _stx102485_))))
    (define gxc#apply-body-lambda%
      (lambda (_self102416_ _stx102417_)
        (let* ((_g102419102436_
                (lambda (_g102420102433_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102420102433_))))
               (_g102418102481_
                (lambda (_g102420102439_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102420102439_))
                      (let ((_e102425102441_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102420102439_))))
                        (let ((_hd102424102444_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102425102441_)))
                              (_tl102423102446_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102425102441_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102423102446_))
                              (let ((_e102428102449_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102423102446_))))
                                (let ((_hd102427102452_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102428102449_)))
                                      (_tl102426102454_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102428102449_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl102426102454_))
                                      (let ((_e102431102457_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl102426102454_))))
                                        (let ((_hd102430102460_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e102431102457_)))
                                              (_tl102429102462_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e102431102457_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl102429102462_))
                                              ((lambda (_L102465_ _L102466_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self102416_
                                                    _L102465_)))
                                               _hd102430102460_
                                               _hd102427102452_)
                                              (let ()
                                                (declare (not safe))
                                                (_g102419102436_
                                                 _g102420102439_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g102419102436_ _g102420102439_)))))
                              (let ()
                                (declare (not safe))
                                (_g102419102436_ _g102420102439_)))))
                      (let ()
                        (declare (not safe))
                        (_g102419102436_ _g102420102439_))))))
          (declare (not safe))
          (_g102418102481_ _stx102417_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_self102298_ _stx102299_)
        (let* ((_g102301102329_
                (lambda (_g102302102326_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102302102326_))))
               (_g102300102413_
                (lambda (_g102302102332_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102302102332_))
                      (let ((_e102307102334_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102302102332_))))
                        (let ((_hd102306102337_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102307102334_)))
                              (_tl102305102339_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102307102334_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl102305102339_))
                              (let ((_g103095_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl102305102339_
                                        '0))))
                                (begin
                                  (let ((_g103096_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g103095_)
                                               (##vector-length _g103095_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g103096_ 2)))
                                        (error "Context expects 2 values"
                                               _g103096_)))
                                  (let ((_target102308102342_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g103095_ 0)))
                                        (_tl102310102344_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g103095_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl102310102344_))
                                        (letrec ((_loop102311102347_
                                                  (lambda (_hd102309102350_
                                                           _body102315102352_
                                                           _hd102316102354_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd102309102350_))
                                                        (let ((_e102312102357_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd102309102350_))))
                  (let ((_lp-hd102313102360_
                         (let () (declare (not safe)) (##car _e102312102357_)))
                        (_lp-tl102314102362_
                         (let ()
                           (declare (not safe))
                           (##cdr _e102312102357_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd102313102360_))
                        (let ((_e102321102365_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd102313102360_))))
                          (let ((_hd102320102368_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e102321102365_)))
                                (_tl102319102370_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e102321102365_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl102319102370_))
                                (let ((_e102324102373_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl102319102370_))))
                                  (let ((_hd102323102376_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e102324102373_)))
                                        (_tl102322102378_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e102324102373_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl102322102378_))
                                        (let ((__tmp103099
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd102323102376_
                                                       _body102315102352_)))
                                              (__tmp103098
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd102320102368_
                                                       _hd102316102354_))))
                                          (declare (not safe))
                                          (_loop102311102347_
                                           _lp-tl102314102362_
                                           __tmp103099
                                           __tmp103098))
                                        (let ()
                                          (declare (not safe))
                                          (_g102301102329_ _g102302102332_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g102301102329_ _g102302102332_)))))
                        (let ()
                          (declare (not safe))
                          (_g102301102329_ _g102302102332_)))))
                (let ((_body102317102381_ (reverse _body102315102352_))
                      (_hd102318102383_ (reverse _hd102316102354_)))
                  ((lambda (_L102386_ _L102387_)
                     (for-each
                      (lambda (_g102401102403_)
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _self102298_ _g102401102403_)))
                      (let ((__tmp103097
                             (lambda (_g102405102408_ _g102406102410_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g102405102408_ _g102406102410_)))))
                        (declare (not safe))
                        (foldr1 __tmp103097 '() _L102386_))))
                   _body102317102381_
                   _hd102318102383_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop102311102347_
                                             _target102308102342_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g102301102329_
                                           _g102302102332_))))))
                              (let ()
                                (declare (not safe))
                                (_g102301102329_ _g102302102332_)))))
                      (let ()
                        (declare (not safe))
                        (_g102301102329_ _g102302102332_))))))
          (declare (not safe))
          (_g102300102413_ _stx102299_))))
    (define gxc#apply-body-let-values%
      (lambda (_self102151_ _stx102152_)
        (let* ((_g102154102189_
                (lambda (_g102155102186_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102155102186_))))
               (_g102153102295_
                (lambda (_g102155102192_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102155102192_))
                      (let ((_e102161102194_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102155102192_))))
                        (let ((_hd102160102197_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102161102194_)))
                              (_tl102159102199_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102161102194_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102159102199_))
                              (let ((_e102164102202_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102159102199_))))
                                (let ((_hd102163102205_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102164102202_)))
                                      (_tl102162102207_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102164102202_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd102163102205_))
                                      (let ((_g103100_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd102163102205_
                                                '0))))
                                        (begin
                                          (let ((_g103101_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g103100_)
                                                       (##vector-length
                                                        _g103100_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g103101_ 2)))
                                                (error "Context expects 2 values"
                                                       _g103101_)))
                                          (let ((_target102165102210_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g103100_ 0)))
                                                (_tl102167102212_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g103100_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl102167102212_))
                                                (letrec ((_loop102168102215_
                                                          (lambda (_hd102166102218_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr102172102220_
                           _hd102173102222_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd102166102218_))
                        (let ((_e102169102225_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd102166102218_))))
                          (let ((_lp-hd102170102228_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e102169102225_)))
                                (_lp-tl102171102230_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e102169102225_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd102170102228_))
                                (let ((_e102178102233_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd102170102228_))))
                                  (let ((_hd102177102236_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e102178102233_)))
                                        (_tl102176102238_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e102178102233_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl102176102238_))
                                        (let ((_e102181102241_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl102176102238_))))
                                          (let ((_hd102180102244_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e102181102241_)))
                                                (_tl102179102246_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e102181102241_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl102179102246_))
                                                (let ((__tmp103105
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd102180102244_
                                                               _expr102172102220_)))
                                                      (__tmp103104
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd102177102236_
                                                               _hd102173102222_))))
                                                  (declare (not safe))
                                                  (_loop102168102215_
                                                   _lp-tl102171102230_
                                                   __tmp103105
                                                   __tmp103104))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g102154102189_
                                                   _g102155102192_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g102154102189_ _g102155102192_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g102154102189_ _g102155102192_)))))
                        (let ((_expr102174102249_ (reverse _expr102172102220_))
                              (_hd102175102251_ (reverse _hd102173102222_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102162102207_))
                              (let ((_e102184102254_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102162102207_))))
                                (let ((_hd102183102257_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102184102254_)))
                                      (_tl102182102259_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102184102254_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl102182102259_))
                                      ((lambda (_L102262_ _L102263_ _L102264_)
                                         (for-each
                                          (lambda (_g102283102285_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self102151_
                                               _g102283102285_)))
                                          (let ((__tmp103103
                                                 (lambda (_g102287102290_
                                                          _g102288102292_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g102287102290_
                                                           _g102288102292_))))
                                                (__tmp103102
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L102262_ '()))))
                                            (declare (not safe))
                                            (foldr1 __tmp103103
                                                    __tmp103102
                                                    _L102263_))))
                                       _hd102183102257_
                                       _expr102174102249_
                                       _hd102175102251_)
                                      (let ()
                                        (declare (not safe))
                                        (_g102154102189_ _g102155102192_)))))
                              (let ()
                                (declare (not safe))
                                (_g102154102189_ _g102155102192_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop102168102215_
                                                     _target102165102210_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g102154102189_
                                                   _g102155102192_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g102154102189_ _g102155102192_)))))
                              (let ()
                                (declare (not safe))
                                (_g102154102189_ _g102155102192_)))))
                      (let ()
                        (declare (not safe))
                        (_g102154102189_ _g102155102192_))))))
          (declare (not safe))
          (_g102153102295_ _stx102152_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_self102096_ _stx102097_)
        (let* ((_g102099102113_
                (lambda (_g102100102110_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102100102110_))))
               (_g102098102148_
                (lambda (_g102100102116_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102100102116_))
                      (let ((_e102105102118_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102100102116_))))
                        (let ((_hd102104102121_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102105102118_)))
                              (_tl102103102123_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102105102118_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102103102123_))
                              (let ((_e102108102126_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102103102123_))))
                                (let ((_hd102107102129_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102108102126_)))
                                      (_tl102106102131_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102108102126_))))
                                  ((lambda (_L102134_ _L102135_)
                                     (let ((__tmp103106 (last _L102134_)))
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _self102096_
                                        __tmp103106)))
                                   _tl102106102131_
                                   _hd102107102129_)))
                              (let ()
                                (declare (not safe))
                                (_g102099102113_ _g102100102116_)))))
                      (let ()
                        (declare (not safe))
                        (_g102099102113_ _g102100102116_))))))
          (declare (not safe))
          (_g102098102148_ _stx102097_))))
    (define gxc#apply-body-setq%
      (lambda (_self102028_ _stx102029_)
        (let* ((_g102031102048_
                (lambda (_g102032102045_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102032102045_))))
               (_g102030102093_
                (lambda (_g102032102051_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102032102051_))
                      (let ((_e102037102053_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102032102051_))))
                        (let ((_hd102036102056_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102037102053_)))
                              (_tl102035102058_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102037102053_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102035102058_))
                              (let ((_e102040102061_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102035102058_))))
                                (let ((_hd102039102064_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102040102061_)))
                                      (_tl102038102066_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102040102061_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl102038102066_))
                                      (let ((_e102043102069_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl102038102066_))))
                                        (let ((_hd102042102072_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e102043102069_)))
                                              (_tl102041102074_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e102043102069_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl102041102074_))
                                              ((lambda (_L102077_ _L102078_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self102028_
                                                    _L102077_)))
                                               _hd102042102072_
                                               _hd102039102064_)
                                              (let ()
                                                (declare (not safe))
                                                (_g102031102048_
                                                 _g102032102051_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g102031102048_ _g102032102051_)))))
                              (let ()
                                (declare (not safe))
                                (_g102031102048_ _g102032102051_)))))
                      (let ()
                        (declare (not safe))
                        (_g102031102048_ _g102032102051_))))))
          (declare (not safe))
          (_g102030102093_ _stx102029_))))
    (define gxc#apply-operands
      (lambda (_self101941_ _stx101942_)
        (let* ((_g101944101963_
                (lambda (_g101945101960_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101945101960_))))
               (_g101943102025_
                (lambda (_g101945101966_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101945101966_))
                      (let ((_e101949101968_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101945101966_))))
                        (let ((_hd101948101971_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101949101968_)))
                              (_tl101947101973_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101949101968_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl101947101973_))
                              (let ((_g103107_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl101947101973_
                                        '0))))
                                (begin
                                  (let ((_g103108_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g103107_)
                                               (##vector-length _g103107_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g103108_ 2)))
                                        (error "Context expects 2 values"
                                               _g103108_)))
                                  (let ((_target101950101976_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g103107_ 0)))
                                        (_tl101952101978_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g103107_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl101952101978_))
                                        (letrec ((_loop101953101981_
                                                  (lambda (_hd101951101984_
                                                           _rands101957101986_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd101951101984_))
                                                        (let ((_e101954101989_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd101951101984_))))
                  (let ((_lp-hd101955101992_
                         (let () (declare (not safe)) (##car _e101954101989_)))
                        (_lp-tl101956101994_
                         (let ()
                           (declare (not safe))
                           (##cdr _e101954101989_))))
                    (let ((__tmp103110
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd101955101992_ _rands101957101986_))))
                      (declare (not safe))
                      (_loop101953101981_ _lp-tl101956101994_ __tmp103110))))
                (let ((_rands101958101997_ (reverse _rands101957101986_)))
                  ((lambda (_L102000_)
                     (for-each
                      (lambda (_g102013102015_)
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _self101941_ _g102013102015_)))
                      (let ((__tmp103109
                             (lambda (_g102017102020_ _g102018102022_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g102017102020_ _g102018102022_)))))
                        (declare (not safe))
                        (foldr1 __tmp103109 '() _L102000_))))
                   _rands101958101997_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop101953101981_
                                             _target101950101976_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g101944101963_
                                           _g101945101966_))))))
                              (let ()
                                (declare (not safe))
                                (_g101944101963_ _g101945101966_)))))
                      (let ()
                        (declare (not safe))
                        (_g101944101963_ _g101945101966_))))))
          (declare (not safe))
          (_g101943102025_ _stx101942_))))
    (define gxc#xform-wrap-source
      (lambda (_stx101938_ _src-stx101939_)
        (let ((__tmp103111
               (let () (declare (not safe)) (gx#stx-source _src-stx101939_))))
          (declare (not safe))
          (gx#stx-wrap-source _stx101938_ __tmp103111))))
    (define gxc#xform-begin%
      (lambda (_self101893_ _stx101894_)
        (let* ((_g101896101906_
                (lambda (_g101897101903_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101897101903_))))
               (_g101895101935_
                (lambda (_g101897101909_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101897101909_))
                      (let ((_e101901101911_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101897101909_))))
                        (let ((_hd101900101914_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101901101911_)))
                              (_tl101899101916_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101901101911_))))
                          ((lambda (_L101919_)
                             (let* ((_forms101933_
                                     (map (lambda (_g101928101930_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self101893_
                                               _g101928101930_)))
                                          _L101919_))
                                    (__tmp103112
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#begin _forms101933_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp103112
                                _stx101894_)))
                           _tl101899101916_)))
                      (let ()
                        (declare (not safe))
                        (_g101896101906_ _g101897101909_))))))
          (declare (not safe))
          (_g101895101935_ _stx101894_))))
    (define gxc#xform-begin-syntax%
      (lambda (_self101847_ _stx101848_)
        (let* ((_g101850101860_
                (lambda (_g101851101857_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101851101857_))))
               (_g101849101890_
                (lambda (_g101851101863_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101851101863_))
                      (let ((_e101855101865_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101851101863_))))
                        (let ((_hd101854101868_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101855101865_)))
                              (_tl101853101870_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101855101865_))))
                          ((lambda (_L101873_)
                             (let ((__tmp103115
                                    (lambda ()
                                      (let* ((_forms101888_
                                              (map (lambda (_g101883101885_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _self101847_
                                                        _g101883101885_)))
                                                   _L101873_))
                                             (__tmp103116
                                              (let ()
                                                (declare (not safe))
                                                (cons '%#begin-syntax
                                                      _forms101888_))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp103116
                                         _stx101848_))))
                                   (__tmp103113
                                    (let ((__tmp103114
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp103114 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp103115
                                gx#current-expander-phi
                                __tmp103113)))
                           _tl101853101870_)))
                      (let ()
                        (declare (not safe))
                        (_g101850101860_ _g101851101863_))))))
          (declare (not safe))
          (_g101849101890_ _stx101848_))))
    (define gxc#xform-module%
      (lambda (_self101784_ _stx101785_)
        (let* ((_g101787101801_
                (lambda (_g101788101798_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101788101798_))))
               (_g101786101844_
                (lambda (_g101788101804_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101788101804_))
                      (let ((_e101793101806_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101788101804_))))
                        (let ((_hd101792101809_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101793101806_)))
                              (_tl101791101811_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101793101806_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101791101811_))
                              (let ((_e101796101814_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101791101811_))))
                                (let ((_hd101795101817_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101796101814_)))
                                      (_tl101794101819_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101796101814_))))
                                  ((lambda (_L101822_ _L101823_)
                                     (let* ((_ctx101836_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L101823_)))
                                            (_code101838_
                                             (##structure-ref
                                              _ctx101836_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_code101841_
                                             (let ((__tmp103117
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _self101784_
                                                         _code101838_)))))
                                               (declare (not safe))
                                               (call-with-parameters
                                                __tmp103117
                                                gx#current-expander-context
                                                _ctx101836_))))
                                       (##structure-set!
                                        _ctx101836_
                                        _code101841_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp103118
                                              (let ((__tmp103119
                                                     (let ((__tmp103120
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _code101841_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L101823_ __tmp103120))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#module __tmp103119))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp103118
                                          _stx101785_))))
                                   _tl101794101819_
                                   _hd101795101817_)))
                              (let ()
                                (declare (not safe))
                                (_g101787101801_ _g101788101804_)))))
                      (let ()
                        (declare (not safe))
                        (_g101787101801_ _g101788101804_))))))
          (declare (not safe))
          (_g101786101844_ _stx101785_))))
    (define gxc#xform-define-values%
      (lambda (_self101714_ _stx101715_)
        (let* ((_g101717101734_
                (lambda (_g101718101731_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101718101731_))))
               (_g101716101781_
                (lambda (_g101718101737_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101718101737_))
                      (let ((_e101723101739_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101718101737_))))
                        (let ((_hd101722101742_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101723101739_)))
                              (_tl101721101744_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101723101739_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101721101744_))
                              (let ((_e101726101747_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101721101744_))))
                                (let ((_hd101725101750_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101726101747_)))
                                      (_tl101724101752_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101726101747_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl101724101752_))
                                      (let ((_e101729101755_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl101724101752_))))
                                        (let ((_hd101728101758_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e101729101755_)))
                                              (_tl101727101760_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e101729101755_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl101727101760_))
                                              ((lambda (_L101763_ _L101764_)
                                                 (let* ((_expr101779_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self101714_
                                                            _L101763_)))
                                                        (__tmp103121
                                                         (let ((__tmp103122
                                                                (let ((__tmp103123
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _expr101779_ '()))))
                          (declare (not safe))
                          (cons _L101764_ __tmp103123))))
                   (declare (not safe))
                   (cons '%#define-values __tmp103122))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp103121
                                                    _stx101715_)))
                                               _hd101728101758_
                                               _hd101725101750_)
                                              (let ()
                                                (declare (not safe))
                                                (_g101717101734_
                                                 _g101718101737_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g101717101734_ _g101718101737_)))))
                              (let ()
                                (declare (not safe))
                                (_g101717101734_ _g101718101737_)))))
                      (let ()
                        (declare (not safe))
                        (_g101717101734_ _g101718101737_))))))
          (declare (not safe))
          (_g101716101781_ _stx101715_))))
    (define gxc#xform-define-syntax%
      (lambda (_self101643_ _stx101644_)
        (let* ((_g101646101663_
                (lambda (_g101647101660_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101647101660_))))
               (_g101645101711_
                (lambda (_g101647101666_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101647101666_))
                      (let ((_e101652101668_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101647101666_))))
                        (let ((_hd101651101671_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101652101668_)))
                              (_tl101650101673_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101652101668_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101650101673_))
                              (let ((_e101655101676_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101650101673_))))
                                (let ((_hd101654101679_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101655101676_)))
                                      (_tl101653101681_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101655101676_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl101653101681_))
                                      (let ((_e101658101684_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl101653101681_))))
                                        (let ((_hd101657101687_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e101658101684_)))
                                              (_tl101656101689_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e101658101684_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl101656101689_))
                                              ((lambda (_L101692_ _L101693_)
                                                 (let ((__tmp103126
                                                        (lambda ()
                                                          (let* ((_expr101709_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__1 _self101643_ _L101692_)))
                         (__tmp103127
                          (let ((__tmp103128
                                 (let ((__tmp103129
                                        (let ()
                                          (declare (not safe))
                                          (cons _expr101709_ '()))))
                                   (declare (not safe))
                                   (cons _L101693_ __tmp103129))))
                            (declare (not safe))
                            (cons '%#define-syntax __tmp103128))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp103127 _stx101644_))))
               (__tmp103124
                (let ((__tmp103125 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp103125 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp103126
                                                    gx#current-expander-phi
                                                    __tmp103124)))
                                               _hd101657101687_
                                               _hd101654101679_)
                                              (let ()
                                                (declare (not safe))
                                                (_g101646101663_
                                                 _g101647101666_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g101646101663_ _g101647101666_)))))
                              (let ()
                                (declare (not safe))
                                (_g101646101663_ _g101647101666_)))))
                      (let ()
                        (declare (not safe))
                        (_g101646101663_ _g101647101666_))))))
          (declare (not safe))
          (_g101645101711_ _stx101644_))))
    (define gxc#xform-begin-annotation%
      (lambda (_self101573_ _stx101574_)
        (let* ((_g101576101593_
                (lambda (_g101577101590_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101577101590_))))
               (_g101575101640_
                (lambda (_g101577101596_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101577101596_))
                      (let ((_e101582101598_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101577101596_))))
                        (let ((_hd101581101601_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101582101598_)))
                              (_tl101580101603_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101582101598_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101580101603_))
                              (let ((_e101585101606_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101580101603_))))
                                (let ((_hd101584101609_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101585101606_)))
                                      (_tl101583101611_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101585101606_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl101583101611_))
                                      (let ((_e101588101614_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl101583101611_))))
                                        (let ((_hd101587101617_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e101588101614_)))
                                              (_tl101586101619_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e101588101614_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl101586101619_))
                                              ((lambda (_L101622_ _L101623_)
                                                 (let* ((_expr101638_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self101573_
                                                            _L101622_)))
                                                        (__tmp103130
                                                         (let ((__tmp103131
                                                                (let ((__tmp103132
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _expr101638_ '()))))
                          (declare (not safe))
                          (cons _L101623_ __tmp103132))))
                   (declare (not safe))
                   (cons '%#begin-annotation __tmp103131))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp103130
                                                    _stx101574_)))
                                               _hd101587101617_
                                               _hd101584101609_)
                                              (let ()
                                                (declare (not safe))
                                                (_g101576101593_
                                                 _g101577101596_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g101576101593_ _g101577101596_)))))
                              (let ()
                                (declare (not safe))
                                (_g101576101593_ _g101577101596_)))))
                      (let ()
                        (declare (not safe))
                        (_g101576101593_ _g101577101596_))))))
          (declare (not safe))
          (_g101575101640_ _stx101574_))))
    (define gxc#xform-lambda%
      (lambda (_self101512_ _stx101513_)
        (let* ((_g101515101529_
                (lambda (_g101516101526_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101516101526_))))
               (_g101514101570_
                (lambda (_g101516101532_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101516101532_))
                      (let ((_e101521101534_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101516101532_))))
                        (let ((_hd101520101537_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101521101534_)))
                              (_tl101519101539_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101521101534_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101519101539_))
                              (let ((_e101524101542_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101519101539_))))
                                (let ((_hd101523101545_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101524101542_)))
                                      (_tl101522101547_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101524101542_))))
                                  ((lambda (_L101550_ _L101551_)
                                     (let* ((_body101568_
                                             (map (lambda (_g101563101565_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _self101512_
                                                       _g101563101565_)))
                                                  _L101550_))
                                            (__tmp103133
                                             (let ((__tmp103134
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L101551_
                                                            _body101568_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp103134))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp103133
                                        _stx101513_)))
                                   _tl101522101547_
                                   _hd101523101545_)))
                              (let ()
                                (declare (not safe))
                                (_g101515101529_ _g101516101532_)))))
                      (let ()
                        (declare (not safe))
                        (_g101515101529_ _g101516101532_))))))
          (declare (not safe))
          (_g101514101570_ _stx101513_))))
    (define gxc#xform-case-lambda%
      (lambda (_self101421_ _stx101422_)
        (letrec ((_clause-e101424_
                  (lambda (_clause101465_)
                    (let* ((_g101467101478_
                            (lambda (_g101468101475_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g101468101475_))))
                           (_g101466101509_
                            (lambda (_g101468101481_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g101468101481_))
                                  (let ((_e101473101483_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g101468101481_))))
                                    (let ((_hd101472101486_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e101473101483_)))
                                          (_tl101471101488_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e101473101483_))))
                                      ((lambda (_L101491_ _L101492_)
                                         (let ((_body101507_
                                                (map (lambda (_g101502101504_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _self101421_
                                                          _g101502101504_)))
                                                     _L101491_)))
                                           (declare (not safe))
                                           (cons _L101492_ _body101507_)))
                                       _tl101471101488_
                                       _hd101472101486_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g101467101478_ _g101468101481_))))))
                      (declare (not safe))
                      (_g101466101509_ _clause101465_)))))
          (let* ((_g101426101436_
                  (lambda (_g101427101433_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g101427101433_))))
                 (_g101425101462_
                  (lambda (_g101427101439_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g101427101439_))
                        (let ((_e101431101441_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g101427101439_))))
                          (let ((_hd101430101444_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e101431101441_)))
                                (_tl101429101446_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e101431101441_))))
                            ((lambda (_L101449_)
                               (let* ((_clauses101460_
                                       (map _clause-e101424_ _L101449_))
                                      (__tmp103135
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses101460_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp103135
                                  _stx101422_)))
                             _tl101429101446_)))
                        (let ()
                          (declare (not safe))
                          (_g101426101436_ _g101427101439_))))))
            (declare (not safe))
            (_g101425101462_ _stx101422_)))))
    (define gxc#xform-let-values%
      (lambda (_self101207_ _stx101208_)
        (let* ((_g101210101243_
                (lambda (_g101211101240_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101211101240_))))
               (_g101209101418_
                (lambda (_g101211101246_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101211101246_))
                      (let ((_e101218101248_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101211101246_))))
                        (let ((_hd101217101251_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101218101248_)))
                              (_tl101216101253_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101218101248_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101216101253_))
                              (let ((_e101221101256_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101216101253_))))
                                (let ((_hd101220101259_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101221101256_)))
                                      (_tl101219101261_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101221101256_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd101220101259_))
                                      (let ((_g103136_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd101220101259_
                                                '0))))
                                        (begin
                                          (let ((_g103137_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g103136_)
                                                       (##vector-length
                                                        _g103136_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g103137_ 2)))
                                                (error "Context expects 2 values"
                                                       _g103137_)))
                                          (let ((_target101222101264_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g103136_ 0)))
                                                (_tl101224101266_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g103136_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl101224101266_))
                                                (letrec ((_loop101225101269_
                                                          (lambda (_hd101223101272_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr101229101274_
                           _hd101230101276_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd101223101272_))
                        (let ((_e101226101279_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd101223101272_))))
                          (let ((_lp-hd101227101282_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e101226101279_)))
                                (_lp-tl101228101284_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e101226101279_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd101227101282_))
                                (let ((_e101235101287_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd101227101282_))))
                                  (let ((_hd101234101290_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e101235101287_)))
                                        (_tl101233101292_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e101235101287_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl101233101292_))
                                        (let ((_e101238101295_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl101233101292_))))
                                          (let ((_hd101237101298_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e101238101295_)))
                                                (_tl101236101300_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e101238101295_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl101236101300_))
                                                (let ((__tmp103150
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd101237101298_
                                                               _expr101229101274_)))
                                                      (__tmp103149
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd101234101290_
                                                               _hd101230101276_))))
                                                  (declare (not safe))
                                                  (_loop101225101269_
                                                   _lp-tl101228101284_
                                                   __tmp103150
                                                   __tmp103149))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g101210101243_
                                                   _g101211101246_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g101210101243_ _g101211101246_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g101210101243_ _g101211101246_)))))
                        (let ((_expr101231101303_ (reverse _expr101229101274_))
                              (_hd101232101305_ (reverse _hd101230101276_)))
                          ((lambda (_L101308_ _L101309_ _L101310_ _L101311_)
                             (let* ((_g101330101346_
                                     (lambda (_g101331101343_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g101331101343_))))
                                    (_g101329101404_
                                     (lambda (_g101331101349_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _g101331101349_))
                                           (let ((_g103138_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _g101331101349_
                                                     '0))))
                                             (begin
                                               (let ((_g103139_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g103138_)
                                                            (##vector-length
                                                             _g103138_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g103139_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g103139_)))
                                               (let ((_target101333101351_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g103138_
                                                         0)))
                                                     (_tl101335101353_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g103138_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl101335101353_))
                                                     (letrec ((_loop101336101356_
                                                               (lambda (_hd101334101359_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr101340101361_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _hd101334101359_))
                             (let ((_e101337101364_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _hd101334101359_))))
                               (let ((_lp-hd101338101367_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e101337101364_)))
                                     (_lp-tl101339101369_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e101337101364_))))
                                 (let ((__tmp103146
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd101338101367_
                                                _expr101340101361_))))
                                   (declare (not safe))
                                   (_loop101336101356_
                                    _lp-tl101339101369_
                                    __tmp103146))))
                             (let ((_expr101341101372_
                                    (reverse _expr101340101361_)))
                               ((lambda (_L101375_)
                                  (let ()
                                    (let* ((_body101392_
                                            (map (lambda (_g101387101389_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self101207_
                                                      _g101387101389_)))
                                                 _L101308_))
                                           (__tmp103140
                                            (let ((__tmp103141
                                                   (let ((__tmp103142
                                                          (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _L101375_
                                                               _L101310_))
                                                            (let ((__tmp103143
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g101393101397_
                                    _g101394101399_
                                    _g101395101401_)
                             (let ((__tmp103144
                                    (let ((__tmp103145
                                           (let ()
                                             (declare (not safe))
                                             (cons _g101393101397_ '()))))
                                      (declare (not safe))
                                      (cons _g101394101399_ __tmp103145))))
                               (declare (not safe))
                               (cons __tmp103144 _g101395101401_)))))
                      (declare (not safe))
                      (foldr2 __tmp103143 '() _L101375_ _L101310_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp103142
                                                           _body101392_))))
                                              (declare (not safe))
                                              (cons _L101311_ __tmp103141))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp103140
                                       _stx101208_))))
                                _expr101341101372_))))))
               (let ()
                 (declare (not safe))
                 (_loop101336101356_ _target101333101351_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g101330101346_
                                                        _g101331101349_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_g101330101346_
                                              _g101331101349_)))))
                                    (__tmp103147
                                     (map (lambda (_g101406101408_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self101207_
                                               _g101406101408_)))
                                          (let ((__tmp103148
                                                 (lambda (_g101410101413_
                                                          _g101411101415_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g101410101413_
                                                           _g101411101415_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp103148
                                                    '()
                                                    _L101309_)))))
                               (declare (not safe))
                               (_g101329101404_ __tmp103147)))
                           _tl101219101261_
                           _expr101231101303_
                           _hd101232101305_
                           _hd101217101251_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop101225101269_
                                                     _target101222101264_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g101210101243_
                                                   _g101211101246_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g101210101243_ _g101211101246_)))))
                              (let ()
                                (declare (not safe))
                                (_g101210101243_ _g101211101246_)))))
                      (let ()
                        (declare (not safe))
                        (_g101210101243_ _g101211101246_))))))
          (declare (not safe))
          (_g101209101418_ _stx101208_))))
    (define gxc#xform-operands
      (lambda (_self101159_ _stx101160_)
        (let* ((_g101162101173_
                (lambda (_g101163101170_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101163101170_))))
               (_g101161101204_
                (lambda (_g101163101176_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101163101176_))
                      (let ((_e101168101178_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101163101176_))))
                        (let ((_hd101167101181_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101168101178_)))
                              (_tl101166101183_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101168101178_))))
                          ((lambda (_L101186_ _L101187_)
                             (let* ((_rands101202_
                                     (map (lambda (_g101197101199_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self101159_
                                               _g101197101199_)))
                                          _L101186_))
                                    (__tmp103151
                                     (let ()
                                       (declare (not safe))
                                       (cons _L101187_ _rands101202_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp103151
                                _stx101160_)))
                           _tl101166101183_
                           _hd101167101181_)))
                      (let ()
                        (declare (not safe))
                        (_g101162101173_ _g101163101176_))))))
          (declare (not safe))
          (_g101161101204_ _stx101160_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_self101089_ _stx101090_)
        (let* ((_g101092101109_
                (lambda (_g101093101106_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101093101106_))))
               (_g101091101156_
                (lambda (_g101093101112_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101093101112_))
                      (let ((_e101098101114_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101093101112_))))
                        (let ((_hd101097101117_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101098101114_)))
                              (_tl101096101119_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101098101114_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101096101119_))
                              (let ((_e101101101122_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101096101119_))))
                                (let ((_hd101100101125_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101101101122_)))
                                      (_tl101099101127_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101101101122_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl101099101127_))
                                      (let ((_e101104101130_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl101099101127_))))
                                        (let ((_hd101103101133_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e101104101130_)))
                                              (_tl101102101135_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e101104101130_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl101102101135_))
                                              ((lambda (_L101138_ _L101139_)
                                                 (let* ((_expr101154_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self101089_
                                                            _L101138_)))
                                                        (__tmp103152
                                                         (let ((__tmp103153
                                                                (let ((__tmp103154
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _expr101154_ '()))))
                          (declare (not safe))
                          (cons _L101139_ __tmp103154))))
                   (declare (not safe))
                   (cons '%#set! __tmp103153))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp103152
                                                    _stx101090_)))
                                               _hd101103101133_
                                               _hd101100101125_)
                                              (let ()
                                                (declare (not safe))
                                                (_g101092101109_
                                                 _g101093101112_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g101092101109_ _g101093101112_)))))
                              (let ()
                                (declare (not safe))
                                (_g101092101109_ _g101093101112_)))))
                      (let ()
                        (declare (not safe))
                        (_g101092101109_ _g101093101112_))))))
          (declare (not safe))
          (_g101091101156_ _stx101090_))))))
