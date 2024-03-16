(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1710617603)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_stx99923_)
        (let* ((_self99925_ (gxc#current-compile-method))
               (_$e99927_
                (let ((__tmp100096
                       (let ()
                         (declare (not safe))
                         (gxc#stx-car-e _stx99923_))))
                  (declare (not safe))
                  (method-ref _self99925_ __tmp100096))))
          (if _$e99927_
              ((lambda (_method99930_)
                 (declare (not safe))
                 (_method99930_ _self99925_ _stx99923_))
               _$e99927_)
              (let ((__tmp100098
                     (let () (declare (not safe)) (gxc#stx-car-e _stx99923_)))
                    (__tmp100097
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _stx99923_))))
                (declare (not safe))
                (error '"missing method"
                       _self99925_
                       __tmp100098
                       __tmp100097))))))
    (define gxc#compile-e__1
      (lambda (_self99933_ _stx99934_)
        (let ((_$e99936_
               (let ((__tmp100099
                      (let ()
                        (declare (not safe))
                        (gxc#stx-car-e _stx99934_))))
                 (declare (not safe))
                 (method-ref _self99933_ __tmp100099))))
          (if _$e99936_
              ((lambda (_method99939_)
                 (declare (not safe))
                 (_method99939_ _self99933_ _stx99934_))
               _$e99936_)
              (let ((__tmp100101
                     (let () (declare (not safe)) (gxc#stx-car-e _stx99934_)))
                    (__tmp100100
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _stx99934_))))
                (declare (not safe))
                (error '"missing method"
                       _self99933_
                       __tmp100101
                       __tmp100100))))))
    (define gxc#compile-e
      (lambda _g100103_
        (let ((_g100102_ (let () (declare (not safe)) (##length _g100103_))))
          (cond ((let () (declare (not safe)) (##fx= _g100102_ 1))
                 (apply (lambda (_stx99923_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _stx99923_)))
                        _g100103_))
                ((let () (declare (not safe)) (##fx= _g100102_ 2))
                 (apply (lambda (_self99933_ _stx99934_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__1 _self99933_ _stx99934_)))
                        _g100103_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g100103_))))))
    (define gxc#stx-car-e
      (lambda (_stx99921_)
        (let ((__tmp100104
               (car (let () (declare (not safe)) (gx#stx-e _stx99921_)))))
          (declare (not safe))
          (gx#stx-e __tmp100104))))
    (define gxc#void-method (lambda (_self99918_ _stx99919_) '#!void))
    (define gxc#false-method (lambda (_self99915_ _stx99916_) '#f))
    (define gxc#true-method (lambda (_self99912_ _stx99913_) '#t))
    (define gxc#identity-method (lambda (_self99909_ _stx99910_) _stx99910_))
    (define gxc#::void-expression::t
      (let ((__tmp100105 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp100105
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _$args99906_
        (apply make-instance gxc#::void-expression::t _$args99906_)))
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
      (let ((__tmp100106 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp100106
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _$args99902_
        (apply make-instance gxc#::void-special-form::t _$args99902_)))
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
      (let ((__tmp100107
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (make-class-type 'gxc#::void::t '::void __tmp100107 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _$args99898_ (apply make-instance gxc#::void::t _$args99898_)))
    (define gxc#::void-bind-methods!
      (make-promise
       (lambda ()
         (force gxc#::void-special-form-bind-methods!)
         (force gxc#::void-expression-bind-methods!))))
    (define gxc#::false-expression::t
      (let ((__tmp100108 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp100108
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _$args99894_
        (apply make-instance gxc#::false-expression::t _$args99894_)))
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
      (let ((__tmp100109 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp100109
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _$args99890_
        (apply make-instance gxc#::false-special-form::t _$args99890_)))
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
      (let ((__tmp100110
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (make-class-type 'gxc#::false::t '::false __tmp100110 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _$args99886_ (apply make-instance gxc#::false::t _$args99886_)))
    (define gxc#::false-bind-methods!
      (make-promise
       (lambda ()
         (force gxc#::false-special-form-bind-methods!)
         (force gxc#::false-expression-bind-methods!))))
    (define gxc#::identity-expression::t
      (let ((__tmp100111 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp100111
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _$args99882_
        (apply make-instance gxc#::identity-expression::t _$args99882_)))
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
      (let ((__tmp100112 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp100112
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _$args99878_
        (apply make-instance gxc#::identity-special-form::t _$args99878_)))
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
      (let ((__tmp100113
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::identity::t
         '::identity
         __tmp100113
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _$args99874_
        (apply make-instance gxc#::identity::t _$args99874_)))
    (define gxc#::identity-bind-methods!
      (make-promise
       (lambda ()
         (force gxc#::identity-special-form-bind-methods!)
         (force gxc#::identity-expression-bind-methods!))))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp100114 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp100114
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _$args99870_
        (apply make-instance gxc#::basic-xform-expression::t _$args99870_)))
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
      (let ((__tmp100115
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp100115
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _$args99866_
        (apply make-instance gxc#::basic-xform::t _$args99866_)))
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
      (lambda (_self99822_ _stx99823_)
        (let* ((_g9982599835_
                (lambda (_g9982699832_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9982699832_))))
               (_g9982499862_
                (lambda (_g9982699838_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9982699838_))
                      (let ((_e9982899840_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9982699838_))))
                        (let ((_hd9982999843_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9982899840_)))
                              (_tl9983099845_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9982899840_))))
                          ((lambda (_L99848_)
                             (for-each
                              (lambda (_g9985799859_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1
                                   _self99822_
                                   _g9985799859_)))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _L99848_))))
                           _tl9983099845_)))
                      (let ()
                        (declare (not safe))
                        (_g9982599835_ _g9982699838_))))))
          (declare (not safe))
          (_g9982499862_ _stx99823_))))
    (define gxc#apply-last-begin%
      (lambda (_self99783_ _stx99784_)
        (let* ((_g9978699796_
                (lambda (_g9978799793_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9978799793_))))
               (_g9978599819_
                (lambda (_g9978799799_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9978799799_))
                      (let ((_e9978999801_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9978799799_))))
                        (let ((_hd9979099804_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9978999801_)))
                              (_tl9979199806_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9978999801_))))
                          ((lambda (_L99809_)
                             (let ((__tmp100116 (last _L99809_)))
                               (declare (not safe))
                               (gxc#compile-e__1 _self99783_ __tmp100116)))
                           _tl9979199806_)))
                      (let ()
                        (declare (not safe))
                        (_g9978699796_ _g9978799799_))))))
          (declare (not safe))
          (_g9978599819_ _stx99784_))))
    (define gxc#apply-begin-syntax%
      (lambda (_self99779_ _stx99780_)
        (let ((__tmp100119
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#apply-begin% _self99779_ _stx99780_))))
              (__tmp100117
               (let ((__tmp100118 (gx#current-expander-phi)))
                 (declare (not safe))
                 (fx+ __tmp100118 '1))))
          (declare (not safe))
          (call-with-parameters
           __tmp100119
           gx#current-expander-phi
           __tmp100117))))
    (define gxc#apply-module%
      (lambda (_self99718_ _stx99719_)
        (let* ((_g9972199735_
                (lambda (_g9972299732_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9972299732_))))
               (_g9972099776_
                (lambda (_g9972299738_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9972299738_))
                      (let ((_e9972599740_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9972299738_))))
                        (let ((_hd9972699743_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9972599740_)))
                              (_tl9972799745_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9972599740_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9972799745_))
                              (let ((_e9972899748_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl9972799745_))))
                                (let ((_hd9972999751_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9972899748_)))
                                      (_tl9973099753_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9972899748_))))
                                  ((lambda (_L99756_ _L99757_)
                                     (let* ((_ctx99770_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L99757_)))
                                            (_ctx-stx99772_
                                             (##structure-ref
                                              _ctx99770_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp100120
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self99718_
                                                   _ctx-stx99772_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp100120
                                          gx#current-expander-context
                                          _ctx99770_))))
                                   _tl9973099753_
                                   _hd9972999751_)))
                              (let ()
                                (declare (not safe))
                                (_g9972199735_ _g9972299738_)))))
                      (let ()
                        (declare (not safe))
                        (_g9972199735_ _g9972299738_))))))
          (declare (not safe))
          (_g9972099776_ _stx99719_))))
    (define gxc#apply-begin-annotation%
      (lambda (_self99650_ _stx99651_)
        (let* ((_g9965399670_
                (lambda (_g9965499667_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9965499667_))))
               (_g9965299715_
                (lambda (_g9965499673_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9965499673_))
                      (let ((_e9965799675_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9965499673_))))
                        (let ((_hd9965899678_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9965799675_)))
                              (_tl9965999680_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9965799675_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9965999680_))
                              (let ((_e9966099683_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl9965999680_))))
                                (let ((_hd9966199686_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9966099683_)))
                                      (_tl9966299688_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9966099683_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl9966299688_))
                                      (let ((_e9966399691_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl9966299688_))))
                                        (let ((_hd9966499694_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9966399691_)))
                                              (_tl9966599696_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9966399691_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl9966599696_))
                                              ((lambda (_L99699_ _L99700_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self99650_
                                                    _L99699_)))
                                               _hd9966499694_
                                               _hd9966199686_)
                                              (let ()
                                                (declare (not safe))
                                                (_g9965399670_
                                                 _g9965499673_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g9965399670_ _g9965499673_)))))
                              (let ()
                                (declare (not safe))
                                (_g9965399670_ _g9965499673_)))))
                      (let ()
                        (declare (not safe))
                        (_g9965399670_ _g9965499673_))))))
          (declare (not safe))
          (_g9965299715_ _stx99651_))))
    (define gxc#apply-define-values%
      (lambda (_self99582_ _stx99583_)
        (let* ((_g9958599602_
                (lambda (_g9958699599_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9958699599_))))
               (_g9958499647_
                (lambda (_g9958699605_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9958699605_))
                      (let ((_e9958999607_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9958699605_))))
                        (let ((_hd9959099610_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9958999607_)))
                              (_tl9959199612_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9958999607_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9959199612_))
                              (let ((_e9959299615_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl9959199612_))))
                                (let ((_hd9959399618_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9959299615_)))
                                      (_tl9959499620_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9959299615_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl9959499620_))
                                      (let ((_e9959599623_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl9959499620_))))
                                        (let ((_hd9959699626_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9959599623_)))
                                              (_tl9959799628_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9959599623_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl9959799628_))
                                              ((lambda (_L99631_ _L99632_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self99582_
                                                    _L99631_)))
                                               _hd9959699626_
                                               _hd9959399618_)
                                              (let ()
                                                (declare (not safe))
                                                (_g9958599602_
                                                 _g9958699605_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g9958599602_ _g9958699605_)))))
                              (let ()
                                (declare (not safe))
                                (_g9958599602_ _g9958699605_)))))
                      (let ()
                        (declare (not safe))
                        (_g9958599602_ _g9958699605_))))))
          (declare (not safe))
          (_g9958499647_ _stx99583_))))
    (define gxc#apply-define-syntax%
      (lambda (_self99513_ _stx99514_)
        (let* ((_g9951699533_
                (lambda (_g9951799530_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9951799530_))))
               (_g9951599579_
                (lambda (_g9951799536_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9951799536_))
                      (let ((_e9952099538_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9951799536_))))
                        (let ((_hd9952199541_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9952099538_)))
                              (_tl9952299543_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9952099538_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9952299543_))
                              (let ((_e9952399546_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl9952299543_))))
                                (let ((_hd9952499549_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9952399546_)))
                                      (_tl9952599551_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9952399546_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl9952599551_))
                                      (let ((_e9952699554_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl9952599551_))))
                                        (let ((_hd9952799557_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9952699554_)))
                                              (_tl9952899559_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9952699554_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl9952899559_))
                                              ((lambda (_L99562_ _L99563_)
                                                 (let ((__tmp100123
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _self99513_
                                                             _L99562_))))
                                                       (__tmp100121
                                                        (let ((__tmp100122
                                                               (gx#current-expander-phi)))
                                                          (declare (not safe))
                                                          (fx+ __tmp100122
                                                               '1))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp100123
                                                    gx#current-expander-phi
                                                    __tmp100121)))
                                               _hd9952799557_
                                               _hd9952499549_)
                                              (let ()
                                                (declare (not safe))
                                                (_g9951699533_
                                                 _g9951799536_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g9951699533_ _g9951799536_)))))
                              (let ()
                                (declare (not safe))
                                (_g9951699533_ _g9951799536_)))))
                      (let ()
                        (declare (not safe))
                        (_g9951699533_ _g9951799536_))))))
          (declare (not safe))
          (_g9951599579_ _stx99514_))))
    (define gxc#apply-body-lambda%
      (lambda (_self99445_ _stx99446_)
        (let* ((_g9944899465_
                (lambda (_g9944999462_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9944999462_))))
               (_g9944799510_
                (lambda (_g9944999468_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9944999468_))
                      (let ((_e9945299470_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9944999468_))))
                        (let ((_hd9945399473_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9945299470_)))
                              (_tl9945499475_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9945299470_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9945499475_))
                              (let ((_e9945599478_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl9945499475_))))
                                (let ((_hd9945699481_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9945599478_)))
                                      (_tl9945799483_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9945599478_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl9945799483_))
                                      (let ((_e9945899486_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl9945799483_))))
                                        (let ((_hd9945999489_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9945899486_)))
                                              (_tl9946099491_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9945899486_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl9946099491_))
                                              ((lambda (_L99494_ _L99495_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self99445_
                                                    _L99494_)))
                                               _hd9945999489_
                                               _hd9945699481_)
                                              (let ()
                                                (declare (not safe))
                                                (_g9944899465_
                                                 _g9944999468_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g9944899465_ _g9944999468_)))))
                              (let ()
                                (declare (not safe))
                                (_g9944899465_ _g9944999468_)))))
                      (let ()
                        (declare (not safe))
                        (_g9944899465_ _g9944999468_))))))
          (declare (not safe))
          (_g9944799510_ _stx99446_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_self99327_ _stx99328_)
        (let* ((_g9933099358_
                (lambda (_g9933199355_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9933199355_))))
               (_g9932999442_
                (lambda (_g9933199361_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9933199361_))
                      (let ((_e9933499363_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9933199361_))))
                        (let ((_hd9933599366_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9933499363_)))
                              (_tl9933699368_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9933499363_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl9933699368_))
                              (let ((_g100124_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl9933699368_
                                        '0))))
                                (begin
                                  (let ((_g100125_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g100124_)
                                               (##vector-length _g100124_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g100125_ 2)))
                                        (error "Context expects 2 values"
                                               _g100125_)))
                                  (let ((_target9933799371_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g100124_ 0)))
                                        (_tl9933999373_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g100124_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl9933999373_))
                                        (letrec ((_loop9934099376_
                                                  (lambda (_hd9933899379_
                                                           _body9934499381_
                                                           _hd9934599383_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd9933899379_))
                                                        (let ((_e9934199386_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd9933899379_))))
                  (let ((_lp-hd9934299389_
                         (let () (declare (not safe)) (##car _e9934199386_)))
                        (_lp-tl9934399391_
                         (let () (declare (not safe)) (##cdr _e9934199386_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd9934299389_))
                        (let ((_e9934899394_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd9934299389_))))
                          (let ((_hd9934999397_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9934899394_)))
                                (_tl9935099399_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9934899394_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl9935099399_))
                                (let ((_e9935199402_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl9935099399_))))
                                  (let ((_hd9935299405_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e9935199402_)))
                                        (_tl9935399407_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e9935199402_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl9935399407_))
                                        (let ((__tmp100127
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd9935299405_
                                                       _body9934499381_)))
                                              (__tmp100126
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd9934999397_
                                                       _hd9934599383_))))
                                          (declare (not safe))
                                          (_loop9934099376_
                                           _lp-tl9934399391_
                                           __tmp100127
                                           __tmp100126))
                                        (let ()
                                          (declare (not safe))
                                          (_g9933099358_ _g9933199361_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g9933099358_ _g9933199361_)))))
                        (let ()
                          (declare (not safe))
                          (_g9933099358_ _g9933199361_)))))
                (let ((_body9934699410_ (reverse _body9934499381_))
                      (_hd9934799412_ (reverse _hd9934599383_)))
                  ((lambda (_L99415_ _L99416_)
                     (for-each
                      (lambda (_g9943099432_)
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _self99327_ _g9943099432_)))
                      (let ((__tmp100128
                             (lambda (_g9943499437_ _g9943599439_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g9943499437_ _g9943599439_)))))
                        (declare (not safe))
                        (foldr1 __tmp100128 '() _L99415_))))
                   _body9934699410_
                   _hd9934799412_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop9934099376_
                                             _target9933799371_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g9933099358_ _g9933199361_))))))
                              (let ()
                                (declare (not safe))
                                (_g9933099358_ _g9933199361_)))))
                      (let ()
                        (declare (not safe))
                        (_g9933099358_ _g9933199361_))))))
          (declare (not safe))
          (_g9932999442_ _stx99328_))))
    (define gxc#apply-body-let-values%
      (lambda (_self99180_ _stx99181_)
        (let* ((_g9918399218_
                (lambda (_g9918499215_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9918499215_))))
               (_g9918299324_
                (lambda (_g9918499221_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9918499221_))
                      (let ((_e9918899223_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9918499221_))))
                        (let ((_hd9918999226_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9918899223_)))
                              (_tl9919099228_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9918899223_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9919099228_))
                              (let ((_e9919199231_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl9919099228_))))
                                (let ((_hd9919299234_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9919199231_)))
                                      (_tl9919399236_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9919199231_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd9919299234_))
                                      (let ((_g100129_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd9919299234_
                                                '0))))
                                        (begin
                                          (let ((_g100130_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g100129_)
                                                       (##vector-length
                                                        _g100129_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g100130_ 2)))
                                                (error "Context expects 2 values"
                                                       _g100130_)))
                                          (let ((_target9919499239_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g100129_ 0)))
                                                (_tl9919699241_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g100129_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl9919699241_))
                                                (letrec ((_loop9919799244_
                                                          (lambda (_hd9919599247_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr9920199249_
                           _hd9920299251_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd9919599247_))
                        (let ((_e9919899254_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd9919599247_))))
                          (let ((_lp-hd9919999257_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9919899254_)))
                                (_lp-tl9920099259_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9919899254_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd9919999257_))
                                (let ((_e9920599262_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd9919999257_))))
                                  (let ((_hd9920699265_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e9920599262_)))
                                        (_tl9920799267_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e9920599262_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl9920799267_))
                                        (let ((_e9920899270_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl9920799267_))))
                                          (let ((_hd9920999273_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e9920899270_)))
                                                (_tl9921099275_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e9920899270_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl9921099275_))
                                                (let ((__tmp100132
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd9920999273_
                                                               _expr9920199249_)))
                                                      (__tmp100131
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd9920699265_
                                                               _hd9920299251_))))
                                                  (declare (not safe))
                                                  (_loop9919799244_
                                                   _lp-tl9920099259_
                                                   __tmp100132
                                                   __tmp100131))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g9918399218_
                                                   _g9918499221_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g9918399218_ _g9918499221_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g9918399218_ _g9918499221_)))))
                        (let ((_expr9920399278_ (reverse _expr9920199249_))
                              (_hd9920499280_ (reverse _hd9920299251_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9919399236_))
                              (let ((_e9921199283_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl9919399236_))))
                                (let ((_hd9921299286_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9921199283_)))
                                      (_tl9921399288_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9921199283_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl9921399288_))
                                      ((lambda (_L99291_ _L99292_ _L99293_)
                                         (for-each
                                          (lambda (_g9931299314_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self99180_
                                               _g9931299314_)))
                                          (let ((__tmp100134
                                                 (lambda (_g9931699319_
                                                          _g9931799321_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g9931699319_
                                                           _g9931799321_))))
                                                (__tmp100133
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L99291_ '()))))
                                            (declare (not safe))
                                            (foldr1 __tmp100134
                                                    __tmp100133
                                                    _L99292_))))
                                       _hd9921299286_
                                       _expr9920399278_
                                       _hd9920499280_)
                                      (let ()
                                        (declare (not safe))
                                        (_g9918399218_ _g9918499221_)))))
                              (let ()
                                (declare (not safe))
                                (_g9918399218_ _g9918499221_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop9919799244_
                                                     _target9919499239_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g9918399218_
                                                   _g9918499221_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g9918399218_ _g9918499221_)))))
                              (let ()
                                (declare (not safe))
                                (_g9918399218_ _g9918499221_)))))
                      (let ()
                        (declare (not safe))
                        (_g9918399218_ _g9918499221_))))))
          (declare (not safe))
          (_g9918299324_ _stx99181_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_self99125_ _stx99126_)
        (let* ((_g9912899142_
                (lambda (_g9912999139_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9912999139_))))
               (_g9912799177_
                (lambda (_g9912999145_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9912999145_))
                      (let ((_e9913299147_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9912999145_))))
                        (let ((_hd9913399150_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9913299147_)))
                              (_tl9913499152_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9913299147_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9913499152_))
                              (let ((_e9913599155_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl9913499152_))))
                                (let ((_hd9913699158_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9913599155_)))
                                      (_tl9913799160_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9913599155_))))
                                  ((lambda (_L99163_ _L99164_)
                                     (let ((__tmp100135 (last _L99163_)))
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _self99125_
                                        __tmp100135)))
                                   _tl9913799160_
                                   _hd9913699158_)))
                              (let ()
                                (declare (not safe))
                                (_g9912899142_ _g9912999145_)))))
                      (let ()
                        (declare (not safe))
                        (_g9912899142_ _g9912999145_))))))
          (declare (not safe))
          (_g9912799177_ _stx99126_))))
    (define gxc#apply-body-setq%
      (lambda (_self99057_ _stx99058_)
        (let* ((_g9906099077_
                (lambda (_g9906199074_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9906199074_))))
               (_g9905999122_
                (lambda (_g9906199080_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9906199080_))
                      (let ((_e9906499082_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9906199080_))))
                        (let ((_hd9906599085_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9906499082_)))
                              (_tl9906699087_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9906499082_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9906699087_))
                              (let ((_e9906799090_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl9906699087_))))
                                (let ((_hd9906899093_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9906799090_)))
                                      (_tl9906999095_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9906799090_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl9906999095_))
                                      (let ((_e9907099098_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl9906999095_))))
                                        (let ((_hd9907199101_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9907099098_)))
                                              (_tl9907299103_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9907099098_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl9907299103_))
                                              ((lambda (_L99106_ _L99107_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self99057_
                                                    _L99106_)))
                                               _hd9907199101_
                                               _hd9906899093_)
                                              (let ()
                                                (declare (not safe))
                                                (_g9906099077_
                                                 _g9906199080_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g9906099077_ _g9906199080_)))))
                              (let ()
                                (declare (not safe))
                                (_g9906099077_ _g9906199080_)))))
                      (let ()
                        (declare (not safe))
                        (_g9906099077_ _g9906199080_))))))
          (declare (not safe))
          (_g9905999122_ _stx99058_))))
    (define gxc#apply-operands
      (lambda (_self98970_ _stx98971_)
        (let* ((_g9897398992_
                (lambda (_g9897498989_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9897498989_))))
               (_g9897299054_
                (lambda (_g9897498995_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9897498995_))
                      (let ((_e9897698997_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9897498995_))))
                        (let ((_hd9897799000_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9897698997_)))
                              (_tl9897899002_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9897698997_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl9897899002_))
                              (let ((_g100136_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl9897899002_
                                        '0))))
                                (begin
                                  (let ((_g100137_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g100136_)
                                               (##vector-length _g100136_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g100137_ 2)))
                                        (error "Context expects 2 values"
                                               _g100137_)))
                                  (let ((_target9897999005_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g100136_ 0)))
                                        (_tl9898199007_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g100136_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl9898199007_))
                                        (letrec ((_loop9898299010_
                                                  (lambda (_hd9898099013_
                                                           _rands9898699015_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd9898099013_))
                                                        (let ((_e9898399018_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd9898099013_))))
                  (let ((_lp-hd9898499021_
                         (let () (declare (not safe)) (##car _e9898399018_)))
                        (_lp-tl9898599023_
                         (let () (declare (not safe)) (##cdr _e9898399018_))))
                    (let ((__tmp100138
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd9898499021_ _rands9898699015_))))
                      (declare (not safe))
                      (_loop9898299010_ _lp-tl9898599023_ __tmp100138))))
                (let ((_rands9898799026_ (reverse _rands9898699015_)))
                  ((lambda (_L99029_)
                     (for-each
                      (lambda (_g9904299044_)
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _self98970_ _g9904299044_)))
                      (let ((__tmp100139
                             (lambda (_g9904699049_ _g9904799051_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g9904699049_ _g9904799051_)))))
                        (declare (not safe))
                        (foldr1 __tmp100139 '() _L99029_))))
                   _rands9898799026_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop9898299010_
                                             _target9897999005_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g9897398992_ _g9897498995_))))))
                              (let ()
                                (declare (not safe))
                                (_g9897398992_ _g9897498995_)))))
                      (let ()
                        (declare (not safe))
                        (_g9897398992_ _g9897498995_))))))
          (declare (not safe))
          (_g9897299054_ _stx98971_))))
    (define gxc#xform-wrap-source
      (lambda (_stx98967_ _src-stx98968_)
        (let ((__tmp100140
               (let () (declare (not safe)) (gx#stx-source _src-stx98968_))))
          (declare (not safe))
          (gx#stx-wrap-source _stx98967_ __tmp100140))))
    (define gxc#xform-begin%
      (lambda (_self98922_ _stx98923_)
        (let* ((_g9892598935_
                (lambda (_g9892698932_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9892698932_))))
               (_g9892498964_
                (lambda (_g9892698938_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9892698938_))
                      (let ((_e9892898940_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9892698938_))))
                        (let ((_hd9892998943_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9892898940_)))
                              (_tl9893098945_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9892898940_))))
                          ((lambda (_L98948_)
                             (let* ((_forms98962_
                                     (map (lambda (_g9895798959_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self98922_
                                               _g9895798959_)))
                                          _L98948_))
                                    (__tmp100141
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#begin _forms98962_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source __tmp100141 _stx98923_)))
                           _tl9893098945_)))
                      (let ()
                        (declare (not safe))
                        (_g9892598935_ _g9892698938_))))))
          (declare (not safe))
          (_g9892498964_ _stx98923_))))
    (define gxc#xform-begin-syntax%
      (lambda (_self98876_ _stx98877_)
        (let* ((_g9887998889_
                (lambda (_g9888098886_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9888098886_))))
               (_g9887898919_
                (lambda (_g9888098892_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9888098892_))
                      (let ((_e9888298894_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9888098892_))))
                        (let ((_hd9888398897_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9888298894_)))
                              (_tl9888498899_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9888298894_))))
                          ((lambda (_L98902_)
                             (let ((__tmp100144
                                    (lambda ()
                                      (let* ((_forms98917_
                                              (map (lambda (_g9891298914_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _self98876_
                                                        _g9891298914_)))
                                                   _L98902_))
                                             (__tmp100145
                                              (let ()
                                                (declare (not safe))
                                                (cons '%#begin-syntax
                                                      _forms98917_))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp100145
                                         _stx98877_))))
                                   (__tmp100142
                                    (let ((__tmp100143
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp100143 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp100144
                                gx#current-expander-phi
                                __tmp100142)))
                           _tl9888498899_)))
                      (let ()
                        (declare (not safe))
                        (_g9887998889_ _g9888098892_))))))
          (declare (not safe))
          (_g9887898919_ _stx98877_))))
    (define gxc#xform-module%
      (lambda (_self98813_ _stx98814_)
        (let* ((_g9881698830_
                (lambda (_g9881798827_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9881798827_))))
               (_g9881598873_
                (lambda (_g9881798833_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9881798833_))
                      (let ((_e9882098835_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9881798833_))))
                        (let ((_hd9882198838_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9882098835_)))
                              (_tl9882298840_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9882098835_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9882298840_))
                              (let ((_e9882398843_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl9882298840_))))
                                (let ((_hd9882498846_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9882398843_)))
                                      (_tl9882598848_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9882398843_))))
                                  ((lambda (_L98851_ _L98852_)
                                     (let* ((_ctx98865_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L98852_)))
                                            (_code98867_
                                             (##structure-ref
                                              _ctx98865_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_code98870_
                                             (let ((__tmp100146
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _self98813_
                                                         _code98867_)))))
                                               (declare (not safe))
                                               (call-with-parameters
                                                __tmp100146
                                                gx#current-expander-context
                                                _ctx98865_))))
                                       (##structure-set!
                                        _ctx98865_
                                        _code98870_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp100147
                                              (let ((__tmp100148
                                                     (let ((__tmp100149
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _code98870_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L98852_ __tmp100149))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#module __tmp100148))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp100147
                                          _stx98814_))))
                                   _tl9882598848_
                                   _hd9882498846_)))
                              (let ()
                                (declare (not safe))
                                (_g9881698830_ _g9881798833_)))))
                      (let ()
                        (declare (not safe))
                        (_g9881698830_ _g9881798833_))))))
          (declare (not safe))
          (_g9881598873_ _stx98814_))))
    (define gxc#xform-define-values%
      (lambda (_self98743_ _stx98744_)
        (let* ((_g9874698763_
                (lambda (_g9874798760_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9874798760_))))
               (_g9874598810_
                (lambda (_g9874798766_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9874798766_))
                      (let ((_e9875098768_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9874798766_))))
                        (let ((_hd9875198771_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9875098768_)))
                              (_tl9875298773_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9875098768_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9875298773_))
                              (let ((_e9875398776_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl9875298773_))))
                                (let ((_hd9875498779_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9875398776_)))
                                      (_tl9875598781_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9875398776_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl9875598781_))
                                      (let ((_e9875698784_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl9875598781_))))
                                        (let ((_hd9875798787_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9875698784_)))
                                              (_tl9875898789_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9875698784_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl9875898789_))
                                              ((lambda (_L98792_ _L98793_)
                                                 (let* ((_expr98808_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self98743_
                                                            _L98792_)))
                                                        (__tmp100150
                                                         (let ((__tmp100151
                                                                (let ((__tmp100152
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _expr98808_ '()))))
                          (declare (not safe))
                          (cons _L98793_ __tmp100152))))
                   (declare (not safe))
                   (cons '%#define-values __tmp100151))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp100150
                                                    _stx98744_)))
                                               _hd9875798787_
                                               _hd9875498779_)
                                              (let ()
                                                (declare (not safe))
                                                (_g9874698763_
                                                 _g9874798766_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g9874698763_ _g9874798766_)))))
                              (let ()
                                (declare (not safe))
                                (_g9874698763_ _g9874798766_)))))
                      (let ()
                        (declare (not safe))
                        (_g9874698763_ _g9874798766_))))))
          (declare (not safe))
          (_g9874598810_ _stx98744_))))
    (define gxc#xform-define-syntax%
      (lambda (_self98672_ _stx98673_)
        (let* ((_g9867598692_
                (lambda (_g9867698689_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9867698689_))))
               (_g9867498740_
                (lambda (_g9867698695_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9867698695_))
                      (let ((_e9867998697_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9867698695_))))
                        (let ((_hd9868098700_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9867998697_)))
                              (_tl9868198702_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9867998697_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9868198702_))
                              (let ((_e9868298705_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl9868198702_))))
                                (let ((_hd9868398708_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9868298705_)))
                                      (_tl9868498710_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9868298705_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl9868498710_))
                                      (let ((_e9868598713_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl9868498710_))))
                                        (let ((_hd9868698716_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9868598713_)))
                                              (_tl9868798718_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9868598713_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl9868798718_))
                                              ((lambda (_L98721_ _L98722_)
                                                 (let ((__tmp100155
                                                        (lambda ()
                                                          (let* ((_expr98738_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__1 _self98672_ _L98721_)))
                         (__tmp100156
                          (let ((__tmp100157
                                 (let ((__tmp100158
                                        (let ()
                                          (declare (not safe))
                                          (cons _expr98738_ '()))))
                                   (declare (not safe))
                                   (cons _L98722_ __tmp100158))))
                            (declare (not safe))
                            (cons '%#define-syntax __tmp100157))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp100156 _stx98673_))))
               (__tmp100153
                (let ((__tmp100154 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp100154 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp100155
                                                    gx#current-expander-phi
                                                    __tmp100153)))
                                               _hd9868698716_
                                               _hd9868398708_)
                                              (let ()
                                                (declare (not safe))
                                                (_g9867598692_
                                                 _g9867698695_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g9867598692_ _g9867698695_)))))
                              (let ()
                                (declare (not safe))
                                (_g9867598692_ _g9867698695_)))))
                      (let ()
                        (declare (not safe))
                        (_g9867598692_ _g9867698695_))))))
          (declare (not safe))
          (_g9867498740_ _stx98673_))))
    (define gxc#xform-begin-annotation%
      (lambda (_self98602_ _stx98603_)
        (let* ((_g9860598622_
                (lambda (_g9860698619_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9860698619_))))
               (_g9860498669_
                (lambda (_g9860698625_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9860698625_))
                      (let ((_e9860998627_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9860698625_))))
                        (let ((_hd9861098630_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9860998627_)))
                              (_tl9861198632_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9860998627_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9861198632_))
                              (let ((_e9861298635_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl9861198632_))))
                                (let ((_hd9861398638_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9861298635_)))
                                      (_tl9861498640_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9861298635_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl9861498640_))
                                      (let ((_e9861598643_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl9861498640_))))
                                        (let ((_hd9861698646_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9861598643_)))
                                              (_tl9861798648_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9861598643_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl9861798648_))
                                              ((lambda (_L98651_ _L98652_)
                                                 (let* ((_expr98667_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self98602_
                                                            _L98651_)))
                                                        (__tmp100159
                                                         (let ((__tmp100160
                                                                (let ((__tmp100161
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _expr98667_ '()))))
                          (declare (not safe))
                          (cons _L98652_ __tmp100161))))
                   (declare (not safe))
                   (cons '%#begin-annotation __tmp100160))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp100159
                                                    _stx98603_)))
                                               _hd9861698646_
                                               _hd9861398638_)
                                              (let ()
                                                (declare (not safe))
                                                (_g9860598622_
                                                 _g9860698625_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g9860598622_ _g9860698625_)))))
                              (let ()
                                (declare (not safe))
                                (_g9860598622_ _g9860698625_)))))
                      (let ()
                        (declare (not safe))
                        (_g9860598622_ _g9860698625_))))))
          (declare (not safe))
          (_g9860498669_ _stx98603_))))
    (define gxc#xform-lambda%
      (lambda (_self98541_ _stx98542_)
        (let* ((_g9854498558_
                (lambda (_g9854598555_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9854598555_))))
               (_g9854398599_
                (lambda (_g9854598561_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9854598561_))
                      (let ((_e9854898563_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9854598561_))))
                        (let ((_hd9854998566_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9854898563_)))
                              (_tl9855098568_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9854898563_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9855098568_))
                              (let ((_e9855198571_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl9855098568_))))
                                (let ((_hd9855298574_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9855198571_)))
                                      (_tl9855398576_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9855198571_))))
                                  ((lambda (_L98579_ _L98580_)
                                     (let* ((_body98597_
                                             (map (lambda (_g9859298594_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _self98541_
                                                       _g9859298594_)))
                                                  _L98579_))
                                            (__tmp100162
                                             (let ((__tmp100163
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L98580_
                                                            _body98597_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp100163))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp100162
                                        _stx98542_)))
                                   _tl9855398576_
                                   _hd9855298574_)))
                              (let ()
                                (declare (not safe))
                                (_g9854498558_ _g9854598561_)))))
                      (let ()
                        (declare (not safe))
                        (_g9854498558_ _g9854598561_))))))
          (declare (not safe))
          (_g9854398599_ _stx98542_))))
    (define gxc#xform-case-lambda%
      (lambda (_self98450_ _stx98451_)
        (letrec ((_clause-e98453_
                  (lambda (_clause98494_)
                    (let* ((_g9849698507_
                            (lambda (_g9849798504_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g9849798504_))))
                           (_g9849598538_
                            (lambda (_g9849798510_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g9849798510_))
                                  (let ((_e9850098512_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g9849798510_))))
                                    (let ((_hd9850198515_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e9850098512_)))
                                          (_tl9850298517_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e9850098512_))))
                                      ((lambda (_L98520_ _L98521_)
                                         (let ((_body98536_
                                                (map (lambda (_g9853198533_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _self98450_
                                                          _g9853198533_)))
                                                     _L98520_)))
                                           (declare (not safe))
                                           (cons _L98521_ _body98536_)))
                                       _tl9850298517_
                                       _hd9850198515_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g9849698507_ _g9849798510_))))))
                      (declare (not safe))
                      (_g9849598538_ _clause98494_)))))
          (let* ((_g9845598465_
                  (lambda (_g9845698462_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g9845698462_))))
                 (_g9845498491_
                  (lambda (_g9845698468_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g9845698468_))
                        (let ((_e9845898470_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g9845698468_))))
                          (let ((_hd9845998473_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9845898470_)))
                                (_tl9846098475_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9845898470_))))
                            ((lambda (_L98478_)
                               (let* ((_clauses98489_
                                       (map _clause-e98453_ _L98478_))
                                      (__tmp100164
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses98489_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp100164
                                  _stx98451_)))
                             _tl9846098475_)))
                        (let ()
                          (declare (not safe))
                          (_g9845598465_ _g9845698468_))))))
            (declare (not safe))
            (_g9845498491_ _stx98451_)))))
    (define gxc#xform-let-values%
      (lambda (_self98236_ _stx98237_)
        (let* ((_g9823998272_
                (lambda (_g9824098269_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9824098269_))))
               (_g9823898447_
                (lambda (_g9824098275_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9824098275_))
                      (let ((_e9824598277_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9824098275_))))
                        (let ((_hd9824698280_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9824598277_)))
                              (_tl9824798282_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9824598277_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9824798282_))
                              (let ((_e9824898285_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl9824798282_))))
                                (let ((_hd9824998288_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9824898285_)))
                                      (_tl9825098290_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9824898285_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd9824998288_))
                                      (let ((_g100165_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd9824998288_
                                                '0))))
                                        (begin
                                          (let ((_g100166_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g100165_)
                                                       (##vector-length
                                                        _g100165_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g100166_ 2)))
                                                (error "Context expects 2 values"
                                                       _g100166_)))
                                          (let ((_target9825198293_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g100165_ 0)))
                                                (_tl9825398295_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g100165_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl9825398295_))
                                                (letrec ((_loop9825498298_
                                                          (lambda (_hd9825298301_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr9825898303_
                           _hd9825998305_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd9825298301_))
                        (let ((_e9825598308_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd9825298301_))))
                          (let ((_lp-hd9825698311_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9825598308_)))
                                (_lp-tl9825798313_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9825598308_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd9825698311_))
                                (let ((_e9826298316_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd9825698311_))))
                                  (let ((_hd9826398319_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e9826298316_)))
                                        (_tl9826498321_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e9826298316_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl9826498321_))
                                        (let ((_e9826598324_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl9826498321_))))
                                          (let ((_hd9826698327_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e9826598324_)))
                                                (_tl9826798329_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e9826598324_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl9826798329_))
                                                (let ((__tmp100168
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd9826698327_
                                                               _expr9825898303_)))
                                                      (__tmp100167
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd9826398319_
                                                               _hd9825998305_))))
                                                  (declare (not safe))
                                                  (_loop9825498298_
                                                   _lp-tl9825798313_
                                                   __tmp100168
                                                   __tmp100167))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g9823998272_
                                                   _g9824098275_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g9823998272_ _g9824098275_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g9823998272_ _g9824098275_)))))
                        (let ((_expr9826098332_ (reverse _expr9825898303_))
                              (_hd9826198334_ (reverse _hd9825998305_)))
                          ((lambda (_L98337_ _L98338_ _L98339_ _L98340_)
                             (let* ((_g9835998375_
                                     (lambda (_g9836098372_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g9836098372_))))
                                    (_g9835898433_
                                     (lambda (_g9836098378_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null? _g9836098378_))
                                           (let ((_g100169_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _g9836098378_
                                                     '0))))
                                             (begin
                                               (let ((_g100170_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g100169_)
                                                            (##vector-length
                                                             _g100169_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g100170_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g100170_)))
                                               (let ((_target9836298380_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g100169_
                                                         0)))
                                                     (_tl9836498382_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g100169_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl9836498382_))
                                                     (letrec ((_loop9836598385_
                                                               (lambda (_hd9836398388_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr9836998390_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _hd9836398388_))
                             (let ((_e9836698393_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _hd9836398388_))))
                               (let ((_lp-hd9836798396_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e9836698393_)))
                                     (_lp-tl9836898398_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e9836698393_))))
                                 (let ((__tmp100171
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd9836798396_
                                                _expr9836998390_))))
                                   (declare (not safe))
                                   (_loop9836598385_
                                    _lp-tl9836898398_
                                    __tmp100171))))
                             (let ((_expr9837098401_
                                    (reverse _expr9836998390_)))
                               ((lambda (_L98404_)
                                  (let ()
                                    (let* ((_body98421_
                                            (map (lambda (_g9841698418_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self98236_
                                                      _g9841698418_)))
                                                 _L98337_))
                                           (__tmp100172
                                            (let ((__tmp100173
                                                   (let ((__tmp100174
                                                          (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _L98404_
                                                               _L98339_))
                                                            (let ((__tmp100175
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g9842298426_ _g9842398428_ _g9842498430_)
                             (let ((__tmp100176
                                    (let ((__tmp100177
                                           (let ()
                                             (declare (not safe))
                                             (cons _g9842298426_ '()))))
                                      (declare (not safe))
                                      (cons _g9842398428_ __tmp100177))))
                               (declare (not safe))
                               (cons __tmp100176 _g9842498430_)))))
                      (declare (not safe))
                      (foldr2 __tmp100175 '() _L98404_ _L98339_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp100174
                                                           _body98421_))))
                                              (declare (not safe))
                                              (cons _L98340_ __tmp100173))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp100172
                                       _stx98237_))))
                                _expr9837098401_))))))
               (let ()
                 (declare (not safe))
                 (_loop9836598385_ _target9836298380_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g9835998375_
                                                        _g9836098378_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_g9835998375_ _g9836098378_)))))
                                    (__tmp100178
                                     (map (lambda (_g9843598437_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self98236_
                                               _g9843598437_)))
                                          (let ((__tmp100179
                                                 (lambda (_g9843998442_
                                                          _g9844098444_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g9843998442_
                                                           _g9844098444_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp100179
                                                    '()
                                                    _L98338_)))))
                               (declare (not safe))
                               (_g9835898433_ __tmp100178)))
                           _tl9825098290_
                           _expr9826098332_
                           _hd9826198334_
                           _hd9824698280_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop9825498298_
                                                     _target9825198293_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g9823998272_
                                                   _g9824098275_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g9823998272_ _g9824098275_)))))
                              (let ()
                                (declare (not safe))
                                (_g9823998272_ _g9824098275_)))))
                      (let ()
                        (declare (not safe))
                        (_g9823998272_ _g9824098275_))))))
          (declare (not safe))
          (_g9823898447_ _stx98237_))))
    (define gxc#xform-operands
      (lambda (_self98188_ _stx98189_)
        (let* ((_g9819198202_
                (lambda (_g9819298199_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9819298199_))))
               (_g9819098233_
                (lambda (_g9819298205_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9819298205_))
                      (let ((_e9819598207_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9819298205_))))
                        (let ((_hd9819698210_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9819598207_)))
                              (_tl9819798212_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9819598207_))))
                          ((lambda (_L98215_ _L98216_)
                             (let* ((_rands98231_
                                     (map (lambda (_g9822698228_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self98188_
                                               _g9822698228_)))
                                          _L98215_))
                                    (__tmp100180
                                     (let ()
                                       (declare (not safe))
                                       (cons _L98216_ _rands98231_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source __tmp100180 _stx98189_)))
                           _tl9819798212_
                           _hd9819698210_)))
                      (let ()
                        (declare (not safe))
                        (_g9819198202_ _g9819298205_))))))
          (declare (not safe))
          (_g9819098233_ _stx98189_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_self98118_ _stx98119_)
        (let* ((_g9812198138_
                (lambda (_g9812298135_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9812298135_))))
               (_g9812098185_
                (lambda (_g9812298141_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9812298141_))
                      (let ((_e9812598143_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g9812298141_))))
                        (let ((_hd9812698146_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9812598143_)))
                              (_tl9812798148_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9812598143_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9812798148_))
                              (let ((_e9812898151_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl9812798148_))))
                                (let ((_hd9812998154_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9812898151_)))
                                      (_tl9813098156_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9812898151_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl9813098156_))
                                      (let ((_e9813198159_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl9813098156_))))
                                        (let ((_hd9813298162_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9813198159_)))
                                              (_tl9813398164_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9813198159_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl9813398164_))
                                              ((lambda (_L98167_ _L98168_)
                                                 (let* ((_expr98183_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self98118_
                                                            _L98167_)))
                                                        (__tmp100181
                                                         (let ((__tmp100182
                                                                (let ((__tmp100183
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _expr98183_ '()))))
                          (declare (not safe))
                          (cons _L98168_ __tmp100183))))
                   (declare (not safe))
                   (cons '%#set! __tmp100182))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp100181
                                                    _stx98119_)))
                                               _hd9813298162_
                                               _hd9812998154_)
                                              (let ()
                                                (declare (not safe))
                                                (_g9812198138_
                                                 _g9812298141_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g9812198138_ _g9812298141_)))))
                              (let ()
                                (declare (not safe))
                                (_g9812198138_ _g9812298141_)))))
                      (let ()
                        (declare (not safe))
                        (_g9812198138_ _g9812298141_))))))
          (declare (not safe))
          (_g9812098185_ _stx98119_))))))
