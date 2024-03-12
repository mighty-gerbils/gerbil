(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1710238838)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_stx101113_)
        (let* ((_self101115_ (gxc#current-compile-method))
               (_$e101117_
                (let ((__tmp101286
                       (let ()
                         (declare (not safe))
                         (gxc#stx-car-e _stx101113_))))
                  (declare (not safe))
                  (method-ref _self101115_ __tmp101286))))
          (if _$e101117_
              ((lambda (_method101120_)
                 (declare (not safe))
                 (_method101120_ _self101115_ _stx101113_))
               _$e101117_)
              (let ((__tmp101288
                     (let () (declare (not safe)) (gxc#stx-car-e _stx101113_)))
                    (__tmp101287
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _stx101113_))))
                (declare (not safe))
                (error '"missing method"
                       _self101115_
                       __tmp101288
                       __tmp101287))))))
    (define gxc#compile-e__1
      (lambda (_self101123_ _stx101124_)
        (let ((_$e101126_
               (let ((__tmp101289
                      (let ()
                        (declare (not safe))
                        (gxc#stx-car-e _stx101124_))))
                 (declare (not safe))
                 (method-ref _self101123_ __tmp101289))))
          (if _$e101126_
              ((lambda (_method101129_)
                 (declare (not safe))
                 (_method101129_ _self101123_ _stx101124_))
               _$e101126_)
              (let ((__tmp101291
                     (let () (declare (not safe)) (gxc#stx-car-e _stx101124_)))
                    (__tmp101290
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _stx101124_))))
                (declare (not safe))
                (error '"missing method"
                       _self101123_
                       __tmp101291
                       __tmp101290))))))
    (define gxc#compile-e
      (lambda _g101293_
        (let ((_g101292_ (let () (declare (not safe)) (##length _g101293_))))
          (cond ((let () (declare (not safe)) (##fx= _g101292_ 1))
                 (apply (lambda (_stx101113_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _stx101113_)))
                        _g101293_))
                ((let () (declare (not safe)) (##fx= _g101292_ 2))
                 (apply (lambda (_self101123_ _stx101124_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__1 _self101123_ _stx101124_)))
                        _g101293_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g101293_))))))
    (define gxc#stx-car-e
      (lambda (_stx101111_)
        (let ((__tmp101294
               (car (let () (declare (not safe)) (gx#stx-e _stx101111_)))))
          (declare (not safe))
          (gx#stx-e __tmp101294))))
    (define gxc#void-method (lambda (_self101108_ _stx101109_) '#!void))
    (define gxc#false-method (lambda (_self101105_ _stx101106_) '#f))
    (define gxc#true-method (lambda (_self101102_ _stx101103_) '#t))
    (define gxc#identity-method
      (lambda (_self101099_ _stx101100_) _stx101100_))
    (define gxc#::void-expression::t
      (let ((__tmp101295 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp101295
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _$args101096_
        (apply make-instance gxc#::void-expression::t _$args101096_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp101296
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
        (make-promise __tmp101296)))
    (define gxc#::void-special-form::t
      (let ((__tmp101297 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp101297
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _$args101092_
        (apply make-instance gxc#::void-special-form::t _$args101092_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp101298
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
        (make-promise __tmp101298)))
    (define gxc#::void::t
      (let ((__tmp101299
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (make-class-type 'gxc#::void::t '::void __tmp101299 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _$args101088_ (apply make-instance gxc#::void::t _$args101088_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp101300
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (make-promise __tmp101300)))
    (define gxc#::false-expression::t
      (let ((__tmp101301 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp101301
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _$args101084_
        (apply make-instance gxc#::false-expression::t _$args101084_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp101302
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
        (make-promise __tmp101302)))
    (define gxc#::false-special-form::t
      (let ((__tmp101303 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp101303
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _$args101080_
        (apply make-instance gxc#::false-special-form::t _$args101080_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp101304
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
        (make-promise __tmp101304)))
    (define gxc#::false::t
      (let ((__tmp101305
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (make-class-type 'gxc#::false::t '::false __tmp101305 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _$args101076_
        (apply make-instance gxc#::false::t _$args101076_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp101306
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (make-promise __tmp101306)))
    (define gxc#::identity-expression::t
      (let ((__tmp101307 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp101307
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _$args101072_
        (apply make-instance gxc#::identity-expression::t _$args101072_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp101308
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
        (make-promise __tmp101308)))
    (define gxc#::identity-special-form::t
      (let ((__tmp101309 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp101309
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _$args101068_
        (apply make-instance gxc#::identity-special-form::t _$args101068_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp101310
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
        (make-promise __tmp101310)))
    (define gxc#::identity::t
      (let ((__tmp101311
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::identity::t
         '::identity
         __tmp101311
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _$args101064_
        (apply make-instance gxc#::identity::t _$args101064_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp101312
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (make-promise __tmp101312)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp101313 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp101313
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _$args101060_
        (apply make-instance gxc#::basic-xform-expression::t _$args101060_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp101314
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
        (make-promise __tmp101314)))
    (define gxc#::basic-xform::t
      (let ((__tmp101315
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp101315
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _$args101056_
        (apply make-instance gxc#::basic-xform::t _$args101056_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp101316
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
        (make-promise __tmp101316)))
    (define gxc#apply-begin%
      (lambda (_self101012_ _stx101013_)
        (let* ((_g101015101025_
                (lambda (_g101016101022_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101016101022_))))
               (_g101014101052_
                (lambda (_g101016101028_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101016101028_))
                      (let ((_e101020101030_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101016101028_))))
                        (let ((_hd101019101033_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101020101030_)))
                              (_tl101018101035_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101020101030_))))
                          ((lambda (_L101038_)
                             (for-each
                              (lambda (_g101047101049_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1
                                   _self101012_
                                   _g101047101049_)))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _L101038_))))
                           _tl101018101035_)))
                      (let ()
                        (declare (not safe))
                        (_g101015101025_ _g101016101028_))))))
          (declare (not safe))
          (_g101014101052_ _stx101013_))))
    (define gxc#apply-last-begin%
      (lambda (_self100973_ _stx100974_)
        (let* ((_g100976100986_
                (lambda (_g100977100983_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g100977100983_))))
               (_g100975101009_
                (lambda (_g100977100989_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g100977100989_))
                      (let ((_e100981100991_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g100977100989_))))
                        (let ((_hd100980100994_
                               (let ()
                                 (declare (not safe))
                                 (##car _e100981100991_)))
                              (_tl100979100996_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e100981100991_))))
                          ((lambda (_L100999_)
                             (let ((__tmp101317 (last _L100999_)))
                               (declare (not safe))
                               (gxc#compile-e__1 _self100973_ __tmp101317)))
                           _tl100979100996_)))
                      (let ()
                        (declare (not safe))
                        (_g100976100986_ _g100977100989_))))))
          (declare (not safe))
          (_g100975101009_ _stx100974_))))
    (define gxc#apply-begin-syntax%
      (lambda (_self100969_ _stx100970_)
        (let ((__tmp101320
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#apply-begin% _self100969_ _stx100970_))))
              (__tmp101318
               (let ((__tmp101319 (gx#current-expander-phi)))
                 (declare (not safe))
                 (fx+ __tmp101319 '1))))
          (declare (not safe))
          (call-with-parameters
           __tmp101320
           gx#current-expander-phi
           __tmp101318))))
    (define gxc#apply-module%
      (lambda (_self100908_ _stx100909_)
        (let* ((_g100911100925_
                (lambda (_g100912100922_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g100912100922_))))
               (_g100910100966_
                (lambda (_g100912100928_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g100912100928_))
                      (let ((_e100917100930_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g100912100928_))))
                        (let ((_hd100916100933_
                               (let ()
                                 (declare (not safe))
                                 (##car _e100917100930_)))
                              (_tl100915100935_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e100917100930_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl100915100935_))
                              (let ((_e100920100938_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl100915100935_))))
                                (let ((_hd100919100941_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e100920100938_)))
                                      (_tl100918100943_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e100920100938_))))
                                  ((lambda (_L100946_ _L100947_)
                                     (let* ((_ctx100960_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L100947_)))
                                            (_ctx-stx100962_
                                             (##structure-ref
                                              _ctx100960_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp101321
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self100908_
                                                   _ctx-stx100962_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp101321
                                          gx#current-expander-context
                                          _ctx100960_))))
                                   _tl100918100943_
                                   _hd100919100941_)))
                              (let ()
                                (declare (not safe))
                                (_g100911100925_ _g100912100928_)))))
                      (let ()
                        (declare (not safe))
                        (_g100911100925_ _g100912100928_))))))
          (declare (not safe))
          (_g100910100966_ _stx100909_))))
    (define gxc#apply-begin-annotation%
      (lambda (_self100840_ _stx100841_)
        (let* ((_g100843100860_
                (lambda (_g100844100857_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g100844100857_))))
               (_g100842100905_
                (lambda (_g100844100863_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g100844100863_))
                      (let ((_e100849100865_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g100844100863_))))
                        (let ((_hd100848100868_
                               (let ()
                                 (declare (not safe))
                                 (##car _e100849100865_)))
                              (_tl100847100870_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e100849100865_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl100847100870_))
                              (let ((_e100852100873_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl100847100870_))))
                                (let ((_hd100851100876_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e100852100873_)))
                                      (_tl100850100878_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e100852100873_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl100850100878_))
                                      (let ((_e100855100881_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl100850100878_))))
                                        (let ((_hd100854100884_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e100855100881_)))
                                              (_tl100853100886_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e100855100881_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl100853100886_))
                                              ((lambda (_L100889_ _L100890_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self100840_
                                                    _L100889_)))
                                               _hd100854100884_
                                               _hd100851100876_)
                                              (let ()
                                                (declare (not safe))
                                                (_g100843100860_
                                                 _g100844100863_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g100843100860_ _g100844100863_)))))
                              (let ()
                                (declare (not safe))
                                (_g100843100860_ _g100844100863_)))))
                      (let ()
                        (declare (not safe))
                        (_g100843100860_ _g100844100863_))))))
          (declare (not safe))
          (_g100842100905_ _stx100841_))))
    (define gxc#apply-define-values%
      (lambda (_self100772_ _stx100773_)
        (let* ((_g100775100792_
                (lambda (_g100776100789_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g100776100789_))))
               (_g100774100837_
                (lambda (_g100776100795_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g100776100795_))
                      (let ((_e100781100797_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g100776100795_))))
                        (let ((_hd100780100800_
                               (let ()
                                 (declare (not safe))
                                 (##car _e100781100797_)))
                              (_tl100779100802_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e100781100797_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl100779100802_))
                              (let ((_e100784100805_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl100779100802_))))
                                (let ((_hd100783100808_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e100784100805_)))
                                      (_tl100782100810_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e100784100805_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl100782100810_))
                                      (let ((_e100787100813_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl100782100810_))))
                                        (let ((_hd100786100816_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e100787100813_)))
                                              (_tl100785100818_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e100787100813_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl100785100818_))
                                              ((lambda (_L100821_ _L100822_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self100772_
                                                    _L100821_)))
                                               _hd100786100816_
                                               _hd100783100808_)
                                              (let ()
                                                (declare (not safe))
                                                (_g100775100792_
                                                 _g100776100795_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g100775100792_ _g100776100795_)))))
                              (let ()
                                (declare (not safe))
                                (_g100775100792_ _g100776100795_)))))
                      (let ()
                        (declare (not safe))
                        (_g100775100792_ _g100776100795_))))))
          (declare (not safe))
          (_g100774100837_ _stx100773_))))
    (define gxc#apply-define-syntax%
      (lambda (_self100703_ _stx100704_)
        (let* ((_g100706100723_
                (lambda (_g100707100720_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g100707100720_))))
               (_g100705100769_
                (lambda (_g100707100726_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g100707100726_))
                      (let ((_e100712100728_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g100707100726_))))
                        (let ((_hd100711100731_
                               (let ()
                                 (declare (not safe))
                                 (##car _e100712100728_)))
                              (_tl100710100733_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e100712100728_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl100710100733_))
                              (let ((_e100715100736_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl100710100733_))))
                                (let ((_hd100714100739_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e100715100736_)))
                                      (_tl100713100741_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e100715100736_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl100713100741_))
                                      (let ((_e100718100744_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl100713100741_))))
                                        (let ((_hd100717100747_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e100718100744_)))
                                              (_tl100716100749_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e100718100744_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl100716100749_))
                                              ((lambda (_L100752_ _L100753_)
                                                 (let ((__tmp101324
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _self100703_
                                                             _L100752_))))
                                                       (__tmp101322
                                                        (let ((__tmp101323
                                                               (gx#current-expander-phi)))
                                                          (declare (not safe))
                                                          (fx+ __tmp101323
                                                               '1))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp101324
                                                    gx#current-expander-phi
                                                    __tmp101322)))
                                               _hd100717100747_
                                               _hd100714100739_)
                                              (let ()
                                                (declare (not safe))
                                                (_g100706100723_
                                                 _g100707100726_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g100706100723_ _g100707100726_)))))
                              (let ()
                                (declare (not safe))
                                (_g100706100723_ _g100707100726_)))))
                      (let ()
                        (declare (not safe))
                        (_g100706100723_ _g100707100726_))))))
          (declare (not safe))
          (_g100705100769_ _stx100704_))))
    (define gxc#apply-body-lambda%
      (lambda (_self100635_ _stx100636_)
        (let* ((_g100638100655_
                (lambda (_g100639100652_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g100639100652_))))
               (_g100637100700_
                (lambda (_g100639100658_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g100639100658_))
                      (let ((_e100644100660_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g100639100658_))))
                        (let ((_hd100643100663_
                               (let ()
                                 (declare (not safe))
                                 (##car _e100644100660_)))
                              (_tl100642100665_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e100644100660_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl100642100665_))
                              (let ((_e100647100668_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl100642100665_))))
                                (let ((_hd100646100671_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e100647100668_)))
                                      (_tl100645100673_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e100647100668_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl100645100673_))
                                      (let ((_e100650100676_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl100645100673_))))
                                        (let ((_hd100649100679_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e100650100676_)))
                                              (_tl100648100681_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e100650100676_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl100648100681_))
                                              ((lambda (_L100684_ _L100685_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self100635_
                                                    _L100684_)))
                                               _hd100649100679_
                                               _hd100646100671_)
                                              (let ()
                                                (declare (not safe))
                                                (_g100638100655_
                                                 _g100639100658_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g100638100655_ _g100639100658_)))))
                              (let ()
                                (declare (not safe))
                                (_g100638100655_ _g100639100658_)))))
                      (let ()
                        (declare (not safe))
                        (_g100638100655_ _g100639100658_))))))
          (declare (not safe))
          (_g100637100700_ _stx100636_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_self100517_ _stx100518_)
        (let* ((_g100520100548_
                (lambda (_g100521100545_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g100521100545_))))
               (_g100519100632_
                (lambda (_g100521100551_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g100521100551_))
                      (let ((_e100526100553_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g100521100551_))))
                        (let ((_hd100525100556_
                               (let ()
                                 (declare (not safe))
                                 (##car _e100526100553_)))
                              (_tl100524100558_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e100526100553_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl100524100558_))
                              (let ((_g101325_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl100524100558_
                                        '0))))
                                (begin
                                  (let ((_g101326_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g101325_)
                                               (##vector-length _g101325_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g101326_ 2)))
                                        (error "Context expects 2 values"
                                               _g101326_)))
                                  (let ((_target100527100561_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g101325_ 0)))
                                        (_tl100529100563_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g101325_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl100529100563_))
                                        (letrec ((_loop100530100566_
                                                  (lambda (_hd100528100569_
                                                           _body100534100571_
                                                           _hd100535100573_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd100528100569_))
                                                        (let ((_e100531100576_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd100528100569_))))
                  (let ((_lp-hd100532100579_
                         (let () (declare (not safe)) (##car _e100531100576_)))
                        (_lp-tl100533100581_
                         (let ()
                           (declare (not safe))
                           (##cdr _e100531100576_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd100532100579_))
                        (let ((_e100540100584_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd100532100579_))))
                          (let ((_hd100539100587_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e100540100584_)))
                                (_tl100538100589_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e100540100584_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl100538100589_))
                                (let ((_e100543100592_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl100538100589_))))
                                  (let ((_hd100542100595_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e100543100592_)))
                                        (_tl100541100597_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e100543100592_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl100541100597_))
                                        (let ((__tmp101329
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd100542100595_
                                                       _body100534100571_)))
                                              (__tmp101328
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd100539100587_
                                                       _hd100535100573_))))
                                          (declare (not safe))
                                          (_loop100530100566_
                                           _lp-tl100533100581_
                                           __tmp101329
                                           __tmp101328))
                                        (let ()
                                          (declare (not safe))
                                          (_g100520100548_ _g100521100551_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g100520100548_ _g100521100551_)))))
                        (let ()
                          (declare (not safe))
                          (_g100520100548_ _g100521100551_)))))
                (let ((_body100536100600_ (reverse _body100534100571_))
                      (_hd100537100602_ (reverse _hd100535100573_)))
                  ((lambda (_L100605_ _L100606_)
                     (for-each
                      (lambda (_g100620100622_)
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _self100517_ _g100620100622_)))
                      (let ((__tmp101327
                             (lambda (_g100624100627_ _g100625100629_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g100624100627_ _g100625100629_)))))
                        (declare (not safe))
                        (foldr1 __tmp101327 '() _L100605_))))
                   _body100536100600_
                   _hd100537100602_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop100530100566_
                                             _target100527100561_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g100520100548_
                                           _g100521100551_))))))
                              (let ()
                                (declare (not safe))
                                (_g100520100548_ _g100521100551_)))))
                      (let ()
                        (declare (not safe))
                        (_g100520100548_ _g100521100551_))))))
          (declare (not safe))
          (_g100519100632_ _stx100518_))))
    (define gxc#apply-body-let-values%
      (lambda (_self100370_ _stx100371_)
        (let* ((_g100373100408_
                (lambda (_g100374100405_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g100374100405_))))
               (_g100372100514_
                (lambda (_g100374100411_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g100374100411_))
                      (let ((_e100380100413_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g100374100411_))))
                        (let ((_hd100379100416_
                               (let ()
                                 (declare (not safe))
                                 (##car _e100380100413_)))
                              (_tl100378100418_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e100380100413_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl100378100418_))
                              (let ((_e100383100421_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl100378100418_))))
                                (let ((_hd100382100424_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e100383100421_)))
                                      (_tl100381100426_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e100383100421_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd100382100424_))
                                      (let ((_g101330_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd100382100424_
                                                '0))))
                                        (begin
                                          (let ((_g101331_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g101330_)
                                                       (##vector-length
                                                        _g101330_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g101331_ 2)))
                                                (error "Context expects 2 values"
                                                       _g101331_)))
                                          (let ((_target100384100429_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g101330_ 0)))
                                                (_tl100386100431_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g101330_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl100386100431_))
                                                (letrec ((_loop100387100434_
                                                          (lambda (_hd100385100437_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr100391100439_
                           _hd100392100441_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd100385100437_))
                        (let ((_e100388100444_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd100385100437_))))
                          (let ((_lp-hd100389100447_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e100388100444_)))
                                (_lp-tl100390100449_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e100388100444_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd100389100447_))
                                (let ((_e100397100452_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd100389100447_))))
                                  (let ((_hd100396100455_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e100397100452_)))
                                        (_tl100395100457_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e100397100452_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl100395100457_))
                                        (let ((_e100400100460_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl100395100457_))))
                                          (let ((_hd100399100463_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e100400100460_)))
                                                (_tl100398100465_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e100400100460_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl100398100465_))
                                                (let ((__tmp101335
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd100399100463_
                                                               _expr100391100439_)))
                                                      (__tmp101334
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd100396100455_
                                                               _hd100392100441_))))
                                                  (declare (not safe))
                                                  (_loop100387100434_
                                                   _lp-tl100390100449_
                                                   __tmp101335
                                                   __tmp101334))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g100373100408_
                                                   _g100374100411_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g100373100408_ _g100374100411_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g100373100408_ _g100374100411_)))))
                        (let ((_expr100393100468_ (reverse _expr100391100439_))
                              (_hd100394100470_ (reverse _hd100392100441_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl100381100426_))
                              (let ((_e100403100473_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl100381100426_))))
                                (let ((_hd100402100476_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e100403100473_)))
                                      (_tl100401100478_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e100403100473_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl100401100478_))
                                      ((lambda (_L100481_ _L100482_ _L100483_)
                                         (for-each
                                          (lambda (_g100502100504_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self100370_
                                               _g100502100504_)))
                                          (let ((__tmp101333
                                                 (lambda (_g100506100509_
                                                          _g100507100511_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g100506100509_
                                                           _g100507100511_))))
                                                (__tmp101332
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L100481_ '()))))
                                            (declare (not safe))
                                            (foldr1 __tmp101333
                                                    __tmp101332
                                                    _L100482_))))
                                       _hd100402100476_
                                       _expr100393100468_
                                       _hd100394100470_)
                                      (let ()
                                        (declare (not safe))
                                        (_g100373100408_ _g100374100411_)))))
                              (let ()
                                (declare (not safe))
                                (_g100373100408_ _g100374100411_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop100387100434_
                                                     _target100384100429_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g100373100408_
                                                   _g100374100411_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g100373100408_ _g100374100411_)))))
                              (let ()
                                (declare (not safe))
                                (_g100373100408_ _g100374100411_)))))
                      (let ()
                        (declare (not safe))
                        (_g100373100408_ _g100374100411_))))))
          (declare (not safe))
          (_g100372100514_ _stx100371_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_self100315_ _stx100316_)
        (let* ((_g100318100332_
                (lambda (_g100319100329_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g100319100329_))))
               (_g100317100367_
                (lambda (_g100319100335_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g100319100335_))
                      (let ((_e100324100337_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g100319100335_))))
                        (let ((_hd100323100340_
                               (let ()
                                 (declare (not safe))
                                 (##car _e100324100337_)))
                              (_tl100322100342_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e100324100337_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl100322100342_))
                              (let ((_e100327100345_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl100322100342_))))
                                (let ((_hd100326100348_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e100327100345_)))
                                      (_tl100325100350_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e100327100345_))))
                                  ((lambda (_L100353_ _L100354_)
                                     (let ((__tmp101336 (last _L100353_)))
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _self100315_
                                        __tmp101336)))
                                   _tl100325100350_
                                   _hd100326100348_)))
                              (let ()
                                (declare (not safe))
                                (_g100318100332_ _g100319100335_)))))
                      (let ()
                        (declare (not safe))
                        (_g100318100332_ _g100319100335_))))))
          (declare (not safe))
          (_g100317100367_ _stx100316_))))
    (define gxc#apply-body-setq%
      (lambda (_self100247_ _stx100248_)
        (let* ((_g100250100267_
                (lambda (_g100251100264_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g100251100264_))))
               (_g100249100312_
                (lambda (_g100251100270_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g100251100270_))
                      (let ((_e100256100272_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g100251100270_))))
                        (let ((_hd100255100275_
                               (let ()
                                 (declare (not safe))
                                 (##car _e100256100272_)))
                              (_tl100254100277_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e100256100272_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl100254100277_))
                              (let ((_e100259100280_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl100254100277_))))
                                (let ((_hd100258100283_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e100259100280_)))
                                      (_tl100257100285_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e100259100280_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl100257100285_))
                                      (let ((_e100262100288_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl100257100285_))))
                                        (let ((_hd100261100291_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e100262100288_)))
                                              (_tl100260100293_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e100262100288_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl100260100293_))
                                              ((lambda (_L100296_ _L100297_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self100247_
                                                    _L100296_)))
                                               _hd100261100291_
                                               _hd100258100283_)
                                              (let ()
                                                (declare (not safe))
                                                (_g100250100267_
                                                 _g100251100270_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g100250100267_ _g100251100270_)))))
                              (let ()
                                (declare (not safe))
                                (_g100250100267_ _g100251100270_)))))
                      (let ()
                        (declare (not safe))
                        (_g100250100267_ _g100251100270_))))))
          (declare (not safe))
          (_g100249100312_ _stx100248_))))
    (define gxc#apply-operands
      (lambda (_self100160_ _stx100161_)
        (let* ((_g100163100182_
                (lambda (_g100164100179_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g100164100179_))))
               (_g100162100244_
                (lambda (_g100164100185_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g100164100185_))
                      (let ((_e100168100187_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g100164100185_))))
                        (let ((_hd100167100190_
                               (let ()
                                 (declare (not safe))
                                 (##car _e100168100187_)))
                              (_tl100166100192_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e100168100187_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl100166100192_))
                              (let ((_g101337_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl100166100192_
                                        '0))))
                                (begin
                                  (let ((_g101338_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g101337_)
                                               (##vector-length _g101337_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g101338_ 2)))
                                        (error "Context expects 2 values"
                                               _g101338_)))
                                  (let ((_target100169100195_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g101337_ 0)))
                                        (_tl100171100197_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g101337_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl100171100197_))
                                        (letrec ((_loop100172100200_
                                                  (lambda (_hd100170100203_
                                                           _rands100176100205_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd100170100203_))
                                                        (let ((_e100173100208_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd100170100203_))))
                  (let ((_lp-hd100174100211_
                         (let () (declare (not safe)) (##car _e100173100208_)))
                        (_lp-tl100175100213_
                         (let ()
                           (declare (not safe))
                           (##cdr _e100173100208_))))
                    (let ((__tmp101340
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd100174100211_ _rands100176100205_))))
                      (declare (not safe))
                      (_loop100172100200_ _lp-tl100175100213_ __tmp101340))))
                (let ((_rands100177100216_ (reverse _rands100176100205_)))
                  ((lambda (_L100219_)
                     (for-each
                      (lambda (_g100232100234_)
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _self100160_ _g100232100234_)))
                      (let ((__tmp101339
                             (lambda (_g100236100239_ _g100237100241_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g100236100239_ _g100237100241_)))))
                        (declare (not safe))
                        (foldr1 __tmp101339 '() _L100219_))))
                   _rands100177100216_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop100172100200_
                                             _target100169100195_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g100163100182_
                                           _g100164100185_))))))
                              (let ()
                                (declare (not safe))
                                (_g100163100182_ _g100164100185_)))))
                      (let ()
                        (declare (not safe))
                        (_g100163100182_ _g100164100185_))))))
          (declare (not safe))
          (_g100162100244_ _stx100161_))))
    (define gxc#xform-wrap-source
      (lambda (_stx100157_ _src-stx100158_)
        (let ((__tmp101341
               (let () (declare (not safe)) (gx#stx-source _src-stx100158_))))
          (declare (not safe))
          (gx#stx-wrap-source _stx100157_ __tmp101341))))
    (define gxc#xform-begin%
      (lambda (_self100112_ _stx100113_)
        (let* ((_g100115100125_
                (lambda (_g100116100122_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g100116100122_))))
               (_g100114100154_
                (lambda (_g100116100128_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g100116100128_))
                      (let ((_e100120100130_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g100116100128_))))
                        (let ((_hd100119100133_
                               (let ()
                                 (declare (not safe))
                                 (##car _e100120100130_)))
                              (_tl100118100135_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e100120100130_))))
                          ((lambda (_L100138_)
                             (let* ((_forms100152_
                                     (map (lambda (_g100147100149_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self100112_
                                               _g100147100149_)))
                                          _L100138_))
                                    (__tmp101342
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#begin _forms100152_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp101342
                                _stx100113_)))
                           _tl100118100135_)))
                      (let ()
                        (declare (not safe))
                        (_g100115100125_ _g100116100128_))))))
          (declare (not safe))
          (_g100114100154_ _stx100113_))))
    (define gxc#xform-begin-syntax%
      (lambda (_self100066_ _stx100067_)
        (let* ((_g100069100079_
                (lambda (_g100070100076_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g100070100076_))))
               (_g100068100109_
                (lambda (_g100070100082_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g100070100082_))
                      (let ((_e100074100084_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g100070100082_))))
                        (let ((_hd100073100087_
                               (let ()
                                 (declare (not safe))
                                 (##car _e100074100084_)))
                              (_tl100072100089_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e100074100084_))))
                          ((lambda (_L100092_)
                             (let ((__tmp101345
                                    (lambda ()
                                      (let* ((_forms100107_
                                              (map (lambda (_g100102100104_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _self100066_
                                                        _g100102100104_)))
                                                   _L100092_))
                                             (__tmp101346
                                              (let ()
                                                (declare (not safe))
                                                (cons '%#begin-syntax
                                                      _forms100107_))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp101346
                                         _stx100067_))))
                                   (__tmp101343
                                    (let ((__tmp101344
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp101344 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp101345
                                gx#current-expander-phi
                                __tmp101343)))
                           _tl100072100089_)))
                      (let ()
                        (declare (not safe))
                        (_g100069100079_ _g100070100082_))))))
          (declare (not safe))
          (_g100068100109_ _stx100067_))))
    (define gxc#xform-module%
      (lambda (_self100003_ _stx100004_)
        (let* ((_g100006100020_
                (lambda (_g100007100017_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g100007100017_))))
               (_g100005100063_
                (lambda (_g100007100023_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g100007100023_))
                      (let ((_e100012100025_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g100007100023_))))
                        (let ((_hd100011100028_
                               (let ()
                                 (declare (not safe))
                                 (##car _e100012100025_)))
                              (_tl100010100030_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e100012100025_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl100010100030_))
                              (let ((_e100015100033_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl100010100030_))))
                                (let ((_hd100014100036_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e100015100033_)))
                                      (_tl100013100038_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e100015100033_))))
                                  ((lambda (_L100041_ _L100042_)
                                     (let* ((_ctx100055_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L100042_)))
                                            (_code100057_
                                             (##structure-ref
                                              _ctx100055_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_code100060_
                                             (let ((__tmp101347
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _self100003_
                                                         _code100057_)))))
                                               (declare (not safe))
                                               (call-with-parameters
                                                __tmp101347
                                                gx#current-expander-context
                                                _ctx100055_))))
                                       (##structure-set!
                                        _ctx100055_
                                        _code100060_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp101348
                                              (let ((__tmp101349
                                                     (let ((__tmp101350
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _code100060_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L100042_ __tmp101350))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#module __tmp101349))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp101348
                                          _stx100004_))))
                                   _tl100013100038_
                                   _hd100014100036_)))
                              (let ()
                                (declare (not safe))
                                (_g100006100020_ _g100007100023_)))))
                      (let ()
                        (declare (not safe))
                        (_g100006100020_ _g100007100023_))))))
          (declare (not safe))
          (_g100005100063_ _stx100004_))))
    (define gxc#xform-define-values%
      (lambda (_self99933_ _stx99934_)
        (let* ((_g9993699953_
                (lambda (_g9993799950_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9993799950_))))
               (_g99935100000_
                (lambda (_g9993799956_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9993799956_))
                      (let ((_e9994299958_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9993799956_))))
                        (let ((_hd9994199961_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9994299958_)))
                              (_tl9994099963_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9994299958_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9994099963_))
                              (let ((_e9994599966_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl9994099963_))))
                                (let ((_hd9994499969_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9994599966_)))
                                      (_tl9994399971_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9994599966_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl9994399971_))
                                      (let ((_e9994899974_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl9994399971_))))
                                        (let ((_hd9994799977_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9994899974_)))
                                              (_tl9994699979_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9994899974_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl9994699979_))
                                              ((lambda (_L99982_ _L99983_)
                                                 (let* ((_expr99998_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self99933_
                                                            _L99982_)))
                                                        (__tmp101351
                                                         (let ((__tmp101352
                                                                (let ((__tmp101353
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _expr99998_ '()))))
                          (declare (not safe))
                          (cons _L99983_ __tmp101353))))
                   (declare (not safe))
                   (cons '%#define-values __tmp101352))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp101351
                                                    _stx99934_)))
                                               _hd9994799977_
                                               _hd9994499969_)
                                              (let ()
                                                (declare (not safe))
                                                (_g9993699953_
                                                 _g9993799956_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g9993699953_ _g9993799956_)))))
                              (let ()
                                (declare (not safe))
                                (_g9993699953_ _g9993799956_)))))
                      (let ()
                        (declare (not safe))
                        (_g9993699953_ _g9993799956_))))))
          (declare (not safe))
          (_g99935100000_ _stx99934_))))
    (define gxc#xform-define-syntax%
      (lambda (_self99862_ _stx99863_)
        (let* ((_g9986599882_
                (lambda (_g9986699879_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9986699879_))))
               (_g9986499930_
                (lambda (_g9986699885_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9986699885_))
                      (let ((_e9987199887_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9986699885_))))
                        (let ((_hd9987099890_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9987199887_)))
                              (_tl9986999892_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9987199887_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9986999892_))
                              (let ((_e9987499895_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl9986999892_))))
                                (let ((_hd9987399898_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9987499895_)))
                                      (_tl9987299900_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9987499895_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl9987299900_))
                                      (let ((_e9987799903_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl9987299900_))))
                                        (let ((_hd9987699906_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9987799903_)))
                                              (_tl9987599908_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9987799903_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl9987599908_))
                                              ((lambda (_L99911_ _L99912_)
                                                 (let ((__tmp101356
                                                        (lambda ()
                                                          (let* ((_expr99928_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__1 _self99862_ _L99911_)))
                         (__tmp101357
                          (let ((__tmp101358
                                 (let ((__tmp101359
                                        (let ()
                                          (declare (not safe))
                                          (cons _expr99928_ '()))))
                                   (declare (not safe))
                                   (cons _L99912_ __tmp101359))))
                            (declare (not safe))
                            (cons '%#define-syntax __tmp101358))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp101357 _stx99863_))))
               (__tmp101354
                (let ((__tmp101355 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp101355 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp101356
                                                    gx#current-expander-phi
                                                    __tmp101354)))
                                               _hd9987699906_
                                               _hd9987399898_)
                                              (let ()
                                                (declare (not safe))
                                                (_g9986599882_
                                                 _g9986699885_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g9986599882_ _g9986699885_)))))
                              (let ()
                                (declare (not safe))
                                (_g9986599882_ _g9986699885_)))))
                      (let ()
                        (declare (not safe))
                        (_g9986599882_ _g9986699885_))))))
          (declare (not safe))
          (_g9986499930_ _stx99863_))))
    (define gxc#xform-begin-annotation%
      (lambda (_self99792_ _stx99793_)
        (let* ((_g9979599812_
                (lambda (_g9979699809_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9979699809_))))
               (_g9979499859_
                (lambda (_g9979699815_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9979699815_))
                      (let ((_e9980199817_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9979699815_))))
                        (let ((_hd9980099820_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9980199817_)))
                              (_tl9979999822_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9980199817_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9979999822_))
                              (let ((_e9980499825_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl9979999822_))))
                                (let ((_hd9980399828_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9980499825_)))
                                      (_tl9980299830_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9980499825_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl9980299830_))
                                      (let ((_e9980799833_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl9980299830_))))
                                        (let ((_hd9980699836_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9980799833_)))
                                              (_tl9980599838_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9980799833_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl9980599838_))
                                              ((lambda (_L99841_ _L99842_)
                                                 (let* ((_expr99857_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self99792_
                                                            _L99841_)))
                                                        (__tmp101360
                                                         (let ((__tmp101361
                                                                (let ((__tmp101362
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _expr99857_ '()))))
                          (declare (not safe))
                          (cons _L99842_ __tmp101362))))
                   (declare (not safe))
                   (cons '%#begin-annotation __tmp101361))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp101360
                                                    _stx99793_)))
                                               _hd9980699836_
                                               _hd9980399828_)
                                              (let ()
                                                (declare (not safe))
                                                (_g9979599812_
                                                 _g9979699815_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g9979599812_ _g9979699815_)))))
                              (let ()
                                (declare (not safe))
                                (_g9979599812_ _g9979699815_)))))
                      (let ()
                        (declare (not safe))
                        (_g9979599812_ _g9979699815_))))))
          (declare (not safe))
          (_g9979499859_ _stx99793_))))
    (define gxc#xform-lambda%
      (lambda (_self99731_ _stx99732_)
        (let* ((_g9973499748_
                (lambda (_g9973599745_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9973599745_))))
               (_g9973399789_
                (lambda (_g9973599751_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9973599751_))
                      (let ((_e9974099753_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9973599751_))))
                        (let ((_hd9973999756_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9974099753_)))
                              (_tl9973899758_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9974099753_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9973899758_))
                              (let ((_e9974399761_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl9973899758_))))
                                (let ((_hd9974299764_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9974399761_)))
                                      (_tl9974199766_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9974399761_))))
                                  ((lambda (_L99769_ _L99770_)
                                     (let* ((_body99787_
                                             (map (lambda (_g9978299784_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _self99731_
                                                       _g9978299784_)))
                                                  _L99769_))
                                            (__tmp101363
                                             (let ((__tmp101364
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L99770_
                                                            _body99787_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp101364))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp101363
                                        _stx99732_)))
                                   _tl9974199766_
                                   _hd9974299764_)))
                              (let ()
                                (declare (not safe))
                                (_g9973499748_ _g9973599751_)))))
                      (let ()
                        (declare (not safe))
                        (_g9973499748_ _g9973599751_))))))
          (declare (not safe))
          (_g9973399789_ _stx99732_))))
    (define gxc#xform-case-lambda%
      (lambda (_self99640_ _stx99641_)
        (letrec ((_clause-e99643_
                  (lambda (_clause99684_)
                    (let* ((_g9968699697_
                            (lambda (_g9968799694_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g9968799694_))))
                           (_g9968599728_
                            (lambda (_g9968799700_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g9968799700_))
                                  (let ((_e9969299702_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g9968799700_))))
                                    (let ((_hd9969199705_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e9969299702_)))
                                          (_tl9969099707_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e9969299702_))))
                                      ((lambda (_L99710_ _L99711_)
                                         (let ((_body99726_
                                                (map (lambda (_g9972199723_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _self99640_
                                                          _g9972199723_)))
                                                     _L99710_)))
                                           (declare (not safe))
                                           (cons _L99711_ _body99726_)))
                                       _tl9969099707_
                                       _hd9969199705_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g9968699697_ _g9968799700_))))))
                      (declare (not safe))
                      (_g9968599728_ _clause99684_)))))
          (let* ((_g9964599655_
                  (lambda (_g9964699652_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g9964699652_))))
                 (_g9964499681_
                  (lambda (_g9964699658_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g9964699658_))
                        (let ((_e9965099660_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g9964699658_))))
                          (let ((_hd9964999663_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9965099660_)))
                                (_tl9964899665_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9965099660_))))
                            ((lambda (_L99668_)
                               (let* ((_clauses99679_
                                       (map _clause-e99643_ _L99668_))
                                      (__tmp101365
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses99679_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp101365
                                  _stx99641_)))
                             _tl9964899665_)))
                        (let ()
                          (declare (not safe))
                          (_g9964599655_ _g9964699658_))))))
            (declare (not safe))
            (_g9964499681_ _stx99641_)))))
    (define gxc#xform-let-values%
      (lambda (_self99426_ _stx99427_)
        (let* ((_g9942999462_
                (lambda (_g9943099459_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9943099459_))))
               (_g9942899637_
                (lambda (_g9943099465_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9943099465_))
                      (let ((_e9943799467_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9943099465_))))
                        (let ((_hd9943699470_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9943799467_)))
                              (_tl9943599472_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9943799467_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9943599472_))
                              (let ((_e9944099475_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl9943599472_))))
                                (let ((_hd9943999478_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9944099475_)))
                                      (_tl9943899480_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9944099475_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd9943999478_))
                                      (let ((_g101366_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd9943999478_
                                                '0))))
                                        (begin
                                          (let ((_g101367_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g101366_)
                                                       (##vector-length
                                                        _g101366_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g101367_ 2)))
                                                (error "Context expects 2 values"
                                                       _g101367_)))
                                          (let ((_target9944199483_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g101366_ 0)))
                                                (_tl9944399485_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g101366_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl9944399485_))
                                                (letrec ((_loop9944499488_
                                                          (lambda (_hd9944299491_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr9944899493_
                           _hd9944999495_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd9944299491_))
                        (let ((_e9944599498_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd9944299491_))))
                          (let ((_lp-hd9944699501_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9944599498_)))
                                (_lp-tl9944799503_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9944599498_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd9944699501_))
                                (let ((_e9945499506_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd9944699501_))))
                                  (let ((_hd9945399509_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e9945499506_)))
                                        (_tl9945299511_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e9945499506_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl9945299511_))
                                        (let ((_e9945799514_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl9945299511_))))
                                          (let ((_hd9945699517_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e9945799514_)))
                                                (_tl9945599519_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e9945799514_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl9945599519_))
                                                (let ((__tmp101380
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd9945699517_
                                                               _expr9944899493_)))
                                                      (__tmp101379
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd9945399509_
                                                               _hd9944999495_))))
                                                  (declare (not safe))
                                                  (_loop9944499488_
                                                   _lp-tl9944799503_
                                                   __tmp101380
                                                   __tmp101379))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g9942999462_
                                                   _g9943099465_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g9942999462_ _g9943099465_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g9942999462_ _g9943099465_)))))
                        (let ((_expr9945099522_ (reverse _expr9944899493_))
                              (_hd9945199524_ (reverse _hd9944999495_)))
                          ((lambda (_L99527_ _L99528_ _L99529_ _L99530_)
                             (let* ((_g9954999565_
                                     (lambda (_g9955099562_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g9955099562_))))
                                    (_g9954899623_
                                     (lambda (_g9955099568_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null? _g9955099568_))
                                           (let ((_g101368_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _g9955099568_
                                                     '0))))
                                             (begin
                                               (let ((_g101369_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g101368_)
                                                            (##vector-length
                                                             _g101368_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g101369_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g101369_)))
                                               (let ((_target9955299570_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g101368_
                                                         0)))
                                                     (_tl9955499572_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g101368_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl9955499572_))
                                                     (letrec ((_loop9955599575_
                                                               (lambda (_hd9955399578_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr9955999580_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _hd9955399578_))
                             (let ((_e9955699583_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _hd9955399578_))))
                               (let ((_lp-hd9955799586_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e9955699583_)))
                                     (_lp-tl9955899588_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e9955699583_))))
                                 (let ((__tmp101376
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd9955799586_
                                                _expr9955999580_))))
                                   (declare (not safe))
                                   (_loop9955599575_
                                    _lp-tl9955899588_
                                    __tmp101376))))
                             (let ((_expr9956099591_
                                    (reverse _expr9955999580_)))
                               ((lambda (_L99594_)
                                  (let ()
                                    (let* ((_body99611_
                                            (map (lambda (_g9960699608_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self99426_
                                                      _g9960699608_)))
                                                 _L99527_))
                                           (__tmp101370
                                            (let ((__tmp101371
                                                   (let ((__tmp101372
                                                          (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _L99594_
                                                               _L99529_))
                                                            (let ((__tmp101373
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g9961299616_ _g9961399618_ _g9961499620_)
                             (let ((__tmp101374
                                    (let ((__tmp101375
                                           (let ()
                                             (declare (not safe))
                                             (cons _g9961299616_ '()))))
                                      (declare (not safe))
                                      (cons _g9961399618_ __tmp101375))))
                               (declare (not safe))
                               (cons __tmp101374 _g9961499620_)))))
                      (declare (not safe))
                      (foldr2 __tmp101373 '() _L99594_ _L99529_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp101372
                                                           _body99611_))))
                                              (declare (not safe))
                                              (cons _L99530_ __tmp101371))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp101370
                                       _stx99427_))))
                                _expr9956099591_))))))
               (let ()
                 (declare (not safe))
                 (_loop9955599575_ _target9955299570_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g9954999565_
                                                        _g9955099568_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_g9954999565_ _g9955099568_)))))
                                    (__tmp101377
                                     (map (lambda (_g9962599627_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self99426_
                                               _g9962599627_)))
                                          (let ((__tmp101378
                                                 (lambda (_g9962999632_
                                                          _g9963099634_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g9962999632_
                                                           _g9963099634_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp101378
                                                    '()
                                                    _L99528_)))))
                               (declare (not safe))
                               (_g9954899623_ __tmp101377)))
                           _tl9943899480_
                           _expr9945099522_
                           _hd9945199524_
                           _hd9943699470_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop9944499488_
                                                     _target9944199483_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g9942999462_
                                                   _g9943099465_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g9942999462_ _g9943099465_)))))
                              (let ()
                                (declare (not safe))
                                (_g9942999462_ _g9943099465_)))))
                      (let ()
                        (declare (not safe))
                        (_g9942999462_ _g9943099465_))))))
          (declare (not safe))
          (_g9942899637_ _stx99427_))))
    (define gxc#xform-operands
      (lambda (_self99378_ _stx99379_)
        (let* ((_g9938199392_
                (lambda (_g9938299389_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9938299389_))))
               (_g9938099423_
                (lambda (_g9938299395_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9938299395_))
                      (let ((_e9938799397_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9938299395_))))
                        (let ((_hd9938699400_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9938799397_)))
                              (_tl9938599402_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9938799397_))))
                          ((lambda (_L99405_ _L99406_)
                             (let* ((_rands99421_
                                     (map (lambda (_g9941699418_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self99378_
                                               _g9941699418_)))
                                          _L99405_))
                                    (__tmp101381
                                     (let ()
                                       (declare (not safe))
                                       (cons _L99406_ _rands99421_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source __tmp101381 _stx99379_)))
                           _tl9938599402_
                           _hd9938699400_)))
                      (let ()
                        (declare (not safe))
                        (_g9938199392_ _g9938299395_))))))
          (declare (not safe))
          (_g9938099423_ _stx99379_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_self99308_ _stx99309_)
        (let* ((_g9931199328_
                (lambda (_g9931299325_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9931299325_))))
               (_g9931099375_
                (lambda (_g9931299331_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9931299331_))
                      (let ((_e9931799333_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9931299331_))))
                        (let ((_hd9931699336_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9931799333_)))
                              (_tl9931599338_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9931799333_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9931599338_))
                              (let ((_e9932099341_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl9931599338_))))
                                (let ((_hd9931999344_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9932099341_)))
                                      (_tl9931899346_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9932099341_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl9931899346_))
                                      (let ((_e9932399349_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl9931899346_))))
                                        (let ((_hd9932299352_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9932399349_)))
                                              (_tl9932199354_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9932399349_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl9932199354_))
                                              ((lambda (_L99357_ _L99358_)
                                                 (let* ((_expr99373_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self99308_
                                                            _L99357_)))
                                                        (__tmp101382
                                                         (let ((__tmp101383
                                                                (let ((__tmp101384
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _expr99373_ '()))))
                          (declare (not safe))
                          (cons _L99358_ __tmp101384))))
                   (declare (not safe))
                   (cons '%#set! __tmp101383))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp101382
                                                    _stx99309_)))
                                               _hd9932299352_
                                               _hd9931999344_)
                                              (let ()
                                                (declare (not safe))
                                                (_g9931199328_
                                                 _g9931299331_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g9931199328_ _g9931299331_)))))
                              (let ()
                                (declare (not safe))
                                (_g9931199328_ _g9931299331_)))))
                      (let ()
                        (declare (not safe))
                        (_g9931199328_ _g9931299331_))))))
          (declare (not safe))
          (_g9931099375_ _stx99309_))))))
