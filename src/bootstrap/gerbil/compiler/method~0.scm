(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1756224516)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx146019%_)
        (let* ((_%self146021%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e146023%_
                (let ((__tmp146241 (gxc#stx-car-e _%stx146019%_)))
                  (declare (not safe))
                  (method-ref _%self146021%_ __tmp146241))))
          (if _%$e146023%_
              ((lambda (_%method146026%_)
                 (declare (not safe))
                 (let ((_%$e146029%_ (gx#stx-source _%stx146019%_)))
                   (if _%$e146029%_
                       ((lambda (_%source146032%_)
                          (call-with-parameters__1
                           (lambda ()
                             (_%method146026%_ _%self146021%_ _%stx146019%_))
                           gxc#current-compile-context
                           (cons (cons '@ (cons _%source146032%_ '()))
                                 (let ((_%$e146036%_
                                        (gxc#current-compile-context)))
                                   (if _%$e146036%_ _%$e146036%_ '())))))
                        _%$e146029%_)
                       (_%method146026%_ _%self146021%_ _%stx146019%_))))
               _%$e146023%_)
              (let ((__tmp146243 (gxc#stx-car-e _%stx146019%_))
                    (__tmp146242
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx146019%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self146021%_
                       __tmp146243
                       __tmp146242))))))
    (define gxc#compile-e__1
      (lambda (_%self146041%_ _%stx146042%_)
        (let ((_%$e146044%_
               (let ((__tmp146244 (gxc#stx-car-e _%stx146042%_)))
                 (declare (not safe))
                 (method-ref _%self146041%_ __tmp146244))))
          (if _%$e146044%_
              ((lambda (_%method146047%_)
                 (declare (not safe))
                 (let ((_%$e146050%_ (gx#stx-source _%stx146042%_)))
                   (if _%$e146050%_
                       ((lambda (_%source146053%_)
                          (call-with-parameters__1
                           (lambda ()
                             (_%method146047%_ _%self146041%_ _%stx146042%_))
                           gxc#current-compile-context
                           (cons (cons '@ (cons _%source146053%_ '()))
                                 (let ((_%$e146057%_
                                        (gxc#current-compile-context)))
                                   (if _%$e146057%_ _%$e146057%_ '())))))
                        _%$e146050%_)
                       (_%method146047%_ _%self146041%_ _%stx146042%_))))
               _%$e146044%_)
              (let ((__tmp146246 (gxc#stx-car-e _%stx146042%_))
                    (__tmp146245
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx146042%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self146041%_
                       __tmp146246
                       __tmp146245))))))
    (define gxc#compile-e
      (lambda _g146247_
        (let ((_g146248_ (let () (declare (not safe)) (##length _g146247_))))
          (cond ((let () (declare (not safe)) (##fx= _g146248_ 1))
                 (apply gxc#compile-e__0 _g146247_))
                ((let () (declare (not safe)) (##fx= _g146248_ 2))
                 (apply gxc#compile-e__1 _g146247_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g146247_))))))
    (define gxc#stx-car-e
      (lambda (_%stx146017%_)
        (let ((__tmp146249
               (car (let () (declare (not safe)) (gx#stx-e _%stx146017%_)))))
          (declare (not safe))
          (gx#stx-e __tmp146249))))
    (define gxc#void-method (lambda (_%self146014%_ _%stx146015%_) '#!void))
    (define gxc#false-method (lambda (_%self146011%_ _%stx146012%_) '#f))
    (define gxc#true-method (lambda (_%self146008%_ _%stx146009%_) '#t))
    (define gxc#identity-method
      (lambda (_%self146005%_ _%stx146006%_) _%stx146006%_))
    (define gxc#::void-expression::t
      (let ((__tmp146250 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp146250
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args146002%_
        (apply make-instance gxc#::void-expression::t _%$args146002%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp146251
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
        (__make-promise __tmp146251)))
    (define gxc#::void-special-form::t
      (let ((__tmp146252 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp146252
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args145998%_
        (apply make-instance gxc#::void-special-form::t _%$args145998%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp146253
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
        (__make-promise __tmp146253)))
    (define gxc#::void::t
      (let ((__tmp146254
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp146254 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args145994%_
        (apply make-instance gxc#::void::t _%$args145994%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp146255
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp146255)))
    (define gxc#::false-expression::t
      (let ((__tmp146256 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp146256
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args145990%_
        (apply make-instance gxc#::false-expression::t _%$args145990%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp146257
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
        (__make-promise __tmp146257)))
    (define gxc#::false-special-form::t
      (let ((__tmp146258 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp146258
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args145986%_
        (apply make-instance gxc#::false-special-form::t _%$args145986%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp146259
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
        (__make-promise __tmp146259)))
    (define gxc#::false::t
      (let ((__tmp146260
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp146260 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args145982%_
        (apply make-instance gxc#::false::t _%$args145982%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp146261
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp146261)))
    (define gxc#::identity-expression::t
      (let ((__tmp146262 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp146262
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args145978%_
        (apply make-instance gxc#::identity-expression::t _%$args145978%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp146263
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
        (__make-promise __tmp146263)))
    (define gxc#::identity-special-form::t
      (let ((__tmp146264 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp146264
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args145974%_
        (apply make-instance gxc#::identity-special-form::t _%$args145974%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp146265
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
        (__make-promise __tmp146265)))
    (define gxc#::identity::t
      (let ((__tmp146266
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp146266
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args145970%_
        (apply make-instance gxc#::identity::t _%$args145970%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp146267
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp146267)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp146268 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp146268
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args145966%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args145966%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp146269
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
                  gxc#xform-letrec-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::basic-xform-expression::t
                  '%#letrec*-values
                  gxc#xform-letrec-values%))
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
        (__make-promise __tmp146269)))
    (define gxc#::basic-xform::t
      (let ((__tmp146270
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp146270
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args145962%_
        (apply make-instance gxc#::basic-xform::t _%$args145962%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp146271
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
        (__make-promise __tmp146271)))
    (define gxc#apply-begin%
      (lambda (_%self145918%_ _%stx145919%_)
        (let* ((_%g145921145931%_
                (lambda (_%g145922145928%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145922145928%_))))
               (_%g145920145958%_
                (lambda (_%g145922145934%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145922145934%_))
                      (let ((_%e145924145936%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145922145934%_))))
                        (let ((_%hd145925145939%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145924145936%_)))
                              (_%tl145926145941%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145924145936%_))))
                          ((lambda (_%L145944%_)
                             (for-each
                              (lambda (_%g145953145955%_)
                                (gxc#compile-e__1
                                 _%self145918%_
                                 _%g145953145955%_))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L145944%_))))
                           _%tl145926145941%_)))
                      (_%g145921145931%_ _%g145922145934%_)))))
          (_%g145920145958%_ _%stx145919%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self145879%_ _%stx145880%_)
        (let* ((_%g145882145892%_
                (lambda (_%g145883145889%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145883145889%_))))
               (_%g145881145915%_
                (lambda (_%g145883145895%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145883145895%_))
                      (let ((_%e145885145897%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145883145895%_))))
                        (let ((_%hd145886145900%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145885145897%_)))
                              (_%tl145887145902%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145885145897%_))))
                          ((lambda (_%L145905%_)
                             (gxc#compile-e__1
                              _%self145879%_
                              (last _%L145905%_)))
                           _%tl145887145902%_)))
                      (_%g145882145892%_ _%g145883145895%_)))))
          (_%g145881145915%_ _%stx145880%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self145875%_ _%stx145876%_)
        (let ((__tmp146274
               (lambda () (gxc#apply-begin% _%self145875%_ _%stx145876%_)))
              (__tmp146272
               (let ((__tmp146273
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp146273 '1))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp146274
           gx#current-expander-phi
           __tmp146272))))
    (define gxc#apply-module%
      (lambda (_%self145814%_ _%stx145815%_)
        (let* ((_%g145817145831%_
                (lambda (_%g145818145828%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145818145828%_))))
               (_%g145816145872%_
                (lambda (_%g145818145834%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145818145834%_))
                      (let ((_%e145821145836%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145818145834%_))))
                        (let ((_%hd145822145839%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145821145836%_)))
                              (_%tl145823145841%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145821145836%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145823145841%_))
                              (let ((_%e145824145844%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145823145841%_))))
                                (let ((_%hd145825145847%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145824145844%_)))
                                      (_%tl145826145849%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145824145844%_))))
                                  ((lambda (_%L145852%_ _%L145853%_)
                                     (let* ((_%ctx145866%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L145853%_)))
                                            (_%ctx-stx145868%_
                                             (##structure-ref
                                              _%ctx145866%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp146275
                                             (lambda ()
                                               (gxc#compile-e__1
                                                _%self145814%_
                                                _%ctx-stx145868%_))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp146275
                                        gx#current-expander-context
                                        _%ctx145866%_)))
                                   _%tl145826145849%_
                                   _%hd145825145847%_)))
                              (_%g145817145831%_ _%g145818145834%_))))
                      (_%g145817145831%_ _%g145818145834%_)))))
          (_%g145816145872%_ _%stx145815%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self145746%_ _%stx145747%_)
        (let* ((_%g145749145766%_
                (lambda (_%g145750145763%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145750145763%_))))
               (_%g145748145811%_
                (lambda (_%g145750145769%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145750145769%_))
                      (let ((_%e145753145771%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145750145769%_))))
                        (let ((_%hd145754145774%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145753145771%_)))
                              (_%tl145755145776%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145753145771%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145755145776%_))
                              (let ((_%e145756145779%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145755145776%_))))
                                (let ((_%hd145757145782%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145756145779%_)))
                                      (_%tl145758145784%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145756145779%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl145758145784%_))
                                      (let ((_%e145759145787%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl145758145784%_))))
                                        (let ((_%hd145760145790%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e145759145787%_)))
                                              (_%tl145761145792%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e145759145787%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl145761145792%_))
                                              ((lambda (_%L145795%_
                                                        _%L145796%_)
                                                 (gxc#compile-e__1
                                                  _%self145746%_
                                                  _%L145795%_))
                                               _%hd145760145790%_
                                               _%hd145757145782%_)
                                              (_%g145749145766%_
                                               _%g145750145769%_))))
                                      (_%g145749145766%_ _%g145750145769%_))))
                              (_%g145749145766%_ _%g145750145769%_))))
                      (_%g145749145766%_ _%g145750145769%_)))))
          (_%g145748145811%_ _%stx145747%_))))
    (define gxc#apply-define-values%
      (lambda (_%self145678%_ _%stx145679%_)
        (let* ((_%g145681145698%_
                (lambda (_%g145682145695%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145682145695%_))))
               (_%g145680145743%_
                (lambda (_%g145682145701%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145682145701%_))
                      (let ((_%e145685145703%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145682145701%_))))
                        (let ((_%hd145686145706%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145685145703%_)))
                              (_%tl145687145708%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145685145703%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145687145708%_))
                              (let ((_%e145688145711%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145687145708%_))))
                                (let ((_%hd145689145714%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145688145711%_)))
                                      (_%tl145690145716%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145688145711%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl145690145716%_))
                                      (let ((_%e145691145719%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl145690145716%_))))
                                        (let ((_%hd145692145722%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e145691145719%_)))
                                              (_%tl145693145724%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e145691145719%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl145693145724%_))
                                              ((lambda (_%L145727%_
                                                        _%L145728%_)
                                                 (gxc#compile-e__1
                                                  _%self145678%_
                                                  _%L145727%_))
                                               _%hd145692145722%_
                                               _%hd145689145714%_)
                                              (_%g145681145698%_
                                               _%g145682145701%_))))
                                      (_%g145681145698%_ _%g145682145701%_))))
                              (_%g145681145698%_ _%g145682145701%_))))
                      (_%g145681145698%_ _%g145682145701%_)))))
          (_%g145680145743%_ _%stx145679%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self145609%_ _%stx145610%_)
        (let* ((_%g145612145629%_
                (lambda (_%g145613145626%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145613145626%_))))
               (_%g145611145675%_
                (lambda (_%g145613145632%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145613145632%_))
                      (let ((_%e145616145634%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145613145632%_))))
                        (let ((_%hd145617145637%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145616145634%_)))
                              (_%tl145618145639%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145616145634%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145618145639%_))
                              (let ((_%e145619145642%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145618145639%_))))
                                (let ((_%hd145620145645%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145619145642%_)))
                                      (_%tl145621145647%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145619145642%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl145621145647%_))
                                      (let ((_%e145622145650%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl145621145647%_))))
                                        (let ((_%hd145623145653%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e145622145650%_)))
                                              (_%tl145624145655%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e145622145650%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl145624145655%_))
                                              ((lambda (_%L145658%_
                                                        _%L145659%_)
                                                 (let ((__tmp146278
                                                        (lambda ()
                                                          (gxc#compile-e__1
                                                           _%self145609%_
                                                           _%L145658%_)))
                                                       (__tmp146276
                                                        (let ((__tmp146277
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp146277 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp146278
                                                    gx#current-expander-phi
                                                    __tmp146276)))
                                               _%hd145623145653%_
                                               _%hd145620145645%_)
                                              (_%g145612145629%_
                                               _%g145613145632%_))))
                                      (_%g145612145629%_ _%g145613145632%_))))
                              (_%g145612145629%_ _%g145613145632%_))))
                      (_%g145612145629%_ _%g145613145632%_)))))
          (_%g145611145675%_ _%stx145610%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self145541%_ _%stx145542%_)
        (let* ((_%g145544145561%_
                (lambda (_%g145545145558%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145545145558%_))))
               (_%g145543145606%_
                (lambda (_%g145545145564%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145545145564%_))
                      (let ((_%e145548145566%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145545145564%_))))
                        (let ((_%hd145549145569%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145548145566%_)))
                              (_%tl145550145571%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145548145566%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145550145571%_))
                              (let ((_%e145551145574%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145550145571%_))))
                                (let ((_%hd145552145577%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145551145574%_)))
                                      (_%tl145553145579%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145551145574%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl145553145579%_))
                                      (let ((_%e145554145582%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl145553145579%_))))
                                        (let ((_%hd145555145585%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e145554145582%_)))
                                              (_%tl145556145587%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e145554145582%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl145556145587%_))
                                              ((lambda (_%L145590%_
                                                        _%L145591%_)
                                                 (gxc#compile-e__1
                                                  _%self145541%_
                                                  _%L145590%_))
                                               _%hd145555145585%_
                                               _%hd145552145577%_)
                                              (_%g145544145561%_
                                               _%g145545145564%_))))
                                      (_%g145544145561%_ _%g145545145564%_))))
                              (_%g145544145561%_ _%g145545145564%_))))
                      (_%g145544145561%_ _%g145545145564%_)))))
          (_%g145543145606%_ _%stx145542%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self145423%_ _%stx145424%_)
        (let* ((_%g145426145454%_
                (lambda (_%g145427145451%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145427145451%_))))
               (_%g145425145538%_
                (lambda (_%g145427145457%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145427145457%_))
                      (let ((_%e145430145459%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145427145457%_))))
                        (let ((_%hd145431145462%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145430145459%_)))
                              (_%tl145432145464%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145430145459%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl145432145464%_))
                              (let ((_g146279_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl145432145464%_
                                        '0))))
                                (begin
                                  (let ((_g146280_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g146279_)
                                               (##values-length _g146279_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g146280_ 2)))
                                        (error "Context expects 2 values"
                                               _g146280_)))
                                  (let ((_%target145433145467%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g146279_ 0)))
                                        (_%tl145435145469%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g146279_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl145435145469%_))
                                        (letrec ((_%loop145436145472%_
                                                  (lambda (_%hd145434145475%_
                                                           _%body145440145477%_
                                                           _%hd145441145479%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd145434145475%_))
                                                        (let ((_%e145437145482%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd145434145475%_))))
                  (let ((_%lp-hd145438145485%_
                         (let ()
                           (declare (not safe))
                           (##car _%e145437145482%_)))
                        (_%lp-tl145439145487%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e145437145482%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd145438145485%_))
                        (let ((_%e145444145490%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd145438145485%_))))
                          (let ((_%hd145445145493%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145444145490%_)))
                                (_%tl145446145495%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145444145490%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl145446145495%_))
                                (let ((_%e145447145498%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl145446145495%_))))
                                  (let ((_%hd145448145501%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e145447145498%_)))
                                        (_%tl145449145503%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e145447145498%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl145449145503%_))
                                        (_%loop145436145472%_
                                         _%lp-tl145439145487%_
                                         (cons _%hd145448145501%_
                                               _%body145440145477%_)
                                         (cons _%hd145445145493%_
                                               _%hd145441145479%_))
                                        (_%g145426145454%_
                                         _%g145427145457%_))))
                                (_%g145426145454%_ _%g145427145457%_))))
                        (_%g145426145454%_ _%g145427145457%_))))
                (let ((_%body145442145506%_ (reverse _%body145440145477%_))
                      (_%hd145443145508%_ (reverse _%hd145441145479%_)))
                  ((lambda (_%L145511%_ _%L145512%_)
                     (for-each
                      (lambda (_%g145526145528%_)
                        (gxc#compile-e__1 _%self145423%_ _%g145526145528%_))
                      (let ((__tmp146281
                             (lambda (_%g145530145533%_ _%g145531145535%_)
                               (cons _%g145530145533%_ _%g145531145535%_))))
                        (declare (not safe))
                        (__foldr1 __tmp146281 '() _%L145511%_))))
                   _%body145442145506%_
                   _%hd145443145508%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop145436145472%_
                                           _%target145433145467%_
                                           '()
                                           '()))
                                        (_%g145426145454%_
                                         _%g145427145457%_)))))
                              (_%g145426145454%_ _%g145427145457%_))))
                      (_%g145426145454%_ _%g145427145457%_)))))
          (_%g145425145538%_ _%stx145424%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self145276%_ _%stx145277%_)
        (let* ((_%g145279145314%_
                (lambda (_%g145280145311%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145280145311%_))))
               (_%g145278145420%_
                (lambda (_%g145280145317%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145280145317%_))
                      (let ((_%e145284145319%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145280145317%_))))
                        (let ((_%hd145285145322%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145284145319%_)))
                              (_%tl145286145324%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145284145319%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145286145324%_))
                              (let ((_%e145287145327%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145286145324%_))))
                                (let ((_%hd145288145330%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145287145327%_)))
                                      (_%tl145289145332%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145287145327%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd145288145330%_))
                                      (let ((_g146282_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd145288145330%_
                                                '0))))
                                        (begin
                                          (let ((_g146283_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g146282_)
                                                       (##values-length
                                                        _g146282_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g146283_ 2)))
                                                (error "Context expects 2 values"
                                                       _g146283_)))
                                          (let ((_%target145290145335%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g146282_ 0)))
                                                (_%tl145292145337%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g146282_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl145292145337%_))
                                                (letrec ((_%loop145293145340%_
                                                          (lambda (_%hd145291145343%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr145297145345%_
                           _%hd145298145347%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd145291145343%_))
                        (let ((_%e145294145350%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd145291145343%_))))
                          (let ((_%lp-hd145295145353%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145294145350%_)))
                                (_%lp-tl145296145355%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145294145350%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd145295145353%_))
                                (let ((_%e145301145358%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd145295145353%_))))
                                  (let ((_%hd145302145361%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e145301145358%_)))
                                        (_%tl145303145363%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e145301145358%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl145303145363%_))
                                        (let ((_%e145304145366%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl145303145363%_))))
                                          (let ((_%hd145305145369%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e145304145366%_)))
                                                (_%tl145306145371%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e145304145366%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl145306145371%_))
                                                (_%loop145293145340%_
                                                 _%lp-tl145296145355%_
                                                 (cons _%hd145305145369%_
                                                       _%expr145297145345%_)
                                                 (cons _%hd145302145361%_
                                                       _%hd145298145347%_))
                                                (_%g145279145314%_
                                                 _%g145280145317%_))))
                                        (_%g145279145314%_
                                         _%g145280145317%_))))
                                (_%g145279145314%_ _%g145280145317%_))))
                        (let ((_%expr145299145374%_
                               (reverse _%expr145297145345%_))
                              (_%hd145300145376%_
                               (reverse _%hd145298145347%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145289145332%_))
                              (let ((_%e145307145379%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145289145332%_))))
                                (let ((_%hd145308145382%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145307145379%_)))
                                      (_%tl145309145384%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145307145379%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl145309145384%_))
                                      ((lambda (_%L145387%_
                                                _%L145388%_
                                                _%L145389%_)
                                         (for-each
                                          (lambda (_%g145408145410%_)
                                            (gxc#compile-e__1
                                             _%self145276%_
                                             _%g145408145410%_))
                                          (let ((__tmp146285
                                                 (lambda (_%g145412145415%_
                                                          _%g145413145417%_)
                                                   (cons _%g145412145415%_
                                                         _%g145413145417%_)))
                                                (__tmp146284
                                                 (cons _%L145387%_ '())))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp146285
                                             __tmp146284
                                             _%L145388%_))))
                                       _%hd145308145382%_
                                       _%expr145299145374%_
                                       _%hd145300145376%_)
                                      (_%g145279145314%_ _%g145280145317%_))))
                              (_%g145279145314%_ _%g145280145317%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop145293145340%_
                                                   _%target145290145335%_
                                                   '()
                                                   '()))
                                                (_%g145279145314%_
                                                 _%g145280145317%_)))))
                                      (_%g145279145314%_ _%g145280145317%_))))
                              (_%g145279145314%_ _%g145280145317%_))))
                      (_%g145279145314%_ _%g145280145317%_)))))
          (_%g145278145420%_ _%stx145277%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self145221%_ _%stx145222%_)
        (let* ((_%g145224145238%_
                (lambda (_%g145225145235%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145225145235%_))))
               (_%g145223145273%_
                (lambda (_%g145225145241%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145225145241%_))
                      (let ((_%e145228145243%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145225145241%_))))
                        (let ((_%hd145229145246%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145228145243%_)))
                              (_%tl145230145248%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145228145243%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145230145248%_))
                              (let ((_%e145231145251%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145230145248%_))))
                                (let ((_%hd145232145254%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145231145251%_)))
                                      (_%tl145233145256%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145231145251%_))))
                                  ((lambda (_%L145259%_ _%L145260%_)
                                     (gxc#compile-e__1
                                      _%self145221%_
                                      (last _%L145259%_)))
                                   _%tl145233145256%_
                                   _%hd145232145254%_)))
                              (_%g145224145238%_ _%g145225145241%_))))
                      (_%g145224145238%_ _%g145225145241%_)))))
          (_%g145223145273%_ _%stx145222%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self145153%_ _%stx145154%_)
        (let* ((_%g145156145173%_
                (lambda (_%g145157145170%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145157145170%_))))
               (_%g145155145218%_
                (lambda (_%g145157145176%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145157145176%_))
                      (let ((_%e145160145178%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145157145176%_))))
                        (let ((_%hd145161145181%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145160145178%_)))
                              (_%tl145162145183%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145160145178%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145162145183%_))
                              (let ((_%e145163145186%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145162145183%_))))
                                (let ((_%hd145164145189%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145163145186%_)))
                                      (_%tl145165145191%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145163145186%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl145165145191%_))
                                      (let ((_%e145166145194%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl145165145191%_))))
                                        (let ((_%hd145167145197%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e145166145194%_)))
                                              (_%tl145168145199%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e145166145194%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl145168145199%_))
                                              ((lambda (_%L145202%_
                                                        _%L145203%_)
                                                 (gxc#compile-e__1
                                                  _%self145153%_
                                                  _%L145202%_))
                                               _%hd145167145197%_
                                               _%hd145164145189%_)
                                              (_%g145156145173%_
                                               _%g145157145176%_))))
                                      (_%g145156145173%_ _%g145157145176%_))))
                              (_%g145156145173%_ _%g145157145176%_))))
                      (_%g145156145173%_ _%g145157145176%_)))))
          (_%g145155145218%_ _%stx145154%_))))
    (define gxc#apply-operands
      (lambda (_%self145066%_ _%stx145067%_)
        (let* ((_%g145069145088%_
                (lambda (_%g145070145085%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145070145085%_))))
               (_%g145068145150%_
                (lambda (_%g145070145091%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145070145091%_))
                      (let ((_%e145072145093%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145070145091%_))))
                        (let ((_%hd145073145096%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145072145093%_)))
                              (_%tl145074145098%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145072145093%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl145074145098%_))
                              (let ((_g146286_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl145074145098%_
                                        '0))))
                                (begin
                                  (let ((_g146287_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g146286_)
                                               (##values-length _g146286_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g146287_ 2)))
                                        (error "Context expects 2 values"
                                               _g146287_)))
                                  (let ((_%target145075145101%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g146286_ 0)))
                                        (_%tl145077145103%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g146286_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl145077145103%_))
                                        (letrec ((_%loop145078145106%_
                                                  (lambda (_%hd145076145109%_
                                                           _%rands145082145111%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd145076145109%_))
                                                        (let ((_%e145079145114%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd145076145109%_))))
                  (let ((_%lp-hd145080145117%_
                         (let ()
                           (declare (not safe))
                           (##car _%e145079145114%_)))
                        (_%lp-tl145081145119%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e145079145114%_))))
                    (_%loop145078145106%_
                     _%lp-tl145081145119%_
                     (cons _%lp-hd145080145117%_ _%rands145082145111%_))))
                (let ((_%rands145083145122%_ (reverse _%rands145082145111%_)))
                  ((lambda (_%L145125%_)
                     (for-each
                      (lambda (_%g145138145140%_)
                        (gxc#compile-e__1 _%self145066%_ _%g145138145140%_))
                      (let ((__tmp146288
                             (lambda (_%g145142145145%_ _%g145143145147%_)
                               (cons _%g145142145145%_ _%g145143145147%_))))
                        (declare (not safe))
                        (__foldr1 __tmp146288 '() _%L145125%_))))
                   _%rands145083145122%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop145078145106%_
                                           _%target145075145101%_
                                           '()))
                                        (_%g145069145088%_
                                         _%g145070145091%_)))))
                              (_%g145069145088%_ _%g145070145091%_))))
                      (_%g145069145088%_ _%g145070145091%_)))))
          (_%g145068145150%_ _%stx145067%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx145063%_ _%src-stx145064%_)
        (let ((__tmp146289
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx145064%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx145063%_ __tmp146289))))
    (define gxc#xform-wrap-apply
      (lambda (_%stx145059%_ _%src-stx145060%_ _%ctx145061%_)
        (gxc#compile-e__1
         _%ctx145061%_
         (gxc#xform-wrap-source _%stx145059%_ _%src-stx145060%_))))
    (define gxc#xform-begin%
      (lambda (_%self145014%_ _%stx145015%_)
        (let* ((_%g145017145027%_
                (lambda (_%g145018145024%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145018145024%_))))
               (_%g145016145056%_
                (lambda (_%g145018145030%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145018145030%_))
                      (let ((_%e145020145032%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145018145030%_))))
                        (let ((_%hd145021145035%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145020145032%_)))
                              (_%tl145022145037%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145020145032%_))))
                          ((lambda (_%L145040%_)
                             (let ((_%forms145054%_
                                    (map (lambda (_%g145049145051%_)
                                           (gxc#compile-e__1
                                            _%self145014%_
                                            _%g145049145051%_))
                                         _%L145040%_)))
                               (gxc#xform-wrap-source
                                (cons '%#begin _%forms145054%_)
                                _%stx145015%_)))
                           _%tl145022145037%_)))
                      (_%g145017145027%_ _%g145018145030%_)))))
          (_%g145016145056%_ _%stx145015%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self144968%_ _%stx144969%_)
        (let* ((_%g144971144981%_
                (lambda (_%g144972144978%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144972144978%_))))
               (_%g144970145011%_
                (lambda (_%g144972144984%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144972144984%_))
                      (let ((_%e144974144986%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144972144984%_))))
                        (let ((_%hd144975144989%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144974144986%_)))
                              (_%tl144976144991%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144974144986%_))))
                          ((lambda (_%L144994%_)
                             (let ((__tmp146292
                                    (lambda ()
                                      (let ((_%forms145009%_
                                             (map (lambda (_%g145004145006%_)
                                                    (gxc#compile-e__1
                                                     _%self144968%_
                                                     _%g145004145006%_))
                                                  _%L144994%_)))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin-syntax _%forms145009%_)
                                         _%stx144969%_))))
                                   (__tmp146290
                                    (let ((__tmp146291
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp146291 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp146292
                                gx#current-expander-phi
                                __tmp146290)))
                           _%tl144976144991%_)))
                      (_%g144971144981%_ _%g144972144984%_)))))
          (_%g144970145011%_ _%stx144969%_))))
    (define gxc#xform-module%
      (lambda (_%self144905%_ _%stx144906%_)
        (let* ((_%g144908144922%_
                (lambda (_%g144909144919%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144909144919%_))))
               (_%g144907144965%_
                (lambda (_%g144909144925%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144909144925%_))
                      (let ((_%e144912144927%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144909144925%_))))
                        (let ((_%hd144913144930%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144912144927%_)))
                              (_%tl144914144932%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144912144927%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl144914144932%_))
                              (let ((_%e144915144935%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl144914144932%_))))
                                (let ((_%hd144916144938%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144915144935%_)))
                                      (_%tl144917144940%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144915144935%_))))
                                  ((lambda (_%L144943%_ _%L144944%_)
                                     (let* ((_%ctx144957%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L144944%_)))
                                            (_%code144959%_
                                             (##structure-ref
                                              _%ctx144957%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code144962%_
                                             (let ((__tmp146293
                                                    (lambda ()
                                                      (gxc#compile-e__1
                                                       _%self144905%_
                                                       _%code144959%_))))
                                               (declare (not safe))
                                               (call-with-parameters__1
                                                __tmp146293
                                                gx#current-expander-context
                                                _%ctx144957%_))))
                                       (##structure-set!
                                        _%ctx144957%_
                                        _%code144962%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _%L144944%_
                                                    (cons _%code144962%_ '())))
                                        _%stx144906%_)))
                                   _%tl144917144940%_
                                   _%hd144916144938%_)))
                              (_%g144908144922%_ _%g144909144925%_))))
                      (_%g144908144922%_ _%g144909144925%_)))))
          (_%g144907144965%_ _%stx144906%_))))
    (define gxc#xform-define-values%
      (lambda (_%self144835%_ _%stx144836%_)
        (let* ((_%g144838144855%_
                (lambda (_%g144839144852%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144839144852%_))))
               (_%g144837144902%_
                (lambda (_%g144839144858%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144839144858%_))
                      (let ((_%e144842144860%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144839144858%_))))
                        (let ((_%hd144843144863%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144842144860%_)))
                              (_%tl144844144865%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144842144860%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl144844144865%_))
                              (let ((_%e144845144868%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl144844144865%_))))
                                (let ((_%hd144846144871%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144845144868%_)))
                                      (_%tl144847144873%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144845144868%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl144847144873%_))
                                      (let ((_%e144848144876%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl144847144873%_))))
                                        (let ((_%hd144849144879%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e144848144876%_)))
                                              (_%tl144850144881%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e144848144876%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl144850144881%_))
                                              ((lambda (_%L144884%_
                                                        _%L144885%_)
                                                 (let ((_%expr144900%_
                                                        (gxc#compile-e__1
                                                         _%self144835%_
                                                         _%L144884%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons _%L144885%_
                                                                (cons _%expr144900%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx144836%_)))
                                               _%hd144849144879%_
                                               _%hd144846144871%_)
                                              (_%g144838144855%_
                                               _%g144839144858%_))))
                                      (_%g144838144855%_ _%g144839144858%_))))
                              (_%g144838144855%_ _%g144839144858%_))))
                      (_%g144838144855%_ _%g144839144858%_)))))
          (_%g144837144902%_ _%stx144836%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self144764%_ _%stx144765%_)
        (let* ((_%g144767144784%_
                (lambda (_%g144768144781%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144768144781%_))))
               (_%g144766144832%_
                (lambda (_%g144768144787%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144768144787%_))
                      (let ((_%e144771144789%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144768144787%_))))
                        (let ((_%hd144772144792%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144771144789%_)))
                              (_%tl144773144794%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144771144789%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl144773144794%_))
                              (let ((_%e144774144797%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl144773144794%_))))
                                (let ((_%hd144775144800%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144774144797%_)))
                                      (_%tl144776144802%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144774144797%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl144776144802%_))
                                      (let ((_%e144777144805%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl144776144802%_))))
                                        (let ((_%hd144778144808%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e144777144805%_)))
                                              (_%tl144779144810%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e144777144805%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl144779144810%_))
                                              ((lambda (_%L144813%_
                                                        _%L144814%_)
                                                 (let ((__tmp146296
                                                        (lambda ()
                                                          (let ((_%expr144830%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#compile-e__1 _%self144764%_ _%L144813%_)))
                    (gxc#xform-wrap-source
                     (cons '%#define-syntax
                           (cons _%L144814%_ (cons _%expr144830%_ '())))
                     _%stx144765%_))))
               (__tmp146294
                (let ((__tmp146295
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp146295 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp146296
                                                    gx#current-expander-phi
                                                    __tmp146294)))
                                               _%hd144778144808%_
                                               _%hd144775144800%_)
                                              (_%g144767144784%_
                                               _%g144768144787%_))))
                                      (_%g144767144784%_ _%g144768144787%_))))
                              (_%g144767144784%_ _%g144768144787%_))))
                      (_%g144767144784%_ _%g144768144787%_)))))
          (_%g144766144832%_ _%stx144765%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self144694%_ _%stx144695%_)
        (let* ((_%g144697144714%_
                (lambda (_%g144698144711%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144698144711%_))))
               (_%g144696144761%_
                (lambda (_%g144698144717%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144698144717%_))
                      (let ((_%e144701144719%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144698144717%_))))
                        (let ((_%hd144702144722%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144701144719%_)))
                              (_%tl144703144724%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144701144719%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl144703144724%_))
                              (let ((_%e144704144727%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl144703144724%_))))
                                (let ((_%hd144705144730%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144704144727%_)))
                                      (_%tl144706144732%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144704144727%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl144706144732%_))
                                      (let ((_%e144707144735%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl144706144732%_))))
                                        (let ((_%hd144708144738%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e144707144735%_)))
                                              (_%tl144709144740%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e144707144735%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl144709144740%_))
                                              ((lambda (_%L144743%_
                                                        _%L144744%_)
                                                 (let ((_%expr144759%_
                                                        (gxc#compile-e__1
                                                         _%self144694%_
                                                         _%L144743%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#begin-annotation
                                                          (cons _%L144744%_
                                                                (cons _%expr144759%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx144695%_)))
                                               _%hd144708144738%_
                                               _%hd144705144730%_)
                                              (_%g144697144714%_
                                               _%g144698144717%_))))
                                      (_%g144697144714%_ _%g144698144717%_))))
                              (_%g144697144714%_ _%g144698144717%_))))
                      (_%g144697144714%_ _%g144698144717%_)))))
          (_%g144696144761%_ _%stx144695%_))))
    (define gxc#xform-lambda%
      (lambda (_%self144632%_ _%stx144633%_)
        (let* ((_%g144635144649%_
                (lambda (_%g144636144646%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144636144646%_))))
               (_%g144634144691%_
                (lambda (_%g144636144652%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144636144652%_))
                      (let ((_%e144639144654%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144636144652%_))))
                        (let ((_%hd144640144657%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144639144654%_)))
                              (_%tl144641144659%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144639144654%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl144641144659%_))
                              (let ((_%e144642144662%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl144641144659%_))))
                                (let ((_%hd144643144665%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144642144662%_)))
                                      (_%tl144644144667%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144642144662%_))))
                                  ((lambda (_%L144670%_ _%L144671%_)
                                     (let ((__tmp146298
                                            (lambda ()
                                              (let ((_%body144689%_
                                                     (map (lambda (_%g144684144686%_)
                                                            (gxc#compile-e__1
                                                             _%self144632%_
                                                             _%g144684144686%_))
                                                          _%L144670%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#lambda
                                                       (cons _%L144671%_
                                                             _%body144689%_))
                                                 _%stx144633%_))))
                                           (__tmp146297
                                            (gxc#xform-let-locals
                                             _%L144671%_)))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp146298
                                        gxc#current-compile-local-env
                                        __tmp146297)))
                                   _%tl144644144667%_
                                   _%hd144643144665%_)))
                              (_%g144635144649%_ _%g144636144652%_))))
                      (_%g144635144649%_ _%g144636144652%_)))))
          (_%g144634144691%_ _%stx144633%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self144540%_ _%stx144541%_)
        (letrec ((_%clause-e144543%_
                  (lambda (_%clause144584%_)
                    (let* ((_%g144586144597%_
                            (lambda (_%g144587144594%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g144587144594%_))))
                           (_%g144585144629%_
                            (lambda (_%g144587144600%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g144587144600%_))
                                  (let ((_%e144590144602%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g144587144600%_))))
                                    (let ((_%hd144591144605%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e144590144602%_)))
                                          (_%tl144592144607%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e144590144602%_))))
                                      ((lambda (_%L144610%_ _%L144611%_)
                                         (let ((__tmp146300
                                                (lambda ()
                                                  (let ((_%body144627%_
                                                         (map (lambda (_%g144622144624%_)
                                                                (gxc#compile-e__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%self144540%_
                         _%g144622144624%_))
                      _%L144610%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%L144611%_
                                                          _%body144627%_))))
                                               (__tmp146299
                                                (gxc#xform-let-locals
                                                 _%L144611%_)))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp146300
                                            gxc#current-compile-local-env
                                            __tmp146299)))
                                       _%tl144592144607%_
                                       _%hd144591144605%_)))
                                  (_%g144586144597%_ _%g144587144600%_)))))
                      (_%g144585144629%_ _%clause144584%_)))))
          (let* ((_%g144545144555%_
                  (lambda (_%g144546144552%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g144546144552%_))))
                 (_%g144544144581%_
                  (lambda (_%g144546144558%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g144546144558%_))
                        (let ((_%e144548144560%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g144546144558%_))))
                          (let ((_%hd144549144563%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144548144560%_)))
                                (_%tl144550144565%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144548144560%_))))
                            ((lambda (_%L144568%_)
                               (let ((_%clauses144579%_
                                      (map _%clause-e144543%_ _%L144568%_)))
                                 (gxc#xform-wrap-source
                                  (cons '%#case-lambda _%clauses144579%_)
                                  _%stx144541%_)))
                             _%tl144550144565%_)))
                        (_%g144545144555%_ _%g144546144558%_)))))
            (_%g144544144581%_ _%stx144541%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self144294%_ _%stx144295%_)
        (let* ((_%g144297144330%_
                (lambda (_%g144298144327%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144298144327%_))))
               (_%g144296144537%_
                (lambda (_%g144298144333%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144298144333%_))
                      (let ((_%e144303144335%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144298144333%_))))
                        (let ((_%hd144304144338%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144303144335%_)))
                              (_%tl144305144340%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144303144335%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl144305144340%_))
                              (let ((_%e144306144343%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl144305144340%_))))
                                (let ((_%hd144307144346%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144306144343%_)))
                                      (_%tl144308144348%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144306144343%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd144307144346%_))
                                      (let ((_g146301_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd144307144346%_
                                                '0))))
                                        (begin
                                          (let ((_g146302_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g146301_)
                                                       (##values-length
                                                        _g146301_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g146302_ 2)))
                                                (error "Context expects 2 values"
                                                       _g146302_)))
                                          (let ((_%target144309144351%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g146301_ 0)))
                                                (_%tl144311144353%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g146301_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl144311144353%_))
                                                (letrec ((_%loop144312144356%_
                                                          (lambda (_%hd144310144359%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr144316144361%_
                           _%hd144317144363%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd144310144359%_))
                        (let ((_%e144313144366%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd144310144359%_))))
                          (let ((_%lp-hd144314144369%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144313144366%_)))
                                (_%lp-tl144315144371%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144313144366%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd144314144369%_))
                                (let ((_%e144320144374%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd144314144369%_))))
                                  (let ((_%hd144321144377%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e144320144374%_)))
                                        (_%tl144322144379%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e144320144374%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl144322144379%_))
                                        (let ((_%e144323144382%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl144322144379%_))))
                                          (let ((_%hd144324144385%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e144323144382%_)))
                                                (_%tl144325144387%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e144323144382%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl144325144387%_))
                                                (_%loop144312144356%_
                                                 _%lp-tl144315144371%_
                                                 (cons _%hd144324144385%_
                                                       _%expr144316144361%_)
                                                 (cons _%hd144321144377%_
                                                       _%hd144317144363%_))
                                                (_%g144297144330%_
                                                 _%g144298144333%_))))
                                        (_%g144297144330%_
                                         _%g144298144333%_))))
                                (_%g144297144330%_ _%g144298144333%_))))
                        (let ((_%expr144318144390%_
                               (reverse _%expr144316144361%_))
                              (_%hd144319144392%_
                               (reverse _%hd144317144363%_)))
                          ((lambda (_%L144395%_
                                    _%L144396%_
                                    _%L144397%_
                                    _%L144398%_)
                             (let* ((_%g144417144433%_
                                     (lambda (_%g144418144430%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g144418144430%_))))
                                    (_%g144416144523%_
                                     (lambda (_%g144418144436%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g144418144436%_))
                                           (let ((_g146303_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g144418144436%_
                                                     '0))))
                                             (begin
                                               (let ((_g146304_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g146303_)
                                                            (##values-length
                                                             _g146303_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g146304_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g146304_)))
                                               (let ((_%target144420144438%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g146303_
                                                         0)))
                                                     (_%tl144422144440%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g146303_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl144422144440%_))
                                                     (letrec ((_%loop144423144443%_
                                                               (lambda (_%hd144421144446%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr144427144448%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd144421144446%_))
                             (let ((_%e144424144451%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd144421144446%_))))
                               (let ((_%lp-hd144425144454%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e144424144451%_)))
                                     (_%lp-tl144426144456%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e144424144451%_))))
                                 (_%loop144423144443%_
                                  _%lp-tl144426144456%_
                                  (cons _%lp-hd144425144454%_
                                        _%expr144427144448%_))))
                             (let ((_%expr144428144459%_
                                    (reverse _%expr144427144448%_)))
                               ((lambda (_%L144462%_)
                                  (let ((__tmp146307
                                         (lambda ()
                                           (let* ((_%g144476144483%_
                                                   (lambda (_%g144477144480%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g144477144480%_))))
                                                  (_%g144475144509%_
                                                   (lambda (_%g144477144486%_)
                                                     ((lambda (_%L144488%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L144398%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L144462%_
                                  _%L144397%_))
                               (let ((__tmp146308
                                      (lambda (_%g144498144502%_
                                               _%g144499144504%_
                                               _%g144500144506%_)
                                        (cons (cons _%g144499144504%_
                                                    (cons _%g144498144502%_
                                                          '()))
                                              _%g144500144506%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp146308
                                  '()
                                  _%L144462%_
                                  _%L144397%_)))
                             _%L144488%_))
                 _%stx144295%_))
              _%g144477144486%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g144475144509%_
                                              (map (lambda (_%g144511144513%_)
                                                     (gxc#compile-e__1
                                                      _%self144294%_
                                                      _%g144511144513%_))
                                                   _%L144395%_)))))
                                        (__tmp146305
                                         (gxc#xform-let-locals
                                          (let ((__tmp146306
                                                 (lambda (_%g144515144518%_
                                                          _%g144516144520%_)
                                                   (cons _%g144515144518%_
                                                         _%g144516144520%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp146306
                                             '()
                                             _%L144397%_)))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp146307
                                     gxc#current-compile-local-env
                                     __tmp146305)))
                                _%expr144428144459%_))))))
               (_%loop144423144443%_ _%target144420144438%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g144417144433%_
                                                      _%g144418144436%_)))))
                                           (_%g144417144433%_
                                            _%g144418144436%_)))))
                               (_%g144416144523%_
                                (map (lambda (_%g144525144527%_)
                                       (gxc#compile-e__1
                                        _%self144294%_
                                        _%g144525144527%_))
                                     (let ((__tmp146309
                                            (lambda (_%g144529144532%_
                                                     _%g144530144534%_)
                                              (cons _%g144529144532%_
                                                    _%g144530144534%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp146309
                                        '()
                                        _%L144396%_))))))
                           _%tl144308144348%_
                           _%expr144318144390%_
                           _%hd144319144392%_
                           _%hd144304144338%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop144312144356%_
                                                   _%target144309144351%_
                                                   '()
                                                   '()))
                                                (_%g144297144330%_
                                                 _%g144298144333%_)))))
                                      (_%g144297144330%_ _%g144298144333%_))))
                              (_%g144297144330%_ _%g144298144333%_))))
                      (_%g144297144330%_ _%g144298144333%_)))))
          (_%g144296144537%_ _%stx144295%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self144048%_ _%stx144049%_)
        (let* ((_%g144051144084%_
                (lambda (_%g144052144081%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144052144081%_))))
               (_%g144050144291%_
                (lambda (_%g144052144087%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144052144087%_))
                      (let ((_%e144057144089%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144052144087%_))))
                        (let ((_%hd144058144092%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144057144089%_)))
                              (_%tl144059144094%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144057144089%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl144059144094%_))
                              (let ((_%e144060144097%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl144059144094%_))))
                                (let ((_%hd144061144100%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144060144097%_)))
                                      (_%tl144062144102%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144060144097%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd144061144100%_))
                                      (let ((_g146310_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd144061144100%_
                                                '0))))
                                        (begin
                                          (let ((_g146311_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g146310_)
                                                       (##values-length
                                                        _g146310_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g146311_ 2)))
                                                (error "Context expects 2 values"
                                                       _g146311_)))
                                          (let ((_%target144063144105%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g146310_ 0)))
                                                (_%tl144065144107%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g146310_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl144065144107%_))
                                                (letrec ((_%loop144066144110%_
                                                          (lambda (_%hd144064144113%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr144070144115%_
                           _%hd144071144117%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd144064144113%_))
                        (let ((_%e144067144120%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd144064144113%_))))
                          (let ((_%lp-hd144068144123%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144067144120%_)))
                                (_%lp-tl144069144125%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144067144120%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd144068144123%_))
                                (let ((_%e144074144128%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd144068144123%_))))
                                  (let ((_%hd144075144131%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e144074144128%_)))
                                        (_%tl144076144133%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e144074144128%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl144076144133%_))
                                        (let ((_%e144077144136%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl144076144133%_))))
                                          (let ((_%hd144078144139%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e144077144136%_)))
                                                (_%tl144079144141%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e144077144136%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl144079144141%_))
                                                (_%loop144066144110%_
                                                 _%lp-tl144069144125%_
                                                 (cons _%hd144078144139%_
                                                       _%expr144070144115%_)
                                                 (cons _%hd144075144131%_
                                                       _%hd144071144117%_))
                                                (_%g144051144084%_
                                                 _%g144052144087%_))))
                                        (_%g144051144084%_
                                         _%g144052144087%_))))
                                (_%g144051144084%_ _%g144052144087%_))))
                        (let ((_%expr144072144144%_
                               (reverse _%expr144070144115%_))
                              (_%hd144073144146%_
                               (reverse _%hd144071144117%_)))
                          ((lambda (_%L144149%_
                                    _%L144150%_
                                    _%L144151%_
                                    _%L144152%_)
                             (let ((__tmp146314
                                    (lambda ()
                                      (let* ((_%g144172144188%_
                                              (lambda (_%g144173144185%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g144173144185%_))))
                                             (_%g144171144270%_
                                              (lambda (_%g144173144191%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g144173144191%_))
                                                    (let ((_g146315_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g144173144191%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g146316_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g146315_)
                             (##values-length _g146315_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g146316_ 2)))
                      (error "Context expects 2 values" _g146316_)))
                (let ((_%target144175144193%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g146315_ 0)))
                      (_%tl144177144195%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g146315_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl144177144195%_))
                      (letrec ((_%loop144178144198%_
                                (lambda (_%hd144176144201%_
                                         _%expr144182144203%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd144176144201%_))
                                      (let ((_%e144179144206%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd144176144201%_))))
                                        (let ((_%lp-hd144180144209%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e144179144206%_)))
                                              (_%lp-tl144181144211%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e144179144206%_))))
                                          (_%loop144178144198%_
                                           _%lp-tl144181144211%_
                                           (cons _%lp-hd144180144209%_
                                                 _%expr144182144203%_))))
                                      (let ((_%expr144183144214%_
                                             (reverse _%expr144182144203%_)))
                                        ((lambda (_%L144217%_)
                                           (let* ((_%g144231144238%_
                                                   (lambda (_%g144232144235%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g144232144235%_))))
                                                  (_%g144230144263%_
                                                   (lambda (_%g144232144241%_)
                                                     ((lambda (_%L144243%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L144152%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L144217%_
                                  _%L144151%_))
                               (let ((__tmp146317
                                      (lambda (_%g144252144256%_
                                               _%g144253144258%_
                                               _%g144254144260%_)
                                        (cons (cons _%g144253144258%_
                                                    (cons _%g144252144256%_
                                                          '()))
                                              _%g144254144260%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp146317
                                  '()
                                  _%L144217%_
                                  _%L144151%_)))
                             _%L144243%_))
                 _%stx144049%_))
              _%g144232144241%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g144230144263%_
                                              (map (lambda (_%g144265144267%_)
                                                     (gxc#compile-e__1
                                                      _%self144048%_
                                                      _%g144265144267%_))
                                                   _%L144149%_))))
                                         _%expr144183144214%_))))))
                        (_%loop144178144198%_ _%target144175144193%_ '()))
                      (_%g144172144188%_ _%g144173144191%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g144172144188%_
                                                     _%g144173144191%_)))))
                                        (_%g144171144270%_
                                         (map (lambda (_%g144272144274%_)
                                                (gxc#compile-e__1
                                                 _%self144048%_
                                                 _%g144272144274%_))
                                              (let ((__tmp146318
                                                     (lambda (_%g144276144279%_
                                                              _%g144277144281%_)
                                                       (cons _%g144276144279%_
                                                             _%g144277144281%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp146318
                                                 '()
                                                 _%L144150%_)))))))
                                   (__tmp146312
                                    (gxc#xform-let-locals
                                     (let ((__tmp146313
                                            (lambda (_%g144283144286%_
                                                     _%g144284144288%_)
                                              (cons _%g144283144286%_
                                                    _%g144284144288%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp146313
                                        '()
                                        _%L144151%_)))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp146314
                                gxc#current-compile-local-env
                                __tmp146312)))
                           _%tl144062144102%_
                           _%expr144072144144%_
                           _%hd144073144146%_
                           _%hd144058144092%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop144066144110%_
                                                   _%target144063144105%_
                                                   '()
                                                   '()))
                                                (_%g144051144084%_
                                                 _%g144052144087%_)))))
                                      (_%g144051144084%_ _%g144052144087%_))))
                              (_%g144051144084%_ _%g144052144087%_))))
                      (_%g144051144084%_ _%g144052144087%_)))))
          (_%g144050144291%_ _%stx144049%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings143915%_)
        (letrec ((_%flatten143917%_
                  (lambda (_%maybe-lst143975%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%maybe-lst143975%_))
                        (cons _%maybe-lst143975%_ '())
                        (let _%loop143977%_ ((_%rest143979%_
                                              _%maybe-lst143975%_)
                                             (_%result143980%_ '()))
                          (let* ((_%__stx146206146207%_ _%rest143979%_)
                                 (_%g143984143996%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx146206146207%_)))))
                            (let ((_%__kont146208146209%_
                                   (lambda (_%L144034%_ _%L144035%_)
                                     (_%loop143977%_
                                      _%L144034%_
                                      (let ((__tmp146319
                                             (_%flatten143917%_ _%L144035%_)))
                                        (declare (not safe))
                                        (__foldl1
                                         cons
                                         _%result143980%_
                                         __tmp146319)))))
                                  (_%__kont146210146211%_
                                   (lambda (_%L144008%_)
                                     (cons _%L144008%_ _%result143980%_)))
                                  (_%__kont146212146213%_
                                   (lambda () _%result143980%_)))
                              (let ((_%g143982144021%_
                                     (lambda ()
                                       (let ((_%L144008%_
                                              _%__stx146206146207%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L144008%_))
                                             (_%__kont146210146211%_
                                              _%L144008%_)
                                             (_%__kont146212146213%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx146206146207%_))
                                    (let ((_%e143988144026%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx146206146207%_))))
                                      (let ((_%tl143990144031%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e143988144026%_)))
                                            (_%hd143989144029%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e143988144026%_))))
                                        (_%__kont146208146209%_
                                         _%tl143990144031%_
                                         _%hd143989144029%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g143982144021%_)))))))))))
          (let _%loop143919%_ ((_%rest143921%_
                                (_%flatten143917%_ _%bindings143915%_))
                               (_%locals143922%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-local-env))))
            (let* ((_%rest143923143934%_ _%rest143921%_)
                   (_%E143927143938%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching"
                               _%rest143923143934%_
                               '([(? identifier? id) . rest])
                               '((? identifier? id))
                               '(_)))
                      '#!void)))
              (let ((_%K143930143963%_
                     (lambda (_%rest143960%_ _%id143961%_)
                       (_%loop143919%_
                        _%rest143960%_
                        (cons (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _%id143961%_))
                              _%locals143922%_))))
                    (_%K143929143952%_
                     (lambda (_%id143950%_)
                       (cons (let ()
                               (declare (not safe))
                               (gxc#identifier-symbol _%id143950%_))
                             _%locals143922%_)))
                    (_%K143928143943%_ (lambda () _%locals143922%_)))
                (let ((_%try-match143925143957%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%rest143923143934%_))
                             (let ((_%id143955%_ _%rest143923143934%_))
                               (_%K143929143952%_ _%id143955%_))
                             (_%K143928143943%_)))))
                  (if (pair? _%rest143923143934%_)
                      (let ((_%tl143932143968%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest143923143934%_)))
                            (_%hd143931143966%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest143923143934%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd143931143966%_))
                            (let ((_%id143971%_ _%hd143931143966%_)
                                  (_%rest143973%_ _%tl143932143968%_))
                              (_%K143930143963%_ _%rest143973%_ _%id143971%_))
                            (_%K143928143943%_)))
                      (_%try-match143925143957%_)))))))))
    (define gxc#xform-operands
      (lambda (_%self143867%_ _%stx143868%_)
        (let* ((_%g143870143881%_
                (lambda (_%g143871143878%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143871143878%_))))
               (_%g143869143912%_
                (lambda (_%g143871143884%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143871143884%_))
                      (let ((_%e143874143886%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143871143884%_))))
                        (let ((_%hd143875143889%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143874143886%_)))
                              (_%tl143876143891%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143874143886%_))))
                          ((lambda (_%L143894%_ _%L143895%_)
                             (let ((_%rands143910%_
                                    (map (lambda (_%g143905143907%_)
                                           (gxc#compile-e__1
                                            _%self143867%_
                                            _%g143905143907%_))
                                         _%L143894%_)))
                               (gxc#xform-wrap-source
                                (cons _%L143895%_ _%rands143910%_)
                                _%stx143868%_)))
                           _%tl143876143891%_
                           _%hd143875143889%_)))
                      (_%g143870143881%_ _%g143871143884%_)))))
          (_%g143869143912%_ _%stx143868%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self143797%_ _%stx143798%_)
        (let* ((_%g143800143817%_
                (lambda (_%g143801143814%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143801143814%_))))
               (_%g143799143864%_
                (lambda (_%g143801143820%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143801143820%_))
                      (let ((_%e143804143822%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143801143820%_))))
                        (let ((_%hd143805143825%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143804143822%_)))
                              (_%tl143806143827%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143804143822%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl143806143827%_))
                              (let ((_%e143807143830%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl143806143827%_))))
                                (let ((_%hd143808143833%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143807143830%_)))
                                      (_%tl143809143835%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143807143830%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl143809143835%_))
                                      (let ((_%e143810143838%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl143809143835%_))))
                                        (let ((_%hd143811143841%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143810143838%_)))
                                              (_%tl143812143843%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143810143838%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl143812143843%_))
                                              ((lambda (_%L143846%_
                                                        _%L143847%_)
                                                 (let ((_%expr143862%_
                                                        (gxc#compile-e__1
                                                         _%self143797%_
                                                         _%L143846%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _%L143847%_
                                                                (cons _%expr143862%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx143798%_)))
                                               _%hd143811143841%_
                                               _%hd143808143833%_)
                                              (_%g143800143817%_
                                               _%g143801143820%_))))
                                      (_%g143800143817%_ _%g143801143820%_))))
                              (_%g143800143817%_ _%g143801143820%_))))
                      (_%g143800143817%_ _%g143801143820%_)))))
          (_%g143799143864%_ _%stx143798%_))))))
