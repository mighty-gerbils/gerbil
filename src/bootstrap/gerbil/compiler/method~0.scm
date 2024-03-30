(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1711108655)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_stx102903_)
        (let* ((_self102905_ (gxc#current-compile-method))
               (_$e102907_
                (let ((__tmp103076
                       (let ()
                         (declare (not safe))
                         (gxc#stx-car-e _stx102903_))))
                  (declare (not safe))
                  (method-ref _self102905_ __tmp103076))))
          (if _$e102907_
              ((lambda (_method102910_)
                 (declare (not safe))
                 (_method102910_ _self102905_ _stx102903_))
               _$e102907_)
              (let ((__tmp103078
                     (let () (declare (not safe)) (gxc#stx-car-e _stx102903_)))
                    (__tmp103077
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _stx102903_))))
                (declare (not safe))
                (error '"missing method"
                       _self102905_
                       __tmp103078
                       __tmp103077))))))
    (define gxc#compile-e__1
      (lambda (_self102913_ _stx102914_)
        (let ((_$e102916_
               (let ((__tmp103079
                      (let ()
                        (declare (not safe))
                        (gxc#stx-car-e _stx102914_))))
                 (declare (not safe))
                 (method-ref _self102913_ __tmp103079))))
          (if _$e102916_
              ((lambda (_method102919_)
                 (declare (not safe))
                 (_method102919_ _self102913_ _stx102914_))
               _$e102916_)
              (let ((__tmp103081
                     (let () (declare (not safe)) (gxc#stx-car-e _stx102914_)))
                    (__tmp103080
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _stx102914_))))
                (declare (not safe))
                (error '"missing method"
                       _self102913_
                       __tmp103081
                       __tmp103080))))))
    (define gxc#compile-e
      (lambda _g103083_
        (let ((_g103082_ (let () (declare (not safe)) (##length _g103083_))))
          (cond ((let () (declare (not safe)) (##fx= _g103082_ 1))
                 (apply (lambda (_stx102903_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _stx102903_)))
                        _g103083_))
                ((let () (declare (not safe)) (##fx= _g103082_ 2))
                 (apply (lambda (_self102913_ _stx102914_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__1 _self102913_ _stx102914_)))
                        _g103083_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g103083_))))))
    (define gxc#stx-car-e
      (lambda (_stx102901_)
        (let ((__tmp103084
               (car (let () (declare (not safe)) (gx#stx-e _stx102901_)))))
          (declare (not safe))
          (gx#stx-e __tmp103084))))
    (define gxc#void-method (lambda (_self102898_ _stx102899_) '#!void))
    (define gxc#false-method (lambda (_self102895_ _stx102896_) '#f))
    (define gxc#true-method (lambda (_self102892_ _stx102893_) '#t))
    (define gxc#identity-method
      (lambda (_self102889_ _stx102890_) _stx102890_))
    (define gxc#::void-expression::t
      (let ((__tmp103085 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp103085
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _$args102886_
        (apply make-instance gxc#::void-expression::t _$args102886_)))
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
      (let ((__tmp103086 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp103086
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _$args102882_
        (apply make-instance gxc#::void-special-form::t _$args102882_)))
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
      (let ((__tmp103087
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (make-class-type 'gxc#::void::t '::void __tmp103087 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _$args102878_ (apply make-instance gxc#::void::t _$args102878_)))
    (define gxc#::void-bind-methods!
      (make-promise
       (lambda ()
         (force gxc#::void-special-form-bind-methods!)
         (force gxc#::void-expression-bind-methods!))))
    (define gxc#::false-expression::t
      (let ((__tmp103088 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp103088
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _$args102874_
        (apply make-instance gxc#::false-expression::t _$args102874_)))
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
      (let ((__tmp103089 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp103089
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _$args102870_
        (apply make-instance gxc#::false-special-form::t _$args102870_)))
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
      (let ((__tmp103090
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (make-class-type 'gxc#::false::t '::false __tmp103090 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _$args102866_
        (apply make-instance gxc#::false::t _$args102866_)))
    (define gxc#::false-bind-methods!
      (make-promise
       (lambda ()
         (force gxc#::false-special-form-bind-methods!)
         (force gxc#::false-expression-bind-methods!))))
    (define gxc#::identity-expression::t
      (let ((__tmp103091 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp103091
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _$args102862_
        (apply make-instance gxc#::identity-expression::t _$args102862_)))
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
      (let ((__tmp103092 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp103092
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _$args102858_
        (apply make-instance gxc#::identity-special-form::t _$args102858_)))
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
      (let ((__tmp103093
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::identity::t
         '::identity
         __tmp103093
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _$args102854_
        (apply make-instance gxc#::identity::t _$args102854_)))
    (define gxc#::identity-bind-methods!
      (make-promise
       (lambda ()
         (force gxc#::identity-special-form-bind-methods!)
         (force gxc#::identity-expression-bind-methods!))))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp103094 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp103094
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _$args102850_
        (apply make-instance gxc#::basic-xform-expression::t _$args102850_)))
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
      (let ((__tmp103095
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp103095
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _$args102846_
        (apply make-instance gxc#::basic-xform::t _$args102846_)))
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
      (lambda (_self102802_ _stx102803_)
        (let* ((_g102805102815_
                (lambda (_g102806102812_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102806102812_))))
               (_g102804102842_
                (lambda (_g102806102818_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102806102818_))
                      (let ((_e102810102820_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102806102818_))))
                        (let ((_hd102809102823_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102810102820_)))
                              (_tl102808102825_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102810102820_))))
                          ((lambda (_L102828_)
                             (for-each
                              (lambda (_g102837102839_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1
                                   _self102802_
                                   _g102837102839_)))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _L102828_))))
                           _tl102808102825_)))
                      (let ()
                        (declare (not safe))
                        (_g102805102815_ _g102806102818_))))))
          (declare (not safe))
          (_g102804102842_ _stx102803_))))
    (define gxc#apply-last-begin%
      (lambda (_self102763_ _stx102764_)
        (let* ((_g102766102776_
                (lambda (_g102767102773_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102767102773_))))
               (_g102765102799_
                (lambda (_g102767102779_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102767102779_))
                      (let ((_e102771102781_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102767102779_))))
                        (let ((_hd102770102784_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102771102781_)))
                              (_tl102769102786_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102771102781_))))
                          ((lambda (_L102789_)
                             (let ((__tmp103096 (last _L102789_)))
                               (declare (not safe))
                               (gxc#compile-e__1 _self102763_ __tmp103096)))
                           _tl102769102786_)))
                      (let ()
                        (declare (not safe))
                        (_g102766102776_ _g102767102779_))))))
          (declare (not safe))
          (_g102765102799_ _stx102764_))))
    (define gxc#apply-begin-syntax%
      (lambda (_self102759_ _stx102760_)
        (let ((__tmp103099
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#apply-begin% _self102759_ _stx102760_))))
              (__tmp103097
               (let ((__tmp103098 (gx#current-expander-phi)))
                 (declare (not safe))
                 (fx+ __tmp103098 '1))))
          (declare (not safe))
          (call-with-parameters
           __tmp103099
           gx#current-expander-phi
           __tmp103097))))
    (define gxc#apply-module%
      (lambda (_self102698_ _stx102699_)
        (let* ((_g102701102715_
                (lambda (_g102702102712_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102702102712_))))
               (_g102700102756_
                (lambda (_g102702102718_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102702102718_))
                      (let ((_e102707102720_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102702102718_))))
                        (let ((_hd102706102723_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102707102720_)))
                              (_tl102705102725_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102707102720_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102705102725_))
                              (let ((_e102710102728_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102705102725_))))
                                (let ((_hd102709102731_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102710102728_)))
                                      (_tl102708102733_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102710102728_))))
                                  ((lambda (_L102736_ _L102737_)
                                     (let* ((_ctx102750_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L102737_)))
                                            (_ctx-stx102752_
                                             (##structure-ref
                                              _ctx102750_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp103100
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self102698_
                                                   _ctx-stx102752_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp103100
                                          gx#current-expander-context
                                          _ctx102750_))))
                                   _tl102708102733_
                                   _hd102709102731_)))
                              (let ()
                                (declare (not safe))
                                (_g102701102715_ _g102702102718_)))))
                      (let ()
                        (declare (not safe))
                        (_g102701102715_ _g102702102718_))))))
          (declare (not safe))
          (_g102700102756_ _stx102699_))))
    (define gxc#apply-begin-annotation%
      (lambda (_self102630_ _stx102631_)
        (let* ((_g102633102650_
                (lambda (_g102634102647_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102634102647_))))
               (_g102632102695_
                (lambda (_g102634102653_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102634102653_))
                      (let ((_e102639102655_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102634102653_))))
                        (let ((_hd102638102658_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102639102655_)))
                              (_tl102637102660_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102639102655_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102637102660_))
                              (let ((_e102642102663_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102637102660_))))
                                (let ((_hd102641102666_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102642102663_)))
                                      (_tl102640102668_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102642102663_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl102640102668_))
                                      (let ((_e102645102671_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl102640102668_))))
                                        (let ((_hd102644102674_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e102645102671_)))
                                              (_tl102643102676_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e102645102671_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl102643102676_))
                                              ((lambda (_L102679_ _L102680_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self102630_
                                                    _L102679_)))
                                               _hd102644102674_
                                               _hd102641102666_)
                                              (let ()
                                                (declare (not safe))
                                                (_g102633102650_
                                                 _g102634102653_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g102633102650_ _g102634102653_)))))
                              (let ()
                                (declare (not safe))
                                (_g102633102650_ _g102634102653_)))))
                      (let ()
                        (declare (not safe))
                        (_g102633102650_ _g102634102653_))))))
          (declare (not safe))
          (_g102632102695_ _stx102631_))))
    (define gxc#apply-define-values%
      (lambda (_self102562_ _stx102563_)
        (let* ((_g102565102582_
                (lambda (_g102566102579_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102566102579_))))
               (_g102564102627_
                (lambda (_g102566102585_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102566102585_))
                      (let ((_e102571102587_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102566102585_))))
                        (let ((_hd102570102590_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102571102587_)))
                              (_tl102569102592_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102571102587_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102569102592_))
                              (let ((_e102574102595_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102569102592_))))
                                (let ((_hd102573102598_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102574102595_)))
                                      (_tl102572102600_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102574102595_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl102572102600_))
                                      (let ((_e102577102603_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl102572102600_))))
                                        (let ((_hd102576102606_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e102577102603_)))
                                              (_tl102575102608_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e102577102603_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl102575102608_))
                                              ((lambda (_L102611_ _L102612_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self102562_
                                                    _L102611_)))
                                               _hd102576102606_
                                               _hd102573102598_)
                                              (let ()
                                                (declare (not safe))
                                                (_g102565102582_
                                                 _g102566102585_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g102565102582_ _g102566102585_)))))
                              (let ()
                                (declare (not safe))
                                (_g102565102582_ _g102566102585_)))))
                      (let ()
                        (declare (not safe))
                        (_g102565102582_ _g102566102585_))))))
          (declare (not safe))
          (_g102564102627_ _stx102563_))))
    (define gxc#apply-define-syntax%
      (lambda (_self102493_ _stx102494_)
        (let* ((_g102496102513_
                (lambda (_g102497102510_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102497102510_))))
               (_g102495102559_
                (lambda (_g102497102516_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102497102516_))
                      (let ((_e102502102518_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102497102516_))))
                        (let ((_hd102501102521_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102502102518_)))
                              (_tl102500102523_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102502102518_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102500102523_))
                              (let ((_e102505102526_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102500102523_))))
                                (let ((_hd102504102529_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102505102526_)))
                                      (_tl102503102531_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102505102526_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl102503102531_))
                                      (let ((_e102508102534_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl102503102531_))))
                                        (let ((_hd102507102537_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e102508102534_)))
                                              (_tl102506102539_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e102508102534_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl102506102539_))
                                              ((lambda (_L102542_ _L102543_)
                                                 (let ((__tmp103103
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _self102493_
                                                             _L102542_))))
                                                       (__tmp103101
                                                        (let ((__tmp103102
                                                               (gx#current-expander-phi)))
                                                          (declare (not safe))
                                                          (fx+ __tmp103102
                                                               '1))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp103103
                                                    gx#current-expander-phi
                                                    __tmp103101)))
                                               _hd102507102537_
                                               _hd102504102529_)
                                              (let ()
                                                (declare (not safe))
                                                (_g102496102513_
                                                 _g102497102516_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g102496102513_ _g102497102516_)))))
                              (let ()
                                (declare (not safe))
                                (_g102496102513_ _g102497102516_)))))
                      (let ()
                        (declare (not safe))
                        (_g102496102513_ _g102497102516_))))))
          (declare (not safe))
          (_g102495102559_ _stx102494_))))
    (define gxc#apply-body-lambda%
      (lambda (_self102425_ _stx102426_)
        (let* ((_g102428102445_
                (lambda (_g102429102442_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102429102442_))))
               (_g102427102490_
                (lambda (_g102429102448_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102429102448_))
                      (let ((_e102434102450_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102429102448_))))
                        (let ((_hd102433102453_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102434102450_)))
                              (_tl102432102455_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102434102450_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102432102455_))
                              (let ((_e102437102458_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102432102455_))))
                                (let ((_hd102436102461_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102437102458_)))
                                      (_tl102435102463_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102437102458_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl102435102463_))
                                      (let ((_e102440102466_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl102435102463_))))
                                        (let ((_hd102439102469_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e102440102466_)))
                                              (_tl102438102471_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e102440102466_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl102438102471_))
                                              ((lambda (_L102474_ _L102475_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self102425_
                                                    _L102474_)))
                                               _hd102439102469_
                                               _hd102436102461_)
                                              (let ()
                                                (declare (not safe))
                                                (_g102428102445_
                                                 _g102429102448_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g102428102445_ _g102429102448_)))))
                              (let ()
                                (declare (not safe))
                                (_g102428102445_ _g102429102448_)))))
                      (let ()
                        (declare (not safe))
                        (_g102428102445_ _g102429102448_))))))
          (declare (not safe))
          (_g102427102490_ _stx102426_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_self102307_ _stx102308_)
        (let* ((_g102310102338_
                (lambda (_g102311102335_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102311102335_))))
               (_g102309102422_
                (lambda (_g102311102341_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102311102341_))
                      (let ((_e102316102343_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102311102341_))))
                        (let ((_hd102315102346_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102316102343_)))
                              (_tl102314102348_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102316102343_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl102314102348_))
                              (let ((_g103104_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl102314102348_
                                        '0))))
                                (begin
                                  (let ((_g103105_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g103104_)
                                               (##vector-length _g103104_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g103105_ 2)))
                                        (error "Context expects 2 values"
                                               _g103105_)))
                                  (let ((_target102317102351_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g103104_ 0)))
                                        (_tl102319102353_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g103104_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl102319102353_))
                                        (letrec ((_loop102320102356_
                                                  (lambda (_hd102318102359_
                                                           _body102324102361_
                                                           _hd102325102363_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd102318102359_))
                                                        (let ((_e102321102366_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd102318102359_))))
                  (let ((_lp-hd102322102369_
                         (let () (declare (not safe)) (##car _e102321102366_)))
                        (_lp-tl102323102371_
                         (let ()
                           (declare (not safe))
                           (##cdr _e102321102366_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd102322102369_))
                        (let ((_e102330102374_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd102322102369_))))
                          (let ((_hd102329102377_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e102330102374_)))
                                (_tl102328102379_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e102330102374_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl102328102379_))
                                (let ((_e102333102382_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl102328102379_))))
                                  (let ((_hd102332102385_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e102333102382_)))
                                        (_tl102331102387_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e102333102382_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl102331102387_))
                                        (let ((__tmp103108
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd102332102385_
                                                       _body102324102361_)))
                                              (__tmp103107
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd102329102377_
                                                       _hd102325102363_))))
                                          (declare (not safe))
                                          (_loop102320102356_
                                           _lp-tl102323102371_
                                           __tmp103108
                                           __tmp103107))
                                        (let ()
                                          (declare (not safe))
                                          (_g102310102338_ _g102311102341_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g102310102338_ _g102311102341_)))))
                        (let ()
                          (declare (not safe))
                          (_g102310102338_ _g102311102341_)))))
                (let ((_body102326102390_ (reverse _body102324102361_))
                      (_hd102327102392_ (reverse _hd102325102363_)))
                  ((lambda (_L102395_ _L102396_)
                     (for-each
                      (lambda (_g102410102412_)
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _self102307_ _g102410102412_)))
                      (let ((__tmp103106
                             (lambda (_g102414102417_ _g102415102419_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g102414102417_ _g102415102419_)))))
                        (declare (not safe))
                        (foldr1 __tmp103106 '() _L102395_))))
                   _body102326102390_
                   _hd102327102392_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop102320102356_
                                             _target102317102351_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g102310102338_
                                           _g102311102341_))))))
                              (let ()
                                (declare (not safe))
                                (_g102310102338_ _g102311102341_)))))
                      (let ()
                        (declare (not safe))
                        (_g102310102338_ _g102311102341_))))))
          (declare (not safe))
          (_g102309102422_ _stx102308_))))
    (define gxc#apply-body-let-values%
      (lambda (_self102160_ _stx102161_)
        (let* ((_g102163102198_
                (lambda (_g102164102195_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102164102195_))))
               (_g102162102304_
                (lambda (_g102164102201_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102164102201_))
                      (let ((_e102170102203_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102164102201_))))
                        (let ((_hd102169102206_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102170102203_)))
                              (_tl102168102208_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102170102203_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102168102208_))
                              (let ((_e102173102211_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102168102208_))))
                                (let ((_hd102172102214_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102173102211_)))
                                      (_tl102171102216_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102173102211_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd102172102214_))
                                      (let ((_g103109_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd102172102214_
                                                '0))))
                                        (begin
                                          (let ((_g103110_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g103109_)
                                                       (##vector-length
                                                        _g103109_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g103110_ 2)))
                                                (error "Context expects 2 values"
                                                       _g103110_)))
                                          (let ((_target102174102219_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g103109_ 0)))
                                                (_tl102176102221_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g103109_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl102176102221_))
                                                (letrec ((_loop102177102224_
                                                          (lambda (_hd102175102227_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr102181102229_
                           _hd102182102231_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd102175102227_))
                        (let ((_e102178102234_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd102175102227_))))
                          (let ((_lp-hd102179102237_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e102178102234_)))
                                (_lp-tl102180102239_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e102178102234_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd102179102237_))
                                (let ((_e102187102242_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd102179102237_))))
                                  (let ((_hd102186102245_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e102187102242_)))
                                        (_tl102185102247_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e102187102242_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl102185102247_))
                                        (let ((_e102190102250_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl102185102247_))))
                                          (let ((_hd102189102253_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e102190102250_)))
                                                (_tl102188102255_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e102190102250_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl102188102255_))
                                                (let ((__tmp103114
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd102189102253_
                                                               _expr102181102229_)))
                                                      (__tmp103113
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd102186102245_
                                                               _hd102182102231_))))
                                                  (declare (not safe))
                                                  (_loop102177102224_
                                                   _lp-tl102180102239_
                                                   __tmp103114
                                                   __tmp103113))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g102163102198_
                                                   _g102164102201_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g102163102198_ _g102164102201_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g102163102198_ _g102164102201_)))))
                        (let ((_expr102183102258_ (reverse _expr102181102229_))
                              (_hd102184102260_ (reverse _hd102182102231_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102171102216_))
                              (let ((_e102193102263_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102171102216_))))
                                (let ((_hd102192102266_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102193102263_)))
                                      (_tl102191102268_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102193102263_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl102191102268_))
                                      ((lambda (_L102271_ _L102272_ _L102273_)
                                         (for-each
                                          (lambda (_g102292102294_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self102160_
                                               _g102292102294_)))
                                          (let ((__tmp103112
                                                 (lambda (_g102296102299_
                                                          _g102297102301_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g102296102299_
                                                           _g102297102301_))))
                                                (__tmp103111
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L102271_ '()))))
                                            (declare (not safe))
                                            (foldr1 __tmp103112
                                                    __tmp103111
                                                    _L102272_))))
                                       _hd102192102266_
                                       _expr102183102258_
                                       _hd102184102260_)
                                      (let ()
                                        (declare (not safe))
                                        (_g102163102198_ _g102164102201_)))))
                              (let ()
                                (declare (not safe))
                                (_g102163102198_ _g102164102201_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop102177102224_
                                                     _target102174102219_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g102163102198_
                                                   _g102164102201_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g102163102198_ _g102164102201_)))))
                              (let ()
                                (declare (not safe))
                                (_g102163102198_ _g102164102201_)))))
                      (let ()
                        (declare (not safe))
                        (_g102163102198_ _g102164102201_))))))
          (declare (not safe))
          (_g102162102304_ _stx102161_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_self102105_ _stx102106_)
        (let* ((_g102108102122_
                (lambda (_g102109102119_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102109102119_))))
               (_g102107102157_
                (lambda (_g102109102125_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102109102125_))
                      (let ((_e102114102127_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102109102125_))))
                        (let ((_hd102113102130_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102114102127_)))
                              (_tl102112102132_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102114102127_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102112102132_))
                              (let ((_e102117102135_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102112102132_))))
                                (let ((_hd102116102138_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102117102135_)))
                                      (_tl102115102140_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102117102135_))))
                                  ((lambda (_L102143_ _L102144_)
                                     (let ((__tmp103115 (last _L102143_)))
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _self102105_
                                        __tmp103115)))
                                   _tl102115102140_
                                   _hd102116102138_)))
                              (let ()
                                (declare (not safe))
                                (_g102108102122_ _g102109102125_)))))
                      (let ()
                        (declare (not safe))
                        (_g102108102122_ _g102109102125_))))))
          (declare (not safe))
          (_g102107102157_ _stx102106_))))
    (define gxc#apply-body-setq%
      (lambda (_self102037_ _stx102038_)
        (let* ((_g102040102057_
                (lambda (_g102041102054_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102041102054_))))
               (_g102039102102_
                (lambda (_g102041102060_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102041102060_))
                      (let ((_e102046102062_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102041102060_))))
                        (let ((_hd102045102065_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102046102062_)))
                              (_tl102044102067_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102046102062_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102044102067_))
                              (let ((_e102049102070_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102044102067_))))
                                (let ((_hd102048102073_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102049102070_)))
                                      (_tl102047102075_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102049102070_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl102047102075_))
                                      (let ((_e102052102078_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl102047102075_))))
                                        (let ((_hd102051102081_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e102052102078_)))
                                              (_tl102050102083_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e102052102078_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl102050102083_))
                                              ((lambda (_L102086_ _L102087_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self102037_
                                                    _L102086_)))
                                               _hd102051102081_
                                               _hd102048102073_)
                                              (let ()
                                                (declare (not safe))
                                                (_g102040102057_
                                                 _g102041102060_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g102040102057_ _g102041102060_)))))
                              (let ()
                                (declare (not safe))
                                (_g102040102057_ _g102041102060_)))))
                      (let ()
                        (declare (not safe))
                        (_g102040102057_ _g102041102060_))))))
          (declare (not safe))
          (_g102039102102_ _stx102038_))))
    (define gxc#apply-operands
      (lambda (_self101950_ _stx101951_)
        (let* ((_g101953101972_
                (lambda (_g101954101969_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101954101969_))))
               (_g101952102034_
                (lambda (_g101954101975_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101954101975_))
                      (let ((_e101958101977_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101954101975_))))
                        (let ((_hd101957101980_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101958101977_)))
                              (_tl101956101982_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101958101977_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl101956101982_))
                              (let ((_g103116_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl101956101982_
                                        '0))))
                                (begin
                                  (let ((_g103117_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g103116_)
                                               (##vector-length _g103116_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g103117_ 2)))
                                        (error "Context expects 2 values"
                                               _g103117_)))
                                  (let ((_target101959101985_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g103116_ 0)))
                                        (_tl101961101987_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g103116_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl101961101987_))
                                        (letrec ((_loop101962101990_
                                                  (lambda (_hd101960101993_
                                                           _rands101966101995_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd101960101993_))
                                                        (let ((_e101963101998_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd101960101993_))))
                  (let ((_lp-hd101964102001_
                         (let () (declare (not safe)) (##car _e101963101998_)))
                        (_lp-tl101965102003_
                         (let ()
                           (declare (not safe))
                           (##cdr _e101963101998_))))
                    (let ((__tmp103119
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd101964102001_ _rands101966101995_))))
                      (declare (not safe))
                      (_loop101962101990_ _lp-tl101965102003_ __tmp103119))))
                (let ((_rands101967102006_ (reverse _rands101966101995_)))
                  ((lambda (_L102009_)
                     (for-each
                      (lambda (_g102022102024_)
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _self101950_ _g102022102024_)))
                      (let ((__tmp103118
                             (lambda (_g102026102029_ _g102027102031_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g102026102029_ _g102027102031_)))))
                        (declare (not safe))
                        (foldr1 __tmp103118 '() _L102009_))))
                   _rands101967102006_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop101962101990_
                                             _target101959101985_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g101953101972_
                                           _g101954101975_))))))
                              (let ()
                                (declare (not safe))
                                (_g101953101972_ _g101954101975_)))))
                      (let ()
                        (declare (not safe))
                        (_g101953101972_ _g101954101975_))))))
          (declare (not safe))
          (_g101952102034_ _stx101951_))))
    (define gxc#xform-wrap-source
      (lambda (_stx101947_ _src-stx101948_)
        (let ((__tmp103120
               (let () (declare (not safe)) (gx#stx-source _src-stx101948_))))
          (declare (not safe))
          (gx#stx-wrap-source _stx101947_ __tmp103120))))
    (define gxc#xform-begin%
      (lambda (_self101902_ _stx101903_)
        (let* ((_g101905101915_
                (lambda (_g101906101912_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101906101912_))))
               (_g101904101944_
                (lambda (_g101906101918_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101906101918_))
                      (let ((_e101910101920_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101906101918_))))
                        (let ((_hd101909101923_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101910101920_)))
                              (_tl101908101925_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101910101920_))))
                          ((lambda (_L101928_)
                             (let* ((_forms101942_
                                     (map (lambda (_g101937101939_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self101902_
                                               _g101937101939_)))
                                          _L101928_))
                                    (__tmp103121
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#begin _forms101942_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp103121
                                _stx101903_)))
                           _tl101908101925_)))
                      (let ()
                        (declare (not safe))
                        (_g101905101915_ _g101906101918_))))))
          (declare (not safe))
          (_g101904101944_ _stx101903_))))
    (define gxc#xform-begin-syntax%
      (lambda (_self101856_ _stx101857_)
        (let* ((_g101859101869_
                (lambda (_g101860101866_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101860101866_))))
               (_g101858101899_
                (lambda (_g101860101872_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101860101872_))
                      (let ((_e101864101874_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101860101872_))))
                        (let ((_hd101863101877_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101864101874_)))
                              (_tl101862101879_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101864101874_))))
                          ((lambda (_L101882_)
                             (let ((__tmp103124
                                    (lambda ()
                                      (let* ((_forms101897_
                                              (map (lambda (_g101892101894_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _self101856_
                                                        _g101892101894_)))
                                                   _L101882_))
                                             (__tmp103125
                                              (let ()
                                                (declare (not safe))
                                                (cons '%#begin-syntax
                                                      _forms101897_))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp103125
                                         _stx101857_))))
                                   (__tmp103122
                                    (let ((__tmp103123
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp103123 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp103124
                                gx#current-expander-phi
                                __tmp103122)))
                           _tl101862101879_)))
                      (let ()
                        (declare (not safe))
                        (_g101859101869_ _g101860101872_))))))
          (declare (not safe))
          (_g101858101899_ _stx101857_))))
    (define gxc#xform-module%
      (lambda (_self101793_ _stx101794_)
        (let* ((_g101796101810_
                (lambda (_g101797101807_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101797101807_))))
               (_g101795101853_
                (lambda (_g101797101813_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101797101813_))
                      (let ((_e101802101815_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101797101813_))))
                        (let ((_hd101801101818_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101802101815_)))
                              (_tl101800101820_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101802101815_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101800101820_))
                              (let ((_e101805101823_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101800101820_))))
                                (let ((_hd101804101826_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101805101823_)))
                                      (_tl101803101828_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101805101823_))))
                                  ((lambda (_L101831_ _L101832_)
                                     (let* ((_ctx101845_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L101832_)))
                                            (_code101847_
                                             (##structure-ref
                                              _ctx101845_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_code101850_
                                             (let ((__tmp103126
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _self101793_
                                                         _code101847_)))))
                                               (declare (not safe))
                                               (call-with-parameters
                                                __tmp103126
                                                gx#current-expander-context
                                                _ctx101845_))))
                                       (##structure-set!
                                        _ctx101845_
                                        _code101850_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp103127
                                              (let ((__tmp103128
                                                     (let ((__tmp103129
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _code101850_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L101832_ __tmp103129))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#module __tmp103128))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp103127
                                          _stx101794_))))
                                   _tl101803101828_
                                   _hd101804101826_)))
                              (let ()
                                (declare (not safe))
                                (_g101796101810_ _g101797101813_)))))
                      (let ()
                        (declare (not safe))
                        (_g101796101810_ _g101797101813_))))))
          (declare (not safe))
          (_g101795101853_ _stx101794_))))
    (define gxc#xform-define-values%
      (lambda (_self101723_ _stx101724_)
        (let* ((_g101726101743_
                (lambda (_g101727101740_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101727101740_))))
               (_g101725101790_
                (lambda (_g101727101746_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101727101746_))
                      (let ((_e101732101748_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101727101746_))))
                        (let ((_hd101731101751_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101732101748_)))
                              (_tl101730101753_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101732101748_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101730101753_))
                              (let ((_e101735101756_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101730101753_))))
                                (let ((_hd101734101759_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101735101756_)))
                                      (_tl101733101761_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101735101756_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl101733101761_))
                                      (let ((_e101738101764_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl101733101761_))))
                                        (let ((_hd101737101767_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e101738101764_)))
                                              (_tl101736101769_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e101738101764_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl101736101769_))
                                              ((lambda (_L101772_ _L101773_)
                                                 (let* ((_expr101788_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self101723_
                                                            _L101772_)))
                                                        (__tmp103130
                                                         (let ((__tmp103131
                                                                (let ((__tmp103132
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _expr101788_ '()))))
                          (declare (not safe))
                          (cons _L101773_ __tmp103132))))
                   (declare (not safe))
                   (cons '%#define-values __tmp103131))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp103130
                                                    _stx101724_)))
                                               _hd101737101767_
                                               _hd101734101759_)
                                              (let ()
                                                (declare (not safe))
                                                (_g101726101743_
                                                 _g101727101746_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g101726101743_ _g101727101746_)))))
                              (let ()
                                (declare (not safe))
                                (_g101726101743_ _g101727101746_)))))
                      (let ()
                        (declare (not safe))
                        (_g101726101743_ _g101727101746_))))))
          (declare (not safe))
          (_g101725101790_ _stx101724_))))
    (define gxc#xform-define-syntax%
      (lambda (_self101652_ _stx101653_)
        (let* ((_g101655101672_
                (lambda (_g101656101669_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101656101669_))))
               (_g101654101720_
                (lambda (_g101656101675_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101656101675_))
                      (let ((_e101661101677_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101656101675_))))
                        (let ((_hd101660101680_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101661101677_)))
                              (_tl101659101682_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101661101677_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101659101682_))
                              (let ((_e101664101685_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101659101682_))))
                                (let ((_hd101663101688_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101664101685_)))
                                      (_tl101662101690_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101664101685_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl101662101690_))
                                      (let ((_e101667101693_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl101662101690_))))
                                        (let ((_hd101666101696_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e101667101693_)))
                                              (_tl101665101698_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e101667101693_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl101665101698_))
                                              ((lambda (_L101701_ _L101702_)
                                                 (let ((__tmp103135
                                                        (lambda ()
                                                          (let* ((_expr101718_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__1 _self101652_ _L101701_)))
                         (__tmp103136
                          (let ((__tmp103137
                                 (let ((__tmp103138
                                        (let ()
                                          (declare (not safe))
                                          (cons _expr101718_ '()))))
                                   (declare (not safe))
                                   (cons _L101702_ __tmp103138))))
                            (declare (not safe))
                            (cons '%#define-syntax __tmp103137))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp103136 _stx101653_))))
               (__tmp103133
                (let ((__tmp103134 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp103134 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp103135
                                                    gx#current-expander-phi
                                                    __tmp103133)))
                                               _hd101666101696_
                                               _hd101663101688_)
                                              (let ()
                                                (declare (not safe))
                                                (_g101655101672_
                                                 _g101656101675_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g101655101672_ _g101656101675_)))))
                              (let ()
                                (declare (not safe))
                                (_g101655101672_ _g101656101675_)))))
                      (let ()
                        (declare (not safe))
                        (_g101655101672_ _g101656101675_))))))
          (declare (not safe))
          (_g101654101720_ _stx101653_))))
    (define gxc#xform-begin-annotation%
      (lambda (_self101582_ _stx101583_)
        (let* ((_g101585101602_
                (lambda (_g101586101599_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101586101599_))))
               (_g101584101649_
                (lambda (_g101586101605_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101586101605_))
                      (let ((_e101591101607_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101586101605_))))
                        (let ((_hd101590101610_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101591101607_)))
                              (_tl101589101612_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101591101607_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101589101612_))
                              (let ((_e101594101615_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101589101612_))))
                                (let ((_hd101593101618_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101594101615_)))
                                      (_tl101592101620_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101594101615_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl101592101620_))
                                      (let ((_e101597101623_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl101592101620_))))
                                        (let ((_hd101596101626_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e101597101623_)))
                                              (_tl101595101628_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e101597101623_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl101595101628_))
                                              ((lambda (_L101631_ _L101632_)
                                                 (let* ((_expr101647_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self101582_
                                                            _L101631_)))
                                                        (__tmp103139
                                                         (let ((__tmp103140
                                                                (let ((__tmp103141
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _expr101647_ '()))))
                          (declare (not safe))
                          (cons _L101632_ __tmp103141))))
                   (declare (not safe))
                   (cons '%#begin-annotation __tmp103140))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp103139
                                                    _stx101583_)))
                                               _hd101596101626_
                                               _hd101593101618_)
                                              (let ()
                                                (declare (not safe))
                                                (_g101585101602_
                                                 _g101586101605_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g101585101602_ _g101586101605_)))))
                              (let ()
                                (declare (not safe))
                                (_g101585101602_ _g101586101605_)))))
                      (let ()
                        (declare (not safe))
                        (_g101585101602_ _g101586101605_))))))
          (declare (not safe))
          (_g101584101649_ _stx101583_))))
    (define gxc#xform-lambda%
      (lambda (_self101521_ _stx101522_)
        (let* ((_g101524101538_
                (lambda (_g101525101535_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101525101535_))))
               (_g101523101579_
                (lambda (_g101525101541_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101525101541_))
                      (let ((_e101530101543_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101525101541_))))
                        (let ((_hd101529101546_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101530101543_)))
                              (_tl101528101548_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101530101543_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101528101548_))
                              (let ((_e101533101551_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101528101548_))))
                                (let ((_hd101532101554_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101533101551_)))
                                      (_tl101531101556_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101533101551_))))
                                  ((lambda (_L101559_ _L101560_)
                                     (let* ((_body101577_
                                             (map (lambda (_g101572101574_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _self101521_
                                                       _g101572101574_)))
                                                  _L101559_))
                                            (__tmp103142
                                             (let ((__tmp103143
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L101560_
                                                            _body101577_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp103143))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp103142
                                        _stx101522_)))
                                   _tl101531101556_
                                   _hd101532101554_)))
                              (let ()
                                (declare (not safe))
                                (_g101524101538_ _g101525101541_)))))
                      (let ()
                        (declare (not safe))
                        (_g101524101538_ _g101525101541_))))))
          (declare (not safe))
          (_g101523101579_ _stx101522_))))
    (define gxc#xform-case-lambda%
      (lambda (_self101430_ _stx101431_)
        (letrec ((_clause-e101433_
                  (lambda (_clause101474_)
                    (let* ((_g101476101487_
                            (lambda (_g101477101484_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g101477101484_))))
                           (_g101475101518_
                            (lambda (_g101477101490_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g101477101490_))
                                  (let ((_e101482101492_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g101477101490_))))
                                    (let ((_hd101481101495_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e101482101492_)))
                                          (_tl101480101497_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e101482101492_))))
                                      ((lambda (_L101500_ _L101501_)
                                         (let ((_body101516_
                                                (map (lambda (_g101511101513_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _self101430_
                                                          _g101511101513_)))
                                                     _L101500_)))
                                           (declare (not safe))
                                           (cons _L101501_ _body101516_)))
                                       _tl101480101497_
                                       _hd101481101495_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g101476101487_ _g101477101490_))))))
                      (declare (not safe))
                      (_g101475101518_ _clause101474_)))))
          (let* ((_g101435101445_
                  (lambda (_g101436101442_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g101436101442_))))
                 (_g101434101471_
                  (lambda (_g101436101448_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g101436101448_))
                        (let ((_e101440101450_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g101436101448_))))
                          (let ((_hd101439101453_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e101440101450_)))
                                (_tl101438101455_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e101440101450_))))
                            ((lambda (_L101458_)
                               (let* ((_clauses101469_
                                       (map _clause-e101433_ _L101458_))
                                      (__tmp103144
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses101469_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp103144
                                  _stx101431_)))
                             _tl101438101455_)))
                        (let ()
                          (declare (not safe))
                          (_g101435101445_ _g101436101448_))))))
            (declare (not safe))
            (_g101434101471_ _stx101431_)))))
    (define gxc#xform-let-values%
      (lambda (_self101216_ _stx101217_)
        (let* ((_g101219101252_
                (lambda (_g101220101249_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101220101249_))))
               (_g101218101427_
                (lambda (_g101220101255_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101220101255_))
                      (let ((_e101227101257_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101220101255_))))
                        (let ((_hd101226101260_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101227101257_)))
                              (_tl101225101262_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101227101257_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101225101262_))
                              (let ((_e101230101265_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101225101262_))))
                                (let ((_hd101229101268_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101230101265_)))
                                      (_tl101228101270_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101230101265_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd101229101268_))
                                      (let ((_g103145_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd101229101268_
                                                '0))))
                                        (begin
                                          (let ((_g103146_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g103145_)
                                                       (##vector-length
                                                        _g103145_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g103146_ 2)))
                                                (error "Context expects 2 values"
                                                       _g103146_)))
                                          (let ((_target101231101273_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g103145_ 0)))
                                                (_tl101233101275_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g103145_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl101233101275_))
                                                (letrec ((_loop101234101278_
                                                          (lambda (_hd101232101281_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr101238101283_
                           _hd101239101285_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd101232101281_))
                        (let ((_e101235101288_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd101232101281_))))
                          (let ((_lp-hd101236101291_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e101235101288_)))
                                (_lp-tl101237101293_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e101235101288_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd101236101291_))
                                (let ((_e101244101296_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd101236101291_))))
                                  (let ((_hd101243101299_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e101244101296_)))
                                        (_tl101242101301_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e101244101296_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl101242101301_))
                                        (let ((_e101247101304_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl101242101301_))))
                                          (let ((_hd101246101307_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e101247101304_)))
                                                (_tl101245101309_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e101247101304_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl101245101309_))
                                                (let ((__tmp103159
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd101246101307_
                                                               _expr101238101283_)))
                                                      (__tmp103158
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd101243101299_
                                                               _hd101239101285_))))
                                                  (declare (not safe))
                                                  (_loop101234101278_
                                                   _lp-tl101237101293_
                                                   __tmp103159
                                                   __tmp103158))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g101219101252_
                                                   _g101220101255_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g101219101252_ _g101220101255_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g101219101252_ _g101220101255_)))))
                        (let ((_expr101240101312_ (reverse _expr101238101283_))
                              (_hd101241101314_ (reverse _hd101239101285_)))
                          ((lambda (_L101317_ _L101318_ _L101319_ _L101320_)
                             (let* ((_g101339101355_
                                     (lambda (_g101340101352_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g101340101352_))))
                                    (_g101338101413_
                                     (lambda (_g101340101358_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _g101340101358_))
                                           (let ((_g103147_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _g101340101358_
                                                     '0))))
                                             (begin
                                               (let ((_g103148_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g103147_)
                                                            (##vector-length
                                                             _g103147_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g103148_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g103148_)))
                                               (let ((_target101342101360_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g103147_
                                                         0)))
                                                     (_tl101344101362_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g103147_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl101344101362_))
                                                     (letrec ((_loop101345101365_
                                                               (lambda (_hd101343101368_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr101349101370_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _hd101343101368_))
                             (let ((_e101346101373_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _hd101343101368_))))
                               (let ((_lp-hd101347101376_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e101346101373_)))
                                     (_lp-tl101348101378_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e101346101373_))))
                                 (let ((__tmp103155
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd101347101376_
                                                _expr101349101370_))))
                                   (declare (not safe))
                                   (_loop101345101365_
                                    _lp-tl101348101378_
                                    __tmp103155))))
                             (let ((_expr101350101381_
                                    (reverse _expr101349101370_)))
                               ((lambda (_L101384_)
                                  (let ()
                                    (let* ((_body101401_
                                            (map (lambda (_g101396101398_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self101216_
                                                      _g101396101398_)))
                                                 _L101317_))
                                           (__tmp103149
                                            (let ((__tmp103150
                                                   (let ((__tmp103151
                                                          (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _L101384_
                                                               _L101319_))
                                                            (let ((__tmp103152
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g101402101406_
                                    _g101403101408_
                                    _g101404101410_)
                             (let ((__tmp103153
                                    (let ((__tmp103154
                                           (let ()
                                             (declare (not safe))
                                             (cons _g101402101406_ '()))))
                                      (declare (not safe))
                                      (cons _g101403101408_ __tmp103154))))
                               (declare (not safe))
                               (cons __tmp103153 _g101404101410_)))))
                      (declare (not safe))
                      (foldr2 __tmp103152 '() _L101384_ _L101319_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp103151
                                                           _body101401_))))
                                              (declare (not safe))
                                              (cons _L101320_ __tmp103150))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp103149
                                       _stx101217_))))
                                _expr101350101381_))))))
               (let ()
                 (declare (not safe))
                 (_loop101345101365_ _target101342101360_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g101339101355_
                                                        _g101340101358_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_g101339101355_
                                              _g101340101358_)))))
                                    (__tmp103156
                                     (map (lambda (_g101415101417_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self101216_
                                               _g101415101417_)))
                                          (let ((__tmp103157
                                                 (lambda (_g101419101422_
                                                          _g101420101424_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g101419101422_
                                                           _g101420101424_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp103157
                                                    '()
                                                    _L101318_)))))
                               (declare (not safe))
                               (_g101338101413_ __tmp103156)))
                           _tl101228101270_
                           _expr101240101312_
                           _hd101241101314_
                           _hd101226101260_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop101234101278_
                                                     _target101231101273_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g101219101252_
                                                   _g101220101255_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g101219101252_ _g101220101255_)))))
                              (let ()
                                (declare (not safe))
                                (_g101219101252_ _g101220101255_)))))
                      (let ()
                        (declare (not safe))
                        (_g101219101252_ _g101220101255_))))))
          (declare (not safe))
          (_g101218101427_ _stx101217_))))
    (define gxc#xform-operands
      (lambda (_self101168_ _stx101169_)
        (let* ((_g101171101182_
                (lambda (_g101172101179_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101172101179_))))
               (_g101170101213_
                (lambda (_g101172101185_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101172101185_))
                      (let ((_e101177101187_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101172101185_))))
                        (let ((_hd101176101190_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101177101187_)))
                              (_tl101175101192_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101177101187_))))
                          ((lambda (_L101195_ _L101196_)
                             (let* ((_rands101211_
                                     (map (lambda (_g101206101208_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self101168_
                                               _g101206101208_)))
                                          _L101195_))
                                    (__tmp103160
                                     (let ()
                                       (declare (not safe))
                                       (cons _L101196_ _rands101211_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp103160
                                _stx101169_)))
                           _tl101175101192_
                           _hd101176101190_)))
                      (let ()
                        (declare (not safe))
                        (_g101171101182_ _g101172101185_))))))
          (declare (not safe))
          (_g101170101213_ _stx101169_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_self101098_ _stx101099_)
        (let* ((_g101101101118_
                (lambda (_g101102101115_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101102101115_))))
               (_g101100101165_
                (lambda (_g101102101121_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101102101121_))
                      (let ((_e101107101123_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101102101121_))))
                        (let ((_hd101106101126_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101107101123_)))
                              (_tl101105101128_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101107101123_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101105101128_))
                              (let ((_e101110101131_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101105101128_))))
                                (let ((_hd101109101134_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101110101131_)))
                                      (_tl101108101136_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101110101131_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl101108101136_))
                                      (let ((_e101113101139_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl101108101136_))))
                                        (let ((_hd101112101142_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e101113101139_)))
                                              (_tl101111101144_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e101113101139_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl101111101144_))
                                              ((lambda (_L101147_ _L101148_)
                                                 (let* ((_expr101163_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self101098_
                                                            _L101147_)))
                                                        (__tmp103161
                                                         (let ((__tmp103162
                                                                (let ((__tmp103163
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _expr101163_ '()))))
                          (declare (not safe))
                          (cons _L101148_ __tmp103163))))
                   (declare (not safe))
                   (cons '%#set! __tmp103162))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp103161
                                                    _stx101099_)))
                                               _hd101112101142_
                                               _hd101109101134_)
                                              (let ()
                                                (declare (not safe))
                                                (_g101101101118_
                                                 _g101102101121_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g101101101118_ _g101102101121_)))))
                              (let ()
                                (declare (not safe))
                                (_g101101101118_ _g101102101121_)))))
                      (let ()
                        (declare (not safe))
                        (_g101101101118_ _g101102101121_))))))
          (declare (not safe))
          (_g101100101165_ _stx101099_))))))
