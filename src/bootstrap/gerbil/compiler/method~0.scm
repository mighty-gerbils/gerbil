(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1710943026)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_stx102913_)
        (let* ((_self102915_ (gxc#current-compile-method))
               (_$e102917_
                (let ((__tmp103086
                       (let ()
                         (declare (not safe))
                         (gxc#stx-car-e _stx102913_))))
                  (declare (not safe))
                  (method-ref _self102915_ __tmp103086))))
          (if _$e102917_
              ((lambda (_method102920_)
                 (declare (not safe))
                 (_method102920_ _self102915_ _stx102913_))
               _$e102917_)
              (let ((__tmp103088
                     (let () (declare (not safe)) (gxc#stx-car-e _stx102913_)))
                    (__tmp103087
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _stx102913_))))
                (declare (not safe))
                (error '"missing method"
                       _self102915_
                       __tmp103088
                       __tmp103087))))))
    (define gxc#compile-e__1
      (lambda (_self102923_ _stx102924_)
        (let ((_$e102926_
               (let ((__tmp103089
                      (let ()
                        (declare (not safe))
                        (gxc#stx-car-e _stx102924_))))
                 (declare (not safe))
                 (method-ref _self102923_ __tmp103089))))
          (if _$e102926_
              ((lambda (_method102929_)
                 (declare (not safe))
                 (_method102929_ _self102923_ _stx102924_))
               _$e102926_)
              (let ((__tmp103091
                     (let () (declare (not safe)) (gxc#stx-car-e _stx102924_)))
                    (__tmp103090
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _stx102924_))))
                (declare (not safe))
                (error '"missing method"
                       _self102923_
                       __tmp103091
                       __tmp103090))))))
    (define gxc#compile-e
      (lambda _g103093_
        (let ((_g103092_ (let () (declare (not safe)) (##length _g103093_))))
          (cond ((let () (declare (not safe)) (##fx= _g103092_ 1))
                 (apply (lambda (_stx102913_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _stx102913_)))
                        _g103093_))
                ((let () (declare (not safe)) (##fx= _g103092_ 2))
                 (apply (lambda (_self102923_ _stx102924_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__1 _self102923_ _stx102924_)))
                        _g103093_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g103093_))))))
    (define gxc#stx-car-e
      (lambda (_stx102911_)
        (let ((__tmp103094
               (car (let () (declare (not safe)) (gx#stx-e _stx102911_)))))
          (declare (not safe))
          (gx#stx-e __tmp103094))))
    (define gxc#void-method (lambda (_self102908_ _stx102909_) '#!void))
    (define gxc#false-method (lambda (_self102905_ _stx102906_) '#f))
    (define gxc#true-method (lambda (_self102902_ _stx102903_) '#t))
    (define gxc#identity-method
      (lambda (_self102899_ _stx102900_) _stx102900_))
    (define gxc#::void-expression::t
      (let ((__tmp103095 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp103095
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _$args102896_
        (apply make-instance gxc#::void-expression::t _$args102896_)))
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
      (let ((__tmp103096 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp103096
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _$args102892_
        (apply make-instance gxc#::void-special-form::t _$args102892_)))
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
      (let ((__tmp103097
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (make-class-type 'gxc#::void::t '::void __tmp103097 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _$args102888_ (apply make-instance gxc#::void::t _$args102888_)))
    (define gxc#::void-bind-methods!
      (make-promise
       (lambda ()
         (force gxc#::void-special-form-bind-methods!)
         (force gxc#::void-expression-bind-methods!))))
    (define gxc#::false-expression::t
      (let ((__tmp103098 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp103098
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _$args102884_
        (apply make-instance gxc#::false-expression::t _$args102884_)))
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
      (let ((__tmp103099 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp103099
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _$args102880_
        (apply make-instance gxc#::false-special-form::t _$args102880_)))
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
      (let ((__tmp103100
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (make-class-type 'gxc#::false::t '::false __tmp103100 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _$args102876_
        (apply make-instance gxc#::false::t _$args102876_)))
    (define gxc#::false-bind-methods!
      (make-promise
       (lambda ()
         (force gxc#::false-special-form-bind-methods!)
         (force gxc#::false-expression-bind-methods!))))
    (define gxc#::identity-expression::t
      (let ((__tmp103101 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp103101
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _$args102872_
        (apply make-instance gxc#::identity-expression::t _$args102872_)))
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
      (let ((__tmp103102 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp103102
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _$args102868_
        (apply make-instance gxc#::identity-special-form::t _$args102868_)))
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
      (let ((__tmp103103
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::identity::t
         '::identity
         __tmp103103
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _$args102864_
        (apply make-instance gxc#::identity::t _$args102864_)))
    (define gxc#::identity-bind-methods!
      (make-promise
       (lambda ()
         (force gxc#::identity-special-form-bind-methods!)
         (force gxc#::identity-expression-bind-methods!))))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp103104 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp103104
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _$args102860_
        (apply make-instance gxc#::basic-xform-expression::t _$args102860_)))
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
      (let ((__tmp103105
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp103105
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _$args102856_
        (apply make-instance gxc#::basic-xform::t _$args102856_)))
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
      (lambda (_self102812_ _stx102813_)
        (let* ((_g102815102825_
                (lambda (_g102816102822_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102816102822_))))
               (_g102814102852_
                (lambda (_g102816102828_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102816102828_))
                      (let ((_e102820102830_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102816102828_))))
                        (let ((_hd102819102833_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102820102830_)))
                              (_tl102818102835_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102820102830_))))
                          ((lambda (_L102838_)
                             (for-each
                              (lambda (_g102847102849_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1
                                   _self102812_
                                   _g102847102849_)))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _L102838_))))
                           _tl102818102835_)))
                      (let ()
                        (declare (not safe))
                        (_g102815102825_ _g102816102828_))))))
          (declare (not safe))
          (_g102814102852_ _stx102813_))))
    (define gxc#apply-last-begin%
      (lambda (_self102773_ _stx102774_)
        (let* ((_g102776102786_
                (lambda (_g102777102783_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102777102783_))))
               (_g102775102809_
                (lambda (_g102777102789_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102777102789_))
                      (let ((_e102781102791_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102777102789_))))
                        (let ((_hd102780102794_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102781102791_)))
                              (_tl102779102796_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102781102791_))))
                          ((lambda (_L102799_)
                             (let ((__tmp103106 (last _L102799_)))
                               (declare (not safe))
                               (gxc#compile-e__1 _self102773_ __tmp103106)))
                           _tl102779102796_)))
                      (let ()
                        (declare (not safe))
                        (_g102776102786_ _g102777102789_))))))
          (declare (not safe))
          (_g102775102809_ _stx102774_))))
    (define gxc#apply-begin-syntax%
      (lambda (_self102769_ _stx102770_)
        (let ((__tmp103109
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#apply-begin% _self102769_ _stx102770_))))
              (__tmp103107
               (let ((__tmp103108 (gx#current-expander-phi)))
                 (declare (not safe))
                 (fx+ __tmp103108 '1))))
          (declare (not safe))
          (call-with-parameters
           __tmp103109
           gx#current-expander-phi
           __tmp103107))))
    (define gxc#apply-module%
      (lambda (_self102708_ _stx102709_)
        (let* ((_g102711102725_
                (lambda (_g102712102722_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102712102722_))))
               (_g102710102766_
                (lambda (_g102712102728_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102712102728_))
                      (let ((_e102717102730_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102712102728_))))
                        (let ((_hd102716102733_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102717102730_)))
                              (_tl102715102735_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102717102730_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102715102735_))
                              (let ((_e102720102738_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102715102735_))))
                                (let ((_hd102719102741_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102720102738_)))
                                      (_tl102718102743_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102720102738_))))
                                  ((lambda (_L102746_ _L102747_)
                                     (let* ((_ctx102760_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L102747_)))
                                            (_ctx-stx102762_
                                             (##structure-ref
                                              _ctx102760_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp103110
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self102708_
                                                   _ctx-stx102762_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp103110
                                          gx#current-expander-context
                                          _ctx102760_))))
                                   _tl102718102743_
                                   _hd102719102741_)))
                              (let ()
                                (declare (not safe))
                                (_g102711102725_ _g102712102728_)))))
                      (let ()
                        (declare (not safe))
                        (_g102711102725_ _g102712102728_))))))
          (declare (not safe))
          (_g102710102766_ _stx102709_))))
    (define gxc#apply-begin-annotation%
      (lambda (_self102640_ _stx102641_)
        (let* ((_g102643102660_
                (lambda (_g102644102657_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102644102657_))))
               (_g102642102705_
                (lambda (_g102644102663_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102644102663_))
                      (let ((_e102649102665_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102644102663_))))
                        (let ((_hd102648102668_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102649102665_)))
                              (_tl102647102670_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102649102665_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102647102670_))
                              (let ((_e102652102673_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102647102670_))))
                                (let ((_hd102651102676_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102652102673_)))
                                      (_tl102650102678_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102652102673_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl102650102678_))
                                      (let ((_e102655102681_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl102650102678_))))
                                        (let ((_hd102654102684_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e102655102681_)))
                                              (_tl102653102686_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e102655102681_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl102653102686_))
                                              ((lambda (_L102689_ _L102690_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self102640_
                                                    _L102689_)))
                                               _hd102654102684_
                                               _hd102651102676_)
                                              (let ()
                                                (declare (not safe))
                                                (_g102643102660_
                                                 _g102644102663_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g102643102660_ _g102644102663_)))))
                              (let ()
                                (declare (not safe))
                                (_g102643102660_ _g102644102663_)))))
                      (let ()
                        (declare (not safe))
                        (_g102643102660_ _g102644102663_))))))
          (declare (not safe))
          (_g102642102705_ _stx102641_))))
    (define gxc#apply-define-values%
      (lambda (_self102572_ _stx102573_)
        (let* ((_g102575102592_
                (lambda (_g102576102589_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102576102589_))))
               (_g102574102637_
                (lambda (_g102576102595_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102576102595_))
                      (let ((_e102581102597_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102576102595_))))
                        (let ((_hd102580102600_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102581102597_)))
                              (_tl102579102602_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102581102597_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102579102602_))
                              (let ((_e102584102605_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102579102602_))))
                                (let ((_hd102583102608_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102584102605_)))
                                      (_tl102582102610_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102584102605_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl102582102610_))
                                      (let ((_e102587102613_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl102582102610_))))
                                        (let ((_hd102586102616_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e102587102613_)))
                                              (_tl102585102618_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e102587102613_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl102585102618_))
                                              ((lambda (_L102621_ _L102622_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self102572_
                                                    _L102621_)))
                                               _hd102586102616_
                                               _hd102583102608_)
                                              (let ()
                                                (declare (not safe))
                                                (_g102575102592_
                                                 _g102576102595_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g102575102592_ _g102576102595_)))))
                              (let ()
                                (declare (not safe))
                                (_g102575102592_ _g102576102595_)))))
                      (let ()
                        (declare (not safe))
                        (_g102575102592_ _g102576102595_))))))
          (declare (not safe))
          (_g102574102637_ _stx102573_))))
    (define gxc#apply-define-syntax%
      (lambda (_self102503_ _stx102504_)
        (let* ((_g102506102523_
                (lambda (_g102507102520_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102507102520_))))
               (_g102505102569_
                (lambda (_g102507102526_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102507102526_))
                      (let ((_e102512102528_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102507102526_))))
                        (let ((_hd102511102531_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102512102528_)))
                              (_tl102510102533_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102512102528_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102510102533_))
                              (let ((_e102515102536_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102510102533_))))
                                (let ((_hd102514102539_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102515102536_)))
                                      (_tl102513102541_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102515102536_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl102513102541_))
                                      (let ((_e102518102544_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl102513102541_))))
                                        (let ((_hd102517102547_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e102518102544_)))
                                              (_tl102516102549_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e102518102544_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl102516102549_))
                                              ((lambda (_L102552_ _L102553_)
                                                 (let ((__tmp103113
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _self102503_
                                                             _L102552_))))
                                                       (__tmp103111
                                                        (let ((__tmp103112
                                                               (gx#current-expander-phi)))
                                                          (declare (not safe))
                                                          (fx+ __tmp103112
                                                               '1))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp103113
                                                    gx#current-expander-phi
                                                    __tmp103111)))
                                               _hd102517102547_
                                               _hd102514102539_)
                                              (let ()
                                                (declare (not safe))
                                                (_g102506102523_
                                                 _g102507102526_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g102506102523_ _g102507102526_)))))
                              (let ()
                                (declare (not safe))
                                (_g102506102523_ _g102507102526_)))))
                      (let ()
                        (declare (not safe))
                        (_g102506102523_ _g102507102526_))))))
          (declare (not safe))
          (_g102505102569_ _stx102504_))))
    (define gxc#apply-body-lambda%
      (lambda (_self102435_ _stx102436_)
        (let* ((_g102438102455_
                (lambda (_g102439102452_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102439102452_))))
               (_g102437102500_
                (lambda (_g102439102458_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102439102458_))
                      (let ((_e102444102460_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102439102458_))))
                        (let ((_hd102443102463_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102444102460_)))
                              (_tl102442102465_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102444102460_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102442102465_))
                              (let ((_e102447102468_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102442102465_))))
                                (let ((_hd102446102471_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102447102468_)))
                                      (_tl102445102473_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102447102468_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl102445102473_))
                                      (let ((_e102450102476_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl102445102473_))))
                                        (let ((_hd102449102479_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e102450102476_)))
                                              (_tl102448102481_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e102450102476_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl102448102481_))
                                              ((lambda (_L102484_ _L102485_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self102435_
                                                    _L102484_)))
                                               _hd102449102479_
                                               _hd102446102471_)
                                              (let ()
                                                (declare (not safe))
                                                (_g102438102455_
                                                 _g102439102458_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g102438102455_ _g102439102458_)))))
                              (let ()
                                (declare (not safe))
                                (_g102438102455_ _g102439102458_)))))
                      (let ()
                        (declare (not safe))
                        (_g102438102455_ _g102439102458_))))))
          (declare (not safe))
          (_g102437102500_ _stx102436_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_self102317_ _stx102318_)
        (let* ((_g102320102348_
                (lambda (_g102321102345_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102321102345_))))
               (_g102319102432_
                (lambda (_g102321102351_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102321102351_))
                      (let ((_e102326102353_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102321102351_))))
                        (let ((_hd102325102356_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102326102353_)))
                              (_tl102324102358_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102326102353_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl102324102358_))
                              (let ((_g103114_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl102324102358_
                                        '0))))
                                (begin
                                  (let ((_g103115_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g103114_)
                                               (##vector-length _g103114_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g103115_ 2)))
                                        (error "Context expects 2 values"
                                               _g103115_)))
                                  (let ((_target102327102361_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g103114_ 0)))
                                        (_tl102329102363_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g103114_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl102329102363_))
                                        (letrec ((_loop102330102366_
                                                  (lambda (_hd102328102369_
                                                           _body102334102371_
                                                           _hd102335102373_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd102328102369_))
                                                        (let ((_e102331102376_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd102328102369_))))
                  (let ((_lp-hd102332102379_
                         (let () (declare (not safe)) (##car _e102331102376_)))
                        (_lp-tl102333102381_
                         (let ()
                           (declare (not safe))
                           (##cdr _e102331102376_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd102332102379_))
                        (let ((_e102340102384_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd102332102379_))))
                          (let ((_hd102339102387_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e102340102384_)))
                                (_tl102338102389_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e102340102384_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl102338102389_))
                                (let ((_e102343102392_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl102338102389_))))
                                  (let ((_hd102342102395_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e102343102392_)))
                                        (_tl102341102397_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e102343102392_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl102341102397_))
                                        (let ((__tmp103118
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd102342102395_
                                                       _body102334102371_)))
                                              (__tmp103117
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd102339102387_
                                                       _hd102335102373_))))
                                          (declare (not safe))
                                          (_loop102330102366_
                                           _lp-tl102333102381_
                                           __tmp103118
                                           __tmp103117))
                                        (let ()
                                          (declare (not safe))
                                          (_g102320102348_ _g102321102351_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g102320102348_ _g102321102351_)))))
                        (let ()
                          (declare (not safe))
                          (_g102320102348_ _g102321102351_)))))
                (let ((_body102336102400_ (reverse _body102334102371_))
                      (_hd102337102402_ (reverse _hd102335102373_)))
                  ((lambda (_L102405_ _L102406_)
                     (for-each
                      (lambda (_g102420102422_)
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _self102317_ _g102420102422_)))
                      (let ((__tmp103116
                             (lambda (_g102424102427_ _g102425102429_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g102424102427_ _g102425102429_)))))
                        (declare (not safe))
                        (foldr1 __tmp103116 '() _L102405_))))
                   _body102336102400_
                   _hd102337102402_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop102330102366_
                                             _target102327102361_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g102320102348_
                                           _g102321102351_))))))
                              (let ()
                                (declare (not safe))
                                (_g102320102348_ _g102321102351_)))))
                      (let ()
                        (declare (not safe))
                        (_g102320102348_ _g102321102351_))))))
          (declare (not safe))
          (_g102319102432_ _stx102318_))))
    (define gxc#apply-body-let-values%
      (lambda (_self102170_ _stx102171_)
        (let* ((_g102173102208_
                (lambda (_g102174102205_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102174102205_))))
               (_g102172102314_
                (lambda (_g102174102211_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102174102211_))
                      (let ((_e102180102213_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102174102211_))))
                        (let ((_hd102179102216_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102180102213_)))
                              (_tl102178102218_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102180102213_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102178102218_))
                              (let ((_e102183102221_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102178102218_))))
                                (let ((_hd102182102224_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102183102221_)))
                                      (_tl102181102226_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102183102221_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd102182102224_))
                                      (let ((_g103119_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd102182102224_
                                                '0))))
                                        (begin
                                          (let ((_g103120_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g103119_)
                                                       (##vector-length
                                                        _g103119_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g103120_ 2)))
                                                (error "Context expects 2 values"
                                                       _g103120_)))
                                          (let ((_target102184102229_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g103119_ 0)))
                                                (_tl102186102231_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g103119_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl102186102231_))
                                                (letrec ((_loop102187102234_
                                                          (lambda (_hd102185102237_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr102191102239_
                           _hd102192102241_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd102185102237_))
                        (let ((_e102188102244_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd102185102237_))))
                          (let ((_lp-hd102189102247_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e102188102244_)))
                                (_lp-tl102190102249_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e102188102244_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd102189102247_))
                                (let ((_e102197102252_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd102189102247_))))
                                  (let ((_hd102196102255_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e102197102252_)))
                                        (_tl102195102257_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e102197102252_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl102195102257_))
                                        (let ((_e102200102260_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl102195102257_))))
                                          (let ((_hd102199102263_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e102200102260_)))
                                                (_tl102198102265_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e102200102260_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl102198102265_))
                                                (let ((__tmp103124
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd102199102263_
                                                               _expr102191102239_)))
                                                      (__tmp103123
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd102196102255_
                                                               _hd102192102241_))))
                                                  (declare (not safe))
                                                  (_loop102187102234_
                                                   _lp-tl102190102249_
                                                   __tmp103124
                                                   __tmp103123))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g102173102208_
                                                   _g102174102211_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g102173102208_ _g102174102211_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g102173102208_ _g102174102211_)))))
                        (let ((_expr102193102268_ (reverse _expr102191102239_))
                              (_hd102194102270_ (reverse _hd102192102241_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102181102226_))
                              (let ((_e102203102273_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102181102226_))))
                                (let ((_hd102202102276_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102203102273_)))
                                      (_tl102201102278_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102203102273_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl102201102278_))
                                      ((lambda (_L102281_ _L102282_ _L102283_)
                                         (for-each
                                          (lambda (_g102302102304_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self102170_
                                               _g102302102304_)))
                                          (let ((__tmp103122
                                                 (lambda (_g102306102309_
                                                          _g102307102311_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g102306102309_
                                                           _g102307102311_))))
                                                (__tmp103121
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L102281_ '()))))
                                            (declare (not safe))
                                            (foldr1 __tmp103122
                                                    __tmp103121
                                                    _L102282_))))
                                       _hd102202102276_
                                       _expr102193102268_
                                       _hd102194102270_)
                                      (let ()
                                        (declare (not safe))
                                        (_g102173102208_ _g102174102211_)))))
                              (let ()
                                (declare (not safe))
                                (_g102173102208_ _g102174102211_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop102187102234_
                                                     _target102184102229_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g102173102208_
                                                   _g102174102211_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g102173102208_ _g102174102211_)))))
                              (let ()
                                (declare (not safe))
                                (_g102173102208_ _g102174102211_)))))
                      (let ()
                        (declare (not safe))
                        (_g102173102208_ _g102174102211_))))))
          (declare (not safe))
          (_g102172102314_ _stx102171_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_self102115_ _stx102116_)
        (let* ((_g102118102132_
                (lambda (_g102119102129_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102119102129_))))
               (_g102117102167_
                (lambda (_g102119102135_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102119102135_))
                      (let ((_e102124102137_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102119102135_))))
                        (let ((_hd102123102140_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102124102137_)))
                              (_tl102122102142_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102124102137_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102122102142_))
                              (let ((_e102127102145_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102122102142_))))
                                (let ((_hd102126102148_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102127102145_)))
                                      (_tl102125102150_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102127102145_))))
                                  ((lambda (_L102153_ _L102154_)
                                     (let ((__tmp103125 (last _L102153_)))
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _self102115_
                                        __tmp103125)))
                                   _tl102125102150_
                                   _hd102126102148_)))
                              (let ()
                                (declare (not safe))
                                (_g102118102132_ _g102119102135_)))))
                      (let ()
                        (declare (not safe))
                        (_g102118102132_ _g102119102135_))))))
          (declare (not safe))
          (_g102117102167_ _stx102116_))))
    (define gxc#apply-body-setq%
      (lambda (_self102047_ _stx102048_)
        (let* ((_g102050102067_
                (lambda (_g102051102064_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102051102064_))))
               (_g102049102112_
                (lambda (_g102051102070_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102051102070_))
                      (let ((_e102056102072_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102051102070_))))
                        (let ((_hd102055102075_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102056102072_)))
                              (_tl102054102077_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102056102072_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102054102077_))
                              (let ((_e102059102080_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102054102077_))))
                                (let ((_hd102058102083_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102059102080_)))
                                      (_tl102057102085_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102059102080_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl102057102085_))
                                      (let ((_e102062102088_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl102057102085_))))
                                        (let ((_hd102061102091_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e102062102088_)))
                                              (_tl102060102093_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e102062102088_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl102060102093_))
                                              ((lambda (_L102096_ _L102097_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self102047_
                                                    _L102096_)))
                                               _hd102061102091_
                                               _hd102058102083_)
                                              (let ()
                                                (declare (not safe))
                                                (_g102050102067_
                                                 _g102051102070_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g102050102067_ _g102051102070_)))))
                              (let ()
                                (declare (not safe))
                                (_g102050102067_ _g102051102070_)))))
                      (let ()
                        (declare (not safe))
                        (_g102050102067_ _g102051102070_))))))
          (declare (not safe))
          (_g102049102112_ _stx102048_))))
    (define gxc#apply-operands
      (lambda (_self101960_ _stx101961_)
        (let* ((_g101963101982_
                (lambda (_g101964101979_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101964101979_))))
               (_g101962102044_
                (lambda (_g101964101985_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101964101985_))
                      (let ((_e101968101987_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101964101985_))))
                        (let ((_hd101967101990_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101968101987_)))
                              (_tl101966101992_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101968101987_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl101966101992_))
                              (let ((_g103126_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl101966101992_
                                        '0))))
                                (begin
                                  (let ((_g103127_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g103126_)
                                               (##vector-length _g103126_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g103127_ 2)))
                                        (error "Context expects 2 values"
                                               _g103127_)))
                                  (let ((_target101969101995_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g103126_ 0)))
                                        (_tl101971101997_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g103126_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl101971101997_))
                                        (letrec ((_loop101972102000_
                                                  (lambda (_hd101970102003_
                                                           _rands101976102005_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd101970102003_))
                                                        (let ((_e101973102008_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd101970102003_))))
                  (let ((_lp-hd101974102011_
                         (let () (declare (not safe)) (##car _e101973102008_)))
                        (_lp-tl101975102013_
                         (let ()
                           (declare (not safe))
                           (##cdr _e101973102008_))))
                    (let ((__tmp103129
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd101974102011_ _rands101976102005_))))
                      (declare (not safe))
                      (_loop101972102000_ _lp-tl101975102013_ __tmp103129))))
                (let ((_rands101977102016_ (reverse _rands101976102005_)))
                  ((lambda (_L102019_)
                     (for-each
                      (lambda (_g102032102034_)
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _self101960_ _g102032102034_)))
                      (let ((__tmp103128
                             (lambda (_g102036102039_ _g102037102041_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g102036102039_ _g102037102041_)))))
                        (declare (not safe))
                        (foldr1 __tmp103128 '() _L102019_))))
                   _rands101977102016_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop101972102000_
                                             _target101969101995_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g101963101982_
                                           _g101964101985_))))))
                              (let ()
                                (declare (not safe))
                                (_g101963101982_ _g101964101985_)))))
                      (let ()
                        (declare (not safe))
                        (_g101963101982_ _g101964101985_))))))
          (declare (not safe))
          (_g101962102044_ _stx101961_))))
    (define gxc#xform-wrap-source
      (lambda (_stx101957_ _src-stx101958_)
        (let ((__tmp103130
               (let () (declare (not safe)) (gx#stx-source _src-stx101958_))))
          (declare (not safe))
          (gx#stx-wrap-source _stx101957_ __tmp103130))))
    (define gxc#xform-begin%
      (lambda (_self101912_ _stx101913_)
        (let* ((_g101915101925_
                (lambda (_g101916101922_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101916101922_))))
               (_g101914101954_
                (lambda (_g101916101928_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101916101928_))
                      (let ((_e101920101930_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101916101928_))))
                        (let ((_hd101919101933_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101920101930_)))
                              (_tl101918101935_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101920101930_))))
                          ((lambda (_L101938_)
                             (let* ((_forms101952_
                                     (map (lambda (_g101947101949_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self101912_
                                               _g101947101949_)))
                                          _L101938_))
                                    (__tmp103131
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#begin _forms101952_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp103131
                                _stx101913_)))
                           _tl101918101935_)))
                      (let ()
                        (declare (not safe))
                        (_g101915101925_ _g101916101928_))))))
          (declare (not safe))
          (_g101914101954_ _stx101913_))))
    (define gxc#xform-begin-syntax%
      (lambda (_self101866_ _stx101867_)
        (let* ((_g101869101879_
                (lambda (_g101870101876_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101870101876_))))
               (_g101868101909_
                (lambda (_g101870101882_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101870101882_))
                      (let ((_e101874101884_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101870101882_))))
                        (let ((_hd101873101887_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101874101884_)))
                              (_tl101872101889_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101874101884_))))
                          ((lambda (_L101892_)
                             (let ((__tmp103134
                                    (lambda ()
                                      (let* ((_forms101907_
                                              (map (lambda (_g101902101904_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _self101866_
                                                        _g101902101904_)))
                                                   _L101892_))
                                             (__tmp103135
                                              (let ()
                                                (declare (not safe))
                                                (cons '%#begin-syntax
                                                      _forms101907_))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp103135
                                         _stx101867_))))
                                   (__tmp103132
                                    (let ((__tmp103133
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp103133 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp103134
                                gx#current-expander-phi
                                __tmp103132)))
                           _tl101872101889_)))
                      (let ()
                        (declare (not safe))
                        (_g101869101879_ _g101870101882_))))))
          (declare (not safe))
          (_g101868101909_ _stx101867_))))
    (define gxc#xform-module%
      (lambda (_self101803_ _stx101804_)
        (let* ((_g101806101820_
                (lambda (_g101807101817_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101807101817_))))
               (_g101805101863_
                (lambda (_g101807101823_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101807101823_))
                      (let ((_e101812101825_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101807101823_))))
                        (let ((_hd101811101828_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101812101825_)))
                              (_tl101810101830_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101812101825_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101810101830_))
                              (let ((_e101815101833_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101810101830_))))
                                (let ((_hd101814101836_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101815101833_)))
                                      (_tl101813101838_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101815101833_))))
                                  ((lambda (_L101841_ _L101842_)
                                     (let* ((_ctx101855_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L101842_)))
                                            (_code101857_
                                             (##structure-ref
                                              _ctx101855_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_code101860_
                                             (let ((__tmp103136
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _self101803_
                                                         _code101857_)))))
                                               (declare (not safe))
                                               (call-with-parameters
                                                __tmp103136
                                                gx#current-expander-context
                                                _ctx101855_))))
                                       (##structure-set!
                                        _ctx101855_
                                        _code101860_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp103137
                                              (let ((__tmp103138
                                                     (let ((__tmp103139
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _code101860_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L101842_ __tmp103139))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#module __tmp103138))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp103137
                                          _stx101804_))))
                                   _tl101813101838_
                                   _hd101814101836_)))
                              (let ()
                                (declare (not safe))
                                (_g101806101820_ _g101807101823_)))))
                      (let ()
                        (declare (not safe))
                        (_g101806101820_ _g101807101823_))))))
          (declare (not safe))
          (_g101805101863_ _stx101804_))))
    (define gxc#xform-define-values%
      (lambda (_self101733_ _stx101734_)
        (let* ((_g101736101753_
                (lambda (_g101737101750_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101737101750_))))
               (_g101735101800_
                (lambda (_g101737101756_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101737101756_))
                      (let ((_e101742101758_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101737101756_))))
                        (let ((_hd101741101761_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101742101758_)))
                              (_tl101740101763_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101742101758_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101740101763_))
                              (let ((_e101745101766_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101740101763_))))
                                (let ((_hd101744101769_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101745101766_)))
                                      (_tl101743101771_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101745101766_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl101743101771_))
                                      (let ((_e101748101774_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl101743101771_))))
                                        (let ((_hd101747101777_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e101748101774_)))
                                              (_tl101746101779_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e101748101774_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl101746101779_))
                                              ((lambda (_L101782_ _L101783_)
                                                 (let* ((_expr101798_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self101733_
                                                            _L101782_)))
                                                        (__tmp103140
                                                         (let ((__tmp103141
                                                                (let ((__tmp103142
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _expr101798_ '()))))
                          (declare (not safe))
                          (cons _L101783_ __tmp103142))))
                   (declare (not safe))
                   (cons '%#define-values __tmp103141))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp103140
                                                    _stx101734_)))
                                               _hd101747101777_
                                               _hd101744101769_)
                                              (let ()
                                                (declare (not safe))
                                                (_g101736101753_
                                                 _g101737101756_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g101736101753_ _g101737101756_)))))
                              (let ()
                                (declare (not safe))
                                (_g101736101753_ _g101737101756_)))))
                      (let ()
                        (declare (not safe))
                        (_g101736101753_ _g101737101756_))))))
          (declare (not safe))
          (_g101735101800_ _stx101734_))))
    (define gxc#xform-define-syntax%
      (lambda (_self101662_ _stx101663_)
        (let* ((_g101665101682_
                (lambda (_g101666101679_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101666101679_))))
               (_g101664101730_
                (lambda (_g101666101685_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101666101685_))
                      (let ((_e101671101687_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101666101685_))))
                        (let ((_hd101670101690_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101671101687_)))
                              (_tl101669101692_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101671101687_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101669101692_))
                              (let ((_e101674101695_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101669101692_))))
                                (let ((_hd101673101698_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101674101695_)))
                                      (_tl101672101700_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101674101695_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl101672101700_))
                                      (let ((_e101677101703_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl101672101700_))))
                                        (let ((_hd101676101706_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e101677101703_)))
                                              (_tl101675101708_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e101677101703_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl101675101708_))
                                              ((lambda (_L101711_ _L101712_)
                                                 (let ((__tmp103145
                                                        (lambda ()
                                                          (let* ((_expr101728_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__1 _self101662_ _L101711_)))
                         (__tmp103146
                          (let ((__tmp103147
                                 (let ((__tmp103148
                                        (let ()
                                          (declare (not safe))
                                          (cons _expr101728_ '()))))
                                   (declare (not safe))
                                   (cons _L101712_ __tmp103148))))
                            (declare (not safe))
                            (cons '%#define-syntax __tmp103147))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp103146 _stx101663_))))
               (__tmp103143
                (let ((__tmp103144 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp103144 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp103145
                                                    gx#current-expander-phi
                                                    __tmp103143)))
                                               _hd101676101706_
                                               _hd101673101698_)
                                              (let ()
                                                (declare (not safe))
                                                (_g101665101682_
                                                 _g101666101685_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g101665101682_ _g101666101685_)))))
                              (let ()
                                (declare (not safe))
                                (_g101665101682_ _g101666101685_)))))
                      (let ()
                        (declare (not safe))
                        (_g101665101682_ _g101666101685_))))))
          (declare (not safe))
          (_g101664101730_ _stx101663_))))
    (define gxc#xform-begin-annotation%
      (lambda (_self101592_ _stx101593_)
        (let* ((_g101595101612_
                (lambda (_g101596101609_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101596101609_))))
               (_g101594101659_
                (lambda (_g101596101615_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101596101615_))
                      (let ((_e101601101617_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101596101615_))))
                        (let ((_hd101600101620_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101601101617_)))
                              (_tl101599101622_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101601101617_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101599101622_))
                              (let ((_e101604101625_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101599101622_))))
                                (let ((_hd101603101628_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101604101625_)))
                                      (_tl101602101630_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101604101625_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl101602101630_))
                                      (let ((_e101607101633_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl101602101630_))))
                                        (let ((_hd101606101636_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e101607101633_)))
                                              (_tl101605101638_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e101607101633_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl101605101638_))
                                              ((lambda (_L101641_ _L101642_)
                                                 (let* ((_expr101657_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self101592_
                                                            _L101641_)))
                                                        (__tmp103149
                                                         (let ((__tmp103150
                                                                (let ((__tmp103151
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _expr101657_ '()))))
                          (declare (not safe))
                          (cons _L101642_ __tmp103151))))
                   (declare (not safe))
                   (cons '%#begin-annotation __tmp103150))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp103149
                                                    _stx101593_)))
                                               _hd101606101636_
                                               _hd101603101628_)
                                              (let ()
                                                (declare (not safe))
                                                (_g101595101612_
                                                 _g101596101615_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g101595101612_ _g101596101615_)))))
                              (let ()
                                (declare (not safe))
                                (_g101595101612_ _g101596101615_)))))
                      (let ()
                        (declare (not safe))
                        (_g101595101612_ _g101596101615_))))))
          (declare (not safe))
          (_g101594101659_ _stx101593_))))
    (define gxc#xform-lambda%
      (lambda (_self101531_ _stx101532_)
        (let* ((_g101534101548_
                (lambda (_g101535101545_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101535101545_))))
               (_g101533101589_
                (lambda (_g101535101551_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101535101551_))
                      (let ((_e101540101553_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101535101551_))))
                        (let ((_hd101539101556_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101540101553_)))
                              (_tl101538101558_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101540101553_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101538101558_))
                              (let ((_e101543101561_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101538101558_))))
                                (let ((_hd101542101564_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101543101561_)))
                                      (_tl101541101566_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101543101561_))))
                                  ((lambda (_L101569_ _L101570_)
                                     (let* ((_body101587_
                                             (map (lambda (_g101582101584_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _self101531_
                                                       _g101582101584_)))
                                                  _L101569_))
                                            (__tmp103152
                                             (let ((__tmp103153
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L101570_
                                                            _body101587_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp103153))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp103152
                                        _stx101532_)))
                                   _tl101541101566_
                                   _hd101542101564_)))
                              (let ()
                                (declare (not safe))
                                (_g101534101548_ _g101535101551_)))))
                      (let ()
                        (declare (not safe))
                        (_g101534101548_ _g101535101551_))))))
          (declare (not safe))
          (_g101533101589_ _stx101532_))))
    (define gxc#xform-case-lambda%
      (lambda (_self101440_ _stx101441_)
        (letrec ((_clause-e101443_
                  (lambda (_clause101484_)
                    (let* ((_g101486101497_
                            (lambda (_g101487101494_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g101487101494_))))
                           (_g101485101528_
                            (lambda (_g101487101500_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g101487101500_))
                                  (let ((_e101492101502_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g101487101500_))))
                                    (let ((_hd101491101505_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e101492101502_)))
                                          (_tl101490101507_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e101492101502_))))
                                      ((lambda (_L101510_ _L101511_)
                                         (let ((_body101526_
                                                (map (lambda (_g101521101523_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _self101440_
                                                          _g101521101523_)))
                                                     _L101510_)))
                                           (declare (not safe))
                                           (cons _L101511_ _body101526_)))
                                       _tl101490101507_
                                       _hd101491101505_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g101486101497_ _g101487101500_))))))
                      (declare (not safe))
                      (_g101485101528_ _clause101484_)))))
          (let* ((_g101445101455_
                  (lambda (_g101446101452_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g101446101452_))))
                 (_g101444101481_
                  (lambda (_g101446101458_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g101446101458_))
                        (let ((_e101450101460_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g101446101458_))))
                          (let ((_hd101449101463_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e101450101460_)))
                                (_tl101448101465_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e101450101460_))))
                            ((lambda (_L101468_)
                               (let* ((_clauses101479_
                                       (map _clause-e101443_ _L101468_))
                                      (__tmp103154
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses101479_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp103154
                                  _stx101441_)))
                             _tl101448101465_)))
                        (let ()
                          (declare (not safe))
                          (_g101445101455_ _g101446101458_))))))
            (declare (not safe))
            (_g101444101481_ _stx101441_)))))
    (define gxc#xform-let-values%
      (lambda (_self101226_ _stx101227_)
        (let* ((_g101229101262_
                (lambda (_g101230101259_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101230101259_))))
               (_g101228101437_
                (lambda (_g101230101265_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101230101265_))
                      (let ((_e101237101267_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101230101265_))))
                        (let ((_hd101236101270_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101237101267_)))
                              (_tl101235101272_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101237101267_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101235101272_))
                              (let ((_e101240101275_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101235101272_))))
                                (let ((_hd101239101278_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101240101275_)))
                                      (_tl101238101280_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101240101275_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd101239101278_))
                                      (let ((_g103155_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd101239101278_
                                                '0))))
                                        (begin
                                          (let ((_g103156_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g103155_)
                                                       (##vector-length
                                                        _g103155_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g103156_ 2)))
                                                (error "Context expects 2 values"
                                                       _g103156_)))
                                          (let ((_target101241101283_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g103155_ 0)))
                                                (_tl101243101285_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g103155_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl101243101285_))
                                                (letrec ((_loop101244101288_
                                                          (lambda (_hd101242101291_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr101248101293_
                           _hd101249101295_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd101242101291_))
                        (let ((_e101245101298_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd101242101291_))))
                          (let ((_lp-hd101246101301_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e101245101298_)))
                                (_lp-tl101247101303_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e101245101298_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd101246101301_))
                                (let ((_e101254101306_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd101246101301_))))
                                  (let ((_hd101253101309_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e101254101306_)))
                                        (_tl101252101311_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e101254101306_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl101252101311_))
                                        (let ((_e101257101314_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl101252101311_))))
                                          (let ((_hd101256101317_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e101257101314_)))
                                                (_tl101255101319_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e101257101314_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl101255101319_))
                                                (let ((__tmp103169
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd101256101317_
                                                               _expr101248101293_)))
                                                      (__tmp103168
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd101253101309_
                                                               _hd101249101295_))))
                                                  (declare (not safe))
                                                  (_loop101244101288_
                                                   _lp-tl101247101303_
                                                   __tmp103169
                                                   __tmp103168))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g101229101262_
                                                   _g101230101265_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g101229101262_ _g101230101265_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g101229101262_ _g101230101265_)))))
                        (let ((_expr101250101322_ (reverse _expr101248101293_))
                              (_hd101251101324_ (reverse _hd101249101295_)))
                          ((lambda (_L101327_ _L101328_ _L101329_ _L101330_)
                             (let* ((_g101349101365_
                                     (lambda (_g101350101362_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g101350101362_))))
                                    (_g101348101423_
                                     (lambda (_g101350101368_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _g101350101368_))
                                           (let ((_g103157_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _g101350101368_
                                                     '0))))
                                             (begin
                                               (let ((_g103158_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g103157_)
                                                            (##vector-length
                                                             _g103157_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g103158_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g103158_)))
                                               (let ((_target101352101370_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g103157_
                                                         0)))
                                                     (_tl101354101372_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g103157_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl101354101372_))
                                                     (letrec ((_loop101355101375_
                                                               (lambda (_hd101353101378_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr101359101380_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _hd101353101378_))
                             (let ((_e101356101383_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _hd101353101378_))))
                               (let ((_lp-hd101357101386_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e101356101383_)))
                                     (_lp-tl101358101388_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e101356101383_))))
                                 (let ((__tmp103165
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd101357101386_
                                                _expr101359101380_))))
                                   (declare (not safe))
                                   (_loop101355101375_
                                    _lp-tl101358101388_
                                    __tmp103165))))
                             (let ((_expr101360101391_
                                    (reverse _expr101359101380_)))
                               ((lambda (_L101394_)
                                  (let ()
                                    (let* ((_body101411_
                                            (map (lambda (_g101406101408_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self101226_
                                                      _g101406101408_)))
                                                 _L101327_))
                                           (__tmp103159
                                            (let ((__tmp103160
                                                   (let ((__tmp103161
                                                          (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _L101394_
                                                               _L101329_))
                                                            (let ((__tmp103162
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g101412101416_
                                    _g101413101418_
                                    _g101414101420_)
                             (let ((__tmp103163
                                    (let ((__tmp103164
                                           (let ()
                                             (declare (not safe))
                                             (cons _g101412101416_ '()))))
                                      (declare (not safe))
                                      (cons _g101413101418_ __tmp103164))))
                               (declare (not safe))
                               (cons __tmp103163 _g101414101420_)))))
                      (declare (not safe))
                      (foldr2 __tmp103162 '() _L101394_ _L101329_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp103161
                                                           _body101411_))))
                                              (declare (not safe))
                                              (cons _L101330_ __tmp103160))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp103159
                                       _stx101227_))))
                                _expr101360101391_))))))
               (let ()
                 (declare (not safe))
                 (_loop101355101375_ _target101352101370_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g101349101365_
                                                        _g101350101368_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_g101349101365_
                                              _g101350101368_)))))
                                    (__tmp103166
                                     (map (lambda (_g101425101427_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self101226_
                                               _g101425101427_)))
                                          (let ((__tmp103167
                                                 (lambda (_g101429101432_
                                                          _g101430101434_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g101429101432_
                                                           _g101430101434_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp103167
                                                    '()
                                                    _L101328_)))))
                               (declare (not safe))
                               (_g101348101423_ __tmp103166)))
                           _tl101238101280_
                           _expr101250101322_
                           _hd101251101324_
                           _hd101236101270_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop101244101288_
                                                     _target101241101283_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g101229101262_
                                                   _g101230101265_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g101229101262_ _g101230101265_)))))
                              (let ()
                                (declare (not safe))
                                (_g101229101262_ _g101230101265_)))))
                      (let ()
                        (declare (not safe))
                        (_g101229101262_ _g101230101265_))))))
          (declare (not safe))
          (_g101228101437_ _stx101227_))))
    (define gxc#xform-operands
      (lambda (_self101178_ _stx101179_)
        (let* ((_g101181101192_
                (lambda (_g101182101189_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101182101189_))))
               (_g101180101223_
                (lambda (_g101182101195_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101182101195_))
                      (let ((_e101187101197_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101182101195_))))
                        (let ((_hd101186101200_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101187101197_)))
                              (_tl101185101202_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101187101197_))))
                          ((lambda (_L101205_ _L101206_)
                             (let* ((_rands101221_
                                     (map (lambda (_g101216101218_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self101178_
                                               _g101216101218_)))
                                          _L101205_))
                                    (__tmp103170
                                     (let ()
                                       (declare (not safe))
                                       (cons _L101206_ _rands101221_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp103170
                                _stx101179_)))
                           _tl101185101202_
                           _hd101186101200_)))
                      (let ()
                        (declare (not safe))
                        (_g101181101192_ _g101182101195_))))))
          (declare (not safe))
          (_g101180101223_ _stx101179_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_self101108_ _stx101109_)
        (let* ((_g101111101128_
                (lambda (_g101112101125_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101112101125_))))
               (_g101110101175_
                (lambda (_g101112101131_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101112101131_))
                      (let ((_e101117101133_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101112101131_))))
                        (let ((_hd101116101136_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101117101133_)))
                              (_tl101115101138_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101117101133_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101115101138_))
                              (let ((_e101120101141_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101115101138_))))
                                (let ((_hd101119101144_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101120101141_)))
                                      (_tl101118101146_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101120101141_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl101118101146_))
                                      (let ((_e101123101149_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl101118101146_))))
                                        (let ((_hd101122101152_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e101123101149_)))
                                              (_tl101121101154_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e101123101149_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl101121101154_))
                                              ((lambda (_L101157_ _L101158_)
                                                 (let* ((_expr101173_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self101108_
                                                            _L101157_)))
                                                        (__tmp103171
                                                         (let ((__tmp103172
                                                                (let ((__tmp103173
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _expr101173_ '()))))
                          (declare (not safe))
                          (cons _L101158_ __tmp103173))))
                   (declare (not safe))
                   (cons '%#set! __tmp103172))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp103171
                                                    _stx101109_)))
                                               _hd101122101152_
                                               _hd101119101144_)
                                              (let ()
                                                (declare (not safe))
                                                (_g101111101128_
                                                 _g101112101131_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g101111101128_ _g101112101131_)))))
                              (let ()
                                (declare (not safe))
                                (_g101111101128_ _g101112101131_)))))
                      (let ()
                        (declare (not safe))
                        (_g101111101128_ _g101112101131_))))))
          (declare (not safe))
          (_g101110101175_ _stx101109_))))))
