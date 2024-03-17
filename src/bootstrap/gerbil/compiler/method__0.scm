(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1710694204)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_stx99875_)
        (let* ((_self99877_ (gxc#current-compile-method))
               (_$e99879_
                (let ((__tmp100048
                       (let ()
                         (declare (not safe))
                         (gxc#stx-car-e _stx99875_))))
                  (declare (not safe))
                  (method-ref _self99877_ __tmp100048))))
          (if _$e99879_
              ((lambda (_method99882_)
                 (declare (not safe))
                 (_method99882_ _self99877_ _stx99875_))
               _$e99879_)
              (let ((__tmp100050
                     (let () (declare (not safe)) (gxc#stx-car-e _stx99875_)))
                    (__tmp100049
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _stx99875_))))
                (declare (not safe))
                (error '"missing method"
                       _self99877_
                       __tmp100050
                       __tmp100049))))))
    (define gxc#compile-e__1
      (lambda (_self99885_ _stx99886_)
        (let ((_$e99888_
               (let ((__tmp100051
                      (let ()
                        (declare (not safe))
                        (gxc#stx-car-e _stx99886_))))
                 (declare (not safe))
                 (method-ref _self99885_ __tmp100051))))
          (if _$e99888_
              ((lambda (_method99891_)
                 (declare (not safe))
                 (_method99891_ _self99885_ _stx99886_))
               _$e99888_)
              (let ((__tmp100053
                     (let () (declare (not safe)) (gxc#stx-car-e _stx99886_)))
                    (__tmp100052
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _stx99886_))))
                (declare (not safe))
                (error '"missing method"
                       _self99885_
                       __tmp100053
                       __tmp100052))))))
    (define gxc#compile-e
      (lambda _g100055_
        (let ((_g100054_ (let () (declare (not safe)) (##length _g100055_))))
          (cond ((let () (declare (not safe)) (##fx= _g100054_ 1))
                 (apply (lambda (_stx99875_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _stx99875_)))
                        _g100055_))
                ((let () (declare (not safe)) (##fx= _g100054_ 2))
                 (apply (lambda (_self99885_ _stx99886_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__1 _self99885_ _stx99886_)))
                        _g100055_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g100055_))))))
    (define gxc#stx-car-e
      (lambda (_stx99873_)
        (let ((__tmp100056
               (car (let () (declare (not safe)) (gx#stx-e _stx99873_)))))
          (declare (not safe))
          (gx#stx-e __tmp100056))))
    (define gxc#void-method (lambda (_self99870_ _stx99871_) '#!void))
    (define gxc#false-method (lambda (_self99867_ _stx99868_) '#f))
    (define gxc#true-method (lambda (_self99864_ _stx99865_) '#t))
    (define gxc#identity-method (lambda (_self99861_ _stx99862_) _stx99862_))
    (define gxc#::void-expression::t
      (let ((__tmp100057 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp100057
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _$args99858_
        (apply make-instance gxc#::void-expression::t _$args99858_)))
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
      (let ((__tmp100058 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp100058
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _$args99854_
        (apply make-instance gxc#::void-special-form::t _$args99854_)))
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
      (let ((__tmp100059
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (make-class-type 'gxc#::void::t '::void __tmp100059 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _$args99850_ (apply make-instance gxc#::void::t _$args99850_)))
    (define gxc#::void-bind-methods!
      (make-promise
       (lambda ()
         (force gxc#::void-special-form-bind-methods!)
         (force gxc#::void-expression-bind-methods!))))
    (define gxc#::false-expression::t
      (let ((__tmp100060 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp100060
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _$args99846_
        (apply make-instance gxc#::false-expression::t _$args99846_)))
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
      (let ((__tmp100061 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp100061
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _$args99842_
        (apply make-instance gxc#::false-special-form::t _$args99842_)))
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
      (let ((__tmp100062
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (make-class-type 'gxc#::false::t '::false __tmp100062 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _$args99838_ (apply make-instance gxc#::false::t _$args99838_)))
    (define gxc#::false-bind-methods!
      (make-promise
       (lambda ()
         (force gxc#::false-special-form-bind-methods!)
         (force gxc#::false-expression-bind-methods!))))
    (define gxc#::identity-expression::t
      (let ((__tmp100063 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp100063
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _$args99834_
        (apply make-instance gxc#::identity-expression::t _$args99834_)))
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
      (let ((__tmp100064 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp100064
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _$args99830_
        (apply make-instance gxc#::identity-special-form::t _$args99830_)))
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
      (let ((__tmp100065
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::identity::t
         '::identity
         __tmp100065
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _$args99826_
        (apply make-instance gxc#::identity::t _$args99826_)))
    (define gxc#::identity-bind-methods!
      (make-promise
       (lambda ()
         (force gxc#::identity-special-form-bind-methods!)
         (force gxc#::identity-expression-bind-methods!))))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp100066 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp100066
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _$args99822_
        (apply make-instance gxc#::basic-xform-expression::t _$args99822_)))
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
      (let ((__tmp100067
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp100067
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _$args99818_
        (apply make-instance gxc#::basic-xform::t _$args99818_)))
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
      (lambda (_self99774_ _stx99775_)
        (let* ((_g9977799787_
                (lambda (_g9977899784_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9977899784_))))
               (_g9977699814_
                (lambda (_g9977899790_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9977899790_))
                      (let ((_e9978099792_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9977899790_))))
                        (let ((_hd9978199795_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9978099792_)))
                              (_tl9978299797_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9978099792_))))
                          ((lambda (_L99800_)
                             (for-each
                              (lambda (_g9980999811_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1
                                   _self99774_
                                   _g9980999811_)))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _L99800_))))
                           _tl9978299797_)))
                      (let ()
                        (declare (not safe))
                        (_g9977799787_ _g9977899790_))))))
          (declare (not safe))
          (_g9977699814_ _stx99775_))))
    (define gxc#apply-last-begin%
      (lambda (_self99735_ _stx99736_)
        (let* ((_g9973899748_
                (lambda (_g9973999745_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9973999745_))))
               (_g9973799771_
                (lambda (_g9973999751_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9973999751_))
                      (let ((_e9974199753_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9973999751_))))
                        (let ((_hd9974299756_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9974199753_)))
                              (_tl9974399758_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9974199753_))))
                          ((lambda (_L99761_)
                             (let ((__tmp100068 (last _L99761_)))
                               (declare (not safe))
                               (gxc#compile-e__1 _self99735_ __tmp100068)))
                           _tl9974399758_)))
                      (let ()
                        (declare (not safe))
                        (_g9973899748_ _g9973999751_))))))
          (declare (not safe))
          (_g9973799771_ _stx99736_))))
    (define gxc#apply-begin-syntax%
      (lambda (_self99731_ _stx99732_)
        (let ((__tmp100071
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#apply-begin% _self99731_ _stx99732_))))
              (__tmp100069
               (let ((__tmp100070 (gx#current-expander-phi)))
                 (declare (not safe))
                 (fx+ __tmp100070 '1))))
          (declare (not safe))
          (call-with-parameters
           __tmp100071
           gx#current-expander-phi
           __tmp100069))))
    (define gxc#apply-module%
      (lambda (_self99670_ _stx99671_)
        (let* ((_g9967399687_
                (lambda (_g9967499684_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9967499684_))))
               (_g9967299728_
                (lambda (_g9967499690_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9967499690_))
                      (let ((_e9967799692_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9967499690_))))
                        (let ((_hd9967899695_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9967799692_)))
                              (_tl9967999697_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9967799692_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9967999697_))
                              (let ((_e9968099700_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl9967999697_))))
                                (let ((_hd9968199703_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9968099700_)))
                                      (_tl9968299705_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9968099700_))))
                                  ((lambda (_L99708_ _L99709_)
                                     (let* ((_ctx99722_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L99709_)))
                                            (_ctx-stx99724_
                                             (##structure-ref
                                              _ctx99722_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp100072
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self99670_
                                                   _ctx-stx99724_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp100072
                                          gx#current-expander-context
                                          _ctx99722_))))
                                   _tl9968299705_
                                   _hd9968199703_)))
                              (let ()
                                (declare (not safe))
                                (_g9967399687_ _g9967499690_)))))
                      (let ()
                        (declare (not safe))
                        (_g9967399687_ _g9967499690_))))))
          (declare (not safe))
          (_g9967299728_ _stx99671_))))
    (define gxc#apply-begin-annotation%
      (lambda (_self99602_ _stx99603_)
        (let* ((_g9960599622_
                (lambda (_g9960699619_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9960699619_))))
               (_g9960499667_
                (lambda (_g9960699625_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9960699625_))
                      (let ((_e9960999627_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9960699625_))))
                        (let ((_hd9961099630_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9960999627_)))
                              (_tl9961199632_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9960999627_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9961199632_))
                              (let ((_e9961299635_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl9961199632_))))
                                (let ((_hd9961399638_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9961299635_)))
                                      (_tl9961499640_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9961299635_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl9961499640_))
                                      (let ((_e9961599643_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl9961499640_))))
                                        (let ((_hd9961699646_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9961599643_)))
                                              (_tl9961799648_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9961599643_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl9961799648_))
                                              ((lambda (_L99651_ _L99652_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self99602_
                                                    _L99651_)))
                                               _hd9961699646_
                                               _hd9961399638_)
                                              (let ()
                                                (declare (not safe))
                                                (_g9960599622_
                                                 _g9960699625_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g9960599622_ _g9960699625_)))))
                              (let ()
                                (declare (not safe))
                                (_g9960599622_ _g9960699625_)))))
                      (let ()
                        (declare (not safe))
                        (_g9960599622_ _g9960699625_))))))
          (declare (not safe))
          (_g9960499667_ _stx99603_))))
    (define gxc#apply-define-values%
      (lambda (_self99534_ _stx99535_)
        (let* ((_g9953799554_
                (lambda (_g9953899551_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9953899551_))))
               (_g9953699599_
                (lambda (_g9953899557_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9953899557_))
                      (let ((_e9954199559_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9953899557_))))
                        (let ((_hd9954299562_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9954199559_)))
                              (_tl9954399564_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9954199559_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9954399564_))
                              (let ((_e9954499567_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl9954399564_))))
                                (let ((_hd9954599570_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9954499567_)))
                                      (_tl9954699572_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9954499567_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl9954699572_))
                                      (let ((_e9954799575_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl9954699572_))))
                                        (let ((_hd9954899578_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9954799575_)))
                                              (_tl9954999580_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9954799575_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl9954999580_))
                                              ((lambda (_L99583_ _L99584_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self99534_
                                                    _L99583_)))
                                               _hd9954899578_
                                               _hd9954599570_)
                                              (let ()
                                                (declare (not safe))
                                                (_g9953799554_
                                                 _g9953899557_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g9953799554_ _g9953899557_)))))
                              (let ()
                                (declare (not safe))
                                (_g9953799554_ _g9953899557_)))))
                      (let ()
                        (declare (not safe))
                        (_g9953799554_ _g9953899557_))))))
          (declare (not safe))
          (_g9953699599_ _stx99535_))))
    (define gxc#apply-define-syntax%
      (lambda (_self99465_ _stx99466_)
        (let* ((_g9946899485_
                (lambda (_g9946999482_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9946999482_))))
               (_g9946799531_
                (lambda (_g9946999488_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9946999488_))
                      (let ((_e9947299490_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9946999488_))))
                        (let ((_hd9947399493_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9947299490_)))
                              (_tl9947499495_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9947299490_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9947499495_))
                              (let ((_e9947599498_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl9947499495_))))
                                (let ((_hd9947699501_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9947599498_)))
                                      (_tl9947799503_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9947599498_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl9947799503_))
                                      (let ((_e9947899506_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl9947799503_))))
                                        (let ((_hd9947999509_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9947899506_)))
                                              (_tl9948099511_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9947899506_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl9948099511_))
                                              ((lambda (_L99514_ _L99515_)
                                                 (let ((__tmp100075
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _self99465_
                                                             _L99514_))))
                                                       (__tmp100073
                                                        (let ((__tmp100074
                                                               (gx#current-expander-phi)))
                                                          (declare (not safe))
                                                          (fx+ __tmp100074
                                                               '1))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp100075
                                                    gx#current-expander-phi
                                                    __tmp100073)))
                                               _hd9947999509_
                                               _hd9947699501_)
                                              (let ()
                                                (declare (not safe))
                                                (_g9946899485_
                                                 _g9946999488_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g9946899485_ _g9946999488_)))))
                              (let ()
                                (declare (not safe))
                                (_g9946899485_ _g9946999488_)))))
                      (let ()
                        (declare (not safe))
                        (_g9946899485_ _g9946999488_))))))
          (declare (not safe))
          (_g9946799531_ _stx99466_))))
    (define gxc#apply-body-lambda%
      (lambda (_self99397_ _stx99398_)
        (let* ((_g9940099417_
                (lambda (_g9940199414_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9940199414_))))
               (_g9939999462_
                (lambda (_g9940199420_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9940199420_))
                      (let ((_e9940499422_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9940199420_))))
                        (let ((_hd9940599425_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9940499422_)))
                              (_tl9940699427_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9940499422_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9940699427_))
                              (let ((_e9940799430_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl9940699427_))))
                                (let ((_hd9940899433_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9940799430_)))
                                      (_tl9940999435_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9940799430_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl9940999435_))
                                      (let ((_e9941099438_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl9940999435_))))
                                        (let ((_hd9941199441_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9941099438_)))
                                              (_tl9941299443_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9941099438_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl9941299443_))
                                              ((lambda (_L99446_ _L99447_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self99397_
                                                    _L99446_)))
                                               _hd9941199441_
                                               _hd9940899433_)
                                              (let ()
                                                (declare (not safe))
                                                (_g9940099417_
                                                 _g9940199420_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g9940099417_ _g9940199420_)))))
                              (let ()
                                (declare (not safe))
                                (_g9940099417_ _g9940199420_)))))
                      (let ()
                        (declare (not safe))
                        (_g9940099417_ _g9940199420_))))))
          (declare (not safe))
          (_g9939999462_ _stx99398_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_self99279_ _stx99280_)
        (let* ((_g9928299310_
                (lambda (_g9928399307_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9928399307_))))
               (_g9928199394_
                (lambda (_g9928399313_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9928399313_))
                      (let ((_e9928699315_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9928399313_))))
                        (let ((_hd9928799318_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9928699315_)))
                              (_tl9928899320_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9928699315_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl9928899320_))
                              (let ((_g100076_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl9928899320_
                                        '0))))
                                (begin
                                  (let ((_g100077_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g100076_)
                                               (##vector-length _g100076_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g100077_ 2)))
                                        (error "Context expects 2 values"
                                               _g100077_)))
                                  (let ((_target9928999323_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g100076_ 0)))
                                        (_tl9929199325_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g100076_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl9929199325_))
                                        (letrec ((_loop9929299328_
                                                  (lambda (_hd9929099331_
                                                           _body9929699333_
                                                           _hd9929799335_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd9929099331_))
                                                        (let ((_e9929399338_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd9929099331_))))
                  (let ((_lp-hd9929499341_
                         (let () (declare (not safe)) (##car _e9929399338_)))
                        (_lp-tl9929599343_
                         (let () (declare (not safe)) (##cdr _e9929399338_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd9929499341_))
                        (let ((_e9930099346_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd9929499341_))))
                          (let ((_hd9930199349_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9930099346_)))
                                (_tl9930299351_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9930099346_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl9930299351_))
                                (let ((_e9930399354_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl9930299351_))))
                                  (let ((_hd9930499357_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e9930399354_)))
                                        (_tl9930599359_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e9930399354_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl9930599359_))
                                        (let ((__tmp100079
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd9930499357_
                                                       _body9929699333_)))
                                              (__tmp100078
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd9930199349_
                                                       _hd9929799335_))))
                                          (declare (not safe))
                                          (_loop9929299328_
                                           _lp-tl9929599343_
                                           __tmp100079
                                           __tmp100078))
                                        (let ()
                                          (declare (not safe))
                                          (_g9928299310_ _g9928399313_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g9928299310_ _g9928399313_)))))
                        (let ()
                          (declare (not safe))
                          (_g9928299310_ _g9928399313_)))))
                (let ((_body9929899362_ (reverse _body9929699333_))
                      (_hd9929999364_ (reverse _hd9929799335_)))
                  ((lambda (_L99367_ _L99368_)
                     (for-each
                      (lambda (_g9938299384_)
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _self99279_ _g9938299384_)))
                      (let ((__tmp100080
                             (lambda (_g9938699389_ _g9938799391_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g9938699389_ _g9938799391_)))))
                        (declare (not safe))
                        (foldr1 __tmp100080 '() _L99367_))))
                   _body9929899362_
                   _hd9929999364_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop9929299328_
                                             _target9928999323_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g9928299310_ _g9928399313_))))))
                              (let ()
                                (declare (not safe))
                                (_g9928299310_ _g9928399313_)))))
                      (let ()
                        (declare (not safe))
                        (_g9928299310_ _g9928399313_))))))
          (declare (not safe))
          (_g9928199394_ _stx99280_))))
    (define gxc#apply-body-let-values%
      (lambda (_self99132_ _stx99133_)
        (let* ((_g9913599170_
                (lambda (_g9913699167_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9913699167_))))
               (_g9913499276_
                (lambda (_g9913699173_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9913699173_))
                      (let ((_e9914099175_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9913699173_))))
                        (let ((_hd9914199178_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9914099175_)))
                              (_tl9914299180_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9914099175_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9914299180_))
                              (let ((_e9914399183_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl9914299180_))))
                                (let ((_hd9914499186_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9914399183_)))
                                      (_tl9914599188_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9914399183_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd9914499186_))
                                      (let ((_g100081_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd9914499186_
                                                '0))))
                                        (begin
                                          (let ((_g100082_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g100081_)
                                                       (##vector-length
                                                        _g100081_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g100082_ 2)))
                                                (error "Context expects 2 values"
                                                       _g100082_)))
                                          (let ((_target9914699191_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g100081_ 0)))
                                                (_tl9914899193_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g100081_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl9914899193_))
                                                (letrec ((_loop9914999196_
                                                          (lambda (_hd9914799199_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr9915399201_
                           _hd9915499203_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd9914799199_))
                        (let ((_e9915099206_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd9914799199_))))
                          (let ((_lp-hd9915199209_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9915099206_)))
                                (_lp-tl9915299211_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9915099206_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd9915199209_))
                                (let ((_e9915799214_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd9915199209_))))
                                  (let ((_hd9915899217_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e9915799214_)))
                                        (_tl9915999219_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e9915799214_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl9915999219_))
                                        (let ((_e9916099222_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl9915999219_))))
                                          (let ((_hd9916199225_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e9916099222_)))
                                                (_tl9916299227_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e9916099222_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl9916299227_))
                                                (let ((__tmp100084
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd9916199225_
                                                               _expr9915399201_)))
                                                      (__tmp100083
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd9915899217_
                                                               _hd9915499203_))))
                                                  (declare (not safe))
                                                  (_loop9914999196_
                                                   _lp-tl9915299211_
                                                   __tmp100084
                                                   __tmp100083))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g9913599170_
                                                   _g9913699173_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g9913599170_ _g9913699173_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g9913599170_ _g9913699173_)))))
                        (let ((_expr9915599230_ (reverse _expr9915399201_))
                              (_hd9915699232_ (reverse _hd9915499203_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9914599188_))
                              (let ((_e9916399235_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl9914599188_))))
                                (let ((_hd9916499238_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9916399235_)))
                                      (_tl9916599240_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9916399235_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl9916599240_))
                                      ((lambda (_L99243_ _L99244_ _L99245_)
                                         (for-each
                                          (lambda (_g9926499266_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self99132_
                                               _g9926499266_)))
                                          (let ((__tmp100086
                                                 (lambda (_g9926899271_
                                                          _g9926999273_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g9926899271_
                                                           _g9926999273_))))
                                                (__tmp100085
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L99243_ '()))))
                                            (declare (not safe))
                                            (foldr1 __tmp100086
                                                    __tmp100085
                                                    _L99244_))))
                                       _hd9916499238_
                                       _expr9915599230_
                                       _hd9915699232_)
                                      (let ()
                                        (declare (not safe))
                                        (_g9913599170_ _g9913699173_)))))
                              (let ()
                                (declare (not safe))
                                (_g9913599170_ _g9913699173_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop9914999196_
                                                     _target9914699191_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g9913599170_
                                                   _g9913699173_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g9913599170_ _g9913699173_)))))
                              (let ()
                                (declare (not safe))
                                (_g9913599170_ _g9913699173_)))))
                      (let ()
                        (declare (not safe))
                        (_g9913599170_ _g9913699173_))))))
          (declare (not safe))
          (_g9913499276_ _stx99133_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_self99077_ _stx99078_)
        (let* ((_g9908099094_
                (lambda (_g9908199091_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9908199091_))))
               (_g9907999129_
                (lambda (_g9908199097_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9908199097_))
                      (let ((_e9908499099_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9908199097_))))
                        (let ((_hd9908599102_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9908499099_)))
                              (_tl9908699104_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9908499099_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9908699104_))
                              (let ((_e9908799107_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl9908699104_))))
                                (let ((_hd9908899110_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9908799107_)))
                                      (_tl9908999112_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9908799107_))))
                                  ((lambda (_L99115_ _L99116_)
                                     (let ((__tmp100087 (last _L99115_)))
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _self99077_
                                        __tmp100087)))
                                   _tl9908999112_
                                   _hd9908899110_)))
                              (let ()
                                (declare (not safe))
                                (_g9908099094_ _g9908199097_)))))
                      (let ()
                        (declare (not safe))
                        (_g9908099094_ _g9908199097_))))))
          (declare (not safe))
          (_g9907999129_ _stx99078_))))
    (define gxc#apply-body-setq%
      (lambda (_self99009_ _stx99010_)
        (let* ((_g9901299029_
                (lambda (_g9901399026_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9901399026_))))
               (_g9901199074_
                (lambda (_g9901399032_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9901399032_))
                      (let ((_e9901699034_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9901399032_))))
                        (let ((_hd9901799037_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9901699034_)))
                              (_tl9901899039_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9901699034_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9901899039_))
                              (let ((_e9901999042_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl9901899039_))))
                                (let ((_hd9902099045_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9901999042_)))
                                      (_tl9902199047_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9901999042_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl9902199047_))
                                      (let ((_e9902299050_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl9902199047_))))
                                        (let ((_hd9902399053_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9902299050_)))
                                              (_tl9902499055_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9902299050_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl9902499055_))
                                              ((lambda (_L99058_ _L99059_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self99009_
                                                    _L99058_)))
                                               _hd9902399053_
                                               _hd9902099045_)
                                              (let ()
                                                (declare (not safe))
                                                (_g9901299029_
                                                 _g9901399032_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g9901299029_ _g9901399032_)))))
                              (let ()
                                (declare (not safe))
                                (_g9901299029_ _g9901399032_)))))
                      (let ()
                        (declare (not safe))
                        (_g9901299029_ _g9901399032_))))))
          (declare (not safe))
          (_g9901199074_ _stx99010_))))
    (define gxc#apply-operands
      (lambda (_self98922_ _stx98923_)
        (let* ((_g9892598944_
                (lambda (_g9892698941_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9892698941_))))
               (_g9892499006_
                (lambda (_g9892698947_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9892698947_))
                      (let ((_e9892898949_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9892698947_))))
                        (let ((_hd9892998952_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9892898949_)))
                              (_tl9893098954_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9892898949_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl9893098954_))
                              (let ((_g100088_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl9893098954_
                                        '0))))
                                (begin
                                  (let ((_g100089_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g100088_)
                                               (##vector-length _g100088_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g100089_ 2)))
                                        (error "Context expects 2 values"
                                               _g100089_)))
                                  (let ((_target9893198957_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g100088_ 0)))
                                        (_tl9893398959_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g100088_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl9893398959_))
                                        (letrec ((_loop9893498962_
                                                  (lambda (_hd9893298965_
                                                           _rands9893898967_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd9893298965_))
                                                        (let ((_e9893598970_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd9893298965_))))
                  (let ((_lp-hd9893698973_
                         (let () (declare (not safe)) (##car _e9893598970_)))
                        (_lp-tl9893798975_
                         (let () (declare (not safe)) (##cdr _e9893598970_))))
                    (let ((__tmp100090
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd9893698973_ _rands9893898967_))))
                      (declare (not safe))
                      (_loop9893498962_ _lp-tl9893798975_ __tmp100090))))
                (let ((_rands9893998978_ (reverse _rands9893898967_)))
                  ((lambda (_L98981_)
                     (for-each
                      (lambda (_g9899498996_)
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _self98922_ _g9899498996_)))
                      (let ((__tmp100091
                             (lambda (_g9899899001_ _g9899999003_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g9899899001_ _g9899999003_)))))
                        (declare (not safe))
                        (foldr1 __tmp100091 '() _L98981_))))
                   _rands9893998978_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop9893498962_
                                             _target9893198957_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g9892598944_ _g9892698947_))))))
                              (let ()
                                (declare (not safe))
                                (_g9892598944_ _g9892698947_)))))
                      (let ()
                        (declare (not safe))
                        (_g9892598944_ _g9892698947_))))))
          (declare (not safe))
          (_g9892499006_ _stx98923_))))
    (define gxc#xform-wrap-source
      (lambda (_stx98919_ _src-stx98920_)
        (let ((__tmp100092
               (let () (declare (not safe)) (gx#stx-source _src-stx98920_))))
          (declare (not safe))
          (gx#stx-wrap-source _stx98919_ __tmp100092))))
    (define gxc#xform-begin%
      (lambda (_self98874_ _stx98875_)
        (let* ((_g9887798887_
                (lambda (_g9887898884_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9887898884_))))
               (_g9887698916_
                (lambda (_g9887898890_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9887898890_))
                      (let ((_e9888098892_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9887898890_))))
                        (let ((_hd9888198895_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9888098892_)))
                              (_tl9888298897_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9888098892_))))
                          ((lambda (_L98900_)
                             (let* ((_forms98914_
                                     (map (lambda (_g9890998911_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self98874_
                                               _g9890998911_)))
                                          _L98900_))
                                    (__tmp100093
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#begin _forms98914_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source __tmp100093 _stx98875_)))
                           _tl9888298897_)))
                      (let ()
                        (declare (not safe))
                        (_g9887798887_ _g9887898890_))))))
          (declare (not safe))
          (_g9887698916_ _stx98875_))))
    (define gxc#xform-begin-syntax%
      (lambda (_self98828_ _stx98829_)
        (let* ((_g9883198841_
                (lambda (_g9883298838_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9883298838_))))
               (_g9883098871_
                (lambda (_g9883298844_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9883298844_))
                      (let ((_e9883498846_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9883298844_))))
                        (let ((_hd9883598849_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9883498846_)))
                              (_tl9883698851_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9883498846_))))
                          ((lambda (_L98854_)
                             (let ((__tmp100096
                                    (lambda ()
                                      (let* ((_forms98869_
                                              (map (lambda (_g9886498866_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _self98828_
                                                        _g9886498866_)))
                                                   _L98854_))
                                             (__tmp100097
                                              (let ()
                                                (declare (not safe))
                                                (cons '%#begin-syntax
                                                      _forms98869_))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp100097
                                         _stx98829_))))
                                   (__tmp100094
                                    (let ((__tmp100095
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp100095 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp100096
                                gx#current-expander-phi
                                __tmp100094)))
                           _tl9883698851_)))
                      (let ()
                        (declare (not safe))
                        (_g9883198841_ _g9883298844_))))))
          (declare (not safe))
          (_g9883098871_ _stx98829_))))
    (define gxc#xform-module%
      (lambda (_self98765_ _stx98766_)
        (let* ((_g9876898782_
                (lambda (_g9876998779_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9876998779_))))
               (_g9876798825_
                (lambda (_g9876998785_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9876998785_))
                      (let ((_e9877298787_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9876998785_))))
                        (let ((_hd9877398790_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9877298787_)))
                              (_tl9877498792_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9877298787_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9877498792_))
                              (let ((_e9877598795_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl9877498792_))))
                                (let ((_hd9877698798_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9877598795_)))
                                      (_tl9877798800_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9877598795_))))
                                  ((lambda (_L98803_ _L98804_)
                                     (let* ((_ctx98817_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L98804_)))
                                            (_code98819_
                                             (##structure-ref
                                              _ctx98817_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_code98822_
                                             (let ((__tmp100098
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _self98765_
                                                         _code98819_)))))
                                               (declare (not safe))
                                               (call-with-parameters
                                                __tmp100098
                                                gx#current-expander-context
                                                _ctx98817_))))
                                       (##structure-set!
                                        _ctx98817_
                                        _code98822_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp100099
                                              (let ((__tmp100100
                                                     (let ((__tmp100101
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _code98822_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L98804_ __tmp100101))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#module __tmp100100))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp100099
                                          _stx98766_))))
                                   _tl9877798800_
                                   _hd9877698798_)))
                              (let ()
                                (declare (not safe))
                                (_g9876898782_ _g9876998785_)))))
                      (let ()
                        (declare (not safe))
                        (_g9876898782_ _g9876998785_))))))
          (declare (not safe))
          (_g9876798825_ _stx98766_))))
    (define gxc#xform-define-values%
      (lambda (_self98695_ _stx98696_)
        (let* ((_g9869898715_
                (lambda (_g9869998712_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9869998712_))))
               (_g9869798762_
                (lambda (_g9869998718_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9869998718_))
                      (let ((_e9870298720_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9869998718_))))
                        (let ((_hd9870398723_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9870298720_)))
                              (_tl9870498725_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9870298720_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9870498725_))
                              (let ((_e9870598728_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl9870498725_))))
                                (let ((_hd9870698731_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9870598728_)))
                                      (_tl9870798733_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9870598728_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl9870798733_))
                                      (let ((_e9870898736_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl9870798733_))))
                                        (let ((_hd9870998739_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9870898736_)))
                                              (_tl9871098741_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9870898736_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl9871098741_))
                                              ((lambda (_L98744_ _L98745_)
                                                 (let* ((_expr98760_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self98695_
                                                            _L98744_)))
                                                        (__tmp100102
                                                         (let ((__tmp100103
                                                                (let ((__tmp100104
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _expr98760_ '()))))
                          (declare (not safe))
                          (cons _L98745_ __tmp100104))))
                   (declare (not safe))
                   (cons '%#define-values __tmp100103))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp100102
                                                    _stx98696_)))
                                               _hd9870998739_
                                               _hd9870698731_)
                                              (let ()
                                                (declare (not safe))
                                                (_g9869898715_
                                                 _g9869998718_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g9869898715_ _g9869998718_)))))
                              (let ()
                                (declare (not safe))
                                (_g9869898715_ _g9869998718_)))))
                      (let ()
                        (declare (not safe))
                        (_g9869898715_ _g9869998718_))))))
          (declare (not safe))
          (_g9869798762_ _stx98696_))))
    (define gxc#xform-define-syntax%
      (lambda (_self98624_ _stx98625_)
        (let* ((_g9862798644_
                (lambda (_g9862898641_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9862898641_))))
               (_g9862698692_
                (lambda (_g9862898647_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9862898647_))
                      (let ((_e9863198649_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9862898647_))))
                        (let ((_hd9863298652_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9863198649_)))
                              (_tl9863398654_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9863198649_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9863398654_))
                              (let ((_e9863498657_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl9863398654_))))
                                (let ((_hd9863598660_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9863498657_)))
                                      (_tl9863698662_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9863498657_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl9863698662_))
                                      (let ((_e9863798665_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl9863698662_))))
                                        (let ((_hd9863898668_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9863798665_)))
                                              (_tl9863998670_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9863798665_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl9863998670_))
                                              ((lambda (_L98673_ _L98674_)
                                                 (let ((__tmp100107
                                                        (lambda ()
                                                          (let* ((_expr98690_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__1 _self98624_ _L98673_)))
                         (__tmp100108
                          (let ((__tmp100109
                                 (let ((__tmp100110
                                        (let ()
                                          (declare (not safe))
                                          (cons _expr98690_ '()))))
                                   (declare (not safe))
                                   (cons _L98674_ __tmp100110))))
                            (declare (not safe))
                            (cons '%#define-syntax __tmp100109))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp100108 _stx98625_))))
               (__tmp100105
                (let ((__tmp100106 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp100106 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp100107
                                                    gx#current-expander-phi
                                                    __tmp100105)))
                                               _hd9863898668_
                                               _hd9863598660_)
                                              (let ()
                                                (declare (not safe))
                                                (_g9862798644_
                                                 _g9862898647_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g9862798644_ _g9862898647_)))))
                              (let ()
                                (declare (not safe))
                                (_g9862798644_ _g9862898647_)))))
                      (let ()
                        (declare (not safe))
                        (_g9862798644_ _g9862898647_))))))
          (declare (not safe))
          (_g9862698692_ _stx98625_))))
    (define gxc#xform-begin-annotation%
      (lambda (_self98554_ _stx98555_)
        (let* ((_g9855798574_
                (lambda (_g9855898571_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9855898571_))))
               (_g9855698621_
                (lambda (_g9855898577_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9855898577_))
                      (let ((_e9856198579_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9855898577_))))
                        (let ((_hd9856298582_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9856198579_)))
                              (_tl9856398584_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9856198579_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9856398584_))
                              (let ((_e9856498587_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl9856398584_))))
                                (let ((_hd9856598590_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9856498587_)))
                                      (_tl9856698592_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9856498587_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl9856698592_))
                                      (let ((_e9856798595_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl9856698592_))))
                                        (let ((_hd9856898598_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9856798595_)))
                                              (_tl9856998600_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9856798595_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl9856998600_))
                                              ((lambda (_L98603_ _L98604_)
                                                 (let* ((_expr98619_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self98554_
                                                            _L98603_)))
                                                        (__tmp100111
                                                         (let ((__tmp100112
                                                                (let ((__tmp100113
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _expr98619_ '()))))
                          (declare (not safe))
                          (cons _L98604_ __tmp100113))))
                   (declare (not safe))
                   (cons '%#begin-annotation __tmp100112))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp100111
                                                    _stx98555_)))
                                               _hd9856898598_
                                               _hd9856598590_)
                                              (let ()
                                                (declare (not safe))
                                                (_g9855798574_
                                                 _g9855898577_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g9855798574_ _g9855898577_)))))
                              (let ()
                                (declare (not safe))
                                (_g9855798574_ _g9855898577_)))))
                      (let ()
                        (declare (not safe))
                        (_g9855798574_ _g9855898577_))))))
          (declare (not safe))
          (_g9855698621_ _stx98555_))))
    (define gxc#xform-lambda%
      (lambda (_self98493_ _stx98494_)
        (let* ((_g9849698510_
                (lambda (_g9849798507_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9849798507_))))
               (_g9849598551_
                (lambda (_g9849798513_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9849798513_))
                      (let ((_e9850098515_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9849798513_))))
                        (let ((_hd9850198518_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9850098515_)))
                              (_tl9850298520_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9850098515_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9850298520_))
                              (let ((_e9850398523_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl9850298520_))))
                                (let ((_hd9850498526_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9850398523_)))
                                      (_tl9850598528_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9850398523_))))
                                  ((lambda (_L98531_ _L98532_)
                                     (let* ((_body98549_
                                             (map (lambda (_g9854498546_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _self98493_
                                                       _g9854498546_)))
                                                  _L98531_))
                                            (__tmp100114
                                             (let ((__tmp100115
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L98532_
                                                            _body98549_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp100115))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp100114
                                        _stx98494_)))
                                   _tl9850598528_
                                   _hd9850498526_)))
                              (let ()
                                (declare (not safe))
                                (_g9849698510_ _g9849798513_)))))
                      (let ()
                        (declare (not safe))
                        (_g9849698510_ _g9849798513_))))))
          (declare (not safe))
          (_g9849598551_ _stx98494_))))
    (define gxc#xform-case-lambda%
      (lambda (_self98402_ _stx98403_)
        (letrec ((_clause-e98405_
                  (lambda (_clause98446_)
                    (let* ((_g9844898459_
                            (lambda (_g9844998456_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g9844998456_))))
                           (_g9844798490_
                            (lambda (_g9844998462_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g9844998462_))
                                  (let ((_e9845298464_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g9844998462_))))
                                    (let ((_hd9845398467_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e9845298464_)))
                                          (_tl9845498469_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e9845298464_))))
                                      ((lambda (_L98472_ _L98473_)
                                         (let ((_body98488_
                                                (map (lambda (_g9848398485_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _self98402_
                                                          _g9848398485_)))
                                                     _L98472_)))
                                           (declare (not safe))
                                           (cons _L98473_ _body98488_)))
                                       _tl9845498469_
                                       _hd9845398467_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g9844898459_ _g9844998462_))))))
                      (declare (not safe))
                      (_g9844798490_ _clause98446_)))))
          (let* ((_g9840798417_
                  (lambda (_g9840898414_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g9840898414_))))
                 (_g9840698443_
                  (lambda (_g9840898420_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g9840898420_))
                        (let ((_e9841098422_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g9840898420_))))
                          (let ((_hd9841198425_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9841098422_)))
                                (_tl9841298427_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9841098422_))))
                            ((lambda (_L98430_)
                               (let* ((_clauses98441_
                                       (map _clause-e98405_ _L98430_))
                                      (__tmp100116
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses98441_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp100116
                                  _stx98403_)))
                             _tl9841298427_)))
                        (let ()
                          (declare (not safe))
                          (_g9840798417_ _g9840898420_))))))
            (declare (not safe))
            (_g9840698443_ _stx98403_)))))
    (define gxc#xform-let-values%
      (lambda (_self98188_ _stx98189_)
        (let* ((_g9819198224_
                (lambda (_g9819298221_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9819298221_))))
               (_g9819098399_
                (lambda (_g9819298227_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9819298227_))
                      (let ((_e9819798229_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9819298227_))))
                        (let ((_hd9819898232_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9819798229_)))
                              (_tl9819998234_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9819798229_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9819998234_))
                              (let ((_e9820098237_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl9819998234_))))
                                (let ((_hd9820198240_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9820098237_)))
                                      (_tl9820298242_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9820098237_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd9820198240_))
                                      (let ((_g100117_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd9820198240_
                                                '0))))
                                        (begin
                                          (let ((_g100118_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g100117_)
                                                       (##vector-length
                                                        _g100117_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g100118_ 2)))
                                                (error "Context expects 2 values"
                                                       _g100118_)))
                                          (let ((_target9820398245_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g100117_ 0)))
                                                (_tl9820598247_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g100117_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl9820598247_))
                                                (letrec ((_loop9820698250_
                                                          (lambda (_hd9820498253_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr9821098255_
                           _hd9821198257_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd9820498253_))
                        (let ((_e9820798260_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd9820498253_))))
                          (let ((_lp-hd9820898263_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9820798260_)))
                                (_lp-tl9820998265_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9820798260_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd9820898263_))
                                (let ((_e9821498268_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd9820898263_))))
                                  (let ((_hd9821598271_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e9821498268_)))
                                        (_tl9821698273_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e9821498268_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl9821698273_))
                                        (let ((_e9821798276_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl9821698273_))))
                                          (let ((_hd9821898279_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e9821798276_)))
                                                (_tl9821998281_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e9821798276_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl9821998281_))
                                                (let ((__tmp100120
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd9821898279_
                                                               _expr9821098255_)))
                                                      (__tmp100119
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd9821598271_
                                                               _hd9821198257_))))
                                                  (declare (not safe))
                                                  (_loop9820698250_
                                                   _lp-tl9820998265_
                                                   __tmp100120
                                                   __tmp100119))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g9819198224_
                                                   _g9819298227_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g9819198224_ _g9819298227_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g9819198224_ _g9819298227_)))))
                        (let ((_expr9821298284_ (reverse _expr9821098255_))
                              (_hd9821398286_ (reverse _hd9821198257_)))
                          ((lambda (_L98289_ _L98290_ _L98291_ _L98292_)
                             (let* ((_g9831198327_
                                     (lambda (_g9831298324_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g9831298324_))))
                                    (_g9831098385_
                                     (lambda (_g9831298330_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null? _g9831298330_))
                                           (let ((_g100121_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _g9831298330_
                                                     '0))))
                                             (begin
                                               (let ((_g100122_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g100121_)
                                                            (##vector-length
                                                             _g100121_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g100122_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g100122_)))
                                               (let ((_target9831498332_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g100121_
                                                         0)))
                                                     (_tl9831698334_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g100121_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl9831698334_))
                                                     (letrec ((_loop9831798337_
                                                               (lambda (_hd9831598340_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr9832198342_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _hd9831598340_))
                             (let ((_e9831898345_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _hd9831598340_))))
                               (let ((_lp-hd9831998348_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e9831898345_)))
                                     (_lp-tl9832098350_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e9831898345_))))
                                 (let ((__tmp100123
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd9831998348_
                                                _expr9832198342_))))
                                   (declare (not safe))
                                   (_loop9831798337_
                                    _lp-tl9832098350_
                                    __tmp100123))))
                             (let ((_expr9832298353_
                                    (reverse _expr9832198342_)))
                               ((lambda (_L98356_)
                                  (let ()
                                    (let* ((_body98373_
                                            (map (lambda (_g9836898370_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self98188_
                                                      _g9836898370_)))
                                                 _L98289_))
                                           (__tmp100124
                                            (let ((__tmp100125
                                                   (let ((__tmp100126
                                                          (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _L98356_
                                                               _L98291_))
                                                            (let ((__tmp100127
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g9837498378_ _g9837598380_ _g9837698382_)
                             (let ((__tmp100128
                                    (let ((__tmp100129
                                           (let ()
                                             (declare (not safe))
                                             (cons _g9837498378_ '()))))
                                      (declare (not safe))
                                      (cons _g9837598380_ __tmp100129))))
                               (declare (not safe))
                               (cons __tmp100128 _g9837698382_)))))
                      (declare (not safe))
                      (foldr2 __tmp100127 '() _L98356_ _L98291_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp100126
                                                           _body98373_))))
                                              (declare (not safe))
                                              (cons _L98292_ __tmp100125))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp100124
                                       _stx98189_))))
                                _expr9832298353_))))))
               (let ()
                 (declare (not safe))
                 (_loop9831798337_ _target9831498332_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g9831198327_
                                                        _g9831298330_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_g9831198327_ _g9831298330_)))))
                                    (__tmp100130
                                     (map (lambda (_g9838798389_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self98188_
                                               _g9838798389_)))
                                          (let ((__tmp100131
                                                 (lambda (_g9839198394_
                                                          _g9839298396_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g9839198394_
                                                           _g9839298396_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp100131
                                                    '()
                                                    _L98290_)))))
                               (declare (not safe))
                               (_g9831098385_ __tmp100130)))
                           _tl9820298242_
                           _expr9821298284_
                           _hd9821398286_
                           _hd9819898232_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop9820698250_
                                                     _target9820398245_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g9819198224_
                                                   _g9819298227_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g9819198224_ _g9819298227_)))))
                              (let ()
                                (declare (not safe))
                                (_g9819198224_ _g9819298227_)))))
                      (let ()
                        (declare (not safe))
                        (_g9819198224_ _g9819298227_))))))
          (declare (not safe))
          (_g9819098399_ _stx98189_))))
    (define gxc#xform-operands
      (lambda (_self98140_ _stx98141_)
        (let* ((_g9814398154_
                (lambda (_g9814498151_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9814498151_))))
               (_g9814298185_
                (lambda (_g9814498157_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9814498157_))
                      (let ((_e9814798159_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9814498157_))))
                        (let ((_hd9814898162_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9814798159_)))
                              (_tl9814998164_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9814798159_))))
                          ((lambda (_L98167_ _L98168_)
                             (let* ((_rands98183_
                                     (map (lambda (_g9817898180_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self98140_
                                               _g9817898180_)))
                                          _L98167_))
                                    (__tmp100132
                                     (let ()
                                       (declare (not safe))
                                       (cons _L98168_ _rands98183_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source __tmp100132 _stx98141_)))
                           _tl9814998164_
                           _hd9814898162_)))
                      (let ()
                        (declare (not safe))
                        (_g9814398154_ _g9814498157_))))))
          (declare (not safe))
          (_g9814298185_ _stx98141_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_self98070_ _stx98071_)
        (let* ((_g9807398090_
                (lambda (_g9807498087_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9807498087_))))
               (_g9807298137_
                (lambda (_g9807498093_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9807498093_))
                      (let ((_e9807798095_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9807498093_))))
                        (let ((_hd9807898098_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9807798095_)))
                              (_tl9807998100_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9807798095_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9807998100_))
                              (let ((_e9808098103_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl9807998100_))))
                                (let ((_hd9808198106_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9808098103_)))
                                      (_tl9808298108_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9808098103_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl9808298108_))
                                      (let ((_e9808398111_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl9808298108_))))
                                        (let ((_hd9808498114_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9808398111_)))
                                              (_tl9808598116_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9808398111_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl9808598116_))
                                              ((lambda (_L98119_ _L98120_)
                                                 (let* ((_expr98135_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self98070_
                                                            _L98119_)))
                                                        (__tmp100133
                                                         (let ((__tmp100134
                                                                (let ((__tmp100135
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _expr98135_ '()))))
                          (declare (not safe))
                          (cons _L98120_ __tmp100135))))
                   (declare (not safe))
                   (cons '%#set! __tmp100134))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp100133
                                                    _stx98071_)))
                                               _hd9808498114_
                                               _hd9808198106_)
                                              (let ()
                                                (declare (not safe))
                                                (_g9807398090_
                                                 _g9807498093_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g9807398090_ _g9807498093_)))))
                              (let ()
                                (declare (not safe))
                                (_g9807398090_ _g9807498093_)))))
                      (let ()
                        (declare (not safe))
                        (_g9807398090_ _g9807498093_))))))
          (declare (not safe))
          (_g9807298137_ _stx98071_))))))
