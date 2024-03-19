(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1710833425)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_stx102912_)
        (let* ((_self102914_ (gxc#current-compile-method))
               (_$e102916_
                (let ((__tmp103085
                       (let ()
                         (declare (not safe))
                         (gxc#stx-car-e _stx102912_))))
                  (declare (not safe))
                  (method-ref _self102914_ __tmp103085))))
          (if _$e102916_
              ((lambda (_method102919_)
                 (declare (not safe))
                 (_method102919_ _self102914_ _stx102912_))
               _$e102916_)
              (let ((__tmp103087
                     (let () (declare (not safe)) (gxc#stx-car-e _stx102912_)))
                    (__tmp103086
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _stx102912_))))
                (declare (not safe))
                (error '"missing method"
                       _self102914_
                       __tmp103087
                       __tmp103086))))))
    (define gxc#compile-e__1
      (lambda (_self102922_ _stx102923_)
        (let ((_$e102925_
               (let ((__tmp103088
                      (let ()
                        (declare (not safe))
                        (gxc#stx-car-e _stx102923_))))
                 (declare (not safe))
                 (method-ref _self102922_ __tmp103088))))
          (if _$e102925_
              ((lambda (_method102928_)
                 (declare (not safe))
                 (_method102928_ _self102922_ _stx102923_))
               _$e102925_)
              (let ((__tmp103090
                     (let () (declare (not safe)) (gxc#stx-car-e _stx102923_)))
                    (__tmp103089
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _stx102923_))))
                (declare (not safe))
                (error '"missing method"
                       _self102922_
                       __tmp103090
                       __tmp103089))))))
    (define gxc#compile-e
      (lambda _g103092_
        (let ((_g103091_ (let () (declare (not safe)) (##length _g103092_))))
          (cond ((let () (declare (not safe)) (##fx= _g103091_ 1))
                 (apply (lambda (_stx102912_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _stx102912_)))
                        _g103092_))
                ((let () (declare (not safe)) (##fx= _g103091_ 2))
                 (apply (lambda (_self102922_ _stx102923_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__1 _self102922_ _stx102923_)))
                        _g103092_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g103092_))))))
    (define gxc#stx-car-e
      (lambda (_stx102910_)
        (let ((__tmp103093
               (car (let () (declare (not safe)) (gx#stx-e _stx102910_)))))
          (declare (not safe))
          (gx#stx-e __tmp103093))))
    (define gxc#void-method (lambda (_self102907_ _stx102908_) '#!void))
    (define gxc#false-method (lambda (_self102904_ _stx102905_) '#f))
    (define gxc#true-method (lambda (_self102901_ _stx102902_) '#t))
    (define gxc#identity-method
      (lambda (_self102898_ _stx102899_) _stx102899_))
    (define gxc#::void-expression::t
      (let ((__tmp103094 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp103094
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _$args102895_
        (apply make-instance gxc#::void-expression::t _$args102895_)))
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
      (let ((__tmp103095 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp103095
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _$args102891_
        (apply make-instance gxc#::void-special-form::t _$args102891_)))
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
      (let ((__tmp103096
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (make-class-type 'gxc#::void::t '::void __tmp103096 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _$args102887_ (apply make-instance gxc#::void::t _$args102887_)))
    (define gxc#::void-bind-methods!
      (make-promise
       (lambda ()
         (force gxc#::void-special-form-bind-methods!)
         (force gxc#::void-expression-bind-methods!))))
    (define gxc#::false-expression::t
      (let ((__tmp103097 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp103097
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _$args102883_
        (apply make-instance gxc#::false-expression::t _$args102883_)))
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
      (let ((__tmp103098 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp103098
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _$args102879_
        (apply make-instance gxc#::false-special-form::t _$args102879_)))
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
      (let ((__tmp103099
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (make-class-type 'gxc#::false::t '::false __tmp103099 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _$args102875_
        (apply make-instance gxc#::false::t _$args102875_)))
    (define gxc#::false-bind-methods!
      (make-promise
       (lambda ()
         (force gxc#::false-special-form-bind-methods!)
         (force gxc#::false-expression-bind-methods!))))
    (define gxc#::identity-expression::t
      (let ((__tmp103100 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp103100
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _$args102871_
        (apply make-instance gxc#::identity-expression::t _$args102871_)))
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
      (let ((__tmp103101 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp103101
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _$args102867_
        (apply make-instance gxc#::identity-special-form::t _$args102867_)))
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
      (let ((__tmp103102
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::identity::t
         '::identity
         __tmp103102
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _$args102863_
        (apply make-instance gxc#::identity::t _$args102863_)))
    (define gxc#::identity-bind-methods!
      (make-promise
       (lambda ()
         (force gxc#::identity-special-form-bind-methods!)
         (force gxc#::identity-expression-bind-methods!))))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp103103 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp103103
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _$args102859_
        (apply make-instance gxc#::basic-xform-expression::t _$args102859_)))
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
      (let ((__tmp103104
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp103104
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _$args102855_
        (apply make-instance gxc#::basic-xform::t _$args102855_)))
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
      (lambda (_self102811_ _stx102812_)
        (let* ((_g102814102824_
                (lambda (_g102815102821_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102815102821_))))
               (_g102813102851_
                (lambda (_g102815102827_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102815102827_))
                      (let ((_e102819102829_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102815102827_))))
                        (let ((_hd102818102832_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102819102829_)))
                              (_tl102817102834_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102819102829_))))
                          ((lambda (_L102837_)
                             (for-each
                              (lambda (_g102846102848_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1
                                   _self102811_
                                   _g102846102848_)))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _L102837_))))
                           _tl102817102834_)))
                      (let ()
                        (declare (not safe))
                        (_g102814102824_ _g102815102827_))))))
          (declare (not safe))
          (_g102813102851_ _stx102812_))))
    (define gxc#apply-last-begin%
      (lambda (_self102772_ _stx102773_)
        (let* ((_g102775102785_
                (lambda (_g102776102782_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102776102782_))))
               (_g102774102808_
                (lambda (_g102776102788_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102776102788_))
                      (let ((_e102780102790_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102776102788_))))
                        (let ((_hd102779102793_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102780102790_)))
                              (_tl102778102795_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102780102790_))))
                          ((lambda (_L102798_)
                             (let ((__tmp103105 (last _L102798_)))
                               (declare (not safe))
                               (gxc#compile-e__1 _self102772_ __tmp103105)))
                           _tl102778102795_)))
                      (let ()
                        (declare (not safe))
                        (_g102775102785_ _g102776102788_))))))
          (declare (not safe))
          (_g102774102808_ _stx102773_))))
    (define gxc#apply-begin-syntax%
      (lambda (_self102768_ _stx102769_)
        (let ((__tmp103108
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#apply-begin% _self102768_ _stx102769_))))
              (__tmp103106
               (let ((__tmp103107 (gx#current-expander-phi)))
                 (declare (not safe))
                 (fx+ __tmp103107 '1))))
          (declare (not safe))
          (call-with-parameters
           __tmp103108
           gx#current-expander-phi
           __tmp103106))))
    (define gxc#apply-module%
      (lambda (_self102707_ _stx102708_)
        (let* ((_g102710102724_
                (lambda (_g102711102721_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102711102721_))))
               (_g102709102765_
                (lambda (_g102711102727_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102711102727_))
                      (let ((_e102716102729_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102711102727_))))
                        (let ((_hd102715102732_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102716102729_)))
                              (_tl102714102734_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102716102729_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102714102734_))
                              (let ((_e102719102737_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102714102734_))))
                                (let ((_hd102718102740_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102719102737_)))
                                      (_tl102717102742_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102719102737_))))
                                  ((lambda (_L102745_ _L102746_)
                                     (let* ((_ctx102759_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L102746_)))
                                            (_ctx-stx102761_
                                             (##structure-ref
                                              _ctx102759_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp103109
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self102707_
                                                   _ctx-stx102761_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp103109
                                          gx#current-expander-context
                                          _ctx102759_))))
                                   _tl102717102742_
                                   _hd102718102740_)))
                              (let ()
                                (declare (not safe))
                                (_g102710102724_ _g102711102727_)))))
                      (let ()
                        (declare (not safe))
                        (_g102710102724_ _g102711102727_))))))
          (declare (not safe))
          (_g102709102765_ _stx102708_))))
    (define gxc#apply-begin-annotation%
      (lambda (_self102639_ _stx102640_)
        (let* ((_g102642102659_
                (lambda (_g102643102656_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102643102656_))))
               (_g102641102704_
                (lambda (_g102643102662_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102643102662_))
                      (let ((_e102648102664_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102643102662_))))
                        (let ((_hd102647102667_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102648102664_)))
                              (_tl102646102669_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102648102664_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102646102669_))
                              (let ((_e102651102672_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102646102669_))))
                                (let ((_hd102650102675_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102651102672_)))
                                      (_tl102649102677_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102651102672_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl102649102677_))
                                      (let ((_e102654102680_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl102649102677_))))
                                        (let ((_hd102653102683_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e102654102680_)))
                                              (_tl102652102685_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e102654102680_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl102652102685_))
                                              ((lambda (_L102688_ _L102689_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self102639_
                                                    _L102688_)))
                                               _hd102653102683_
                                               _hd102650102675_)
                                              (let ()
                                                (declare (not safe))
                                                (_g102642102659_
                                                 _g102643102662_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g102642102659_ _g102643102662_)))))
                              (let ()
                                (declare (not safe))
                                (_g102642102659_ _g102643102662_)))))
                      (let ()
                        (declare (not safe))
                        (_g102642102659_ _g102643102662_))))))
          (declare (not safe))
          (_g102641102704_ _stx102640_))))
    (define gxc#apply-define-values%
      (lambda (_self102571_ _stx102572_)
        (let* ((_g102574102591_
                (lambda (_g102575102588_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102575102588_))))
               (_g102573102636_
                (lambda (_g102575102594_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102575102594_))
                      (let ((_e102580102596_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102575102594_))))
                        (let ((_hd102579102599_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102580102596_)))
                              (_tl102578102601_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102580102596_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102578102601_))
                              (let ((_e102583102604_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102578102601_))))
                                (let ((_hd102582102607_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102583102604_)))
                                      (_tl102581102609_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102583102604_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl102581102609_))
                                      (let ((_e102586102612_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl102581102609_))))
                                        (let ((_hd102585102615_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e102586102612_)))
                                              (_tl102584102617_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e102586102612_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl102584102617_))
                                              ((lambda (_L102620_ _L102621_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self102571_
                                                    _L102620_)))
                                               _hd102585102615_
                                               _hd102582102607_)
                                              (let ()
                                                (declare (not safe))
                                                (_g102574102591_
                                                 _g102575102594_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g102574102591_ _g102575102594_)))))
                              (let ()
                                (declare (not safe))
                                (_g102574102591_ _g102575102594_)))))
                      (let ()
                        (declare (not safe))
                        (_g102574102591_ _g102575102594_))))))
          (declare (not safe))
          (_g102573102636_ _stx102572_))))
    (define gxc#apply-define-syntax%
      (lambda (_self102502_ _stx102503_)
        (let* ((_g102505102522_
                (lambda (_g102506102519_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102506102519_))))
               (_g102504102568_
                (lambda (_g102506102525_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102506102525_))
                      (let ((_e102511102527_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102506102525_))))
                        (let ((_hd102510102530_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102511102527_)))
                              (_tl102509102532_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102511102527_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102509102532_))
                              (let ((_e102514102535_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102509102532_))))
                                (let ((_hd102513102538_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102514102535_)))
                                      (_tl102512102540_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102514102535_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl102512102540_))
                                      (let ((_e102517102543_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl102512102540_))))
                                        (let ((_hd102516102546_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e102517102543_)))
                                              (_tl102515102548_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e102517102543_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl102515102548_))
                                              ((lambda (_L102551_ _L102552_)
                                                 (let ((__tmp103112
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _self102502_
                                                             _L102551_))))
                                                       (__tmp103110
                                                        (let ((__tmp103111
                                                               (gx#current-expander-phi)))
                                                          (declare (not safe))
                                                          (fx+ __tmp103111
                                                               '1))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp103112
                                                    gx#current-expander-phi
                                                    __tmp103110)))
                                               _hd102516102546_
                                               _hd102513102538_)
                                              (let ()
                                                (declare (not safe))
                                                (_g102505102522_
                                                 _g102506102525_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g102505102522_ _g102506102525_)))))
                              (let ()
                                (declare (not safe))
                                (_g102505102522_ _g102506102525_)))))
                      (let ()
                        (declare (not safe))
                        (_g102505102522_ _g102506102525_))))))
          (declare (not safe))
          (_g102504102568_ _stx102503_))))
    (define gxc#apply-body-lambda%
      (lambda (_self102434_ _stx102435_)
        (let* ((_g102437102454_
                (lambda (_g102438102451_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102438102451_))))
               (_g102436102499_
                (lambda (_g102438102457_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102438102457_))
                      (let ((_e102443102459_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102438102457_))))
                        (let ((_hd102442102462_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102443102459_)))
                              (_tl102441102464_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102443102459_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102441102464_))
                              (let ((_e102446102467_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102441102464_))))
                                (let ((_hd102445102470_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102446102467_)))
                                      (_tl102444102472_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102446102467_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl102444102472_))
                                      (let ((_e102449102475_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl102444102472_))))
                                        (let ((_hd102448102478_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e102449102475_)))
                                              (_tl102447102480_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e102449102475_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl102447102480_))
                                              ((lambda (_L102483_ _L102484_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self102434_
                                                    _L102483_)))
                                               _hd102448102478_
                                               _hd102445102470_)
                                              (let ()
                                                (declare (not safe))
                                                (_g102437102454_
                                                 _g102438102457_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g102437102454_ _g102438102457_)))))
                              (let ()
                                (declare (not safe))
                                (_g102437102454_ _g102438102457_)))))
                      (let ()
                        (declare (not safe))
                        (_g102437102454_ _g102438102457_))))))
          (declare (not safe))
          (_g102436102499_ _stx102435_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_self102316_ _stx102317_)
        (let* ((_g102319102347_
                (lambda (_g102320102344_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102320102344_))))
               (_g102318102431_
                (lambda (_g102320102350_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102320102350_))
                      (let ((_e102325102352_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102320102350_))))
                        (let ((_hd102324102355_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102325102352_)))
                              (_tl102323102357_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102325102352_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl102323102357_))
                              (let ((_g103113_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl102323102357_
                                        '0))))
                                (begin
                                  (let ((_g103114_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g103113_)
                                               (##vector-length _g103113_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g103114_ 2)))
                                        (error "Context expects 2 values"
                                               _g103114_)))
                                  (let ((_target102326102360_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g103113_ 0)))
                                        (_tl102328102362_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g103113_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl102328102362_))
                                        (letrec ((_loop102329102365_
                                                  (lambda (_hd102327102368_
                                                           _body102333102370_
                                                           _hd102334102372_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd102327102368_))
                                                        (let ((_e102330102375_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd102327102368_))))
                  (let ((_lp-hd102331102378_
                         (let () (declare (not safe)) (##car _e102330102375_)))
                        (_lp-tl102332102380_
                         (let ()
                           (declare (not safe))
                           (##cdr _e102330102375_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd102331102378_))
                        (let ((_e102339102383_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd102331102378_))))
                          (let ((_hd102338102386_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e102339102383_)))
                                (_tl102337102388_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e102339102383_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl102337102388_))
                                (let ((_e102342102391_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl102337102388_))))
                                  (let ((_hd102341102394_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e102342102391_)))
                                        (_tl102340102396_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e102342102391_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl102340102396_))
                                        (let ((__tmp103117
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd102341102394_
                                                       _body102333102370_)))
                                              (__tmp103116
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd102338102386_
                                                       _hd102334102372_))))
                                          (declare (not safe))
                                          (_loop102329102365_
                                           _lp-tl102332102380_
                                           __tmp103117
                                           __tmp103116))
                                        (let ()
                                          (declare (not safe))
                                          (_g102319102347_ _g102320102350_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g102319102347_ _g102320102350_)))))
                        (let ()
                          (declare (not safe))
                          (_g102319102347_ _g102320102350_)))))
                (let ((_body102335102399_ (reverse _body102333102370_))
                      (_hd102336102401_ (reverse _hd102334102372_)))
                  ((lambda (_L102404_ _L102405_)
                     (for-each
                      (lambda (_g102419102421_)
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _self102316_ _g102419102421_)))
                      (let ((__tmp103115
                             (lambda (_g102423102426_ _g102424102428_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g102423102426_ _g102424102428_)))))
                        (declare (not safe))
                        (foldr1 __tmp103115 '() _L102404_))))
                   _body102335102399_
                   _hd102336102401_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop102329102365_
                                             _target102326102360_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g102319102347_
                                           _g102320102350_))))))
                              (let ()
                                (declare (not safe))
                                (_g102319102347_ _g102320102350_)))))
                      (let ()
                        (declare (not safe))
                        (_g102319102347_ _g102320102350_))))))
          (declare (not safe))
          (_g102318102431_ _stx102317_))))
    (define gxc#apply-body-let-values%
      (lambda (_self102169_ _stx102170_)
        (let* ((_g102172102207_
                (lambda (_g102173102204_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102173102204_))))
               (_g102171102313_
                (lambda (_g102173102210_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102173102210_))
                      (let ((_e102179102212_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102173102210_))))
                        (let ((_hd102178102215_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102179102212_)))
                              (_tl102177102217_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102179102212_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102177102217_))
                              (let ((_e102182102220_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102177102217_))))
                                (let ((_hd102181102223_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102182102220_)))
                                      (_tl102180102225_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102182102220_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd102181102223_))
                                      (let ((_g103118_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd102181102223_
                                                '0))))
                                        (begin
                                          (let ((_g103119_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g103118_)
                                                       (##vector-length
                                                        _g103118_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g103119_ 2)))
                                                (error "Context expects 2 values"
                                                       _g103119_)))
                                          (let ((_target102183102228_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g103118_ 0)))
                                                (_tl102185102230_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g103118_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl102185102230_))
                                                (letrec ((_loop102186102233_
                                                          (lambda (_hd102184102236_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr102190102238_
                           _hd102191102240_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd102184102236_))
                        (let ((_e102187102243_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd102184102236_))))
                          (let ((_lp-hd102188102246_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e102187102243_)))
                                (_lp-tl102189102248_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e102187102243_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd102188102246_))
                                (let ((_e102196102251_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd102188102246_))))
                                  (let ((_hd102195102254_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e102196102251_)))
                                        (_tl102194102256_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e102196102251_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl102194102256_))
                                        (let ((_e102199102259_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl102194102256_))))
                                          (let ((_hd102198102262_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e102199102259_)))
                                                (_tl102197102264_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e102199102259_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl102197102264_))
                                                (let ((__tmp103123
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd102198102262_
                                                               _expr102190102238_)))
                                                      (__tmp103122
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd102195102254_
                                                               _hd102191102240_))))
                                                  (declare (not safe))
                                                  (_loop102186102233_
                                                   _lp-tl102189102248_
                                                   __tmp103123
                                                   __tmp103122))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g102172102207_
                                                   _g102173102210_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g102172102207_ _g102173102210_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g102172102207_ _g102173102210_)))))
                        (let ((_expr102192102267_ (reverse _expr102190102238_))
                              (_hd102193102269_ (reverse _hd102191102240_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102180102225_))
                              (let ((_e102202102272_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102180102225_))))
                                (let ((_hd102201102275_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102202102272_)))
                                      (_tl102200102277_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102202102272_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl102200102277_))
                                      ((lambda (_L102280_ _L102281_ _L102282_)
                                         (for-each
                                          (lambda (_g102301102303_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self102169_
                                               _g102301102303_)))
                                          (let ((__tmp103121
                                                 (lambda (_g102305102308_
                                                          _g102306102310_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g102305102308_
                                                           _g102306102310_))))
                                                (__tmp103120
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L102280_ '()))))
                                            (declare (not safe))
                                            (foldr1 __tmp103121
                                                    __tmp103120
                                                    _L102281_))))
                                       _hd102201102275_
                                       _expr102192102267_
                                       _hd102193102269_)
                                      (let ()
                                        (declare (not safe))
                                        (_g102172102207_ _g102173102210_)))))
                              (let ()
                                (declare (not safe))
                                (_g102172102207_ _g102173102210_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop102186102233_
                                                     _target102183102228_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g102172102207_
                                                   _g102173102210_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g102172102207_ _g102173102210_)))))
                              (let ()
                                (declare (not safe))
                                (_g102172102207_ _g102173102210_)))))
                      (let ()
                        (declare (not safe))
                        (_g102172102207_ _g102173102210_))))))
          (declare (not safe))
          (_g102171102313_ _stx102170_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_self102114_ _stx102115_)
        (let* ((_g102117102131_
                (lambda (_g102118102128_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102118102128_))))
               (_g102116102166_
                (lambda (_g102118102134_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102118102134_))
                      (let ((_e102123102136_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102118102134_))))
                        (let ((_hd102122102139_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102123102136_)))
                              (_tl102121102141_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102123102136_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102121102141_))
                              (let ((_e102126102144_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102121102141_))))
                                (let ((_hd102125102147_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102126102144_)))
                                      (_tl102124102149_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102126102144_))))
                                  ((lambda (_L102152_ _L102153_)
                                     (let ((__tmp103124 (last _L102152_)))
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _self102114_
                                        __tmp103124)))
                                   _tl102124102149_
                                   _hd102125102147_)))
                              (let ()
                                (declare (not safe))
                                (_g102117102131_ _g102118102134_)))))
                      (let ()
                        (declare (not safe))
                        (_g102117102131_ _g102118102134_))))))
          (declare (not safe))
          (_g102116102166_ _stx102115_))))
    (define gxc#apply-body-setq%
      (lambda (_self102046_ _stx102047_)
        (let* ((_g102049102066_
                (lambda (_g102050102063_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102050102063_))))
               (_g102048102111_
                (lambda (_g102050102069_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102050102069_))
                      (let ((_e102055102071_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102050102069_))))
                        (let ((_hd102054102074_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102055102071_)))
                              (_tl102053102076_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102055102071_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102053102076_))
                              (let ((_e102058102079_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102053102076_))))
                                (let ((_hd102057102082_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102058102079_)))
                                      (_tl102056102084_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102058102079_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl102056102084_))
                                      (let ((_e102061102087_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl102056102084_))))
                                        (let ((_hd102060102090_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e102061102087_)))
                                              (_tl102059102092_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e102061102087_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl102059102092_))
                                              ((lambda (_L102095_ _L102096_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self102046_
                                                    _L102095_)))
                                               _hd102060102090_
                                               _hd102057102082_)
                                              (let ()
                                                (declare (not safe))
                                                (_g102049102066_
                                                 _g102050102069_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g102049102066_ _g102050102069_)))))
                              (let ()
                                (declare (not safe))
                                (_g102049102066_ _g102050102069_)))))
                      (let ()
                        (declare (not safe))
                        (_g102049102066_ _g102050102069_))))))
          (declare (not safe))
          (_g102048102111_ _stx102047_))))
    (define gxc#apply-operands
      (lambda (_self101959_ _stx101960_)
        (let* ((_g101962101981_
                (lambda (_g101963101978_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101963101978_))))
               (_g101961102043_
                (lambda (_g101963101984_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101963101984_))
                      (let ((_e101967101986_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101963101984_))))
                        (let ((_hd101966101989_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101967101986_)))
                              (_tl101965101991_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101967101986_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl101965101991_))
                              (let ((_g103125_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl101965101991_
                                        '0))))
                                (begin
                                  (let ((_g103126_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g103125_)
                                               (##vector-length _g103125_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g103126_ 2)))
                                        (error "Context expects 2 values"
                                               _g103126_)))
                                  (let ((_target101968101994_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g103125_ 0)))
                                        (_tl101970101996_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g103125_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl101970101996_))
                                        (letrec ((_loop101971101999_
                                                  (lambda (_hd101969102002_
                                                           _rands101975102004_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd101969102002_))
                                                        (let ((_e101972102007_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd101969102002_))))
                  (let ((_lp-hd101973102010_
                         (let () (declare (not safe)) (##car _e101972102007_)))
                        (_lp-tl101974102012_
                         (let ()
                           (declare (not safe))
                           (##cdr _e101972102007_))))
                    (let ((__tmp103128
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd101973102010_ _rands101975102004_))))
                      (declare (not safe))
                      (_loop101971101999_ _lp-tl101974102012_ __tmp103128))))
                (let ((_rands101976102015_ (reverse _rands101975102004_)))
                  ((lambda (_L102018_)
                     (for-each
                      (lambda (_g102031102033_)
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _self101959_ _g102031102033_)))
                      (let ((__tmp103127
                             (lambda (_g102035102038_ _g102036102040_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g102035102038_ _g102036102040_)))))
                        (declare (not safe))
                        (foldr1 __tmp103127 '() _L102018_))))
                   _rands101976102015_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop101971101999_
                                             _target101968101994_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g101962101981_
                                           _g101963101984_))))))
                              (let ()
                                (declare (not safe))
                                (_g101962101981_ _g101963101984_)))))
                      (let ()
                        (declare (not safe))
                        (_g101962101981_ _g101963101984_))))))
          (declare (not safe))
          (_g101961102043_ _stx101960_))))
    (define gxc#xform-wrap-source
      (lambda (_stx101956_ _src-stx101957_)
        (let ((__tmp103129
               (let () (declare (not safe)) (gx#stx-source _src-stx101957_))))
          (declare (not safe))
          (gx#stx-wrap-source _stx101956_ __tmp103129))))
    (define gxc#xform-begin%
      (lambda (_self101911_ _stx101912_)
        (let* ((_g101914101924_
                (lambda (_g101915101921_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101915101921_))))
               (_g101913101953_
                (lambda (_g101915101927_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101915101927_))
                      (let ((_e101919101929_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101915101927_))))
                        (let ((_hd101918101932_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101919101929_)))
                              (_tl101917101934_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101919101929_))))
                          ((lambda (_L101937_)
                             (let* ((_forms101951_
                                     (map (lambda (_g101946101948_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self101911_
                                               _g101946101948_)))
                                          _L101937_))
                                    (__tmp103130
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#begin _forms101951_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp103130
                                _stx101912_)))
                           _tl101917101934_)))
                      (let ()
                        (declare (not safe))
                        (_g101914101924_ _g101915101927_))))))
          (declare (not safe))
          (_g101913101953_ _stx101912_))))
    (define gxc#xform-begin-syntax%
      (lambda (_self101865_ _stx101866_)
        (let* ((_g101868101878_
                (lambda (_g101869101875_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101869101875_))))
               (_g101867101908_
                (lambda (_g101869101881_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101869101881_))
                      (let ((_e101873101883_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101869101881_))))
                        (let ((_hd101872101886_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101873101883_)))
                              (_tl101871101888_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101873101883_))))
                          ((lambda (_L101891_)
                             (let ((__tmp103133
                                    (lambda ()
                                      (let* ((_forms101906_
                                              (map (lambda (_g101901101903_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _self101865_
                                                        _g101901101903_)))
                                                   _L101891_))
                                             (__tmp103134
                                              (let ()
                                                (declare (not safe))
                                                (cons '%#begin-syntax
                                                      _forms101906_))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp103134
                                         _stx101866_))))
                                   (__tmp103131
                                    (let ((__tmp103132
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp103132 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp103133
                                gx#current-expander-phi
                                __tmp103131)))
                           _tl101871101888_)))
                      (let ()
                        (declare (not safe))
                        (_g101868101878_ _g101869101881_))))))
          (declare (not safe))
          (_g101867101908_ _stx101866_))))
    (define gxc#xform-module%
      (lambda (_self101802_ _stx101803_)
        (let* ((_g101805101819_
                (lambda (_g101806101816_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101806101816_))))
               (_g101804101862_
                (lambda (_g101806101822_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101806101822_))
                      (let ((_e101811101824_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101806101822_))))
                        (let ((_hd101810101827_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101811101824_)))
                              (_tl101809101829_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101811101824_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101809101829_))
                              (let ((_e101814101832_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101809101829_))))
                                (let ((_hd101813101835_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101814101832_)))
                                      (_tl101812101837_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101814101832_))))
                                  ((lambda (_L101840_ _L101841_)
                                     (let* ((_ctx101854_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L101841_)))
                                            (_code101856_
                                             (##structure-ref
                                              _ctx101854_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_code101859_
                                             (let ((__tmp103135
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _self101802_
                                                         _code101856_)))))
                                               (declare (not safe))
                                               (call-with-parameters
                                                __tmp103135
                                                gx#current-expander-context
                                                _ctx101854_))))
                                       (##structure-set!
                                        _ctx101854_
                                        _code101859_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp103136
                                              (let ((__tmp103137
                                                     (let ((__tmp103138
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _code101859_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L101841_ __tmp103138))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#module __tmp103137))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp103136
                                          _stx101803_))))
                                   _tl101812101837_
                                   _hd101813101835_)))
                              (let ()
                                (declare (not safe))
                                (_g101805101819_ _g101806101822_)))))
                      (let ()
                        (declare (not safe))
                        (_g101805101819_ _g101806101822_))))))
          (declare (not safe))
          (_g101804101862_ _stx101803_))))
    (define gxc#xform-define-values%
      (lambda (_self101732_ _stx101733_)
        (let* ((_g101735101752_
                (lambda (_g101736101749_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101736101749_))))
               (_g101734101799_
                (lambda (_g101736101755_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101736101755_))
                      (let ((_e101741101757_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101736101755_))))
                        (let ((_hd101740101760_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101741101757_)))
                              (_tl101739101762_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101741101757_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101739101762_))
                              (let ((_e101744101765_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101739101762_))))
                                (let ((_hd101743101768_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101744101765_)))
                                      (_tl101742101770_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101744101765_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl101742101770_))
                                      (let ((_e101747101773_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl101742101770_))))
                                        (let ((_hd101746101776_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e101747101773_)))
                                              (_tl101745101778_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e101747101773_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl101745101778_))
                                              ((lambda (_L101781_ _L101782_)
                                                 (let* ((_expr101797_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self101732_
                                                            _L101781_)))
                                                        (__tmp103139
                                                         (let ((__tmp103140
                                                                (let ((__tmp103141
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _expr101797_ '()))))
                          (declare (not safe))
                          (cons _L101782_ __tmp103141))))
                   (declare (not safe))
                   (cons '%#define-values __tmp103140))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp103139
                                                    _stx101733_)))
                                               _hd101746101776_
                                               _hd101743101768_)
                                              (let ()
                                                (declare (not safe))
                                                (_g101735101752_
                                                 _g101736101755_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g101735101752_ _g101736101755_)))))
                              (let ()
                                (declare (not safe))
                                (_g101735101752_ _g101736101755_)))))
                      (let ()
                        (declare (not safe))
                        (_g101735101752_ _g101736101755_))))))
          (declare (not safe))
          (_g101734101799_ _stx101733_))))
    (define gxc#xform-define-syntax%
      (lambda (_self101661_ _stx101662_)
        (let* ((_g101664101681_
                (lambda (_g101665101678_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101665101678_))))
               (_g101663101729_
                (lambda (_g101665101684_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101665101684_))
                      (let ((_e101670101686_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101665101684_))))
                        (let ((_hd101669101689_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101670101686_)))
                              (_tl101668101691_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101670101686_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101668101691_))
                              (let ((_e101673101694_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101668101691_))))
                                (let ((_hd101672101697_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101673101694_)))
                                      (_tl101671101699_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101673101694_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl101671101699_))
                                      (let ((_e101676101702_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl101671101699_))))
                                        (let ((_hd101675101705_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e101676101702_)))
                                              (_tl101674101707_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e101676101702_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl101674101707_))
                                              ((lambda (_L101710_ _L101711_)
                                                 (let ((__tmp103144
                                                        (lambda ()
                                                          (let* ((_expr101727_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__1 _self101661_ _L101710_)))
                         (__tmp103145
                          (let ((__tmp103146
                                 (let ((__tmp103147
                                        (let ()
                                          (declare (not safe))
                                          (cons _expr101727_ '()))))
                                   (declare (not safe))
                                   (cons _L101711_ __tmp103147))))
                            (declare (not safe))
                            (cons '%#define-syntax __tmp103146))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp103145 _stx101662_))))
               (__tmp103142
                (let ((__tmp103143 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp103143 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp103144
                                                    gx#current-expander-phi
                                                    __tmp103142)))
                                               _hd101675101705_
                                               _hd101672101697_)
                                              (let ()
                                                (declare (not safe))
                                                (_g101664101681_
                                                 _g101665101684_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g101664101681_ _g101665101684_)))))
                              (let ()
                                (declare (not safe))
                                (_g101664101681_ _g101665101684_)))))
                      (let ()
                        (declare (not safe))
                        (_g101664101681_ _g101665101684_))))))
          (declare (not safe))
          (_g101663101729_ _stx101662_))))
    (define gxc#xform-begin-annotation%
      (lambda (_self101591_ _stx101592_)
        (let* ((_g101594101611_
                (lambda (_g101595101608_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101595101608_))))
               (_g101593101658_
                (lambda (_g101595101614_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101595101614_))
                      (let ((_e101600101616_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101595101614_))))
                        (let ((_hd101599101619_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101600101616_)))
                              (_tl101598101621_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101600101616_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101598101621_))
                              (let ((_e101603101624_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101598101621_))))
                                (let ((_hd101602101627_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101603101624_)))
                                      (_tl101601101629_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101603101624_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl101601101629_))
                                      (let ((_e101606101632_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl101601101629_))))
                                        (let ((_hd101605101635_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e101606101632_)))
                                              (_tl101604101637_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e101606101632_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl101604101637_))
                                              ((lambda (_L101640_ _L101641_)
                                                 (let* ((_expr101656_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self101591_
                                                            _L101640_)))
                                                        (__tmp103148
                                                         (let ((__tmp103149
                                                                (let ((__tmp103150
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _expr101656_ '()))))
                          (declare (not safe))
                          (cons _L101641_ __tmp103150))))
                   (declare (not safe))
                   (cons '%#begin-annotation __tmp103149))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp103148
                                                    _stx101592_)))
                                               _hd101605101635_
                                               _hd101602101627_)
                                              (let ()
                                                (declare (not safe))
                                                (_g101594101611_
                                                 _g101595101614_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g101594101611_ _g101595101614_)))))
                              (let ()
                                (declare (not safe))
                                (_g101594101611_ _g101595101614_)))))
                      (let ()
                        (declare (not safe))
                        (_g101594101611_ _g101595101614_))))))
          (declare (not safe))
          (_g101593101658_ _stx101592_))))
    (define gxc#xform-lambda%
      (lambda (_self101530_ _stx101531_)
        (let* ((_g101533101547_
                (lambda (_g101534101544_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101534101544_))))
               (_g101532101588_
                (lambda (_g101534101550_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101534101550_))
                      (let ((_e101539101552_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101534101550_))))
                        (let ((_hd101538101555_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101539101552_)))
                              (_tl101537101557_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101539101552_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101537101557_))
                              (let ((_e101542101560_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101537101557_))))
                                (let ((_hd101541101563_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101542101560_)))
                                      (_tl101540101565_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101542101560_))))
                                  ((lambda (_L101568_ _L101569_)
                                     (let* ((_body101586_
                                             (map (lambda (_g101581101583_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _self101530_
                                                       _g101581101583_)))
                                                  _L101568_))
                                            (__tmp103151
                                             (let ((__tmp103152
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L101569_
                                                            _body101586_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp103152))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp103151
                                        _stx101531_)))
                                   _tl101540101565_
                                   _hd101541101563_)))
                              (let ()
                                (declare (not safe))
                                (_g101533101547_ _g101534101550_)))))
                      (let ()
                        (declare (not safe))
                        (_g101533101547_ _g101534101550_))))))
          (declare (not safe))
          (_g101532101588_ _stx101531_))))
    (define gxc#xform-case-lambda%
      (lambda (_self101439_ _stx101440_)
        (letrec ((_clause-e101442_
                  (lambda (_clause101483_)
                    (let* ((_g101485101496_
                            (lambda (_g101486101493_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g101486101493_))))
                           (_g101484101527_
                            (lambda (_g101486101499_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g101486101499_))
                                  (let ((_e101491101501_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g101486101499_))))
                                    (let ((_hd101490101504_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e101491101501_)))
                                          (_tl101489101506_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e101491101501_))))
                                      ((lambda (_L101509_ _L101510_)
                                         (let ((_body101525_
                                                (map (lambda (_g101520101522_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _self101439_
                                                          _g101520101522_)))
                                                     _L101509_)))
                                           (declare (not safe))
                                           (cons _L101510_ _body101525_)))
                                       _tl101489101506_
                                       _hd101490101504_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g101485101496_ _g101486101499_))))))
                      (declare (not safe))
                      (_g101484101527_ _clause101483_)))))
          (let* ((_g101444101454_
                  (lambda (_g101445101451_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g101445101451_))))
                 (_g101443101480_
                  (lambda (_g101445101457_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g101445101457_))
                        (let ((_e101449101459_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g101445101457_))))
                          (let ((_hd101448101462_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e101449101459_)))
                                (_tl101447101464_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e101449101459_))))
                            ((lambda (_L101467_)
                               (let* ((_clauses101478_
                                       (map _clause-e101442_ _L101467_))
                                      (__tmp103153
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses101478_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp103153
                                  _stx101440_)))
                             _tl101447101464_)))
                        (let ()
                          (declare (not safe))
                          (_g101444101454_ _g101445101457_))))))
            (declare (not safe))
            (_g101443101480_ _stx101440_)))))
    (define gxc#xform-let-values%
      (lambda (_self101225_ _stx101226_)
        (let* ((_g101228101261_
                (lambda (_g101229101258_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101229101258_))))
               (_g101227101436_
                (lambda (_g101229101264_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101229101264_))
                      (let ((_e101236101266_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101229101264_))))
                        (let ((_hd101235101269_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101236101266_)))
                              (_tl101234101271_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101236101266_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101234101271_))
                              (let ((_e101239101274_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101234101271_))))
                                (let ((_hd101238101277_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101239101274_)))
                                      (_tl101237101279_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101239101274_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd101238101277_))
                                      (let ((_g103154_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd101238101277_
                                                '0))))
                                        (begin
                                          (let ((_g103155_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g103154_)
                                                       (##vector-length
                                                        _g103154_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g103155_ 2)))
                                                (error "Context expects 2 values"
                                                       _g103155_)))
                                          (let ((_target101240101282_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g103154_ 0)))
                                                (_tl101242101284_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g103154_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl101242101284_))
                                                (letrec ((_loop101243101287_
                                                          (lambda (_hd101241101290_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr101247101292_
                           _hd101248101294_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd101241101290_))
                        (let ((_e101244101297_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd101241101290_))))
                          (let ((_lp-hd101245101300_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e101244101297_)))
                                (_lp-tl101246101302_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e101244101297_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd101245101300_))
                                (let ((_e101253101305_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd101245101300_))))
                                  (let ((_hd101252101308_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e101253101305_)))
                                        (_tl101251101310_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e101253101305_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl101251101310_))
                                        (let ((_e101256101313_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl101251101310_))))
                                          (let ((_hd101255101316_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e101256101313_)))
                                                (_tl101254101318_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e101256101313_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl101254101318_))
                                                (let ((__tmp103168
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd101255101316_
                                                               _expr101247101292_)))
                                                      (__tmp103167
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd101252101308_
                                                               _hd101248101294_))))
                                                  (declare (not safe))
                                                  (_loop101243101287_
                                                   _lp-tl101246101302_
                                                   __tmp103168
                                                   __tmp103167))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g101228101261_
                                                   _g101229101264_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g101228101261_ _g101229101264_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g101228101261_ _g101229101264_)))))
                        (let ((_expr101249101321_ (reverse _expr101247101292_))
                              (_hd101250101323_ (reverse _hd101248101294_)))
                          ((lambda (_L101326_ _L101327_ _L101328_ _L101329_)
                             (let* ((_g101348101364_
                                     (lambda (_g101349101361_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g101349101361_))))
                                    (_g101347101422_
                                     (lambda (_g101349101367_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _g101349101367_))
                                           (let ((_g103156_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _g101349101367_
                                                     '0))))
                                             (begin
                                               (let ((_g103157_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g103156_)
                                                            (##vector-length
                                                             _g103156_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g103157_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g103157_)))
                                               (let ((_target101351101369_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g103156_
                                                         0)))
                                                     (_tl101353101371_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g103156_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl101353101371_))
                                                     (letrec ((_loop101354101374_
                                                               (lambda (_hd101352101377_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr101358101379_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _hd101352101377_))
                             (let ((_e101355101382_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _hd101352101377_))))
                               (let ((_lp-hd101356101385_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e101355101382_)))
                                     (_lp-tl101357101387_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e101355101382_))))
                                 (let ((__tmp103164
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd101356101385_
                                                _expr101358101379_))))
                                   (declare (not safe))
                                   (_loop101354101374_
                                    _lp-tl101357101387_
                                    __tmp103164))))
                             (let ((_expr101359101390_
                                    (reverse _expr101358101379_)))
                               ((lambda (_L101393_)
                                  (let ()
                                    (let* ((_body101410_
                                            (map (lambda (_g101405101407_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self101225_
                                                      _g101405101407_)))
                                                 _L101326_))
                                           (__tmp103158
                                            (let ((__tmp103159
                                                   (let ((__tmp103160
                                                          (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _L101393_
                                                               _L101328_))
                                                            (let ((__tmp103161
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g101411101415_
                                    _g101412101417_
                                    _g101413101419_)
                             (let ((__tmp103162
                                    (let ((__tmp103163
                                           (let ()
                                             (declare (not safe))
                                             (cons _g101411101415_ '()))))
                                      (declare (not safe))
                                      (cons _g101412101417_ __tmp103163))))
                               (declare (not safe))
                               (cons __tmp103162 _g101413101419_)))))
                      (declare (not safe))
                      (foldr2 __tmp103161 '() _L101393_ _L101328_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp103160
                                                           _body101410_))))
                                              (declare (not safe))
                                              (cons _L101329_ __tmp103159))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp103158
                                       _stx101226_))))
                                _expr101359101390_))))))
               (let ()
                 (declare (not safe))
                 (_loop101354101374_ _target101351101369_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g101348101364_
                                                        _g101349101367_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_g101348101364_
                                              _g101349101367_)))))
                                    (__tmp103165
                                     (map (lambda (_g101424101426_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self101225_
                                               _g101424101426_)))
                                          (let ((__tmp103166
                                                 (lambda (_g101428101431_
                                                          _g101429101433_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g101428101431_
                                                           _g101429101433_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp103166
                                                    '()
                                                    _L101327_)))))
                               (declare (not safe))
                               (_g101347101422_ __tmp103165)))
                           _tl101237101279_
                           _expr101249101321_
                           _hd101250101323_
                           _hd101235101269_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop101243101287_
                                                     _target101240101282_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g101228101261_
                                                   _g101229101264_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g101228101261_ _g101229101264_)))))
                              (let ()
                                (declare (not safe))
                                (_g101228101261_ _g101229101264_)))))
                      (let ()
                        (declare (not safe))
                        (_g101228101261_ _g101229101264_))))))
          (declare (not safe))
          (_g101227101436_ _stx101226_))))
    (define gxc#xform-operands
      (lambda (_self101177_ _stx101178_)
        (let* ((_g101180101191_
                (lambda (_g101181101188_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101181101188_))))
               (_g101179101222_
                (lambda (_g101181101194_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101181101194_))
                      (let ((_e101186101196_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101181101194_))))
                        (let ((_hd101185101199_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101186101196_)))
                              (_tl101184101201_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101186101196_))))
                          ((lambda (_L101204_ _L101205_)
                             (let* ((_rands101220_
                                     (map (lambda (_g101215101217_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self101177_
                                               _g101215101217_)))
                                          _L101204_))
                                    (__tmp103169
                                     (let ()
                                       (declare (not safe))
                                       (cons _L101205_ _rands101220_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp103169
                                _stx101178_)))
                           _tl101184101201_
                           _hd101185101199_)))
                      (let ()
                        (declare (not safe))
                        (_g101180101191_ _g101181101194_))))))
          (declare (not safe))
          (_g101179101222_ _stx101178_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_self101107_ _stx101108_)
        (let* ((_g101110101127_
                (lambda (_g101111101124_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101111101124_))))
               (_g101109101174_
                (lambda (_g101111101130_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101111101130_))
                      (let ((_e101116101132_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101111101130_))))
                        (let ((_hd101115101135_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101116101132_)))
                              (_tl101114101137_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101116101132_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101114101137_))
                              (let ((_e101119101140_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101114101137_))))
                                (let ((_hd101118101143_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101119101140_)))
                                      (_tl101117101145_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101119101140_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl101117101145_))
                                      (let ((_e101122101148_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl101117101145_))))
                                        (let ((_hd101121101151_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e101122101148_)))
                                              (_tl101120101153_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e101122101148_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl101120101153_))
                                              ((lambda (_L101156_ _L101157_)
                                                 (let* ((_expr101172_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self101107_
                                                            _L101156_)))
                                                        (__tmp103170
                                                         (let ((__tmp103171
                                                                (let ((__tmp103172
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _expr101172_ '()))))
                          (declare (not safe))
                          (cons _L101157_ __tmp103172))))
                   (declare (not safe))
                   (cons '%#set! __tmp103171))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp103170
                                                    _stx101108_)))
                                               _hd101121101151_
                                               _hd101118101143_)
                                              (let ()
                                                (declare (not safe))
                                                (_g101110101127_
                                                 _g101111101130_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g101110101127_ _g101111101130_)))))
                              (let ()
                                (declare (not safe))
                                (_g101110101127_ _g101111101130_)))))
                      (let ()
                        (declare (not safe))
                        (_g101110101127_ _g101111101130_))))))
          (declare (not safe))
          (_g101109101174_ _stx101108_))))))
