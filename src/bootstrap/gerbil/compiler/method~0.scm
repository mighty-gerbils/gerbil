(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1710781149)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_stx102908_)
        (let* ((_self102910_ (gxc#current-compile-method))
               (_$e102912_
                (let ((__tmp103081
                       (let ()
                         (declare (not safe))
                         (gxc#stx-car-e _stx102908_))))
                  (declare (not safe))
                  (method-ref _self102910_ __tmp103081))))
          (if _$e102912_
              ((lambda (_method102915_)
                 (declare (not safe))
                 (_method102915_ _self102910_ _stx102908_))
               _$e102912_)
              (let ((__tmp103083
                     (let () (declare (not safe)) (gxc#stx-car-e _stx102908_)))
                    (__tmp103082
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _stx102908_))))
                (declare (not safe))
                (error '"missing method"
                       _self102910_
                       __tmp103083
                       __tmp103082))))))
    (define gxc#compile-e__1
      (lambda (_self102918_ _stx102919_)
        (let ((_$e102921_
               (let ((__tmp103084
                      (let ()
                        (declare (not safe))
                        (gxc#stx-car-e _stx102919_))))
                 (declare (not safe))
                 (method-ref _self102918_ __tmp103084))))
          (if _$e102921_
              ((lambda (_method102924_)
                 (declare (not safe))
                 (_method102924_ _self102918_ _stx102919_))
               _$e102921_)
              (let ((__tmp103086
                     (let () (declare (not safe)) (gxc#stx-car-e _stx102919_)))
                    (__tmp103085
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _stx102919_))))
                (declare (not safe))
                (error '"missing method"
                       _self102918_
                       __tmp103086
                       __tmp103085))))))
    (define gxc#compile-e
      (lambda _g103088_
        (let ((_g103087_ (let () (declare (not safe)) (##length _g103088_))))
          (cond ((let () (declare (not safe)) (##fx= _g103087_ 1))
                 (apply (lambda (_stx102908_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _stx102908_)))
                        _g103088_))
                ((let () (declare (not safe)) (##fx= _g103087_ 2))
                 (apply (lambda (_self102918_ _stx102919_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__1 _self102918_ _stx102919_)))
                        _g103088_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g103088_))))))
    (define gxc#stx-car-e
      (lambda (_stx102906_)
        (let ((__tmp103089
               (car (let () (declare (not safe)) (gx#stx-e _stx102906_)))))
          (declare (not safe))
          (gx#stx-e __tmp103089))))
    (define gxc#void-method (lambda (_self102903_ _stx102904_) '#!void))
    (define gxc#false-method (lambda (_self102900_ _stx102901_) '#f))
    (define gxc#true-method (lambda (_self102897_ _stx102898_) '#t))
    (define gxc#identity-method
      (lambda (_self102894_ _stx102895_) _stx102895_))
    (define gxc#::void-expression::t
      (let ((__tmp103090 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp103090
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _$args102891_
        (apply make-instance gxc#::void-expression::t _$args102891_)))
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
      (let ((__tmp103091 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp103091
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _$args102887_
        (apply make-instance gxc#::void-special-form::t _$args102887_)))
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
      (let ((__tmp103092
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (make-class-type 'gxc#::void::t '::void __tmp103092 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _$args102883_ (apply make-instance gxc#::void::t _$args102883_)))
    (define gxc#::void-bind-methods!
      (make-promise
       (lambda ()
         (force gxc#::void-special-form-bind-methods!)
         (force gxc#::void-expression-bind-methods!))))
    (define gxc#::false-expression::t
      (let ((__tmp103093 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp103093
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _$args102879_
        (apply make-instance gxc#::false-expression::t _$args102879_)))
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
      (let ((__tmp103094 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp103094
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _$args102875_
        (apply make-instance gxc#::false-special-form::t _$args102875_)))
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
      (let ((__tmp103095
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (make-class-type 'gxc#::false::t '::false __tmp103095 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _$args102871_
        (apply make-instance gxc#::false::t _$args102871_)))
    (define gxc#::false-bind-methods!
      (make-promise
       (lambda ()
         (force gxc#::false-special-form-bind-methods!)
         (force gxc#::false-expression-bind-methods!))))
    (define gxc#::identity-expression::t
      (let ((__tmp103096 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp103096
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _$args102867_
        (apply make-instance gxc#::identity-expression::t _$args102867_)))
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
      (let ((__tmp103097 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp103097
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _$args102863_
        (apply make-instance gxc#::identity-special-form::t _$args102863_)))
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
      (let ((__tmp103098
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::identity::t
         '::identity
         __tmp103098
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _$args102859_
        (apply make-instance gxc#::identity::t _$args102859_)))
    (define gxc#::identity-bind-methods!
      (make-promise
       (lambda ()
         (force gxc#::identity-special-form-bind-methods!)
         (force gxc#::identity-expression-bind-methods!))))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp103099 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp103099
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _$args102855_
        (apply make-instance gxc#::basic-xform-expression::t _$args102855_)))
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
      (let ((__tmp103100
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp103100
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _$args102851_
        (apply make-instance gxc#::basic-xform::t _$args102851_)))
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
      (lambda (_self102807_ _stx102808_)
        (let* ((_g102810102820_
                (lambda (_g102811102817_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102811102817_))))
               (_g102809102847_
                (lambda (_g102811102823_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102811102823_))
                      (let ((_e102815102825_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102811102823_))))
                        (let ((_hd102814102828_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102815102825_)))
                              (_tl102813102830_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102815102825_))))
                          ((lambda (_L102833_)
                             (for-each
                              (lambda (_g102842102844_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1
                                   _self102807_
                                   _g102842102844_)))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _L102833_))))
                           _tl102813102830_)))
                      (let ()
                        (declare (not safe))
                        (_g102810102820_ _g102811102823_))))))
          (declare (not safe))
          (_g102809102847_ _stx102808_))))
    (define gxc#apply-last-begin%
      (lambda (_self102768_ _stx102769_)
        (let* ((_g102771102781_
                (lambda (_g102772102778_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102772102778_))))
               (_g102770102804_
                (lambda (_g102772102784_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102772102784_))
                      (let ((_e102776102786_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102772102784_))))
                        (let ((_hd102775102789_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102776102786_)))
                              (_tl102774102791_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102776102786_))))
                          ((lambda (_L102794_)
                             (let ((__tmp103101 (last _L102794_)))
                               (declare (not safe))
                               (gxc#compile-e__1 _self102768_ __tmp103101)))
                           _tl102774102791_)))
                      (let ()
                        (declare (not safe))
                        (_g102771102781_ _g102772102784_))))))
          (declare (not safe))
          (_g102770102804_ _stx102769_))))
    (define gxc#apply-begin-syntax%
      (lambda (_self102764_ _stx102765_)
        (let ((__tmp103104
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#apply-begin% _self102764_ _stx102765_))))
              (__tmp103102
               (let ((__tmp103103 (gx#current-expander-phi)))
                 (declare (not safe))
                 (fx+ __tmp103103 '1))))
          (declare (not safe))
          (call-with-parameters
           __tmp103104
           gx#current-expander-phi
           __tmp103102))))
    (define gxc#apply-module%
      (lambda (_self102703_ _stx102704_)
        (let* ((_g102706102720_
                (lambda (_g102707102717_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102707102717_))))
               (_g102705102761_
                (lambda (_g102707102723_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102707102723_))
                      (let ((_e102712102725_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102707102723_))))
                        (let ((_hd102711102728_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102712102725_)))
                              (_tl102710102730_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102712102725_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102710102730_))
                              (let ((_e102715102733_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102710102730_))))
                                (let ((_hd102714102736_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102715102733_)))
                                      (_tl102713102738_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102715102733_))))
                                  ((lambda (_L102741_ _L102742_)
                                     (let* ((_ctx102755_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L102742_)))
                                            (_ctx-stx102757_
                                             (##structure-ref
                                              _ctx102755_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp103105
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self102703_
                                                   _ctx-stx102757_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp103105
                                          gx#current-expander-context
                                          _ctx102755_))))
                                   _tl102713102738_
                                   _hd102714102736_)))
                              (let ()
                                (declare (not safe))
                                (_g102706102720_ _g102707102723_)))))
                      (let ()
                        (declare (not safe))
                        (_g102706102720_ _g102707102723_))))))
          (declare (not safe))
          (_g102705102761_ _stx102704_))))
    (define gxc#apply-begin-annotation%
      (lambda (_self102635_ _stx102636_)
        (let* ((_g102638102655_
                (lambda (_g102639102652_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102639102652_))))
               (_g102637102700_
                (lambda (_g102639102658_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102639102658_))
                      (let ((_e102644102660_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102639102658_))))
                        (let ((_hd102643102663_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102644102660_)))
                              (_tl102642102665_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102644102660_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102642102665_))
                              (let ((_e102647102668_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102642102665_))))
                                (let ((_hd102646102671_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102647102668_)))
                                      (_tl102645102673_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102647102668_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl102645102673_))
                                      (let ((_e102650102676_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl102645102673_))))
                                        (let ((_hd102649102679_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e102650102676_)))
                                              (_tl102648102681_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e102650102676_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl102648102681_))
                                              ((lambda (_L102684_ _L102685_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self102635_
                                                    _L102684_)))
                                               _hd102649102679_
                                               _hd102646102671_)
                                              (let ()
                                                (declare (not safe))
                                                (_g102638102655_
                                                 _g102639102658_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g102638102655_ _g102639102658_)))))
                              (let ()
                                (declare (not safe))
                                (_g102638102655_ _g102639102658_)))))
                      (let ()
                        (declare (not safe))
                        (_g102638102655_ _g102639102658_))))))
          (declare (not safe))
          (_g102637102700_ _stx102636_))))
    (define gxc#apply-define-values%
      (lambda (_self102567_ _stx102568_)
        (let* ((_g102570102587_
                (lambda (_g102571102584_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102571102584_))))
               (_g102569102632_
                (lambda (_g102571102590_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102571102590_))
                      (let ((_e102576102592_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102571102590_))))
                        (let ((_hd102575102595_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102576102592_)))
                              (_tl102574102597_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102576102592_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102574102597_))
                              (let ((_e102579102600_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102574102597_))))
                                (let ((_hd102578102603_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102579102600_)))
                                      (_tl102577102605_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102579102600_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl102577102605_))
                                      (let ((_e102582102608_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl102577102605_))))
                                        (let ((_hd102581102611_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e102582102608_)))
                                              (_tl102580102613_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e102582102608_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl102580102613_))
                                              ((lambda (_L102616_ _L102617_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self102567_
                                                    _L102616_)))
                                               _hd102581102611_
                                               _hd102578102603_)
                                              (let ()
                                                (declare (not safe))
                                                (_g102570102587_
                                                 _g102571102590_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g102570102587_ _g102571102590_)))))
                              (let ()
                                (declare (not safe))
                                (_g102570102587_ _g102571102590_)))))
                      (let ()
                        (declare (not safe))
                        (_g102570102587_ _g102571102590_))))))
          (declare (not safe))
          (_g102569102632_ _stx102568_))))
    (define gxc#apply-define-syntax%
      (lambda (_self102498_ _stx102499_)
        (let* ((_g102501102518_
                (lambda (_g102502102515_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102502102515_))))
               (_g102500102564_
                (lambda (_g102502102521_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102502102521_))
                      (let ((_e102507102523_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102502102521_))))
                        (let ((_hd102506102526_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102507102523_)))
                              (_tl102505102528_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102507102523_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102505102528_))
                              (let ((_e102510102531_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102505102528_))))
                                (let ((_hd102509102534_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102510102531_)))
                                      (_tl102508102536_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102510102531_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl102508102536_))
                                      (let ((_e102513102539_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl102508102536_))))
                                        (let ((_hd102512102542_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e102513102539_)))
                                              (_tl102511102544_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e102513102539_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl102511102544_))
                                              ((lambda (_L102547_ _L102548_)
                                                 (let ((__tmp103108
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _self102498_
                                                             _L102547_))))
                                                       (__tmp103106
                                                        (let ((__tmp103107
                                                               (gx#current-expander-phi)))
                                                          (declare (not safe))
                                                          (fx+ __tmp103107
                                                               '1))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp103108
                                                    gx#current-expander-phi
                                                    __tmp103106)))
                                               _hd102512102542_
                                               _hd102509102534_)
                                              (let ()
                                                (declare (not safe))
                                                (_g102501102518_
                                                 _g102502102521_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g102501102518_ _g102502102521_)))))
                              (let ()
                                (declare (not safe))
                                (_g102501102518_ _g102502102521_)))))
                      (let ()
                        (declare (not safe))
                        (_g102501102518_ _g102502102521_))))))
          (declare (not safe))
          (_g102500102564_ _stx102499_))))
    (define gxc#apply-body-lambda%
      (lambda (_self102430_ _stx102431_)
        (let* ((_g102433102450_
                (lambda (_g102434102447_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102434102447_))))
               (_g102432102495_
                (lambda (_g102434102453_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102434102453_))
                      (let ((_e102439102455_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102434102453_))))
                        (let ((_hd102438102458_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102439102455_)))
                              (_tl102437102460_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102439102455_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102437102460_))
                              (let ((_e102442102463_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102437102460_))))
                                (let ((_hd102441102466_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102442102463_)))
                                      (_tl102440102468_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102442102463_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl102440102468_))
                                      (let ((_e102445102471_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl102440102468_))))
                                        (let ((_hd102444102474_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e102445102471_)))
                                              (_tl102443102476_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e102445102471_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl102443102476_))
                                              ((lambda (_L102479_ _L102480_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self102430_
                                                    _L102479_)))
                                               _hd102444102474_
                                               _hd102441102466_)
                                              (let ()
                                                (declare (not safe))
                                                (_g102433102450_
                                                 _g102434102453_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g102433102450_ _g102434102453_)))))
                              (let ()
                                (declare (not safe))
                                (_g102433102450_ _g102434102453_)))))
                      (let ()
                        (declare (not safe))
                        (_g102433102450_ _g102434102453_))))))
          (declare (not safe))
          (_g102432102495_ _stx102431_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_self102312_ _stx102313_)
        (let* ((_g102315102343_
                (lambda (_g102316102340_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102316102340_))))
               (_g102314102427_
                (lambda (_g102316102346_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102316102346_))
                      (let ((_e102321102348_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102316102346_))))
                        (let ((_hd102320102351_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102321102348_)))
                              (_tl102319102353_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102321102348_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl102319102353_))
                              (let ((_g103109_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl102319102353_
                                        '0))))
                                (begin
                                  (let ((_g103110_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g103109_)
                                               (##vector-length _g103109_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g103110_ 2)))
                                        (error "Context expects 2 values"
                                               _g103110_)))
                                  (let ((_target102322102356_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g103109_ 0)))
                                        (_tl102324102358_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g103109_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl102324102358_))
                                        (letrec ((_loop102325102361_
                                                  (lambda (_hd102323102364_
                                                           _body102329102366_
                                                           _hd102330102368_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd102323102364_))
                                                        (let ((_e102326102371_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd102323102364_))))
                  (let ((_lp-hd102327102374_
                         (let () (declare (not safe)) (##car _e102326102371_)))
                        (_lp-tl102328102376_
                         (let ()
                           (declare (not safe))
                           (##cdr _e102326102371_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd102327102374_))
                        (let ((_e102335102379_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd102327102374_))))
                          (let ((_hd102334102382_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e102335102379_)))
                                (_tl102333102384_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e102335102379_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl102333102384_))
                                (let ((_e102338102387_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl102333102384_))))
                                  (let ((_hd102337102390_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e102338102387_)))
                                        (_tl102336102392_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e102338102387_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl102336102392_))
                                        (let ((__tmp103113
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd102337102390_
                                                       _body102329102366_)))
                                              (__tmp103112
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd102334102382_
                                                       _hd102330102368_))))
                                          (declare (not safe))
                                          (_loop102325102361_
                                           _lp-tl102328102376_
                                           __tmp103113
                                           __tmp103112))
                                        (let ()
                                          (declare (not safe))
                                          (_g102315102343_ _g102316102346_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g102315102343_ _g102316102346_)))))
                        (let ()
                          (declare (not safe))
                          (_g102315102343_ _g102316102346_)))))
                (let ((_body102331102395_ (reverse _body102329102366_))
                      (_hd102332102397_ (reverse _hd102330102368_)))
                  ((lambda (_L102400_ _L102401_)
                     (for-each
                      (lambda (_g102415102417_)
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _self102312_ _g102415102417_)))
                      (let ((__tmp103111
                             (lambda (_g102419102422_ _g102420102424_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g102419102422_ _g102420102424_)))))
                        (declare (not safe))
                        (foldr1 __tmp103111 '() _L102400_))))
                   _body102331102395_
                   _hd102332102397_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop102325102361_
                                             _target102322102356_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g102315102343_
                                           _g102316102346_))))))
                              (let ()
                                (declare (not safe))
                                (_g102315102343_ _g102316102346_)))))
                      (let ()
                        (declare (not safe))
                        (_g102315102343_ _g102316102346_))))))
          (declare (not safe))
          (_g102314102427_ _stx102313_))))
    (define gxc#apply-body-let-values%
      (lambda (_self102165_ _stx102166_)
        (let* ((_g102168102203_
                (lambda (_g102169102200_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102169102200_))))
               (_g102167102309_
                (lambda (_g102169102206_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102169102206_))
                      (let ((_e102175102208_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102169102206_))))
                        (let ((_hd102174102211_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102175102208_)))
                              (_tl102173102213_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102175102208_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102173102213_))
                              (let ((_e102178102216_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102173102213_))))
                                (let ((_hd102177102219_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102178102216_)))
                                      (_tl102176102221_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102178102216_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd102177102219_))
                                      (let ((_g103114_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd102177102219_
                                                '0))))
                                        (begin
                                          (let ((_g103115_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g103114_)
                                                       (##vector-length
                                                        _g103114_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g103115_ 2)))
                                                (error "Context expects 2 values"
                                                       _g103115_)))
                                          (let ((_target102179102224_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g103114_ 0)))
                                                (_tl102181102226_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g103114_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl102181102226_))
                                                (letrec ((_loop102182102229_
                                                          (lambda (_hd102180102232_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr102186102234_
                           _hd102187102236_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd102180102232_))
                        (let ((_e102183102239_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd102180102232_))))
                          (let ((_lp-hd102184102242_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e102183102239_)))
                                (_lp-tl102185102244_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e102183102239_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd102184102242_))
                                (let ((_e102192102247_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd102184102242_))))
                                  (let ((_hd102191102250_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e102192102247_)))
                                        (_tl102190102252_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e102192102247_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl102190102252_))
                                        (let ((_e102195102255_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl102190102252_))))
                                          (let ((_hd102194102258_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e102195102255_)))
                                                (_tl102193102260_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e102195102255_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl102193102260_))
                                                (let ((__tmp103119
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd102194102258_
                                                               _expr102186102234_)))
                                                      (__tmp103118
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd102191102250_
                                                               _hd102187102236_))))
                                                  (declare (not safe))
                                                  (_loop102182102229_
                                                   _lp-tl102185102244_
                                                   __tmp103119
                                                   __tmp103118))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g102168102203_
                                                   _g102169102206_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g102168102203_ _g102169102206_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g102168102203_ _g102169102206_)))))
                        (let ((_expr102188102263_ (reverse _expr102186102234_))
                              (_hd102189102265_ (reverse _hd102187102236_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102176102221_))
                              (let ((_e102198102268_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102176102221_))))
                                (let ((_hd102197102271_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102198102268_)))
                                      (_tl102196102273_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102198102268_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl102196102273_))
                                      ((lambda (_L102276_ _L102277_ _L102278_)
                                         (for-each
                                          (lambda (_g102297102299_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self102165_
                                               _g102297102299_)))
                                          (let ((__tmp103117
                                                 (lambda (_g102301102304_
                                                          _g102302102306_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g102301102304_
                                                           _g102302102306_))))
                                                (__tmp103116
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L102276_ '()))))
                                            (declare (not safe))
                                            (foldr1 __tmp103117
                                                    __tmp103116
                                                    _L102277_))))
                                       _hd102197102271_
                                       _expr102188102263_
                                       _hd102189102265_)
                                      (let ()
                                        (declare (not safe))
                                        (_g102168102203_ _g102169102206_)))))
                              (let ()
                                (declare (not safe))
                                (_g102168102203_ _g102169102206_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop102182102229_
                                                     _target102179102224_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g102168102203_
                                                   _g102169102206_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g102168102203_ _g102169102206_)))))
                              (let ()
                                (declare (not safe))
                                (_g102168102203_ _g102169102206_)))))
                      (let ()
                        (declare (not safe))
                        (_g102168102203_ _g102169102206_))))))
          (declare (not safe))
          (_g102167102309_ _stx102166_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_self102110_ _stx102111_)
        (let* ((_g102113102127_
                (lambda (_g102114102124_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102114102124_))))
               (_g102112102162_
                (lambda (_g102114102130_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102114102130_))
                      (let ((_e102119102132_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102114102130_))))
                        (let ((_hd102118102135_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102119102132_)))
                              (_tl102117102137_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102119102132_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102117102137_))
                              (let ((_e102122102140_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102117102137_))))
                                (let ((_hd102121102143_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102122102140_)))
                                      (_tl102120102145_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102122102140_))))
                                  ((lambda (_L102148_ _L102149_)
                                     (let ((__tmp103120 (last _L102148_)))
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _self102110_
                                        __tmp103120)))
                                   _tl102120102145_
                                   _hd102121102143_)))
                              (let ()
                                (declare (not safe))
                                (_g102113102127_ _g102114102130_)))))
                      (let ()
                        (declare (not safe))
                        (_g102113102127_ _g102114102130_))))))
          (declare (not safe))
          (_g102112102162_ _stx102111_))))
    (define gxc#apply-body-setq%
      (lambda (_self102042_ _stx102043_)
        (let* ((_g102045102062_
                (lambda (_g102046102059_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102046102059_))))
               (_g102044102107_
                (lambda (_g102046102065_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102046102065_))
                      (let ((_e102051102067_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102046102065_))))
                        (let ((_hd102050102070_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102051102067_)))
                              (_tl102049102072_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102051102067_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102049102072_))
                              (let ((_e102054102075_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102049102072_))))
                                (let ((_hd102053102078_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102054102075_)))
                                      (_tl102052102080_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102054102075_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl102052102080_))
                                      (let ((_e102057102083_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl102052102080_))))
                                        (let ((_hd102056102086_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e102057102083_)))
                                              (_tl102055102088_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e102057102083_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl102055102088_))
                                              ((lambda (_L102091_ _L102092_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self102042_
                                                    _L102091_)))
                                               _hd102056102086_
                                               _hd102053102078_)
                                              (let ()
                                                (declare (not safe))
                                                (_g102045102062_
                                                 _g102046102065_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g102045102062_ _g102046102065_)))))
                              (let ()
                                (declare (not safe))
                                (_g102045102062_ _g102046102065_)))))
                      (let ()
                        (declare (not safe))
                        (_g102045102062_ _g102046102065_))))))
          (declare (not safe))
          (_g102044102107_ _stx102043_))))
    (define gxc#apply-operands
      (lambda (_self101955_ _stx101956_)
        (let* ((_g101958101977_
                (lambda (_g101959101974_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101959101974_))))
               (_g101957102039_
                (lambda (_g101959101980_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101959101980_))
                      (let ((_e101963101982_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101959101980_))))
                        (let ((_hd101962101985_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101963101982_)))
                              (_tl101961101987_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101963101982_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl101961101987_))
                              (let ((_g103121_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl101961101987_
                                        '0))))
                                (begin
                                  (let ((_g103122_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g103121_)
                                               (##vector-length _g103121_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g103122_ 2)))
                                        (error "Context expects 2 values"
                                               _g103122_)))
                                  (let ((_target101964101990_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g103121_ 0)))
                                        (_tl101966101992_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g103121_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl101966101992_))
                                        (letrec ((_loop101967101995_
                                                  (lambda (_hd101965101998_
                                                           _rands101971102000_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd101965101998_))
                                                        (let ((_e101968102003_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd101965101998_))))
                  (let ((_lp-hd101969102006_
                         (let () (declare (not safe)) (##car _e101968102003_)))
                        (_lp-tl101970102008_
                         (let ()
                           (declare (not safe))
                           (##cdr _e101968102003_))))
                    (let ((__tmp103124
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd101969102006_ _rands101971102000_))))
                      (declare (not safe))
                      (_loop101967101995_ _lp-tl101970102008_ __tmp103124))))
                (let ((_rands101972102011_ (reverse _rands101971102000_)))
                  ((lambda (_L102014_)
                     (for-each
                      (lambda (_g102027102029_)
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _self101955_ _g102027102029_)))
                      (let ((__tmp103123
                             (lambda (_g102031102034_ _g102032102036_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g102031102034_ _g102032102036_)))))
                        (declare (not safe))
                        (foldr1 __tmp103123 '() _L102014_))))
                   _rands101972102011_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop101967101995_
                                             _target101964101990_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g101958101977_
                                           _g101959101980_))))))
                              (let ()
                                (declare (not safe))
                                (_g101958101977_ _g101959101980_)))))
                      (let ()
                        (declare (not safe))
                        (_g101958101977_ _g101959101980_))))))
          (declare (not safe))
          (_g101957102039_ _stx101956_))))
    (define gxc#xform-wrap-source
      (lambda (_stx101952_ _src-stx101953_)
        (let ((__tmp103125
               (let () (declare (not safe)) (gx#stx-source _src-stx101953_))))
          (declare (not safe))
          (gx#stx-wrap-source _stx101952_ __tmp103125))))
    (define gxc#xform-begin%
      (lambda (_self101907_ _stx101908_)
        (let* ((_g101910101920_
                (lambda (_g101911101917_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101911101917_))))
               (_g101909101949_
                (lambda (_g101911101923_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101911101923_))
                      (let ((_e101915101925_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101911101923_))))
                        (let ((_hd101914101928_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101915101925_)))
                              (_tl101913101930_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101915101925_))))
                          ((lambda (_L101933_)
                             (let* ((_forms101947_
                                     (map (lambda (_g101942101944_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self101907_
                                               _g101942101944_)))
                                          _L101933_))
                                    (__tmp103126
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#begin _forms101947_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp103126
                                _stx101908_)))
                           _tl101913101930_)))
                      (let ()
                        (declare (not safe))
                        (_g101910101920_ _g101911101923_))))))
          (declare (not safe))
          (_g101909101949_ _stx101908_))))
    (define gxc#xform-begin-syntax%
      (lambda (_self101861_ _stx101862_)
        (let* ((_g101864101874_
                (lambda (_g101865101871_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101865101871_))))
               (_g101863101904_
                (lambda (_g101865101877_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101865101877_))
                      (let ((_e101869101879_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101865101877_))))
                        (let ((_hd101868101882_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101869101879_)))
                              (_tl101867101884_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101869101879_))))
                          ((lambda (_L101887_)
                             (let ((__tmp103129
                                    (lambda ()
                                      (let* ((_forms101902_
                                              (map (lambda (_g101897101899_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _self101861_
                                                        _g101897101899_)))
                                                   _L101887_))
                                             (__tmp103130
                                              (let ()
                                                (declare (not safe))
                                                (cons '%#begin-syntax
                                                      _forms101902_))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp103130
                                         _stx101862_))))
                                   (__tmp103127
                                    (let ((__tmp103128
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp103128 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp103129
                                gx#current-expander-phi
                                __tmp103127)))
                           _tl101867101884_)))
                      (let ()
                        (declare (not safe))
                        (_g101864101874_ _g101865101877_))))))
          (declare (not safe))
          (_g101863101904_ _stx101862_))))
    (define gxc#xform-module%
      (lambda (_self101798_ _stx101799_)
        (let* ((_g101801101815_
                (lambda (_g101802101812_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101802101812_))))
               (_g101800101858_
                (lambda (_g101802101818_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101802101818_))
                      (let ((_e101807101820_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101802101818_))))
                        (let ((_hd101806101823_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101807101820_)))
                              (_tl101805101825_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101807101820_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101805101825_))
                              (let ((_e101810101828_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101805101825_))))
                                (let ((_hd101809101831_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101810101828_)))
                                      (_tl101808101833_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101810101828_))))
                                  ((lambda (_L101836_ _L101837_)
                                     (let* ((_ctx101850_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L101837_)))
                                            (_code101852_
                                             (##structure-ref
                                              _ctx101850_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_code101855_
                                             (let ((__tmp103131
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _self101798_
                                                         _code101852_)))))
                                               (declare (not safe))
                                               (call-with-parameters
                                                __tmp103131
                                                gx#current-expander-context
                                                _ctx101850_))))
                                       (##structure-set!
                                        _ctx101850_
                                        _code101855_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp103132
                                              (let ((__tmp103133
                                                     (let ((__tmp103134
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _code101855_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L101837_ __tmp103134))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#module __tmp103133))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp103132
                                          _stx101799_))))
                                   _tl101808101833_
                                   _hd101809101831_)))
                              (let ()
                                (declare (not safe))
                                (_g101801101815_ _g101802101818_)))))
                      (let ()
                        (declare (not safe))
                        (_g101801101815_ _g101802101818_))))))
          (declare (not safe))
          (_g101800101858_ _stx101799_))))
    (define gxc#xform-define-values%
      (lambda (_self101728_ _stx101729_)
        (let* ((_g101731101748_
                (lambda (_g101732101745_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101732101745_))))
               (_g101730101795_
                (lambda (_g101732101751_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101732101751_))
                      (let ((_e101737101753_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101732101751_))))
                        (let ((_hd101736101756_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101737101753_)))
                              (_tl101735101758_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101737101753_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101735101758_))
                              (let ((_e101740101761_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101735101758_))))
                                (let ((_hd101739101764_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101740101761_)))
                                      (_tl101738101766_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101740101761_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl101738101766_))
                                      (let ((_e101743101769_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl101738101766_))))
                                        (let ((_hd101742101772_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e101743101769_)))
                                              (_tl101741101774_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e101743101769_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl101741101774_))
                                              ((lambda (_L101777_ _L101778_)
                                                 (let* ((_expr101793_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self101728_
                                                            _L101777_)))
                                                        (__tmp103135
                                                         (let ((__tmp103136
                                                                (let ((__tmp103137
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _expr101793_ '()))))
                          (declare (not safe))
                          (cons _L101778_ __tmp103137))))
                   (declare (not safe))
                   (cons '%#define-values __tmp103136))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp103135
                                                    _stx101729_)))
                                               _hd101742101772_
                                               _hd101739101764_)
                                              (let ()
                                                (declare (not safe))
                                                (_g101731101748_
                                                 _g101732101751_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g101731101748_ _g101732101751_)))))
                              (let ()
                                (declare (not safe))
                                (_g101731101748_ _g101732101751_)))))
                      (let ()
                        (declare (not safe))
                        (_g101731101748_ _g101732101751_))))))
          (declare (not safe))
          (_g101730101795_ _stx101729_))))
    (define gxc#xform-define-syntax%
      (lambda (_self101657_ _stx101658_)
        (let* ((_g101660101677_
                (lambda (_g101661101674_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101661101674_))))
               (_g101659101725_
                (lambda (_g101661101680_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101661101680_))
                      (let ((_e101666101682_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101661101680_))))
                        (let ((_hd101665101685_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101666101682_)))
                              (_tl101664101687_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101666101682_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101664101687_))
                              (let ((_e101669101690_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101664101687_))))
                                (let ((_hd101668101693_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101669101690_)))
                                      (_tl101667101695_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101669101690_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl101667101695_))
                                      (let ((_e101672101698_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl101667101695_))))
                                        (let ((_hd101671101701_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e101672101698_)))
                                              (_tl101670101703_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e101672101698_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl101670101703_))
                                              ((lambda (_L101706_ _L101707_)
                                                 (let ((__tmp103140
                                                        (lambda ()
                                                          (let* ((_expr101723_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__1 _self101657_ _L101706_)))
                         (__tmp103141
                          (let ((__tmp103142
                                 (let ((__tmp103143
                                        (let ()
                                          (declare (not safe))
                                          (cons _expr101723_ '()))))
                                   (declare (not safe))
                                   (cons _L101707_ __tmp103143))))
                            (declare (not safe))
                            (cons '%#define-syntax __tmp103142))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp103141 _stx101658_))))
               (__tmp103138
                (let ((__tmp103139 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp103139 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp103140
                                                    gx#current-expander-phi
                                                    __tmp103138)))
                                               _hd101671101701_
                                               _hd101668101693_)
                                              (let ()
                                                (declare (not safe))
                                                (_g101660101677_
                                                 _g101661101680_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g101660101677_ _g101661101680_)))))
                              (let ()
                                (declare (not safe))
                                (_g101660101677_ _g101661101680_)))))
                      (let ()
                        (declare (not safe))
                        (_g101660101677_ _g101661101680_))))))
          (declare (not safe))
          (_g101659101725_ _stx101658_))))
    (define gxc#xform-begin-annotation%
      (lambda (_self101587_ _stx101588_)
        (let* ((_g101590101607_
                (lambda (_g101591101604_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101591101604_))))
               (_g101589101654_
                (lambda (_g101591101610_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101591101610_))
                      (let ((_e101596101612_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101591101610_))))
                        (let ((_hd101595101615_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101596101612_)))
                              (_tl101594101617_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101596101612_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101594101617_))
                              (let ((_e101599101620_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101594101617_))))
                                (let ((_hd101598101623_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101599101620_)))
                                      (_tl101597101625_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101599101620_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl101597101625_))
                                      (let ((_e101602101628_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl101597101625_))))
                                        (let ((_hd101601101631_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e101602101628_)))
                                              (_tl101600101633_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e101602101628_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl101600101633_))
                                              ((lambda (_L101636_ _L101637_)
                                                 (let* ((_expr101652_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self101587_
                                                            _L101636_)))
                                                        (__tmp103144
                                                         (let ((__tmp103145
                                                                (let ((__tmp103146
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _expr101652_ '()))))
                          (declare (not safe))
                          (cons _L101637_ __tmp103146))))
                   (declare (not safe))
                   (cons '%#begin-annotation __tmp103145))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp103144
                                                    _stx101588_)))
                                               _hd101601101631_
                                               _hd101598101623_)
                                              (let ()
                                                (declare (not safe))
                                                (_g101590101607_
                                                 _g101591101610_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g101590101607_ _g101591101610_)))))
                              (let ()
                                (declare (not safe))
                                (_g101590101607_ _g101591101610_)))))
                      (let ()
                        (declare (not safe))
                        (_g101590101607_ _g101591101610_))))))
          (declare (not safe))
          (_g101589101654_ _stx101588_))))
    (define gxc#xform-lambda%
      (lambda (_self101526_ _stx101527_)
        (let* ((_g101529101543_
                (lambda (_g101530101540_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101530101540_))))
               (_g101528101584_
                (lambda (_g101530101546_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101530101546_))
                      (let ((_e101535101548_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101530101546_))))
                        (let ((_hd101534101551_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101535101548_)))
                              (_tl101533101553_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101535101548_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101533101553_))
                              (let ((_e101538101556_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101533101553_))))
                                (let ((_hd101537101559_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101538101556_)))
                                      (_tl101536101561_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101538101556_))))
                                  ((lambda (_L101564_ _L101565_)
                                     (let* ((_body101582_
                                             (map (lambda (_g101577101579_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _self101526_
                                                       _g101577101579_)))
                                                  _L101564_))
                                            (__tmp103147
                                             (let ((__tmp103148
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L101565_
                                                            _body101582_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp103148))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp103147
                                        _stx101527_)))
                                   _tl101536101561_
                                   _hd101537101559_)))
                              (let ()
                                (declare (not safe))
                                (_g101529101543_ _g101530101546_)))))
                      (let ()
                        (declare (not safe))
                        (_g101529101543_ _g101530101546_))))))
          (declare (not safe))
          (_g101528101584_ _stx101527_))))
    (define gxc#xform-case-lambda%
      (lambda (_self101435_ _stx101436_)
        (letrec ((_clause-e101438_
                  (lambda (_clause101479_)
                    (let* ((_g101481101492_
                            (lambda (_g101482101489_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g101482101489_))))
                           (_g101480101523_
                            (lambda (_g101482101495_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g101482101495_))
                                  (let ((_e101487101497_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g101482101495_))))
                                    (let ((_hd101486101500_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e101487101497_)))
                                          (_tl101485101502_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e101487101497_))))
                                      ((lambda (_L101505_ _L101506_)
                                         (let ((_body101521_
                                                (map (lambda (_g101516101518_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _self101435_
                                                          _g101516101518_)))
                                                     _L101505_)))
                                           (declare (not safe))
                                           (cons _L101506_ _body101521_)))
                                       _tl101485101502_
                                       _hd101486101500_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g101481101492_ _g101482101495_))))))
                      (declare (not safe))
                      (_g101480101523_ _clause101479_)))))
          (let* ((_g101440101450_
                  (lambda (_g101441101447_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g101441101447_))))
                 (_g101439101476_
                  (lambda (_g101441101453_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g101441101453_))
                        (let ((_e101445101455_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g101441101453_))))
                          (let ((_hd101444101458_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e101445101455_)))
                                (_tl101443101460_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e101445101455_))))
                            ((lambda (_L101463_)
                               (let* ((_clauses101474_
                                       (map _clause-e101438_ _L101463_))
                                      (__tmp103149
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses101474_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp103149
                                  _stx101436_)))
                             _tl101443101460_)))
                        (let ()
                          (declare (not safe))
                          (_g101440101450_ _g101441101453_))))))
            (declare (not safe))
            (_g101439101476_ _stx101436_)))))
    (define gxc#xform-let-values%
      (lambda (_self101221_ _stx101222_)
        (let* ((_g101224101257_
                (lambda (_g101225101254_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101225101254_))))
               (_g101223101432_
                (lambda (_g101225101260_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101225101260_))
                      (let ((_e101232101262_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101225101260_))))
                        (let ((_hd101231101265_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101232101262_)))
                              (_tl101230101267_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101232101262_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101230101267_))
                              (let ((_e101235101270_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101230101267_))))
                                (let ((_hd101234101273_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101235101270_)))
                                      (_tl101233101275_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101235101270_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd101234101273_))
                                      (let ((_g103150_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd101234101273_
                                                '0))))
                                        (begin
                                          (let ((_g103151_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g103150_)
                                                       (##vector-length
                                                        _g103150_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g103151_ 2)))
                                                (error "Context expects 2 values"
                                                       _g103151_)))
                                          (let ((_target101236101278_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g103150_ 0)))
                                                (_tl101238101280_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g103150_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl101238101280_))
                                                (letrec ((_loop101239101283_
                                                          (lambda (_hd101237101286_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr101243101288_
                           _hd101244101290_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd101237101286_))
                        (let ((_e101240101293_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd101237101286_))))
                          (let ((_lp-hd101241101296_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e101240101293_)))
                                (_lp-tl101242101298_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e101240101293_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd101241101296_))
                                (let ((_e101249101301_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd101241101296_))))
                                  (let ((_hd101248101304_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e101249101301_)))
                                        (_tl101247101306_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e101249101301_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl101247101306_))
                                        (let ((_e101252101309_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl101247101306_))))
                                          (let ((_hd101251101312_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e101252101309_)))
                                                (_tl101250101314_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e101252101309_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl101250101314_))
                                                (let ((__tmp103164
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd101251101312_
                                                               _expr101243101288_)))
                                                      (__tmp103163
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd101248101304_
                                                               _hd101244101290_))))
                                                  (declare (not safe))
                                                  (_loop101239101283_
                                                   _lp-tl101242101298_
                                                   __tmp103164
                                                   __tmp103163))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g101224101257_
                                                   _g101225101260_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g101224101257_ _g101225101260_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g101224101257_ _g101225101260_)))))
                        (let ((_expr101245101317_ (reverse _expr101243101288_))
                              (_hd101246101319_ (reverse _hd101244101290_)))
                          ((lambda (_L101322_ _L101323_ _L101324_ _L101325_)
                             (let* ((_g101344101360_
                                     (lambda (_g101345101357_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g101345101357_))))
                                    (_g101343101418_
                                     (lambda (_g101345101363_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _g101345101363_))
                                           (let ((_g103152_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _g101345101363_
                                                     '0))))
                                             (begin
                                               (let ((_g103153_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g103152_)
                                                            (##vector-length
                                                             _g103152_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g103153_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g103153_)))
                                               (let ((_target101347101365_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g103152_
                                                         0)))
                                                     (_tl101349101367_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g103152_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl101349101367_))
                                                     (letrec ((_loop101350101370_
                                                               (lambda (_hd101348101373_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr101354101375_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _hd101348101373_))
                             (let ((_e101351101378_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _hd101348101373_))))
                               (let ((_lp-hd101352101381_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e101351101378_)))
                                     (_lp-tl101353101383_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e101351101378_))))
                                 (let ((__tmp103160
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd101352101381_
                                                _expr101354101375_))))
                                   (declare (not safe))
                                   (_loop101350101370_
                                    _lp-tl101353101383_
                                    __tmp103160))))
                             (let ((_expr101355101386_
                                    (reverse _expr101354101375_)))
                               ((lambda (_L101389_)
                                  (let ()
                                    (let* ((_body101406_
                                            (map (lambda (_g101401101403_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self101221_
                                                      _g101401101403_)))
                                                 _L101322_))
                                           (__tmp103154
                                            (let ((__tmp103155
                                                   (let ((__tmp103156
                                                          (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _L101389_
                                                               _L101324_))
                                                            (let ((__tmp103157
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g101407101411_
                                    _g101408101413_
                                    _g101409101415_)
                             (let ((__tmp103158
                                    (let ((__tmp103159
                                           (let ()
                                             (declare (not safe))
                                             (cons _g101407101411_ '()))))
                                      (declare (not safe))
                                      (cons _g101408101413_ __tmp103159))))
                               (declare (not safe))
                               (cons __tmp103158 _g101409101415_)))))
                      (declare (not safe))
                      (foldr2 __tmp103157 '() _L101389_ _L101324_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp103156
                                                           _body101406_))))
                                              (declare (not safe))
                                              (cons _L101325_ __tmp103155))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp103154
                                       _stx101222_))))
                                _expr101355101386_))))))
               (let ()
                 (declare (not safe))
                 (_loop101350101370_ _target101347101365_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g101344101360_
                                                        _g101345101363_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_g101344101360_
                                              _g101345101363_)))))
                                    (__tmp103161
                                     (map (lambda (_g101420101422_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self101221_
                                               _g101420101422_)))
                                          (let ((__tmp103162
                                                 (lambda (_g101424101427_
                                                          _g101425101429_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g101424101427_
                                                           _g101425101429_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp103162
                                                    '()
                                                    _L101323_)))))
                               (declare (not safe))
                               (_g101343101418_ __tmp103161)))
                           _tl101233101275_
                           _expr101245101317_
                           _hd101246101319_
                           _hd101231101265_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop101239101283_
                                                     _target101236101278_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g101224101257_
                                                   _g101225101260_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g101224101257_ _g101225101260_)))))
                              (let ()
                                (declare (not safe))
                                (_g101224101257_ _g101225101260_)))))
                      (let ()
                        (declare (not safe))
                        (_g101224101257_ _g101225101260_))))))
          (declare (not safe))
          (_g101223101432_ _stx101222_))))
    (define gxc#xform-operands
      (lambda (_self101173_ _stx101174_)
        (let* ((_g101176101187_
                (lambda (_g101177101184_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101177101184_))))
               (_g101175101218_
                (lambda (_g101177101190_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101177101190_))
                      (let ((_e101182101192_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101177101190_))))
                        (let ((_hd101181101195_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101182101192_)))
                              (_tl101180101197_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101182101192_))))
                          ((lambda (_L101200_ _L101201_)
                             (let* ((_rands101216_
                                     (map (lambda (_g101211101213_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self101173_
                                               _g101211101213_)))
                                          _L101200_))
                                    (__tmp103165
                                     (let ()
                                       (declare (not safe))
                                       (cons _L101201_ _rands101216_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp103165
                                _stx101174_)))
                           _tl101180101197_
                           _hd101181101195_)))
                      (let ()
                        (declare (not safe))
                        (_g101176101187_ _g101177101190_))))))
          (declare (not safe))
          (_g101175101218_ _stx101174_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_self101103_ _stx101104_)
        (let* ((_g101106101123_
                (lambda (_g101107101120_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101107101120_))))
               (_g101105101170_
                (lambda (_g101107101126_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101107101126_))
                      (let ((_e101112101128_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101107101126_))))
                        (let ((_hd101111101131_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101112101128_)))
                              (_tl101110101133_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101112101128_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101110101133_))
                              (let ((_e101115101136_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101110101133_))))
                                (let ((_hd101114101139_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101115101136_)))
                                      (_tl101113101141_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101115101136_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl101113101141_))
                                      (let ((_e101118101144_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl101113101141_))))
                                        (let ((_hd101117101147_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e101118101144_)))
                                              (_tl101116101149_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e101118101144_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl101116101149_))
                                              ((lambda (_L101152_ _L101153_)
                                                 (let* ((_expr101168_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self101103_
                                                            _L101152_)))
                                                        (__tmp103166
                                                         (let ((__tmp103167
                                                                (let ((__tmp103168
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _expr101168_ '()))))
                          (declare (not safe))
                          (cons _L101153_ __tmp103168))))
                   (declare (not safe))
                   (cons '%#set! __tmp103167))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp103166
                                                    _stx101104_)))
                                               _hd101117101147_
                                               _hd101114101139_)
                                              (let ()
                                                (declare (not safe))
                                                (_g101106101123_
                                                 _g101107101126_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g101106101123_ _g101107101126_)))))
                              (let ()
                                (declare (not safe))
                                (_g101106101123_ _g101107101126_)))))
                      (let ()
                        (declare (not safe))
                        (_g101106101123_ _g101107101126_))))))
          (declare (not safe))
          (_g101105101170_ _stx101104_))))))
