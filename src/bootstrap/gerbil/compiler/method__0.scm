(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1710440200)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_stx101157_)
        (let* ((_self101159_ (gxc#current-compile-method))
               (_$e101161_
                (let ((__tmp101330
                       (let ()
                         (declare (not safe))
                         (gxc#stx-car-e _stx101157_))))
                  (declare (not safe))
                  (method-ref _self101159_ __tmp101330))))
          (if _$e101161_
              ((lambda (_method101164_)
                 (declare (not safe))
                 (_method101164_ _self101159_ _stx101157_))
               _$e101161_)
              (let ((__tmp101332
                     (let () (declare (not safe)) (gxc#stx-car-e _stx101157_)))
                    (__tmp101331
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _stx101157_))))
                (declare (not safe))
                (error '"missing method"
                       _self101159_
                       __tmp101332
                       __tmp101331))))))
    (define gxc#compile-e__1
      (lambda (_self101167_ _stx101168_)
        (let ((_$e101170_
               (let ((__tmp101333
                      (let ()
                        (declare (not safe))
                        (gxc#stx-car-e _stx101168_))))
                 (declare (not safe))
                 (method-ref _self101167_ __tmp101333))))
          (if _$e101170_
              ((lambda (_method101173_)
                 (declare (not safe))
                 (_method101173_ _self101167_ _stx101168_))
               _$e101170_)
              (let ((__tmp101335
                     (let () (declare (not safe)) (gxc#stx-car-e _stx101168_)))
                    (__tmp101334
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _stx101168_))))
                (declare (not safe))
                (error '"missing method"
                       _self101167_
                       __tmp101335
                       __tmp101334))))))
    (define gxc#compile-e
      (lambda _g101337_
        (let ((_g101336_ (let () (declare (not safe)) (##length _g101337_))))
          (cond ((let () (declare (not safe)) (##fx= _g101336_ 1))
                 (apply (lambda (_stx101157_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _stx101157_)))
                        _g101337_))
                ((let () (declare (not safe)) (##fx= _g101336_ 2))
                 (apply (lambda (_self101167_ _stx101168_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__1 _self101167_ _stx101168_)))
                        _g101337_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g101337_))))))
    (define gxc#stx-car-e
      (lambda (_stx101155_)
        (let ((__tmp101338
               (car (let () (declare (not safe)) (gx#stx-e _stx101155_)))))
          (declare (not safe))
          (gx#stx-e __tmp101338))))
    (define gxc#void-method (lambda (_self101152_ _stx101153_) '#!void))
    (define gxc#false-method (lambda (_self101149_ _stx101150_) '#f))
    (define gxc#true-method (lambda (_self101146_ _stx101147_) '#t))
    (define gxc#identity-method
      (lambda (_self101143_ _stx101144_) _stx101144_))
    (define gxc#::void-expression::t
      (let ((__tmp101339 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp101339
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _$args101140_
        (apply make-instance gxc#::void-expression::t _$args101140_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp101340
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
        (make-promise __tmp101340)))
    (define gxc#::void-special-form::t
      (let ((__tmp101341 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp101341
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _$args101136_
        (apply make-instance gxc#::void-special-form::t _$args101136_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp101342
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
        (make-promise __tmp101342)))
    (define gxc#::void::t
      (let ((__tmp101343
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (make-class-type 'gxc#::void::t '::void __tmp101343 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _$args101132_ (apply make-instance gxc#::void::t _$args101132_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp101344
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (make-promise __tmp101344)))
    (define gxc#::false-expression::t
      (let ((__tmp101345 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp101345
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _$args101128_
        (apply make-instance gxc#::false-expression::t _$args101128_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp101346
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
        (make-promise __tmp101346)))
    (define gxc#::false-special-form::t
      (let ((__tmp101347 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp101347
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _$args101124_
        (apply make-instance gxc#::false-special-form::t _$args101124_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp101348
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
        (make-promise __tmp101348)))
    (define gxc#::false::t
      (let ((__tmp101349
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (make-class-type 'gxc#::false::t '::false __tmp101349 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _$args101120_
        (apply make-instance gxc#::false::t _$args101120_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp101350
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (make-promise __tmp101350)))
    (define gxc#::identity-expression::t
      (let ((__tmp101351 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp101351
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _$args101116_
        (apply make-instance gxc#::identity-expression::t _$args101116_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp101352
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
        (make-promise __tmp101352)))
    (define gxc#::identity-special-form::t
      (let ((__tmp101353 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp101353
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _$args101112_
        (apply make-instance gxc#::identity-special-form::t _$args101112_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp101354
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
        (make-promise __tmp101354)))
    (define gxc#::identity::t
      (let ((__tmp101355
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::identity::t
         '::identity
         __tmp101355
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _$args101108_
        (apply make-instance gxc#::identity::t _$args101108_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp101356
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (make-promise __tmp101356)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp101357 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp101357
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _$args101104_
        (apply make-instance gxc#::basic-xform-expression::t _$args101104_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp101358
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
        (make-promise __tmp101358)))
    (define gxc#::basic-xform::t
      (let ((__tmp101359
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp101359
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _$args101100_
        (apply make-instance gxc#::basic-xform::t _$args101100_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp101360
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
        (make-promise __tmp101360)))
    (define gxc#apply-begin%
      (lambda (_self101056_ _stx101057_)
        (let* ((_g101059101069_
                (lambda (_g101060101066_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101060101066_))))
               (_g101058101096_
                (lambda (_g101060101072_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101060101072_))
                      (let ((_e101064101074_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101060101072_))))
                        (let ((_hd101063101077_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101064101074_)))
                              (_tl101062101079_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101064101074_))))
                          ((lambda (_L101082_)
                             (for-each
                              (lambda (_g101091101093_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1
                                   _self101056_
                                   _g101091101093_)))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _L101082_))))
                           _tl101062101079_)))
                      (let ()
                        (declare (not safe))
                        (_g101059101069_ _g101060101072_))))))
          (declare (not safe))
          (_g101058101096_ _stx101057_))))
    (define gxc#apply-last-begin%
      (lambda (_self101017_ _stx101018_)
        (let* ((_g101020101030_
                (lambda (_g101021101027_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101021101027_))))
               (_g101019101053_
                (lambda (_g101021101033_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101021101033_))
                      (let ((_e101025101035_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101021101033_))))
                        (let ((_hd101024101038_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101025101035_)))
                              (_tl101023101040_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101025101035_))))
                          ((lambda (_L101043_)
                             (let ((__tmp101361 (last _L101043_)))
                               (declare (not safe))
                               (gxc#compile-e__1 _self101017_ __tmp101361)))
                           _tl101023101040_)))
                      (let ()
                        (declare (not safe))
                        (_g101020101030_ _g101021101033_))))))
          (declare (not safe))
          (_g101019101053_ _stx101018_))))
    (define gxc#apply-begin-syntax%
      (lambda (_self101013_ _stx101014_)
        (let ((__tmp101364
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#apply-begin% _self101013_ _stx101014_))))
              (__tmp101362
               (let ((__tmp101363 (gx#current-expander-phi)))
                 (declare (not safe))
                 (fx+ __tmp101363 '1))))
          (declare (not safe))
          (call-with-parameters
           __tmp101364
           gx#current-expander-phi
           __tmp101362))))
    (define gxc#apply-module%
      (lambda (_self100952_ _stx100953_)
        (let* ((_g100955100969_
                (lambda (_g100956100966_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g100956100966_))))
               (_g100954101010_
                (lambda (_g100956100972_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g100956100972_))
                      (let ((_e100961100974_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g100956100972_))))
                        (let ((_hd100960100977_
                               (let ()
                                 (declare (not safe))
                                 (##car _e100961100974_)))
                              (_tl100959100979_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e100961100974_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl100959100979_))
                              (let ((_e100964100982_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl100959100979_))))
                                (let ((_hd100963100985_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e100964100982_)))
                                      (_tl100962100987_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e100964100982_))))
                                  ((lambda (_L100990_ _L100991_)
                                     (let* ((_ctx101004_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L100991_)))
                                            (_ctx-stx101006_
                                             (##structure-ref
                                              _ctx101004_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp101365
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self100952_
                                                   _ctx-stx101006_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp101365
                                          gx#current-expander-context
                                          _ctx101004_))))
                                   _tl100962100987_
                                   _hd100963100985_)))
                              (let ()
                                (declare (not safe))
                                (_g100955100969_ _g100956100972_)))))
                      (let ()
                        (declare (not safe))
                        (_g100955100969_ _g100956100972_))))))
          (declare (not safe))
          (_g100954101010_ _stx100953_))))
    (define gxc#apply-begin-annotation%
      (lambda (_self100884_ _stx100885_)
        (let* ((_g100887100904_
                (lambda (_g100888100901_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g100888100901_))))
               (_g100886100949_
                (lambda (_g100888100907_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g100888100907_))
                      (let ((_e100893100909_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g100888100907_))))
                        (let ((_hd100892100912_
                               (let ()
                                 (declare (not safe))
                                 (##car _e100893100909_)))
                              (_tl100891100914_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e100893100909_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl100891100914_))
                              (let ((_e100896100917_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl100891100914_))))
                                (let ((_hd100895100920_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e100896100917_)))
                                      (_tl100894100922_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e100896100917_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl100894100922_))
                                      (let ((_e100899100925_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl100894100922_))))
                                        (let ((_hd100898100928_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e100899100925_)))
                                              (_tl100897100930_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e100899100925_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl100897100930_))
                                              ((lambda (_L100933_ _L100934_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self100884_
                                                    _L100933_)))
                                               _hd100898100928_
                                               _hd100895100920_)
                                              (let ()
                                                (declare (not safe))
                                                (_g100887100904_
                                                 _g100888100907_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g100887100904_ _g100888100907_)))))
                              (let ()
                                (declare (not safe))
                                (_g100887100904_ _g100888100907_)))))
                      (let ()
                        (declare (not safe))
                        (_g100887100904_ _g100888100907_))))))
          (declare (not safe))
          (_g100886100949_ _stx100885_))))
    (define gxc#apply-define-values%
      (lambda (_self100816_ _stx100817_)
        (let* ((_g100819100836_
                (lambda (_g100820100833_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g100820100833_))))
               (_g100818100881_
                (lambda (_g100820100839_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g100820100839_))
                      (let ((_e100825100841_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g100820100839_))))
                        (let ((_hd100824100844_
                               (let ()
                                 (declare (not safe))
                                 (##car _e100825100841_)))
                              (_tl100823100846_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e100825100841_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl100823100846_))
                              (let ((_e100828100849_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl100823100846_))))
                                (let ((_hd100827100852_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e100828100849_)))
                                      (_tl100826100854_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e100828100849_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl100826100854_))
                                      (let ((_e100831100857_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl100826100854_))))
                                        (let ((_hd100830100860_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e100831100857_)))
                                              (_tl100829100862_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e100831100857_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl100829100862_))
                                              ((lambda (_L100865_ _L100866_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self100816_
                                                    _L100865_)))
                                               _hd100830100860_
                                               _hd100827100852_)
                                              (let ()
                                                (declare (not safe))
                                                (_g100819100836_
                                                 _g100820100839_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g100819100836_ _g100820100839_)))))
                              (let ()
                                (declare (not safe))
                                (_g100819100836_ _g100820100839_)))))
                      (let ()
                        (declare (not safe))
                        (_g100819100836_ _g100820100839_))))))
          (declare (not safe))
          (_g100818100881_ _stx100817_))))
    (define gxc#apply-define-syntax%
      (lambda (_self100747_ _stx100748_)
        (let* ((_g100750100767_
                (lambda (_g100751100764_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g100751100764_))))
               (_g100749100813_
                (lambda (_g100751100770_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g100751100770_))
                      (let ((_e100756100772_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g100751100770_))))
                        (let ((_hd100755100775_
                               (let ()
                                 (declare (not safe))
                                 (##car _e100756100772_)))
                              (_tl100754100777_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e100756100772_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl100754100777_))
                              (let ((_e100759100780_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl100754100777_))))
                                (let ((_hd100758100783_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e100759100780_)))
                                      (_tl100757100785_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e100759100780_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl100757100785_))
                                      (let ((_e100762100788_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl100757100785_))))
                                        (let ((_hd100761100791_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e100762100788_)))
                                              (_tl100760100793_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e100762100788_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl100760100793_))
                                              ((lambda (_L100796_ _L100797_)
                                                 (let ((__tmp101368
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _self100747_
                                                             _L100796_))))
                                                       (__tmp101366
                                                        (let ((__tmp101367
                                                               (gx#current-expander-phi)))
                                                          (declare (not safe))
                                                          (fx+ __tmp101367
                                                               '1))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp101368
                                                    gx#current-expander-phi
                                                    __tmp101366)))
                                               _hd100761100791_
                                               _hd100758100783_)
                                              (let ()
                                                (declare (not safe))
                                                (_g100750100767_
                                                 _g100751100770_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g100750100767_ _g100751100770_)))))
                              (let ()
                                (declare (not safe))
                                (_g100750100767_ _g100751100770_)))))
                      (let ()
                        (declare (not safe))
                        (_g100750100767_ _g100751100770_))))))
          (declare (not safe))
          (_g100749100813_ _stx100748_))))
    (define gxc#apply-body-lambda%
      (lambda (_self100679_ _stx100680_)
        (let* ((_g100682100699_
                (lambda (_g100683100696_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g100683100696_))))
               (_g100681100744_
                (lambda (_g100683100702_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g100683100702_))
                      (let ((_e100688100704_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g100683100702_))))
                        (let ((_hd100687100707_
                               (let ()
                                 (declare (not safe))
                                 (##car _e100688100704_)))
                              (_tl100686100709_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e100688100704_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl100686100709_))
                              (let ((_e100691100712_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl100686100709_))))
                                (let ((_hd100690100715_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e100691100712_)))
                                      (_tl100689100717_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e100691100712_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl100689100717_))
                                      (let ((_e100694100720_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl100689100717_))))
                                        (let ((_hd100693100723_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e100694100720_)))
                                              (_tl100692100725_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e100694100720_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl100692100725_))
                                              ((lambda (_L100728_ _L100729_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self100679_
                                                    _L100728_)))
                                               _hd100693100723_
                                               _hd100690100715_)
                                              (let ()
                                                (declare (not safe))
                                                (_g100682100699_
                                                 _g100683100702_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g100682100699_ _g100683100702_)))))
                              (let ()
                                (declare (not safe))
                                (_g100682100699_ _g100683100702_)))))
                      (let ()
                        (declare (not safe))
                        (_g100682100699_ _g100683100702_))))))
          (declare (not safe))
          (_g100681100744_ _stx100680_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_self100561_ _stx100562_)
        (let* ((_g100564100592_
                (lambda (_g100565100589_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g100565100589_))))
               (_g100563100676_
                (lambda (_g100565100595_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g100565100595_))
                      (let ((_e100570100597_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g100565100595_))))
                        (let ((_hd100569100600_
                               (let ()
                                 (declare (not safe))
                                 (##car _e100570100597_)))
                              (_tl100568100602_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e100570100597_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl100568100602_))
                              (let ((_g101369_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl100568100602_
                                        '0))))
                                (begin
                                  (let ((_g101370_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g101369_)
                                               (##vector-length _g101369_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g101370_ 2)))
                                        (error "Context expects 2 values"
                                               _g101370_)))
                                  (let ((_target100571100605_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g101369_ 0)))
                                        (_tl100573100607_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g101369_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl100573100607_))
                                        (letrec ((_loop100574100610_
                                                  (lambda (_hd100572100613_
                                                           _body100578100615_
                                                           _hd100579100617_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd100572100613_))
                                                        (let ((_e100575100620_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd100572100613_))))
                  (let ((_lp-hd100576100623_
                         (let () (declare (not safe)) (##car _e100575100620_)))
                        (_lp-tl100577100625_
                         (let ()
                           (declare (not safe))
                           (##cdr _e100575100620_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd100576100623_))
                        (let ((_e100584100628_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd100576100623_))))
                          (let ((_hd100583100631_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e100584100628_)))
                                (_tl100582100633_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e100584100628_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl100582100633_))
                                (let ((_e100587100636_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl100582100633_))))
                                  (let ((_hd100586100639_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e100587100636_)))
                                        (_tl100585100641_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e100587100636_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl100585100641_))
                                        (let ((__tmp101373
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd100586100639_
                                                       _body100578100615_)))
                                              (__tmp101372
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd100583100631_
                                                       _hd100579100617_))))
                                          (declare (not safe))
                                          (_loop100574100610_
                                           _lp-tl100577100625_
                                           __tmp101373
                                           __tmp101372))
                                        (let ()
                                          (declare (not safe))
                                          (_g100564100592_ _g100565100595_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g100564100592_ _g100565100595_)))))
                        (let ()
                          (declare (not safe))
                          (_g100564100592_ _g100565100595_)))))
                (let ((_body100580100644_ (reverse _body100578100615_))
                      (_hd100581100646_ (reverse _hd100579100617_)))
                  ((lambda (_L100649_ _L100650_)
                     (for-each
                      (lambda (_g100664100666_)
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _self100561_ _g100664100666_)))
                      (let ((__tmp101371
                             (lambda (_g100668100671_ _g100669100673_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g100668100671_ _g100669100673_)))))
                        (declare (not safe))
                        (foldr1 __tmp101371 '() _L100649_))))
                   _body100580100644_
                   _hd100581100646_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop100574100610_
                                             _target100571100605_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g100564100592_
                                           _g100565100595_))))))
                              (let ()
                                (declare (not safe))
                                (_g100564100592_ _g100565100595_)))))
                      (let ()
                        (declare (not safe))
                        (_g100564100592_ _g100565100595_))))))
          (declare (not safe))
          (_g100563100676_ _stx100562_))))
    (define gxc#apply-body-let-values%
      (lambda (_self100414_ _stx100415_)
        (let* ((_g100417100452_
                (lambda (_g100418100449_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g100418100449_))))
               (_g100416100558_
                (lambda (_g100418100455_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g100418100455_))
                      (let ((_e100424100457_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g100418100455_))))
                        (let ((_hd100423100460_
                               (let ()
                                 (declare (not safe))
                                 (##car _e100424100457_)))
                              (_tl100422100462_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e100424100457_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl100422100462_))
                              (let ((_e100427100465_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl100422100462_))))
                                (let ((_hd100426100468_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e100427100465_)))
                                      (_tl100425100470_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e100427100465_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd100426100468_))
                                      (let ((_g101374_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd100426100468_
                                                '0))))
                                        (begin
                                          (let ((_g101375_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g101374_)
                                                       (##vector-length
                                                        _g101374_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g101375_ 2)))
                                                (error "Context expects 2 values"
                                                       _g101375_)))
                                          (let ((_target100428100473_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g101374_ 0)))
                                                (_tl100430100475_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g101374_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl100430100475_))
                                                (letrec ((_loop100431100478_
                                                          (lambda (_hd100429100481_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr100435100483_
                           _hd100436100485_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd100429100481_))
                        (let ((_e100432100488_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd100429100481_))))
                          (let ((_lp-hd100433100491_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e100432100488_)))
                                (_lp-tl100434100493_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e100432100488_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd100433100491_))
                                (let ((_e100441100496_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd100433100491_))))
                                  (let ((_hd100440100499_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e100441100496_)))
                                        (_tl100439100501_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e100441100496_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl100439100501_))
                                        (let ((_e100444100504_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl100439100501_))))
                                          (let ((_hd100443100507_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e100444100504_)))
                                                (_tl100442100509_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e100444100504_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl100442100509_))
                                                (let ((__tmp101379
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd100443100507_
                                                               _expr100435100483_)))
                                                      (__tmp101378
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd100440100499_
                                                               _hd100436100485_))))
                                                  (declare (not safe))
                                                  (_loop100431100478_
                                                   _lp-tl100434100493_
                                                   __tmp101379
                                                   __tmp101378))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g100417100452_
                                                   _g100418100455_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g100417100452_ _g100418100455_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g100417100452_ _g100418100455_)))))
                        (let ((_expr100437100512_ (reverse _expr100435100483_))
                              (_hd100438100514_ (reverse _hd100436100485_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl100425100470_))
                              (let ((_e100447100517_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl100425100470_))))
                                (let ((_hd100446100520_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e100447100517_)))
                                      (_tl100445100522_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e100447100517_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl100445100522_))
                                      ((lambda (_L100525_ _L100526_ _L100527_)
                                         (for-each
                                          (lambda (_g100546100548_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self100414_
                                               _g100546100548_)))
                                          (let ((__tmp101377
                                                 (lambda (_g100550100553_
                                                          _g100551100555_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g100550100553_
                                                           _g100551100555_))))
                                                (__tmp101376
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L100525_ '()))))
                                            (declare (not safe))
                                            (foldr1 __tmp101377
                                                    __tmp101376
                                                    _L100526_))))
                                       _hd100446100520_
                                       _expr100437100512_
                                       _hd100438100514_)
                                      (let ()
                                        (declare (not safe))
                                        (_g100417100452_ _g100418100455_)))))
                              (let ()
                                (declare (not safe))
                                (_g100417100452_ _g100418100455_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop100431100478_
                                                     _target100428100473_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g100417100452_
                                                   _g100418100455_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g100417100452_ _g100418100455_)))))
                              (let ()
                                (declare (not safe))
                                (_g100417100452_ _g100418100455_)))))
                      (let ()
                        (declare (not safe))
                        (_g100417100452_ _g100418100455_))))))
          (declare (not safe))
          (_g100416100558_ _stx100415_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_self100359_ _stx100360_)
        (let* ((_g100362100376_
                (lambda (_g100363100373_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g100363100373_))))
               (_g100361100411_
                (lambda (_g100363100379_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g100363100379_))
                      (let ((_e100368100381_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g100363100379_))))
                        (let ((_hd100367100384_
                               (let ()
                                 (declare (not safe))
                                 (##car _e100368100381_)))
                              (_tl100366100386_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e100368100381_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl100366100386_))
                              (let ((_e100371100389_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl100366100386_))))
                                (let ((_hd100370100392_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e100371100389_)))
                                      (_tl100369100394_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e100371100389_))))
                                  ((lambda (_L100397_ _L100398_)
                                     (let ((__tmp101380 (last _L100397_)))
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _self100359_
                                        __tmp101380)))
                                   _tl100369100394_
                                   _hd100370100392_)))
                              (let ()
                                (declare (not safe))
                                (_g100362100376_ _g100363100379_)))))
                      (let ()
                        (declare (not safe))
                        (_g100362100376_ _g100363100379_))))))
          (declare (not safe))
          (_g100361100411_ _stx100360_))))
    (define gxc#apply-body-setq%
      (lambda (_self100291_ _stx100292_)
        (let* ((_g100294100311_
                (lambda (_g100295100308_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g100295100308_))))
               (_g100293100356_
                (lambda (_g100295100314_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g100295100314_))
                      (let ((_e100300100316_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g100295100314_))))
                        (let ((_hd100299100319_
                               (let ()
                                 (declare (not safe))
                                 (##car _e100300100316_)))
                              (_tl100298100321_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e100300100316_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl100298100321_))
                              (let ((_e100303100324_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl100298100321_))))
                                (let ((_hd100302100327_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e100303100324_)))
                                      (_tl100301100329_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e100303100324_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl100301100329_))
                                      (let ((_e100306100332_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl100301100329_))))
                                        (let ((_hd100305100335_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e100306100332_)))
                                              (_tl100304100337_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e100306100332_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl100304100337_))
                                              ((lambda (_L100340_ _L100341_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self100291_
                                                    _L100340_)))
                                               _hd100305100335_
                                               _hd100302100327_)
                                              (let ()
                                                (declare (not safe))
                                                (_g100294100311_
                                                 _g100295100314_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g100294100311_ _g100295100314_)))))
                              (let ()
                                (declare (not safe))
                                (_g100294100311_ _g100295100314_)))))
                      (let ()
                        (declare (not safe))
                        (_g100294100311_ _g100295100314_))))))
          (declare (not safe))
          (_g100293100356_ _stx100292_))))
    (define gxc#apply-operands
      (lambda (_self100204_ _stx100205_)
        (let* ((_g100207100226_
                (lambda (_g100208100223_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g100208100223_))))
               (_g100206100288_
                (lambda (_g100208100229_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g100208100229_))
                      (let ((_e100212100231_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g100208100229_))))
                        (let ((_hd100211100234_
                               (let ()
                                 (declare (not safe))
                                 (##car _e100212100231_)))
                              (_tl100210100236_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e100212100231_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl100210100236_))
                              (let ((_g101381_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl100210100236_
                                        '0))))
                                (begin
                                  (let ((_g101382_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g101381_)
                                               (##vector-length _g101381_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g101382_ 2)))
                                        (error "Context expects 2 values"
                                               _g101382_)))
                                  (let ((_target100213100239_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g101381_ 0)))
                                        (_tl100215100241_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g101381_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl100215100241_))
                                        (letrec ((_loop100216100244_
                                                  (lambda (_hd100214100247_
                                                           _rands100220100249_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd100214100247_))
                                                        (let ((_e100217100252_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd100214100247_))))
                  (let ((_lp-hd100218100255_
                         (let () (declare (not safe)) (##car _e100217100252_)))
                        (_lp-tl100219100257_
                         (let ()
                           (declare (not safe))
                           (##cdr _e100217100252_))))
                    (let ((__tmp101384
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd100218100255_ _rands100220100249_))))
                      (declare (not safe))
                      (_loop100216100244_ _lp-tl100219100257_ __tmp101384))))
                (let ((_rands100221100260_ (reverse _rands100220100249_)))
                  ((lambda (_L100263_)
                     (for-each
                      (lambda (_g100276100278_)
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _self100204_ _g100276100278_)))
                      (let ((__tmp101383
                             (lambda (_g100280100283_ _g100281100285_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g100280100283_ _g100281100285_)))))
                        (declare (not safe))
                        (foldr1 __tmp101383 '() _L100263_))))
                   _rands100221100260_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop100216100244_
                                             _target100213100239_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g100207100226_
                                           _g100208100229_))))))
                              (let ()
                                (declare (not safe))
                                (_g100207100226_ _g100208100229_)))))
                      (let ()
                        (declare (not safe))
                        (_g100207100226_ _g100208100229_))))))
          (declare (not safe))
          (_g100206100288_ _stx100205_))))
    (define gxc#xform-wrap-source
      (lambda (_stx100201_ _src-stx100202_)
        (let ((__tmp101385
               (let () (declare (not safe)) (gx#stx-source _src-stx100202_))))
          (declare (not safe))
          (gx#stx-wrap-source _stx100201_ __tmp101385))))
    (define gxc#xform-begin%
      (lambda (_self100156_ _stx100157_)
        (let* ((_g100159100169_
                (lambda (_g100160100166_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g100160100166_))))
               (_g100158100198_
                (lambda (_g100160100172_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g100160100172_))
                      (let ((_e100164100174_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g100160100172_))))
                        (let ((_hd100163100177_
                               (let ()
                                 (declare (not safe))
                                 (##car _e100164100174_)))
                              (_tl100162100179_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e100164100174_))))
                          ((lambda (_L100182_)
                             (let* ((_forms100196_
                                     (map (lambda (_g100191100193_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self100156_
                                               _g100191100193_)))
                                          _L100182_))
                                    (__tmp101386
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#begin _forms100196_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp101386
                                _stx100157_)))
                           _tl100162100179_)))
                      (let ()
                        (declare (not safe))
                        (_g100159100169_ _g100160100172_))))))
          (declare (not safe))
          (_g100158100198_ _stx100157_))))
    (define gxc#xform-begin-syntax%
      (lambda (_self100110_ _stx100111_)
        (let* ((_g100113100123_
                (lambda (_g100114100120_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g100114100120_))))
               (_g100112100153_
                (lambda (_g100114100126_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g100114100126_))
                      (let ((_e100118100128_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g100114100126_))))
                        (let ((_hd100117100131_
                               (let ()
                                 (declare (not safe))
                                 (##car _e100118100128_)))
                              (_tl100116100133_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e100118100128_))))
                          ((lambda (_L100136_)
                             (let ((__tmp101389
                                    (lambda ()
                                      (let* ((_forms100151_
                                              (map (lambda (_g100146100148_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _self100110_
                                                        _g100146100148_)))
                                                   _L100136_))
                                             (__tmp101390
                                              (let ()
                                                (declare (not safe))
                                                (cons '%#begin-syntax
                                                      _forms100151_))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp101390
                                         _stx100111_))))
                                   (__tmp101387
                                    (let ((__tmp101388
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp101388 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp101389
                                gx#current-expander-phi
                                __tmp101387)))
                           _tl100116100133_)))
                      (let ()
                        (declare (not safe))
                        (_g100113100123_ _g100114100126_))))))
          (declare (not safe))
          (_g100112100153_ _stx100111_))))
    (define gxc#xform-module%
      (lambda (_self100047_ _stx100048_)
        (let* ((_g100050100064_
                (lambda (_g100051100061_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g100051100061_))))
               (_g100049100107_
                (lambda (_g100051100067_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g100051100067_))
                      (let ((_e100056100069_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g100051100067_))))
                        (let ((_hd100055100072_
                               (let ()
                                 (declare (not safe))
                                 (##car _e100056100069_)))
                              (_tl100054100074_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e100056100069_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl100054100074_))
                              (let ((_e100059100077_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl100054100074_))))
                                (let ((_hd100058100080_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e100059100077_)))
                                      (_tl100057100082_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e100059100077_))))
                                  ((lambda (_L100085_ _L100086_)
                                     (let* ((_ctx100099_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L100086_)))
                                            (_code100101_
                                             (##structure-ref
                                              _ctx100099_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_code100104_
                                             (let ((__tmp101391
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _self100047_
                                                         _code100101_)))))
                                               (declare (not safe))
                                               (call-with-parameters
                                                __tmp101391
                                                gx#current-expander-context
                                                _ctx100099_))))
                                       (##structure-set!
                                        _ctx100099_
                                        _code100104_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp101392
                                              (let ((__tmp101393
                                                     (let ((__tmp101394
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _code100104_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L100086_ __tmp101394))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#module __tmp101393))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp101392
                                          _stx100048_))))
                                   _tl100057100082_
                                   _hd100058100080_)))
                              (let ()
                                (declare (not safe))
                                (_g100050100064_ _g100051100067_)))))
                      (let ()
                        (declare (not safe))
                        (_g100050100064_ _g100051100067_))))))
          (declare (not safe))
          (_g100049100107_ _stx100048_))))
    (define gxc#xform-define-values%
      (lambda (_self99977_ _stx99978_)
        (let* ((_g9998099997_
                (lambda (_g9998199994_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9998199994_))))
               (_g99979100044_
                (lambda (_g99981100000_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g99981100000_))
                      (let ((_e99986100002_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g99981100000_))))
                        (let ((_hd99985100005_
                               (let ()
                                 (declare (not safe))
                                 (##car _e99986100002_)))
                              (_tl99984100007_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e99986100002_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl99984100007_))
                              (let ((_e99989100010_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl99984100007_))))
                                (let ((_hd99988100013_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e99989100010_)))
                                      (_tl99987100015_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e99989100010_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl99987100015_))
                                      (let ((_e99992100018_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl99987100015_))))
                                        (let ((_hd99991100021_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e99992100018_)))
                                              (_tl99990100023_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e99992100018_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl99990100023_))
                                              ((lambda (_L100026_ _L100027_)
                                                 (let* ((_expr100042_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self99977_
                                                            _L100026_)))
                                                        (__tmp101395
                                                         (let ((__tmp101396
                                                                (let ((__tmp101397
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _expr100042_ '()))))
                          (declare (not safe))
                          (cons _L100027_ __tmp101397))))
                   (declare (not safe))
                   (cons '%#define-values __tmp101396))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp101395
                                                    _stx99978_)))
                                               _hd99991100021_
                                               _hd99988100013_)
                                              (let ()
                                                (declare (not safe))
                                                (_g9998099997_
                                                 _g99981100000_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g9998099997_ _g99981100000_)))))
                              (let ()
                                (declare (not safe))
                                (_g9998099997_ _g99981100000_)))))
                      (let ()
                        (declare (not safe))
                        (_g9998099997_ _g99981100000_))))))
          (declare (not safe))
          (_g99979100044_ _stx99978_))))
    (define gxc#xform-define-syntax%
      (lambda (_self99906_ _stx99907_)
        (let* ((_g9990999926_
                (lambda (_g9991099923_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9991099923_))))
               (_g9990899974_
                (lambda (_g9991099929_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9991099929_))
                      (let ((_e9991599931_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9991099929_))))
                        (let ((_hd9991499934_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9991599931_)))
                              (_tl9991399936_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9991599931_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9991399936_))
                              (let ((_e9991899939_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl9991399936_))))
                                (let ((_hd9991799942_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9991899939_)))
                                      (_tl9991699944_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9991899939_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl9991699944_))
                                      (let ((_e9992199947_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl9991699944_))))
                                        (let ((_hd9992099950_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9992199947_)))
                                              (_tl9991999952_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9992199947_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl9991999952_))
                                              ((lambda (_L99955_ _L99956_)
                                                 (let ((__tmp101400
                                                        (lambda ()
                                                          (let* ((_expr99972_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__1 _self99906_ _L99955_)))
                         (__tmp101401
                          (let ((__tmp101402
                                 (let ((__tmp101403
                                        (let ()
                                          (declare (not safe))
                                          (cons _expr99972_ '()))))
                                   (declare (not safe))
                                   (cons _L99956_ __tmp101403))))
                            (declare (not safe))
                            (cons '%#define-syntax __tmp101402))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp101401 _stx99907_))))
               (__tmp101398
                (let ((__tmp101399 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp101399 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp101400
                                                    gx#current-expander-phi
                                                    __tmp101398)))
                                               _hd9992099950_
                                               _hd9991799942_)
                                              (let ()
                                                (declare (not safe))
                                                (_g9990999926_
                                                 _g9991099929_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g9990999926_ _g9991099929_)))))
                              (let ()
                                (declare (not safe))
                                (_g9990999926_ _g9991099929_)))))
                      (let ()
                        (declare (not safe))
                        (_g9990999926_ _g9991099929_))))))
          (declare (not safe))
          (_g9990899974_ _stx99907_))))
    (define gxc#xform-begin-annotation%
      (lambda (_self99836_ _stx99837_)
        (let* ((_g9983999856_
                (lambda (_g9984099853_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9984099853_))))
               (_g9983899903_
                (lambda (_g9984099859_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9984099859_))
                      (let ((_e9984599861_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9984099859_))))
                        (let ((_hd9984499864_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9984599861_)))
                              (_tl9984399866_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9984599861_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9984399866_))
                              (let ((_e9984899869_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl9984399866_))))
                                (let ((_hd9984799872_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9984899869_)))
                                      (_tl9984699874_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9984899869_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl9984699874_))
                                      (let ((_e9985199877_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl9984699874_))))
                                        (let ((_hd9985099880_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9985199877_)))
                                              (_tl9984999882_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9985199877_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl9984999882_))
                                              ((lambda (_L99885_ _L99886_)
                                                 (let* ((_expr99901_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self99836_
                                                            _L99885_)))
                                                        (__tmp101404
                                                         (let ((__tmp101405
                                                                (let ((__tmp101406
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _expr99901_ '()))))
                          (declare (not safe))
                          (cons _L99886_ __tmp101406))))
                   (declare (not safe))
                   (cons '%#begin-annotation __tmp101405))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp101404
                                                    _stx99837_)))
                                               _hd9985099880_
                                               _hd9984799872_)
                                              (let ()
                                                (declare (not safe))
                                                (_g9983999856_
                                                 _g9984099859_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g9983999856_ _g9984099859_)))))
                              (let ()
                                (declare (not safe))
                                (_g9983999856_ _g9984099859_)))))
                      (let ()
                        (declare (not safe))
                        (_g9983999856_ _g9984099859_))))))
          (declare (not safe))
          (_g9983899903_ _stx99837_))))
    (define gxc#xform-lambda%
      (lambda (_self99775_ _stx99776_)
        (let* ((_g9977899792_
                (lambda (_g9977999789_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9977999789_))))
               (_g9977799833_
                (lambda (_g9977999795_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9977999795_))
                      (let ((_e9978499797_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9977999795_))))
                        (let ((_hd9978399800_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9978499797_)))
                              (_tl9978299802_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9978499797_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9978299802_))
                              (let ((_e9978799805_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl9978299802_))))
                                (let ((_hd9978699808_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9978799805_)))
                                      (_tl9978599810_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9978799805_))))
                                  ((lambda (_L99813_ _L99814_)
                                     (let* ((_body99831_
                                             (map (lambda (_g9982699828_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _self99775_
                                                       _g9982699828_)))
                                                  _L99813_))
                                            (__tmp101407
                                             (let ((__tmp101408
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L99814_
                                                            _body99831_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp101408))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp101407
                                        _stx99776_)))
                                   _tl9978599810_
                                   _hd9978699808_)))
                              (let ()
                                (declare (not safe))
                                (_g9977899792_ _g9977999795_)))))
                      (let ()
                        (declare (not safe))
                        (_g9977899792_ _g9977999795_))))))
          (declare (not safe))
          (_g9977799833_ _stx99776_))))
    (define gxc#xform-case-lambda%
      (lambda (_self99684_ _stx99685_)
        (letrec ((_clause-e99687_
                  (lambda (_clause99728_)
                    (let* ((_g9973099741_
                            (lambda (_g9973199738_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g9973199738_))))
                           (_g9972999772_
                            (lambda (_g9973199744_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g9973199744_))
                                  (let ((_e9973699746_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g9973199744_))))
                                    (let ((_hd9973599749_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e9973699746_)))
                                          (_tl9973499751_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e9973699746_))))
                                      ((lambda (_L99754_ _L99755_)
                                         (let ((_body99770_
                                                (map (lambda (_g9976599767_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _self99684_
                                                          _g9976599767_)))
                                                     _L99754_)))
                                           (declare (not safe))
                                           (cons _L99755_ _body99770_)))
                                       _tl9973499751_
                                       _hd9973599749_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g9973099741_ _g9973199744_))))))
                      (declare (not safe))
                      (_g9972999772_ _clause99728_)))))
          (let* ((_g9968999699_
                  (lambda (_g9969099696_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g9969099696_))))
                 (_g9968899725_
                  (lambda (_g9969099702_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g9969099702_))
                        (let ((_e9969499704_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g9969099702_))))
                          (let ((_hd9969399707_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9969499704_)))
                                (_tl9969299709_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9969499704_))))
                            ((lambda (_L99712_)
                               (let* ((_clauses99723_
                                       (map _clause-e99687_ _L99712_))
                                      (__tmp101409
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses99723_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp101409
                                  _stx99685_)))
                             _tl9969299709_)))
                        (let ()
                          (declare (not safe))
                          (_g9968999699_ _g9969099702_))))))
            (declare (not safe))
            (_g9968899725_ _stx99685_)))))
    (define gxc#xform-let-values%
      (lambda (_self99470_ _stx99471_)
        (let* ((_g9947399506_
                (lambda (_g9947499503_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9947499503_))))
               (_g9947299681_
                (lambda (_g9947499509_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9947499509_))
                      (let ((_e9948199511_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9947499509_))))
                        (let ((_hd9948099514_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9948199511_)))
                              (_tl9947999516_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9948199511_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9947999516_))
                              (let ((_e9948499519_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl9947999516_))))
                                (let ((_hd9948399522_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9948499519_)))
                                      (_tl9948299524_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9948499519_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd9948399522_))
                                      (let ((_g101410_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd9948399522_
                                                '0))))
                                        (begin
                                          (let ((_g101411_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g101410_)
                                                       (##vector-length
                                                        _g101410_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g101411_ 2)))
                                                (error "Context expects 2 values"
                                                       _g101411_)))
                                          (let ((_target9948599527_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g101410_ 0)))
                                                (_tl9948799529_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g101410_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl9948799529_))
                                                (letrec ((_loop9948899532_
                                                          (lambda (_hd9948699535_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr9949299537_
                           _hd9949399539_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd9948699535_))
                        (let ((_e9948999542_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd9948699535_))))
                          (let ((_lp-hd9949099545_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9948999542_)))
                                (_lp-tl9949199547_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9948999542_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd9949099545_))
                                (let ((_e9949899550_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd9949099545_))))
                                  (let ((_hd9949799553_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e9949899550_)))
                                        (_tl9949699555_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e9949899550_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl9949699555_))
                                        (let ((_e9950199558_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl9949699555_))))
                                          (let ((_hd9950099561_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e9950199558_)))
                                                (_tl9949999563_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e9950199558_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl9949999563_))
                                                (let ((__tmp101424
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd9950099561_
                                                               _expr9949299537_)))
                                                      (__tmp101423
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd9949799553_
                                                               _hd9949399539_))))
                                                  (declare (not safe))
                                                  (_loop9948899532_
                                                   _lp-tl9949199547_
                                                   __tmp101424
                                                   __tmp101423))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g9947399506_
                                                   _g9947499509_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g9947399506_ _g9947499509_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g9947399506_ _g9947499509_)))))
                        (let ((_expr9949499566_ (reverse _expr9949299537_))
                              (_hd9949599568_ (reverse _hd9949399539_)))
                          ((lambda (_L99571_ _L99572_ _L99573_ _L99574_)
                             (let* ((_g9959399609_
                                     (lambda (_g9959499606_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g9959499606_))))
                                    (_g9959299667_
                                     (lambda (_g9959499612_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null? _g9959499612_))
                                           (let ((_g101412_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _g9959499612_
                                                     '0))))
                                             (begin
                                               (let ((_g101413_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g101412_)
                                                            (##vector-length
                                                             _g101412_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g101413_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g101413_)))
                                               (let ((_target9959699614_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g101412_
                                                         0)))
                                                     (_tl9959899616_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g101412_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl9959899616_))
                                                     (letrec ((_loop9959999619_
                                                               (lambda (_hd9959799622_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr9960399624_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _hd9959799622_))
                             (let ((_e9960099627_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _hd9959799622_))))
                               (let ((_lp-hd9960199630_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e9960099627_)))
                                     (_lp-tl9960299632_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e9960099627_))))
                                 (let ((__tmp101420
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd9960199630_
                                                _expr9960399624_))))
                                   (declare (not safe))
                                   (_loop9959999619_
                                    _lp-tl9960299632_
                                    __tmp101420))))
                             (let ((_expr9960499635_
                                    (reverse _expr9960399624_)))
                               ((lambda (_L99638_)
                                  (let ()
                                    (let* ((_body99655_
                                            (map (lambda (_g9965099652_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self99470_
                                                      _g9965099652_)))
                                                 _L99571_))
                                           (__tmp101414
                                            (let ((__tmp101415
                                                   (let ((__tmp101416
                                                          (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _L99638_
                                                               _L99573_))
                                                            (let ((__tmp101417
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g9965699660_ _g9965799662_ _g9965899664_)
                             (let ((__tmp101418
                                    (let ((__tmp101419
                                           (let ()
                                             (declare (not safe))
                                             (cons _g9965699660_ '()))))
                                      (declare (not safe))
                                      (cons _g9965799662_ __tmp101419))))
                               (declare (not safe))
                               (cons __tmp101418 _g9965899664_)))))
                      (declare (not safe))
                      (foldr2 __tmp101417 '() _L99638_ _L99573_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp101416
                                                           _body99655_))))
                                              (declare (not safe))
                                              (cons _L99574_ __tmp101415))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp101414
                                       _stx99471_))))
                                _expr9960499635_))))))
               (let ()
                 (declare (not safe))
                 (_loop9959999619_ _target9959699614_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g9959399609_
                                                        _g9959499612_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_g9959399609_ _g9959499612_)))))
                                    (__tmp101421
                                     (map (lambda (_g9966999671_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self99470_
                                               _g9966999671_)))
                                          (let ((__tmp101422
                                                 (lambda (_g9967399676_
                                                          _g9967499678_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g9967399676_
                                                           _g9967499678_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp101422
                                                    '()
                                                    _L99572_)))))
                               (declare (not safe))
                               (_g9959299667_ __tmp101421)))
                           _tl9948299524_
                           _expr9949499566_
                           _hd9949599568_
                           _hd9948099514_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop9948899532_
                                                     _target9948599527_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g9947399506_
                                                   _g9947499509_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g9947399506_ _g9947499509_)))))
                              (let ()
                                (declare (not safe))
                                (_g9947399506_ _g9947499509_)))))
                      (let ()
                        (declare (not safe))
                        (_g9947399506_ _g9947499509_))))))
          (declare (not safe))
          (_g9947299681_ _stx99471_))))
    (define gxc#xform-operands
      (lambda (_self99422_ _stx99423_)
        (let* ((_g9942599436_
                (lambda (_g9942699433_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9942699433_))))
               (_g9942499467_
                (lambda (_g9942699439_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9942699439_))
                      (let ((_e9943199441_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9942699439_))))
                        (let ((_hd9943099444_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9943199441_)))
                              (_tl9942999446_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9943199441_))))
                          ((lambda (_L99449_ _L99450_)
                             (let* ((_rands99465_
                                     (map (lambda (_g9946099462_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self99422_
                                               _g9946099462_)))
                                          _L99449_))
                                    (__tmp101425
                                     (let ()
                                       (declare (not safe))
                                       (cons _L99450_ _rands99465_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source __tmp101425 _stx99423_)))
                           _tl9942999446_
                           _hd9943099444_)))
                      (let ()
                        (declare (not safe))
                        (_g9942599436_ _g9942699439_))))))
          (declare (not safe))
          (_g9942499467_ _stx99423_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_self99352_ _stx99353_)
        (let* ((_g9935599372_
                (lambda (_g9935699369_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9935699369_))))
               (_g9935499419_
                (lambda (_g9935699375_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9935699375_))
                      (let ((_e9936199377_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9935699375_))))
                        (let ((_hd9936099380_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9936199377_)))
                              (_tl9935999382_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9936199377_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9935999382_))
                              (let ((_e9936499385_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl9935999382_))))
                                (let ((_hd9936399388_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9936499385_)))
                                      (_tl9936299390_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9936499385_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl9936299390_))
                                      (let ((_e9936799393_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl9936299390_))))
                                        (let ((_hd9936699396_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9936799393_)))
                                              (_tl9936599398_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9936799393_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl9936599398_))
                                              ((lambda (_L99401_ _L99402_)
                                                 (let* ((_expr99417_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self99352_
                                                            _L99401_)))
                                                        (__tmp101426
                                                         (let ((__tmp101427
                                                                (let ((__tmp101428
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _expr99417_ '()))))
                          (declare (not safe))
                          (cons _L99402_ __tmp101428))))
                   (declare (not safe))
                   (cons '%#set! __tmp101427))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp101426
                                                    _stx99353_)))
                                               _hd9936699396_
                                               _hd9936399388_)
                                              (let ()
                                                (declare (not safe))
                                                (_g9935599372_
                                                 _g9935699375_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g9935599372_ _g9935699375_)))))
                              (let ()
                                (declare (not safe))
                                (_g9935599372_ _g9935699375_)))))
                      (let ()
                        (declare (not safe))
                        (_g9935599372_ _g9935699375_))))))
          (declare (not safe))
          (_g9935499419_ _stx99353_))))))
