(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1710237311)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_stx101019_)
        (let* ((_self101021_ (gxc#current-compile-method))
               (_$e101023_
                (let ((__tmp101192
                       (let ()
                         (declare (not safe))
                         (gxc#stx-car-e _stx101019_))))
                  (declare (not safe))
                  (method-ref _self101021_ __tmp101192))))
          (if _$e101023_
              ((lambda (_method101026_)
                 (declare (not safe))
                 (_method101026_ _self101021_ _stx101019_))
               _$e101023_)
              (let ((__tmp101194
                     (let () (declare (not safe)) (gxc#stx-car-e _stx101019_)))
                    (__tmp101193
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _stx101019_))))
                (declare (not safe))
                (error '"missing method"
                       _self101021_
                       __tmp101194
                       __tmp101193))))))
    (define gxc#compile-e__1
      (lambda (_self101029_ _stx101030_)
        (let ((_$e101032_
               (let ((__tmp101195
                      (let ()
                        (declare (not safe))
                        (gxc#stx-car-e _stx101030_))))
                 (declare (not safe))
                 (method-ref _self101029_ __tmp101195))))
          (if _$e101032_
              ((lambda (_method101035_)
                 (declare (not safe))
                 (_method101035_ _self101029_ _stx101030_))
               _$e101032_)
              (let ((__tmp101197
                     (let () (declare (not safe)) (gxc#stx-car-e _stx101030_)))
                    (__tmp101196
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _stx101030_))))
                (declare (not safe))
                (error '"missing method"
                       _self101029_
                       __tmp101197
                       __tmp101196))))))
    (define gxc#compile-e
      (lambda _g101199_
        (let ((_g101198_ (let () (declare (not safe)) (##length _g101199_))))
          (cond ((let () (declare (not safe)) (##fx= _g101198_ 1))
                 (apply (lambda (_stx101019_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _stx101019_)))
                        _g101199_))
                ((let () (declare (not safe)) (##fx= _g101198_ 2))
                 (apply (lambda (_self101029_ _stx101030_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__1 _self101029_ _stx101030_)))
                        _g101199_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g101199_))))))
    (define gxc#stx-car-e
      (lambda (_stx101017_)
        (let ((__tmp101200
               (car (let () (declare (not safe)) (gx#stx-e _stx101017_)))))
          (declare (not safe))
          (gx#stx-e __tmp101200))))
    (define gxc#void-method (lambda (_self101014_ _stx101015_) '#!void))
    (define gxc#false-method (lambda (_self101011_ _stx101012_) '#f))
    (define gxc#true-method (lambda (_self101008_ _stx101009_) '#t))
    (define gxc#identity-method
      (lambda (_self101005_ _stx101006_) _stx101006_))
    (define gxc#::void-expression::t
      (let ((__tmp101201 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp101201
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _$args101002_
        (apply make-instance gxc#::void-expression::t _$args101002_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp101202
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
        (make-promise __tmp101202)))
    (define gxc#::void-special-form::t
      (let ((__tmp101203 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp101203
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _$args100998_
        (apply make-instance gxc#::void-special-form::t _$args100998_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp101204
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
        (make-promise __tmp101204)))
    (define gxc#::void::t
      (let ((__tmp101205
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (make-class-type 'gxc#::void::t '::void __tmp101205 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _$args100994_ (apply make-instance gxc#::void::t _$args100994_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp101206
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (make-promise __tmp101206)))
    (define gxc#::false-expression::t
      (let ((__tmp101207 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp101207
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _$args100990_
        (apply make-instance gxc#::false-expression::t _$args100990_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp101208
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
        (make-promise __tmp101208)))
    (define gxc#::false-special-form::t
      (let ((__tmp101209 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp101209
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _$args100986_
        (apply make-instance gxc#::false-special-form::t _$args100986_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp101210
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
        (make-promise __tmp101210)))
    (define gxc#::false::t
      (let ((__tmp101211
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (make-class-type 'gxc#::false::t '::false __tmp101211 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _$args100982_
        (apply make-instance gxc#::false::t _$args100982_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp101212
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (make-promise __tmp101212)))
    (define gxc#::identity-expression::t
      (let ((__tmp101213 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp101213
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _$args100978_
        (apply make-instance gxc#::identity-expression::t _$args100978_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp101214
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
        (make-promise __tmp101214)))
    (define gxc#::identity-special-form::t
      (let ((__tmp101215 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp101215
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _$args100974_
        (apply make-instance gxc#::identity-special-form::t _$args100974_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp101216
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
        (make-promise __tmp101216)))
    (define gxc#::identity::t
      (let ((__tmp101217
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::identity::t
         '::identity
         __tmp101217
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _$args100970_
        (apply make-instance gxc#::identity::t _$args100970_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp101218
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (make-promise __tmp101218)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp101219 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp101219
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _$args100966_
        (apply make-instance gxc#::basic-xform-expression::t _$args100966_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp101220
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
        (make-promise __tmp101220)))
    (define gxc#::basic-xform::t
      (let ((__tmp101221
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp101221
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _$args100962_
        (apply make-instance gxc#::basic-xform::t _$args100962_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp101222
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
        (make-promise __tmp101222)))
    (define gxc#apply-begin%
      (lambda (_self100918_ _stx100919_)
        (let* ((_g100921100931_
                (lambda (_g100922100928_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g100922100928_))))
               (_g100920100958_
                (lambda (_g100922100934_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g100922100934_))
                      (let ((_e100926100936_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g100922100934_))))
                        (let ((_hd100925100939_
                               (let ()
                                 (declare (not safe))
                                 (##car _e100926100936_)))
                              (_tl100924100941_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e100926100936_))))
                          ((lambda (_L100944_)
                             (for-each
                              (lambda (_g100953100955_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1
                                   _self100918_
                                   _g100953100955_)))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _L100944_))))
                           _tl100924100941_)))
                      (let ()
                        (declare (not safe))
                        (_g100921100931_ _g100922100934_))))))
          (declare (not safe))
          (_g100920100958_ _stx100919_))))
    (define gxc#apply-begin-syntax%
      (lambda (_self100914_ _stx100915_)
        (let ((__tmp101225
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#apply-begin% _self100914_ _stx100915_))))
              (__tmp101223
               (let ((__tmp101224 (gx#current-expander-phi)))
                 (declare (not safe))
                 (fx+ __tmp101224 '1))))
          (declare (not safe))
          (call-with-parameters
           __tmp101225
           gx#current-expander-phi
           __tmp101223))))
    (define gxc#apply-module%
      (lambda (_self100853_ _stx100854_)
        (let* ((_g100856100870_
                (lambda (_g100857100867_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g100857100867_))))
               (_g100855100911_
                (lambda (_g100857100873_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g100857100873_))
                      (let ((_e100862100875_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g100857100873_))))
                        (let ((_hd100861100878_
                               (let ()
                                 (declare (not safe))
                                 (##car _e100862100875_)))
                              (_tl100860100880_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e100862100875_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl100860100880_))
                              (let ((_e100865100883_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl100860100880_))))
                                (let ((_hd100864100886_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e100865100883_)))
                                      (_tl100863100888_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e100865100883_))))
                                  ((lambda (_L100891_ _L100892_)
                                     (let* ((_ctx100905_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L100892_)))
                                            (_ctx-stx100907_
                                             (##structure-ref
                                              _ctx100905_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp101226
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self100853_
                                                   _ctx-stx100907_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp101226
                                          gx#current-expander-context
                                          _ctx100905_))))
                                   _tl100863100888_
                                   _hd100864100886_)))
                              (let ()
                                (declare (not safe))
                                (_g100856100870_ _g100857100873_)))))
                      (let ()
                        (declare (not safe))
                        (_g100856100870_ _g100857100873_))))))
          (declare (not safe))
          (_g100855100911_ _stx100854_))))
    (define gxc#apply-begin-annotation%
      (lambda (_self100785_ _stx100786_)
        (let* ((_g100788100805_
                (lambda (_g100789100802_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g100789100802_))))
               (_g100787100850_
                (lambda (_g100789100808_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g100789100808_))
                      (let ((_e100794100810_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g100789100808_))))
                        (let ((_hd100793100813_
                               (let ()
                                 (declare (not safe))
                                 (##car _e100794100810_)))
                              (_tl100792100815_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e100794100810_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl100792100815_))
                              (let ((_e100797100818_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl100792100815_))))
                                (let ((_hd100796100821_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e100797100818_)))
                                      (_tl100795100823_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e100797100818_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl100795100823_))
                                      (let ((_e100800100826_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl100795100823_))))
                                        (let ((_hd100799100829_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e100800100826_)))
                                              (_tl100798100831_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e100800100826_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl100798100831_))
                                              ((lambda (_L100834_ _L100835_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self100785_
                                                    _L100834_)))
                                               _hd100799100829_
                                               _hd100796100821_)
                                              (let ()
                                                (declare (not safe))
                                                (_g100788100805_
                                                 _g100789100808_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g100788100805_ _g100789100808_)))))
                              (let ()
                                (declare (not safe))
                                (_g100788100805_ _g100789100808_)))))
                      (let ()
                        (declare (not safe))
                        (_g100788100805_ _g100789100808_))))))
          (declare (not safe))
          (_g100787100850_ _stx100786_))))
    (define gxc#apply-define-values%
      (lambda (_self100717_ _stx100718_)
        (let* ((_g100720100737_
                (lambda (_g100721100734_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g100721100734_))))
               (_g100719100782_
                (lambda (_g100721100740_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g100721100740_))
                      (let ((_e100726100742_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g100721100740_))))
                        (let ((_hd100725100745_
                               (let ()
                                 (declare (not safe))
                                 (##car _e100726100742_)))
                              (_tl100724100747_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e100726100742_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl100724100747_))
                              (let ((_e100729100750_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl100724100747_))))
                                (let ((_hd100728100753_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e100729100750_)))
                                      (_tl100727100755_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e100729100750_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl100727100755_))
                                      (let ((_e100732100758_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl100727100755_))))
                                        (let ((_hd100731100761_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e100732100758_)))
                                              (_tl100730100763_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e100732100758_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl100730100763_))
                                              ((lambda (_L100766_ _L100767_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self100717_
                                                    _L100766_)))
                                               _hd100731100761_
                                               _hd100728100753_)
                                              (let ()
                                                (declare (not safe))
                                                (_g100720100737_
                                                 _g100721100740_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g100720100737_ _g100721100740_)))))
                              (let ()
                                (declare (not safe))
                                (_g100720100737_ _g100721100740_)))))
                      (let ()
                        (declare (not safe))
                        (_g100720100737_ _g100721100740_))))))
          (declare (not safe))
          (_g100719100782_ _stx100718_))))
    (define gxc#apply-define-syntax%
      (lambda (_self100648_ _stx100649_)
        (let* ((_g100651100668_
                (lambda (_g100652100665_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g100652100665_))))
               (_g100650100714_
                (lambda (_g100652100671_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g100652100671_))
                      (let ((_e100657100673_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g100652100671_))))
                        (let ((_hd100656100676_
                               (let ()
                                 (declare (not safe))
                                 (##car _e100657100673_)))
                              (_tl100655100678_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e100657100673_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl100655100678_))
                              (let ((_e100660100681_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl100655100678_))))
                                (let ((_hd100659100684_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e100660100681_)))
                                      (_tl100658100686_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e100660100681_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl100658100686_))
                                      (let ((_e100663100689_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl100658100686_))))
                                        (let ((_hd100662100692_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e100663100689_)))
                                              (_tl100661100694_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e100663100689_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl100661100694_))
                                              ((lambda (_L100697_ _L100698_)
                                                 (let ((__tmp101229
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _self100648_
                                                             _L100697_))))
                                                       (__tmp101227
                                                        (let ((__tmp101228
                                                               (gx#current-expander-phi)))
                                                          (declare (not safe))
                                                          (fx+ __tmp101228
                                                               '1))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp101229
                                                    gx#current-expander-phi
                                                    __tmp101227)))
                                               _hd100662100692_
                                               _hd100659100684_)
                                              (let ()
                                                (declare (not safe))
                                                (_g100651100668_
                                                 _g100652100671_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g100651100668_ _g100652100671_)))))
                              (let ()
                                (declare (not safe))
                                (_g100651100668_ _g100652100671_)))))
                      (let ()
                        (declare (not safe))
                        (_g100651100668_ _g100652100671_))))))
          (declare (not safe))
          (_g100650100714_ _stx100649_))))
    (define gxc#apply-body-lambda%
      (lambda (_self100580_ _stx100581_)
        (let* ((_g100583100600_
                (lambda (_g100584100597_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g100584100597_))))
               (_g100582100645_
                (lambda (_g100584100603_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g100584100603_))
                      (let ((_e100589100605_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g100584100603_))))
                        (let ((_hd100588100608_
                               (let ()
                                 (declare (not safe))
                                 (##car _e100589100605_)))
                              (_tl100587100610_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e100589100605_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl100587100610_))
                              (let ((_e100592100613_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl100587100610_))))
                                (let ((_hd100591100616_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e100592100613_)))
                                      (_tl100590100618_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e100592100613_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl100590100618_))
                                      (let ((_e100595100621_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl100590100618_))))
                                        (let ((_hd100594100624_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e100595100621_)))
                                              (_tl100593100626_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e100595100621_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl100593100626_))
                                              ((lambda (_L100629_ _L100630_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self100580_
                                                    _L100629_)))
                                               _hd100594100624_
                                               _hd100591100616_)
                                              (let ()
                                                (declare (not safe))
                                                (_g100583100600_
                                                 _g100584100603_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g100583100600_ _g100584100603_)))))
                              (let ()
                                (declare (not safe))
                                (_g100583100600_ _g100584100603_)))))
                      (let ()
                        (declare (not safe))
                        (_g100583100600_ _g100584100603_))))))
          (declare (not safe))
          (_g100582100645_ _stx100581_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_self100462_ _stx100463_)
        (let* ((_g100465100493_
                (lambda (_g100466100490_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g100466100490_))))
               (_g100464100577_
                (lambda (_g100466100496_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g100466100496_))
                      (let ((_e100471100498_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g100466100496_))))
                        (let ((_hd100470100501_
                               (let ()
                                 (declare (not safe))
                                 (##car _e100471100498_)))
                              (_tl100469100503_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e100471100498_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl100469100503_))
                              (let ((_g101230_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl100469100503_
                                        '0))))
                                (begin
                                  (let ((_g101231_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g101230_)
                                               (##vector-length _g101230_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g101231_ 2)))
                                        (error "Context expects 2 values"
                                               _g101231_)))
                                  (let ((_target100472100506_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g101230_ 0)))
                                        (_tl100474100508_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g101230_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl100474100508_))
                                        (letrec ((_loop100475100511_
                                                  (lambda (_hd100473100514_
                                                           _body100479100516_
                                                           _hd100480100518_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd100473100514_))
                                                        (let ((_e100476100521_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd100473100514_))))
                  (let ((_lp-hd100477100524_
                         (let () (declare (not safe)) (##car _e100476100521_)))
                        (_lp-tl100478100526_
                         (let ()
                           (declare (not safe))
                           (##cdr _e100476100521_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd100477100524_))
                        (let ((_e100485100529_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd100477100524_))))
                          (let ((_hd100484100532_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e100485100529_)))
                                (_tl100483100534_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e100485100529_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl100483100534_))
                                (let ((_e100488100537_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl100483100534_))))
                                  (let ((_hd100487100540_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e100488100537_)))
                                        (_tl100486100542_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e100488100537_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl100486100542_))
                                        (let ((__tmp101234
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd100487100540_
                                                       _body100479100516_)))
                                              (__tmp101233
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd100484100532_
                                                       _hd100480100518_))))
                                          (declare (not safe))
                                          (_loop100475100511_
                                           _lp-tl100478100526_
                                           __tmp101234
                                           __tmp101233))
                                        (let ()
                                          (declare (not safe))
                                          (_g100465100493_ _g100466100496_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g100465100493_ _g100466100496_)))))
                        (let ()
                          (declare (not safe))
                          (_g100465100493_ _g100466100496_)))))
                (let ((_body100481100545_ (reverse _body100479100516_))
                      (_hd100482100547_ (reverse _hd100480100518_)))
                  ((lambda (_L100550_ _L100551_)
                     (for-each
                      (lambda (_g100565100567_)
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _self100462_ _g100565100567_)))
                      (let ((__tmp101232
                             (lambda (_g100569100572_ _g100570100574_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g100569100572_ _g100570100574_)))))
                        (declare (not safe))
                        (foldr1 __tmp101232 '() _L100550_))))
                   _body100481100545_
                   _hd100482100547_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop100475100511_
                                             _target100472100506_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g100465100493_
                                           _g100466100496_))))))
                              (let ()
                                (declare (not safe))
                                (_g100465100493_ _g100466100496_)))))
                      (let ()
                        (declare (not safe))
                        (_g100465100493_ _g100466100496_))))))
          (declare (not safe))
          (_g100464100577_ _stx100463_))))
    (define gxc#apply-body-let-values%
      (lambda (_self100315_ _stx100316_)
        (let* ((_g100318100353_
                (lambda (_g100319100350_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g100319100350_))))
               (_g100317100459_
                (lambda (_g100319100356_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g100319100356_))
                      (let ((_e100325100358_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g100319100356_))))
                        (let ((_hd100324100361_
                               (let ()
                                 (declare (not safe))
                                 (##car _e100325100358_)))
                              (_tl100323100363_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e100325100358_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl100323100363_))
                              (let ((_e100328100366_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl100323100363_))))
                                (let ((_hd100327100369_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e100328100366_)))
                                      (_tl100326100371_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e100328100366_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd100327100369_))
                                      (let ((_g101235_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd100327100369_
                                                '0))))
                                        (begin
                                          (let ((_g101236_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g101235_)
                                                       (##vector-length
                                                        _g101235_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g101236_ 2)))
                                                (error "Context expects 2 values"
                                                       _g101236_)))
                                          (let ((_target100329100374_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g101235_ 0)))
                                                (_tl100331100376_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g101235_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl100331100376_))
                                                (letrec ((_loop100332100379_
                                                          (lambda (_hd100330100382_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr100336100384_
                           _hd100337100386_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd100330100382_))
                        (let ((_e100333100389_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd100330100382_))))
                          (let ((_lp-hd100334100392_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e100333100389_)))
                                (_lp-tl100335100394_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e100333100389_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd100334100392_))
                                (let ((_e100342100397_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd100334100392_))))
                                  (let ((_hd100341100400_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e100342100397_)))
                                        (_tl100340100402_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e100342100397_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl100340100402_))
                                        (let ((_e100345100405_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl100340100402_))))
                                          (let ((_hd100344100408_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e100345100405_)))
                                                (_tl100343100410_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e100345100405_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl100343100410_))
                                                (let ((__tmp101240
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd100344100408_
                                                               _expr100336100384_)))
                                                      (__tmp101239
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd100341100400_
                                                               _hd100337100386_))))
                                                  (declare (not safe))
                                                  (_loop100332100379_
                                                   _lp-tl100335100394_
                                                   __tmp101240
                                                   __tmp101239))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g100318100353_
                                                   _g100319100356_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g100318100353_ _g100319100356_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g100318100353_ _g100319100356_)))))
                        (let ((_expr100338100413_ (reverse _expr100336100384_))
                              (_hd100339100415_ (reverse _hd100337100386_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl100326100371_))
                              (let ((_e100348100418_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl100326100371_))))
                                (let ((_hd100347100421_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e100348100418_)))
                                      (_tl100346100423_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e100348100418_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl100346100423_))
                                      ((lambda (_L100426_ _L100427_ _L100428_)
                                         (for-each
                                          (lambda (_g100447100449_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self100315_
                                               _g100447100449_)))
                                          (let ((__tmp101238
                                                 (lambda (_g100451100454_
                                                          _g100452100456_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g100451100454_
                                                           _g100452100456_))))
                                                (__tmp101237
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L100426_ '()))))
                                            (declare (not safe))
                                            (foldr1 __tmp101238
                                                    __tmp101237
                                                    _L100427_))))
                                       _hd100347100421_
                                       _expr100338100413_
                                       _hd100339100415_)
                                      (let ()
                                        (declare (not safe))
                                        (_g100318100353_ _g100319100356_)))))
                              (let ()
                                (declare (not safe))
                                (_g100318100353_ _g100319100356_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop100332100379_
                                                     _target100329100374_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g100318100353_
                                                   _g100319100356_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g100318100353_ _g100319100356_)))))
                              (let ()
                                (declare (not safe))
                                (_g100318100353_ _g100319100356_)))))
                      (let ()
                        (declare (not safe))
                        (_g100318100353_ _g100319100356_))))))
          (declare (not safe))
          (_g100317100459_ _stx100316_))))
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
                              (let ((_g101241_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl100166100192_
                                        '0))))
                                (begin
                                  (let ((_g101242_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g101241_)
                                               (##vector-length _g101241_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g101242_ 2)))
                                        (error "Context expects 2 values"
                                               _g101242_)))
                                  (let ((_target100169100195_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g101241_ 0)))
                                        (_tl100171100197_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g101241_ 1))))
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
                    (let ((__tmp101244
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd100174100211_ _rands100176100205_))))
                      (declare (not safe))
                      (_loop100172100200_ _lp-tl100175100213_ __tmp101244))))
                (let ((_rands100177100216_ (reverse _rands100176100205_)))
                  ((lambda (_L100219_)
                     (for-each
                      (lambda (_g100232100234_)
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _self100160_ _g100232100234_)))
                      (let ((__tmp101243
                             (lambda (_g100236100239_ _g100237100241_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g100236100239_ _g100237100241_)))))
                        (declare (not safe))
                        (foldr1 __tmp101243 '() _L100219_))))
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
        (let ((__tmp101245
               (let () (declare (not safe)) (gx#stx-source _src-stx100158_))))
          (declare (not safe))
          (gx#stx-wrap-source _stx100157_ __tmp101245))))
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
                                    (__tmp101246
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#begin _forms100152_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp101246
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
                             (let ((__tmp101249
                                    (lambda ()
                                      (let* ((_forms100107_
                                              (map (lambda (_g100102100104_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _self100066_
                                                        _g100102100104_)))
                                                   _L100092_))
                                             (__tmp101250
                                              (let ()
                                                (declare (not safe))
                                                (cons '%#begin-syntax
                                                      _forms100107_))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp101250
                                         _stx100067_))))
                                   (__tmp101247
                                    (let ((__tmp101248
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp101248 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp101249
                                gx#current-expander-phi
                                __tmp101247)))
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
                                             (let ((__tmp101251
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _self100003_
                                                         _code100057_)))))
                                               (declare (not safe))
                                               (call-with-parameters
                                                __tmp101251
                                                gx#current-expander-context
                                                _ctx100055_))))
                                       (##structure-set!
                                        _ctx100055_
                                        _code100060_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp101252
                                              (let ((__tmp101253
                                                     (let ((__tmp101254
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _code100060_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L100042_ __tmp101254))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#module __tmp101253))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp101252
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
                                                        (__tmp101255
                                                         (let ((__tmp101256
                                                                (let ((__tmp101257
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _expr99998_ '()))))
                          (declare (not safe))
                          (cons _L99983_ __tmp101257))))
                   (declare (not safe))
                   (cons '%#define-values __tmp101256))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp101255
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
                                                 (let ((__tmp101260
                                                        (lambda ()
                                                          (let* ((_expr99928_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__1 _self99862_ _L99911_)))
                         (__tmp101261
                          (let ((__tmp101262
                                 (let ((__tmp101263
                                        (let ()
                                          (declare (not safe))
                                          (cons _expr99928_ '()))))
                                   (declare (not safe))
                                   (cons _L99912_ __tmp101263))))
                            (declare (not safe))
                            (cons '%#define-syntax __tmp101262))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp101261 _stx99863_))))
               (__tmp101258
                (let ((__tmp101259 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp101259 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp101260
                                                    gx#current-expander-phi
                                                    __tmp101258)))
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
                                                        (__tmp101264
                                                         (let ((__tmp101265
                                                                (let ((__tmp101266
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _expr99857_ '()))))
                          (declare (not safe))
                          (cons _L99842_ __tmp101266))))
                   (declare (not safe))
                   (cons '%#begin-annotation __tmp101265))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp101264
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
                                            (__tmp101267
                                             (let ((__tmp101268
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L99770_
                                                            _body99787_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp101268))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp101267
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
                                      (__tmp101269
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses99679_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp101269
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
                                      (let ((_g101270_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd9943999478_
                                                '0))))
                                        (begin
                                          (let ((_g101271_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g101270_)
                                                       (##vector-length
                                                        _g101270_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g101271_ 2)))
                                                (error "Context expects 2 values"
                                                       _g101271_)))
                                          (let ((_target9944199483_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g101270_ 0)))
                                                (_tl9944399485_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g101270_
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
                                                (let ((__tmp101284
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd9945699517_
                                                               _expr9944899493_)))
                                                      (__tmp101283
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd9945399509_
                                                               _hd9944999495_))))
                                                  (declare (not safe))
                                                  (_loop9944499488_
                                                   _lp-tl9944799503_
                                                   __tmp101284
                                                   __tmp101283))
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
                                           (let ((_g101272_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _g9955099568_
                                                     '0))))
                                             (begin
                                               (let ((_g101273_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g101272_)
                                                            (##vector-length
                                                             _g101272_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g101273_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g101273_)))
                                               (let ((_target9955299570_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g101272_
                                                         0)))
                                                     (_tl9955499572_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g101272_
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
                                 (let ((__tmp101280
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd9955799586_
                                                _expr9955999580_))))
                                   (declare (not safe))
                                   (_loop9955599575_
                                    _lp-tl9955899588_
                                    __tmp101280))))
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
                                           (__tmp101274
                                            (let ((__tmp101275
                                                   (let ((__tmp101276
                                                          (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _L99594_
                                                               _L99529_))
                                                            (let ((__tmp101277
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g9961299616_ _g9961399618_ _g9961499620_)
                             (let ((__tmp101278
                                    (let ((__tmp101279
                                           (let ()
                                             (declare (not safe))
                                             (cons _g9961299616_ '()))))
                                      (declare (not safe))
                                      (cons _g9961399618_ __tmp101279))))
                               (declare (not safe))
                               (cons __tmp101278 _g9961499620_)))))
                      (declare (not safe))
                      (foldr2 __tmp101277 '() _L99594_ _L99529_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp101276
                                                           _body99611_))))
                                              (declare (not safe))
                                              (cons _L99530_ __tmp101275))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp101274
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
                                    (__tmp101281
                                     (map (lambda (_g9962599627_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self99426_
                                               _g9962599627_)))
                                          (let ((__tmp101282
                                                 (lambda (_g9962999632_
                                                          _g9963099634_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g9962999632_
                                                           _g9963099634_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp101282
                                                    '()
                                                    _L99528_)))))
                               (declare (not safe))
                               (_g9954899623_ __tmp101281)))
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
                                    (__tmp101285
                                     (let ()
                                       (declare (not safe))
                                       (cons _L99406_ _rands99421_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source __tmp101285 _stx99379_)))
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
                                                        (__tmp101286
                                                         (let ((__tmp101287
                                                                (let ((__tmp101288
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _expr99373_ '()))))
                          (declare (not safe))
                          (cons _L99358_ __tmp101288))))
                   (declare (not safe))
                   (cons '%#set! __tmp101287))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp101286
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
