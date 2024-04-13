(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1713001408)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx136070%_)
        (let* ((_%self136072%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e136074%_
                (let ((__tmp136270 (gxc#stx-car-e _%stx136070%_)))
                  (declare (not safe))
                  (method-ref _%self136072%_ __tmp136270))))
          (if _%$e136074%_
              ((lambda (_%method136077%_)
                 (declare (not safe))
                 (_%method136077%_ _%self136072%_ _%stx136070%_))
               _%$e136074%_)
              (let ((__tmp136272 (gxc#stx-car-e _%stx136070%_))
                    (__tmp136271
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx136070%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self136072%_
                       __tmp136272
                       __tmp136271))))))
    (define gxc#compile-e__1
      (lambda (_%self136081%_ _%stx136082%_)
        (let ((_%$e136084%_
               (let ((__tmp136273 (gxc#stx-car-e _%stx136082%_)))
                 (declare (not safe))
                 (method-ref _%self136081%_ __tmp136273))))
          (if _%$e136084%_
              ((lambda (_%method136087%_)
                 (declare (not safe))
                 (_%method136087%_ _%self136081%_ _%stx136082%_))
               _%$e136084%_)
              (let ((__tmp136275 (gxc#stx-car-e _%stx136082%_))
                    (__tmp136274
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx136082%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self136081%_
                       __tmp136275
                       __tmp136274))))))
    (define gxc#compile-e
      (lambda _g136277_
        (let ((_g136276_ (let () (declare (not safe)) (##length _g136277_))))
          (cond ((let () (declare (not safe)) (##fx= _g136276_ 1))
                 (apply gxc#compile-e__0 _g136277_))
                ((let () (declare (not safe)) (##fx= _g136276_ 2))
                 (apply gxc#compile-e__1 _g136277_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g136277_))))))
    (define gxc#stx-car-e
      (lambda (_%stx136068%_)
        (let ((__tmp136278
               (car (let () (declare (not safe)) (gx#stx-e _%stx136068%_)))))
          (declare (not safe))
          (gx#stx-e __tmp136278))))
    (define gxc#void-method (lambda (_%self136065%_ _%stx136066%_) '#!void))
    (define gxc#false-method (lambda (_%self136062%_ _%stx136063%_) '#f))
    (define gxc#true-method (lambda (_%self136059%_ _%stx136060%_) '#t))
    (define gxc#identity-method
      (lambda (_%self136056%_ _%stx136057%_) _%stx136057%_))
    (define gxc#::void-expression::t
      (let ((__tmp136279 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp136279
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args136053%_
        (apply make-instance gxc#::void-expression::t _%$args136053%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp136280
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
        (__make-promise __tmp136280)))
    (define gxc#::void-special-form::t
      (let ((__tmp136281 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp136281
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args136049%_
        (apply make-instance gxc#::void-special-form::t _%$args136049%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp136282
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
        (__make-promise __tmp136282)))
    (define gxc#::void::t
      (let ((__tmp136283
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp136283 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args136045%_
        (apply make-instance gxc#::void::t _%$args136045%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp136284
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp136284)))
    (define gxc#::false-expression::t
      (let ((__tmp136285 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp136285
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args136041%_
        (apply make-instance gxc#::false-expression::t _%$args136041%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp136286
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
        (__make-promise __tmp136286)))
    (define gxc#::false-special-form::t
      (let ((__tmp136287 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp136287
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args136037%_
        (apply make-instance gxc#::false-special-form::t _%$args136037%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp136288
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
        (__make-promise __tmp136288)))
    (define gxc#::false::t
      (let ((__tmp136289
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp136289 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args136033%_
        (apply make-instance gxc#::false::t _%$args136033%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp136290
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp136290)))
    (define gxc#::identity-expression::t
      (let ((__tmp136291 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp136291
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args136029%_
        (apply make-instance gxc#::identity-expression::t _%$args136029%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp136292
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
        (__make-promise __tmp136292)))
    (define gxc#::identity-special-form::t
      (let ((__tmp136293 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp136293
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args136025%_
        (apply make-instance gxc#::identity-special-form::t _%$args136025%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp136294
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
        (__make-promise __tmp136294)))
    (define gxc#::identity::t
      (let ((__tmp136295
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp136295
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args136021%_
        (apply make-instance gxc#::identity::t _%$args136021%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp136296
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp136296)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp136297 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp136297
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args136017%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args136017%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp136298
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
        (__make-promise __tmp136298)))
    (define gxc#::basic-xform::t
      (let ((__tmp136299
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp136299
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args136013%_
        (apply make-instance gxc#::basic-xform::t _%$args136013%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp136300
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
        (__make-promise __tmp136300)))
    (define gxc#apply-begin%
      (lambda (_%self135969%_ _%stx135970%_)
        (let* ((_%g135972135982%_
                (lambda (_%g135973135979%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135973135979%_))))
               (_%g135971136009%_
                (lambda (_%g135973135985%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135973135985%_))
                      (let ((_%e135975135987%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135973135985%_))))
                        (let ((_%hd135976135990%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135975135987%_)))
                              (_%tl135977135992%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135975135987%_))))
                          ((lambda (_%L135995%_)
                             (for-each
                              (lambda (_%g136004136006%_)
                                (gxc#compile-e__1
                                 _%self135969%_
                                 _%g136004136006%_))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L135995%_))))
                           _%tl135977135992%_)))
                      (_%g135972135982%_ _%g135973135985%_)))))
          (_%g135971136009%_ _%stx135970%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self135930%_ _%stx135931%_)
        (let* ((_%g135933135943%_
                (lambda (_%g135934135940%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135934135940%_))))
               (_%g135932135966%_
                (lambda (_%g135934135946%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135934135946%_))
                      (let ((_%e135936135948%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135934135946%_))))
                        (let ((_%hd135937135951%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135936135948%_)))
                              (_%tl135938135953%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135936135948%_))))
                          ((lambda (_%L135956%_)
                             (gxc#compile-e__1
                              _%self135930%_
                              (last _%L135956%_)))
                           _%tl135938135953%_)))
                      (_%g135933135943%_ _%g135934135946%_)))))
          (_%g135932135966%_ _%stx135931%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self135926%_ _%stx135927%_)
        (let ((__tmp136303
               (lambda () (gxc#apply-begin% _%self135926%_ _%stx135927%_)))
              (__tmp136301
               (let ((__tmp136302
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp136302 '1))))
          (declare (not safe))
          (__call-with-parameters
           __tmp136303
           gx#current-expander-phi
           __tmp136301))))
    (define gxc#apply-module%
      (lambda (_%self135865%_ _%stx135866%_)
        (let* ((_%g135868135882%_
                (lambda (_%g135869135879%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135869135879%_))))
               (_%g135867135923%_
                (lambda (_%g135869135885%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135869135885%_))
                      (let ((_%e135872135887%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135869135885%_))))
                        (let ((_%hd135873135890%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135872135887%_)))
                              (_%tl135874135892%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135872135887%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135874135892%_))
                              (let ((_%e135875135895%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135874135892%_))))
                                (let ((_%hd135876135898%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135875135895%_)))
                                      (_%tl135877135900%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135875135895%_))))
                                  ((lambda (_%L135903%_ _%L135904%_)
                                     (let* ((_%ctx135917%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L135904%_)))
                                            (_%ctx-stx135919%_
                                             (##structure-ref
                                              _%ctx135917%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp136304
                                             (lambda ()
                                               (gxc#compile-e__1
                                                _%self135865%_
                                                _%ctx-stx135919%_))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp136304
                                        gx#current-expander-context
                                        _%ctx135917%_)))
                                   _%tl135877135900%_
                                   _%hd135876135898%_)))
                              (_%g135868135882%_ _%g135869135885%_))))
                      (_%g135868135882%_ _%g135869135885%_)))))
          (_%g135867135923%_ _%stx135866%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self135797%_ _%stx135798%_)
        (let* ((_%g135800135817%_
                (lambda (_%g135801135814%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135801135814%_))))
               (_%g135799135862%_
                (lambda (_%g135801135820%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135801135820%_))
                      (let ((_%e135804135822%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135801135820%_))))
                        (let ((_%hd135805135825%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135804135822%_)))
                              (_%tl135806135827%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135804135822%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135806135827%_))
                              (let ((_%e135807135830%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135806135827%_))))
                                (let ((_%hd135808135833%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135807135830%_)))
                                      (_%tl135809135835%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135807135830%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135809135835%_))
                                      (let ((_%e135810135838%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135809135835%_))))
                                        (let ((_%hd135811135841%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135810135838%_)))
                                              (_%tl135812135843%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135810135838%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135812135843%_))
                                              ((lambda (_%L135846%_
                                                        _%L135847%_)
                                                 (gxc#compile-e__1
                                                  _%self135797%_
                                                  _%L135846%_))
                                               _%hd135811135841%_
                                               _%hd135808135833%_)
                                              (_%g135800135817%_
                                               _%g135801135820%_))))
                                      (_%g135800135817%_ _%g135801135820%_))))
                              (_%g135800135817%_ _%g135801135820%_))))
                      (_%g135800135817%_ _%g135801135820%_)))))
          (_%g135799135862%_ _%stx135798%_))))
    (define gxc#apply-define-values%
      (lambda (_%self135729%_ _%stx135730%_)
        (let* ((_%g135732135749%_
                (lambda (_%g135733135746%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135733135746%_))))
               (_%g135731135794%_
                (lambda (_%g135733135752%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135733135752%_))
                      (let ((_%e135736135754%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135733135752%_))))
                        (let ((_%hd135737135757%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135736135754%_)))
                              (_%tl135738135759%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135736135754%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135738135759%_))
                              (let ((_%e135739135762%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135738135759%_))))
                                (let ((_%hd135740135765%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135739135762%_)))
                                      (_%tl135741135767%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135739135762%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135741135767%_))
                                      (let ((_%e135742135770%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135741135767%_))))
                                        (let ((_%hd135743135773%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135742135770%_)))
                                              (_%tl135744135775%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135742135770%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135744135775%_))
                                              ((lambda (_%L135778%_
                                                        _%L135779%_)
                                                 (gxc#compile-e__1
                                                  _%self135729%_
                                                  _%L135778%_))
                                               _%hd135743135773%_
                                               _%hd135740135765%_)
                                              (_%g135732135749%_
                                               _%g135733135752%_))))
                                      (_%g135732135749%_ _%g135733135752%_))))
                              (_%g135732135749%_ _%g135733135752%_))))
                      (_%g135732135749%_ _%g135733135752%_)))))
          (_%g135731135794%_ _%stx135730%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self135660%_ _%stx135661%_)
        (let* ((_%g135663135680%_
                (lambda (_%g135664135677%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135664135677%_))))
               (_%g135662135726%_
                (lambda (_%g135664135683%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135664135683%_))
                      (let ((_%e135667135685%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135664135683%_))))
                        (let ((_%hd135668135688%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135667135685%_)))
                              (_%tl135669135690%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135667135685%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135669135690%_))
                              (let ((_%e135670135693%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135669135690%_))))
                                (let ((_%hd135671135696%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135670135693%_)))
                                      (_%tl135672135698%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135670135693%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135672135698%_))
                                      (let ((_%e135673135701%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135672135698%_))))
                                        (let ((_%hd135674135704%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135673135701%_)))
                                              (_%tl135675135706%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135673135701%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135675135706%_))
                                              ((lambda (_%L135709%_
                                                        _%L135710%_)
                                                 (let ((__tmp136307
                                                        (lambda ()
                                                          (gxc#compile-e__1
                                                           _%self135660%_
                                                           _%L135709%_)))
                                                       (__tmp136305
                                                        (let ((__tmp136306
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp136306 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp136307
                                                    gx#current-expander-phi
                                                    __tmp136305)))
                                               _%hd135674135704%_
                                               _%hd135671135696%_)
                                              (_%g135663135680%_
                                               _%g135664135683%_))))
                                      (_%g135663135680%_ _%g135664135683%_))))
                              (_%g135663135680%_ _%g135664135683%_))))
                      (_%g135663135680%_ _%g135664135683%_)))))
          (_%g135662135726%_ _%stx135661%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self135592%_ _%stx135593%_)
        (let* ((_%g135595135612%_
                (lambda (_%g135596135609%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135596135609%_))))
               (_%g135594135657%_
                (lambda (_%g135596135615%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135596135615%_))
                      (let ((_%e135599135617%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135596135615%_))))
                        (let ((_%hd135600135620%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135599135617%_)))
                              (_%tl135601135622%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135599135617%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135601135622%_))
                              (let ((_%e135602135625%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135601135622%_))))
                                (let ((_%hd135603135628%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135602135625%_)))
                                      (_%tl135604135630%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135602135625%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135604135630%_))
                                      (let ((_%e135605135633%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135604135630%_))))
                                        (let ((_%hd135606135636%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135605135633%_)))
                                              (_%tl135607135638%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135605135633%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135607135638%_))
                                              ((lambda (_%L135641%_
                                                        _%L135642%_)
                                                 (gxc#compile-e__1
                                                  _%self135592%_
                                                  _%L135641%_))
                                               _%hd135606135636%_
                                               _%hd135603135628%_)
                                              (_%g135595135612%_
                                               _%g135596135615%_))))
                                      (_%g135595135612%_ _%g135596135615%_))))
                              (_%g135595135612%_ _%g135596135615%_))))
                      (_%g135595135612%_ _%g135596135615%_)))))
          (_%g135594135657%_ _%stx135593%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self135474%_ _%stx135475%_)
        (let* ((_%g135477135505%_
                (lambda (_%g135478135502%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135478135502%_))))
               (_%g135476135589%_
                (lambda (_%g135478135508%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135478135508%_))
                      (let ((_%e135481135510%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135478135508%_))))
                        (let ((_%hd135482135513%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135481135510%_)))
                              (_%tl135483135515%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135481135510%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl135483135515%_))
                              (let ((_g136308_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl135483135515%_
                                        '0))))
                                (begin
                                  (let ((_g136309_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g136308_)
                                               (##vector-length _g136308_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g136309_ 2)))
                                        (error "Context expects 2 values"
                                               _g136309_)))
                                  (let ((_%target135484135518%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g136308_ 0)))
                                        (_%tl135486135520%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g136308_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl135486135520%_))
                                        (letrec ((_%loop135487135523%_
                                                  (lambda (_%hd135485135526%_
                                                           _%body135491135528%_
                                                           _%hd135492135530%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd135485135526%_))
                                                        (let ((_%e135488135533%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd135485135526%_))))
                  (let ((_%lp-hd135489135536%_
                         (let ()
                           (declare (not safe))
                           (##car _%e135488135533%_)))
                        (_%lp-tl135490135538%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e135488135533%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd135489135536%_))
                        (let ((_%e135495135541%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd135489135536%_))))
                          (let ((_%hd135496135544%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135495135541%_)))
                                (_%tl135497135546%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135495135541%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl135497135546%_))
                                (let ((_%e135498135549%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl135497135546%_))))
                                  (let ((_%hd135499135552%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e135498135549%_)))
                                        (_%tl135500135554%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e135498135549%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl135500135554%_))
                                        (_%loop135487135523%_
                                         _%lp-tl135490135538%_
                                         (cons _%hd135499135552%_
                                               _%body135491135528%_)
                                         (cons _%hd135496135544%_
                                               _%hd135492135530%_))
                                        (_%g135477135505%_
                                         _%g135478135508%_))))
                                (_%g135477135505%_ _%g135478135508%_))))
                        (_%g135477135505%_ _%g135478135508%_))))
                (let ((_%body135493135557%_ (reverse _%body135491135528%_))
                      (_%hd135494135559%_ (reverse _%hd135492135530%_)))
                  ((lambda (_%L135562%_ _%L135563%_)
                     (for-each
                      (lambda (_%g135577135579%_)
                        (gxc#compile-e__1 _%self135474%_ _%g135577135579%_))
                      (let ((__tmp136310
                             (lambda (_%g135581135584%_ _%g135582135586%_)
                               (cons _%g135581135584%_ _%g135582135586%_))))
                        (declare (not safe))
                        (__foldr1 __tmp136310 '() _%L135562%_))))
                   _%body135493135557%_
                   _%hd135494135559%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop135487135523%_
                                           _%target135484135518%_
                                           '()
                                           '()))
                                        (_%g135477135505%_
                                         _%g135478135508%_)))))
                              (_%g135477135505%_ _%g135478135508%_))))
                      (_%g135477135505%_ _%g135478135508%_)))))
          (_%g135476135589%_ _%stx135475%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self135327%_ _%stx135328%_)
        (let* ((_%g135330135365%_
                (lambda (_%g135331135362%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135331135362%_))))
               (_%g135329135471%_
                (lambda (_%g135331135368%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135331135368%_))
                      (let ((_%e135335135370%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135331135368%_))))
                        (let ((_%hd135336135373%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135335135370%_)))
                              (_%tl135337135375%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135335135370%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135337135375%_))
                              (let ((_%e135338135378%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135337135375%_))))
                                (let ((_%hd135339135381%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135338135378%_)))
                                      (_%tl135340135383%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135338135378%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd135339135381%_))
                                      (let ((_g136311_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd135339135381%_
                                                '0))))
                                        (begin
                                          (let ((_g136312_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g136311_)
                                                       (##vector-length
                                                        _g136311_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g136312_ 2)))
                                                (error "Context expects 2 values"
                                                       _g136312_)))
                                          (let ((_%target135341135386%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g136311_ 0)))
                                                (_%tl135343135388%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g136311_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl135343135388%_))
                                                (letrec ((_%loop135344135391%_
                                                          (lambda (_%hd135342135394%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr135348135396%_
                           _%hd135349135398%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd135342135394%_))
                        (let ((_%e135345135401%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd135342135394%_))))
                          (let ((_%lp-hd135346135404%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135345135401%_)))
                                (_%lp-tl135347135406%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135345135401%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd135346135404%_))
                                (let ((_%e135355135409%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd135346135404%_))))
                                  (let ((_%hd135356135412%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e135355135409%_)))
                                        (_%tl135357135414%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e135355135409%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl135357135414%_))
                                        (let ((_%e135358135417%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl135357135414%_))))
                                          (let ((_%hd135359135420%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e135358135417%_)))
                                                (_%tl135360135422%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e135358135417%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl135360135422%_))
                                                (_%loop135344135391%_
                                                 _%lp-tl135347135406%_
                                                 (cons _%hd135359135420%_
                                                       _%expr135348135396%_)
                                                 (cons _%hd135356135412%_
                                                       _%hd135349135398%_))
                                                (_%g135330135365%_
                                                 _%g135331135368%_))))
                                        (_%g135330135365%_
                                         _%g135331135368%_))))
                                (_%g135330135365%_ _%g135331135368%_))))
                        (let ((_%expr135350135425%_
                               (reverse _%expr135348135396%_))
                              (_%hd135351135427%_
                               (reverse _%hd135349135398%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135340135383%_))
                              (let ((_%e135352135430%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135340135383%_))))
                                (let ((_%hd135353135433%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135352135430%_)))
                                      (_%tl135354135435%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135352135430%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl135354135435%_))
                                      ((lambda (_%L135438%_
                                                _%L135439%_
                                                _%L135440%_)
                                         (for-each
                                          (lambda (_%g135459135461%_)
                                            (gxc#compile-e__1
                                             _%self135327%_
                                             _%g135459135461%_))
                                          (let ((__tmp136314
                                                 (lambda (_%g135463135466%_
                                                          _%g135464135468%_)
                                                   (cons _%g135463135466%_
                                                         _%g135464135468%_)))
                                                (__tmp136313
                                                 (cons _%L135438%_ '())))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp136314
                                             __tmp136313
                                             _%L135439%_))))
                                       _%hd135353135433%_
                                       _%expr135350135425%_
                                       _%hd135351135427%_)
                                      (_%g135330135365%_ _%g135331135368%_))))
                              (_%g135330135365%_ _%g135331135368%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop135344135391%_
                                                   _%target135341135386%_
                                                   '()
                                                   '()))
                                                (_%g135330135365%_
                                                 _%g135331135368%_)))))
                                      (_%g135330135365%_ _%g135331135368%_))))
                              (_%g135330135365%_ _%g135331135368%_))))
                      (_%g135330135365%_ _%g135331135368%_)))))
          (_%g135329135471%_ _%stx135328%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self135272%_ _%stx135273%_)
        (let* ((_%g135275135289%_
                (lambda (_%g135276135286%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135276135286%_))))
               (_%g135274135324%_
                (lambda (_%g135276135292%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135276135292%_))
                      (let ((_%e135279135294%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135276135292%_))))
                        (let ((_%hd135280135297%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135279135294%_)))
                              (_%tl135281135299%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135279135294%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135281135299%_))
                              (let ((_%e135282135302%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135281135299%_))))
                                (let ((_%hd135283135305%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135282135302%_)))
                                      (_%tl135284135307%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135282135302%_))))
                                  ((lambda (_%L135310%_ _%L135311%_)
                                     (gxc#compile-e__1
                                      _%self135272%_
                                      (last _%L135310%_)))
                                   _%tl135284135307%_
                                   _%hd135283135305%_)))
                              (_%g135275135289%_ _%g135276135292%_))))
                      (_%g135275135289%_ _%g135276135292%_)))))
          (_%g135274135324%_ _%stx135273%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self135204%_ _%stx135205%_)
        (let* ((_%g135207135224%_
                (lambda (_%g135208135221%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135208135221%_))))
               (_%g135206135269%_
                (lambda (_%g135208135227%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135208135227%_))
                      (let ((_%e135211135229%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135208135227%_))))
                        (let ((_%hd135212135232%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135211135229%_)))
                              (_%tl135213135234%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135211135229%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135213135234%_))
                              (let ((_%e135214135237%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135213135234%_))))
                                (let ((_%hd135215135240%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135214135237%_)))
                                      (_%tl135216135242%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135214135237%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135216135242%_))
                                      (let ((_%e135217135245%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135216135242%_))))
                                        (let ((_%hd135218135248%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135217135245%_)))
                                              (_%tl135219135250%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135217135245%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135219135250%_))
                                              ((lambda (_%L135253%_
                                                        _%L135254%_)
                                                 (gxc#compile-e__1
                                                  _%self135204%_
                                                  _%L135253%_))
                                               _%hd135218135248%_
                                               _%hd135215135240%_)
                                              (_%g135207135224%_
                                               _%g135208135227%_))))
                                      (_%g135207135224%_ _%g135208135227%_))))
                              (_%g135207135224%_ _%g135208135227%_))))
                      (_%g135207135224%_ _%g135208135227%_)))))
          (_%g135206135269%_ _%stx135205%_))))
    (define gxc#apply-operands
      (lambda (_%self135117%_ _%stx135118%_)
        (let* ((_%g135120135139%_
                (lambda (_%g135121135136%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135121135136%_))))
               (_%g135119135201%_
                (lambda (_%g135121135142%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135121135142%_))
                      (let ((_%e135123135144%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135121135142%_))))
                        (let ((_%hd135124135147%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135123135144%_)))
                              (_%tl135125135149%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135123135144%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl135125135149%_))
                              (let ((_g136315_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl135125135149%_
                                        '0))))
                                (begin
                                  (let ((_g136316_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g136315_)
                                               (##vector-length _g136315_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g136316_ 2)))
                                        (error "Context expects 2 values"
                                               _g136316_)))
                                  (let ((_%target135126135152%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g136315_ 0)))
                                        (_%tl135128135154%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g136315_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl135128135154%_))
                                        (letrec ((_%loop135129135157%_
                                                  (lambda (_%hd135127135160%_
                                                           _%rands135133135162%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd135127135160%_))
                                                        (let ((_%e135130135165%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd135127135160%_))))
                  (let ((_%lp-hd135131135168%_
                         (let ()
                           (declare (not safe))
                           (##car _%e135130135165%_)))
                        (_%lp-tl135132135170%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e135130135165%_))))
                    (_%loop135129135157%_
                     _%lp-tl135132135170%_
                     (cons _%lp-hd135131135168%_ _%rands135133135162%_))))
                (let ((_%rands135134135173%_ (reverse _%rands135133135162%_)))
                  ((lambda (_%L135176%_)
                     (for-each
                      (lambda (_%g135189135191%_)
                        (gxc#compile-e__1 _%self135117%_ _%g135189135191%_))
                      (let ((__tmp136317
                             (lambda (_%g135193135196%_ _%g135194135198%_)
                               (cons _%g135193135196%_ _%g135194135198%_))))
                        (declare (not safe))
                        (__foldr1 __tmp136317 '() _%L135176%_))))
                   _%rands135134135173%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop135129135157%_
                                           _%target135126135152%_
                                           '()))
                                        (_%g135120135139%_
                                         _%g135121135142%_)))))
                              (_%g135120135139%_ _%g135121135142%_))))
                      (_%g135120135139%_ _%g135121135142%_)))))
          (_%g135119135201%_ _%stx135118%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx135114%_ _%src-stx135115%_)
        (let ((__tmp136318
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx135115%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx135114%_ __tmp136318))))
    (define gxc#xform-wrap-apply
      (lambda (_%stx135110%_ _%src-stx135111%_ _%ctx135112%_)
        (gxc#compile-e__1
         _%ctx135112%_
         (gxc#xform-wrap-source _%stx135110%_ _%src-stx135111%_))))
    (define gxc#xform-begin%
      (lambda (_%self135065%_ _%stx135066%_)
        (let* ((_%g135068135078%_
                (lambda (_%g135069135075%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135069135075%_))))
               (_%g135067135107%_
                (lambda (_%g135069135081%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135069135081%_))
                      (let ((_%e135071135083%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135069135081%_))))
                        (let ((_%hd135072135086%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135071135083%_)))
                              (_%tl135073135088%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135071135083%_))))
                          ((lambda (_%L135091%_)
                             (let ((_%forms135105%_
                                    (map (lambda (_%g135100135102%_)
                                           (gxc#compile-e__1
                                            _%self135065%_
                                            _%g135100135102%_))
                                         _%L135091%_)))
                               (gxc#xform-wrap-source
                                (cons '%#begin _%forms135105%_)
                                _%stx135066%_)))
                           _%tl135073135088%_)))
                      (_%g135068135078%_ _%g135069135081%_)))))
          (_%g135067135107%_ _%stx135066%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self135019%_ _%stx135020%_)
        (let* ((_%g135022135032%_
                (lambda (_%g135023135029%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135023135029%_))))
               (_%g135021135062%_
                (lambda (_%g135023135035%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135023135035%_))
                      (let ((_%e135025135037%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135023135035%_))))
                        (let ((_%hd135026135040%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135025135037%_)))
                              (_%tl135027135042%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135025135037%_))))
                          ((lambda (_%L135045%_)
                             (let ((__tmp136321
                                    (lambda ()
                                      (let ((_%forms135060%_
                                             (map (lambda (_%g135055135057%_)
                                                    (gxc#compile-e__1
                                                     _%self135019%_
                                                     _%g135055135057%_))
                                                  _%L135045%_)))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin-syntax _%forms135060%_)
                                         _%stx135020%_))))
                                   (__tmp136319
                                    (let ((__tmp136320
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp136320 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp136321
                                gx#current-expander-phi
                                __tmp136319)))
                           _%tl135027135042%_)))
                      (_%g135022135032%_ _%g135023135035%_)))))
          (_%g135021135062%_ _%stx135020%_))))
    (define gxc#xform-module%
      (lambda (_%self134956%_ _%stx134957%_)
        (let* ((_%g134959134973%_
                (lambda (_%g134960134970%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134960134970%_))))
               (_%g134958135016%_
                (lambda (_%g134960134976%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134960134976%_))
                      (let ((_%e134963134978%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134960134976%_))))
                        (let ((_%hd134964134981%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134963134978%_)))
                              (_%tl134965134983%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134963134978%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134965134983%_))
                              (let ((_%e134966134986%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134965134983%_))))
                                (let ((_%hd134967134989%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134966134986%_)))
                                      (_%tl134968134991%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134966134986%_))))
                                  ((lambda (_%L134994%_ _%L134995%_)
                                     (let* ((_%ctx135008%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L134995%_)))
                                            (_%code135010%_
                                             (##structure-ref
                                              _%ctx135008%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code135013%_
                                             (let ((__tmp136322
                                                    (lambda ()
                                                      (gxc#compile-e__1
                                                       _%self134956%_
                                                       _%code135010%_))))
                                               (declare (not safe))
                                               (__call-with-parameters
                                                __tmp136322
                                                gx#current-expander-context
                                                _%ctx135008%_))))
                                       (##structure-set!
                                        _%ctx135008%_
                                        _%code135013%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _%L134995%_
                                                    (cons _%code135013%_ '())))
                                        _%stx134957%_)))
                                   _%tl134968134991%_
                                   _%hd134967134989%_)))
                              (_%g134959134973%_ _%g134960134976%_))))
                      (_%g134959134973%_ _%g134960134976%_)))))
          (_%g134958135016%_ _%stx134957%_))))
    (define gxc#xform-define-values%
      (lambda (_%self134886%_ _%stx134887%_)
        (let* ((_%g134889134906%_
                (lambda (_%g134890134903%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134890134903%_))))
               (_%g134888134953%_
                (lambda (_%g134890134909%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134890134909%_))
                      (let ((_%e134893134911%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134890134909%_))))
                        (let ((_%hd134894134914%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134893134911%_)))
                              (_%tl134895134916%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134893134911%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134895134916%_))
                              (let ((_%e134896134919%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134895134916%_))))
                                (let ((_%hd134897134922%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134896134919%_)))
                                      (_%tl134898134924%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134896134919%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134898134924%_))
                                      (let ((_%e134899134927%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134898134924%_))))
                                        (let ((_%hd134900134930%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134899134927%_)))
                                              (_%tl134901134932%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134899134927%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl134901134932%_))
                                              ((lambda (_%L134935%_
                                                        _%L134936%_)
                                                 (let ((_%expr134951%_
                                                        (gxc#compile-e__1
                                                         _%self134886%_
                                                         _%L134935%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons _%L134936%_
                                                                (cons _%expr134951%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx134887%_)))
                                               _%hd134900134930%_
                                               _%hd134897134922%_)
                                              (_%g134889134906%_
                                               _%g134890134909%_))))
                                      (_%g134889134906%_ _%g134890134909%_))))
                              (_%g134889134906%_ _%g134890134909%_))))
                      (_%g134889134906%_ _%g134890134909%_)))))
          (_%g134888134953%_ _%stx134887%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self134815%_ _%stx134816%_)
        (let* ((_%g134818134835%_
                (lambda (_%g134819134832%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134819134832%_))))
               (_%g134817134883%_
                (lambda (_%g134819134838%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134819134838%_))
                      (let ((_%e134822134840%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134819134838%_))))
                        (let ((_%hd134823134843%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134822134840%_)))
                              (_%tl134824134845%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134822134840%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134824134845%_))
                              (let ((_%e134825134848%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134824134845%_))))
                                (let ((_%hd134826134851%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134825134848%_)))
                                      (_%tl134827134853%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134825134848%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134827134853%_))
                                      (let ((_%e134828134856%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134827134853%_))))
                                        (let ((_%hd134829134859%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134828134856%_)))
                                              (_%tl134830134861%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134828134856%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl134830134861%_))
                                              ((lambda (_%L134864%_
                                                        _%L134865%_)
                                                 (let ((__tmp136325
                                                        (lambda ()
                                                          (let ((_%expr134881%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#compile-e__1 _%self134815%_ _%L134864%_)))
                    (gxc#xform-wrap-source
                     (cons '%#define-syntax
                           (cons _%L134865%_ (cons _%expr134881%_ '())))
                     _%stx134816%_))))
               (__tmp136323
                (let ((__tmp136324
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp136324 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp136325
                                                    gx#current-expander-phi
                                                    __tmp136323)))
                                               _%hd134829134859%_
                                               _%hd134826134851%_)
                                              (_%g134818134835%_
                                               _%g134819134838%_))))
                                      (_%g134818134835%_ _%g134819134838%_))))
                              (_%g134818134835%_ _%g134819134838%_))))
                      (_%g134818134835%_ _%g134819134838%_)))))
          (_%g134817134883%_ _%stx134816%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self134745%_ _%stx134746%_)
        (let* ((_%g134748134765%_
                (lambda (_%g134749134762%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134749134762%_))))
               (_%g134747134812%_
                (lambda (_%g134749134768%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134749134768%_))
                      (let ((_%e134752134770%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134749134768%_))))
                        (let ((_%hd134753134773%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134752134770%_)))
                              (_%tl134754134775%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134752134770%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134754134775%_))
                              (let ((_%e134755134778%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134754134775%_))))
                                (let ((_%hd134756134781%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134755134778%_)))
                                      (_%tl134757134783%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134755134778%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134757134783%_))
                                      (let ((_%e134758134786%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134757134783%_))))
                                        (let ((_%hd134759134789%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134758134786%_)))
                                              (_%tl134760134791%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134758134786%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl134760134791%_))
                                              ((lambda (_%L134794%_
                                                        _%L134795%_)
                                                 (let ((_%expr134810%_
                                                        (gxc#compile-e__1
                                                         _%self134745%_
                                                         _%L134794%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#begin-annotation
                                                          (cons _%L134795%_
                                                                (cons _%expr134810%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx134746%_)))
                                               _%hd134759134789%_
                                               _%hd134756134781%_)
                                              (_%g134748134765%_
                                               _%g134749134768%_))))
                                      (_%g134748134765%_ _%g134749134768%_))))
                              (_%g134748134765%_ _%g134749134768%_))))
                      (_%g134748134765%_ _%g134749134768%_)))))
          (_%g134747134812%_ _%stx134746%_))))
    (define gxc#xform-lambda%
      (lambda (_%self134683%_ _%stx134684%_)
        (let* ((_%g134686134700%_
                (lambda (_%g134687134697%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134687134697%_))))
               (_%g134685134742%_
                (lambda (_%g134687134703%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134687134703%_))
                      (let ((_%e134690134705%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134687134703%_))))
                        (let ((_%hd134691134708%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134690134705%_)))
                              (_%tl134692134710%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134690134705%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134692134710%_))
                              (let ((_%e134693134713%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134692134710%_))))
                                (let ((_%hd134694134716%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134693134713%_)))
                                      (_%tl134695134718%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134693134713%_))))
                                  ((lambda (_%L134721%_ _%L134722%_)
                                     (let ((__tmp136327
                                            (lambda ()
                                              (let ((_%body134740%_
                                                     (map (lambda (_%g134735134737%_)
                                                            (gxc#compile-e__1
                                                             _%self134683%_
                                                             _%g134735134737%_))
                                                          _%L134721%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#lambda
                                                       (cons _%L134722%_
                                                             _%body134740%_))
                                                 _%stx134684%_))))
                                           (__tmp136326
                                            (gxc#xform-let-locals
                                             _%L134722%_)))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp136327
                                        gxc#current-compile-local-env
                                        __tmp136326)))
                                   _%tl134695134718%_
                                   _%hd134694134716%_)))
                              (_%g134686134700%_ _%g134687134703%_))))
                      (_%g134686134700%_ _%g134687134703%_)))))
          (_%g134685134742%_ _%stx134684%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self134591%_ _%stx134592%_)
        (letrec ((_%clause-e134594%_
                  (lambda (_%clause134635%_)
                    (let* ((_%g134637134648%_
                            (lambda (_%g134638134645%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g134638134645%_))))
                           (_%g134636134680%_
                            (lambda (_%g134638134651%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g134638134651%_))
                                  (let ((_%e134641134653%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g134638134651%_))))
                                    (let ((_%hd134642134656%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e134641134653%_)))
                                          (_%tl134643134658%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e134641134653%_))))
                                      ((lambda (_%L134661%_ _%L134662%_)
                                         (let ((__tmp136329
                                                (lambda ()
                                                  (let ((_%body134678%_
                                                         (map (lambda (_%g134673134675%_)
                                                                (gxc#compile-e__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%self134591%_
                         _%g134673134675%_))
                      _%L134661%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%L134662%_
                                                          _%body134678%_))))
                                               (__tmp136328
                                                (gxc#xform-let-locals
                                                 _%L134662%_)))
                                           (declare (not safe))
                                           (__call-with-parameters
                                            __tmp136329
                                            gxc#current-compile-local-env
                                            __tmp136328)))
                                       _%tl134643134658%_
                                       _%hd134642134656%_)))
                                  (_%g134637134648%_ _%g134638134651%_)))))
                      (_%g134636134680%_ _%clause134635%_)))))
          (let* ((_%g134596134606%_
                  (lambda (_%g134597134603%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g134597134603%_))))
                 (_%g134595134632%_
                  (lambda (_%g134597134609%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g134597134609%_))
                        (let ((_%e134599134611%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g134597134609%_))))
                          (let ((_%hd134600134614%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e134599134611%_)))
                                (_%tl134601134616%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e134599134611%_))))
                            ((lambda (_%L134619%_)
                               (let ((_%clauses134630%_
                                      (map _%clause-e134594%_ _%L134619%_)))
                                 (gxc#xform-wrap-source
                                  (cons '%#case-lambda _%clauses134630%_)
                                  _%stx134592%_)))
                             _%tl134601134616%_)))
                        (_%g134596134606%_ _%g134597134609%_)))))
            (_%g134595134632%_ _%stx134592%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self134345%_ _%stx134346%_)
        (let* ((_%g134348134381%_
                (lambda (_%g134349134378%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134349134378%_))))
               (_%g134347134588%_
                (lambda (_%g134349134384%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134349134384%_))
                      (let ((_%e134354134386%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134349134384%_))))
                        (let ((_%hd134355134389%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134354134386%_)))
                              (_%tl134356134391%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134354134386%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134356134391%_))
                              (let ((_%e134357134394%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134356134391%_))))
                                (let ((_%hd134358134397%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134357134394%_)))
                                      (_%tl134359134399%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134357134394%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd134358134397%_))
                                      (let ((_g136330_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd134358134397%_
                                                '0))))
                                        (begin
                                          (let ((_g136331_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g136330_)
                                                       (##vector-length
                                                        _g136330_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g136331_ 2)))
                                                (error "Context expects 2 values"
                                                       _g136331_)))
                                          (let ((_%target134360134402%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g136330_ 0)))
                                                (_%tl134362134404%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g136330_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl134362134404%_))
                                                (letrec ((_%loop134363134407%_
                                                          (lambda (_%hd134361134410%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr134367134412%_
                           _%hd134368134414%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd134361134410%_))
                        (let ((_%e134364134417%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd134361134410%_))))
                          (let ((_%lp-hd134365134420%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e134364134417%_)))
                                (_%lp-tl134366134422%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e134364134417%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd134365134420%_))
                                (let ((_%e134371134425%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd134365134420%_))))
                                  (let ((_%hd134372134428%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e134371134425%_)))
                                        (_%tl134373134430%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e134371134425%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl134373134430%_))
                                        (let ((_%e134374134433%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl134373134430%_))))
                                          (let ((_%hd134375134436%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e134374134433%_)))
                                                (_%tl134376134438%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e134374134433%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl134376134438%_))
                                                (_%loop134363134407%_
                                                 _%lp-tl134366134422%_
                                                 (cons _%hd134375134436%_
                                                       _%expr134367134412%_)
                                                 (cons _%hd134372134428%_
                                                       _%hd134368134414%_))
                                                (_%g134348134381%_
                                                 _%g134349134384%_))))
                                        (_%g134348134381%_
                                         _%g134349134384%_))))
                                (_%g134348134381%_ _%g134349134384%_))))
                        (let ((_%expr134369134441%_
                               (reverse _%expr134367134412%_))
                              (_%hd134370134443%_
                               (reverse _%hd134368134414%_)))
                          ((lambda (_%L134446%_
                                    _%L134447%_
                                    _%L134448%_
                                    _%L134449%_)
                             (let* ((_%g134468134484%_
                                     (lambda (_%g134469134481%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g134469134481%_))))
                                    (_%g134467134574%_
                                     (lambda (_%g134469134487%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g134469134487%_))
                                           (let ((_g136332_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g134469134487%_
                                                     '0))))
                                             (begin
                                               (let ((_g136333_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g136332_)
                                                            (##vector-length
                                                             _g136332_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g136333_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g136333_)))
                                               (let ((_%target134471134489%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g136332_
                                                         0)))
                                                     (_%tl134473134491%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g136332_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl134473134491%_))
                                                     (letrec ((_%loop134474134494%_
                                                               (lambda (_%hd134472134497%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr134478134499%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd134472134497%_))
                             (let ((_%e134475134502%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd134472134497%_))))
                               (let ((_%lp-hd134476134505%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e134475134502%_)))
                                     (_%lp-tl134477134507%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e134475134502%_))))
                                 (_%loop134474134494%_
                                  _%lp-tl134477134507%_
                                  (cons _%lp-hd134476134505%_
                                        _%expr134478134499%_))))
                             (let ((_%expr134479134510%_
                                    (reverse _%expr134478134499%_)))
                               ((lambda (_%L134513%_)
                                  (let ((__tmp136336
                                         (lambda ()
                                           (let* ((_%g134527134534%_
                                                   (lambda (_%g134528134531%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g134528134531%_))))
                                                  (_%g134526134560%_
                                                   (lambda (_%g134528134537%_)
                                                     ((lambda (_%L134539%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L134449%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L134513%_
                                  _%L134448%_))
                               (let ((__tmp136337
                                      (lambda (_%g134549134553%_
                                               _%g134550134555%_
                                               _%g134551134557%_)
                                        (cons (cons _%g134550134555%_
                                                    (cons _%g134549134553%_
                                                          '()))
                                              _%g134551134557%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp136337
                                  '()
                                  _%L134513%_
                                  _%L134448%_)))
                             _%L134539%_))
                 _%stx134346%_))
              _%g134528134537%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g134526134560%_
                                              (map (lambda (_%g134562134564%_)
                                                     (gxc#compile-e__1
                                                      _%self134345%_
                                                      _%g134562134564%_))
                                                   _%L134446%_)))))
                                        (__tmp136334
                                         (gxc#xform-let-locals
                                          (let ((__tmp136335
                                                 (lambda (_%g134566134569%_
                                                          _%g134567134571%_)
                                                   (cons _%g134566134569%_
                                                         _%g134567134571%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp136335
                                             '()
                                             _%L134448%_)))))
                                    (declare (not safe))
                                    (__call-with-parameters
                                     __tmp136336
                                     gxc#current-compile-local-env
                                     __tmp136334)))
                                _%expr134479134510%_))))))
               (_%loop134474134494%_ _%target134471134489%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g134468134484%_
                                                      _%g134469134487%_)))))
                                           (_%g134468134484%_
                                            _%g134469134487%_)))))
                               (_%g134467134574%_
                                (map (lambda (_%g134576134578%_)
                                       (gxc#compile-e__1
                                        _%self134345%_
                                        _%g134576134578%_))
                                     (let ((__tmp136338
                                            (lambda (_%g134580134583%_
                                                     _%g134581134585%_)
                                              (cons _%g134580134583%_
                                                    _%g134581134585%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp136338
                                        '()
                                        _%L134447%_))))))
                           _%tl134359134399%_
                           _%expr134369134441%_
                           _%hd134370134443%_
                           _%hd134355134389%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop134363134407%_
                                                   _%target134360134402%_
                                                   '()
                                                   '()))
                                                (_%g134348134381%_
                                                 _%g134349134384%_)))))
                                      (_%g134348134381%_ _%g134349134384%_))))
                              (_%g134348134381%_ _%g134349134384%_))))
                      (_%g134348134381%_ _%g134349134384%_)))))
          (_%g134347134588%_ _%stx134346%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self134099%_ _%stx134100%_)
        (let* ((_%g134102134135%_
                (lambda (_%g134103134132%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134103134132%_))))
               (_%g134101134342%_
                (lambda (_%g134103134138%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134103134138%_))
                      (let ((_%e134108134140%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134103134138%_))))
                        (let ((_%hd134109134143%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134108134140%_)))
                              (_%tl134110134145%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134108134140%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134110134145%_))
                              (let ((_%e134111134148%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134110134145%_))))
                                (let ((_%hd134112134151%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134111134148%_)))
                                      (_%tl134113134153%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134111134148%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd134112134151%_))
                                      (let ((_g136339_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd134112134151%_
                                                '0))))
                                        (begin
                                          (let ((_g136340_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g136339_)
                                                       (##vector-length
                                                        _g136339_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g136340_ 2)))
                                                (error "Context expects 2 values"
                                                       _g136340_)))
                                          (let ((_%target134114134156%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g136339_ 0)))
                                                (_%tl134116134158%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g136339_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl134116134158%_))
                                                (letrec ((_%loop134117134161%_
                                                          (lambda (_%hd134115134164%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr134121134166%_
                           _%hd134122134168%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd134115134164%_))
                        (let ((_%e134118134171%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd134115134164%_))))
                          (let ((_%lp-hd134119134174%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e134118134171%_)))
                                (_%lp-tl134120134176%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e134118134171%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd134119134174%_))
                                (let ((_%e134125134179%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd134119134174%_))))
                                  (let ((_%hd134126134182%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e134125134179%_)))
                                        (_%tl134127134184%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e134125134179%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl134127134184%_))
                                        (let ((_%e134128134187%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl134127134184%_))))
                                          (let ((_%hd134129134190%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e134128134187%_)))
                                                (_%tl134130134192%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e134128134187%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl134130134192%_))
                                                (_%loop134117134161%_
                                                 _%lp-tl134120134176%_
                                                 (cons _%hd134129134190%_
                                                       _%expr134121134166%_)
                                                 (cons _%hd134126134182%_
                                                       _%hd134122134168%_))
                                                (_%g134102134135%_
                                                 _%g134103134138%_))))
                                        (_%g134102134135%_
                                         _%g134103134138%_))))
                                (_%g134102134135%_ _%g134103134138%_))))
                        (let ((_%expr134123134195%_
                               (reverse _%expr134121134166%_))
                              (_%hd134124134197%_
                               (reverse _%hd134122134168%_)))
                          ((lambda (_%L134200%_
                                    _%L134201%_
                                    _%L134202%_
                                    _%L134203%_)
                             (let ((__tmp136343
                                    (lambda ()
                                      (let* ((_%g134223134239%_
                                              (lambda (_%g134224134236%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g134224134236%_))))
                                             (_%g134222134321%_
                                              (lambda (_%g134224134242%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g134224134242%_))
                                                    (let ((_g136344_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g134224134242%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g136345_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g136344_)
                             (##vector-length _g136344_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g136345_ 2)))
                      (error "Context expects 2 values" _g136345_)))
                (let ((_%target134226134244%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g136344_ 0)))
                      (_%tl134228134246%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g136344_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl134228134246%_))
                      (letrec ((_%loop134229134249%_
                                (lambda (_%hd134227134252%_
                                         _%expr134233134254%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd134227134252%_))
                                      (let ((_%e134230134257%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd134227134252%_))))
                                        (let ((_%lp-hd134231134260%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134230134257%_)))
                                              (_%lp-tl134232134262%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134230134257%_))))
                                          (_%loop134229134249%_
                                           _%lp-tl134232134262%_
                                           (cons _%lp-hd134231134260%_
                                                 _%expr134233134254%_))))
                                      (let ((_%expr134234134265%_
                                             (reverse _%expr134233134254%_)))
                                        ((lambda (_%L134268%_)
                                           (let* ((_%g134282134289%_
                                                   (lambda (_%g134283134286%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g134283134286%_))))
                                                  (_%g134281134314%_
                                                   (lambda (_%g134283134292%_)
                                                     ((lambda (_%L134294%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L134203%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L134268%_
                                  _%L134202%_))
                               (let ((__tmp136346
                                      (lambda (_%g134303134307%_
                                               _%g134304134309%_
                                               _%g134305134311%_)
                                        (cons (cons _%g134304134309%_
                                                    (cons _%g134303134307%_
                                                          '()))
                                              _%g134305134311%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp136346
                                  '()
                                  _%L134268%_
                                  _%L134202%_)))
                             _%L134294%_))
                 _%stx134100%_))
              _%g134283134292%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g134281134314%_
                                              (map (lambda (_%g134316134318%_)
                                                     (gxc#compile-e__1
                                                      _%self134099%_
                                                      _%g134316134318%_))
                                                   _%L134200%_))))
                                         _%expr134234134265%_))))))
                        (_%loop134229134249%_ _%target134226134244%_ '()))
                      (_%g134223134239%_ _%g134224134242%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g134223134239%_
                                                     _%g134224134242%_)))))
                                        (_%g134222134321%_
                                         (map (lambda (_%g134323134325%_)
                                                (gxc#compile-e__1
                                                 _%self134099%_
                                                 _%g134323134325%_))
                                              (let ((__tmp136347
                                                     (lambda (_%g134327134330%_
                                                              _%g134328134332%_)
                                                       (cons _%g134327134330%_
                                                             _%g134328134332%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp136347
                                                 '()
                                                 _%L134201%_)))))))
                                   (__tmp136341
                                    (gxc#xform-let-locals
                                     (let ((__tmp136342
                                            (lambda (_%g134334134337%_
                                                     _%g134335134339%_)
                                              (cons _%g134334134337%_
                                                    _%g134335134339%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp136342
                                        '()
                                        _%L134202%_)))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp136343
                                gxc#current-compile-local-env
                                __tmp136341)))
                           _%tl134113134153%_
                           _%expr134123134195%_
                           _%hd134124134197%_
                           _%hd134109134143%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop134117134161%_
                                                   _%target134114134156%_
                                                   '()
                                                   '()))
                                                (_%g134102134135%_
                                                 _%g134103134138%_)))))
                                      (_%g134102134135%_ _%g134103134138%_))))
                              (_%g134102134135%_ _%g134103134138%_))))
                      (_%g134102134135%_ _%g134103134138%_)))))
          (_%g134101134342%_ _%stx134100%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings133966%_)
        (letrec ((_%flatten133968%_
                  (lambda (_%maybe-lst134026%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%maybe-lst134026%_))
                        (cons _%maybe-lst134026%_ '())
                        (let _%loop134028%_ ((_%rest134030%_
                                              _%maybe-lst134026%_)
                                             (_%result134031%_ '()))
                          (let* ((_%__stx136235136236%_ _%rest134030%_)
                                 (_%g134035134047%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx136235136236%_)))))
                            (let ((_%__kont136237136238%_
                                   (lambda (_%L134085%_ _%L134086%_)
                                     (_%loop134028%_
                                      _%L134085%_
                                      (let ((__tmp136348
                                             (_%flatten133968%_ _%L134086%_)))
                                        (declare (not safe))
                                        (__foldl1
                                         cons
                                         _%result134031%_
                                         __tmp136348)))))
                                  (_%__kont136239136240%_
                                   (lambda (_%L134059%_)
                                     (cons _%L134059%_ _%result134031%_)))
                                  (_%__kont136241136242%_
                                   (lambda () _%result134031%_)))
                              (let ((_%g134033134072%_
                                     (lambda ()
                                       (let ((_%L134059%_
                                              _%__stx136235136236%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L134059%_))
                                             (_%__kont136239136240%_
                                              _%L134059%_)
                                             (_%__kont136241136242%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx136235136236%_))
                                    (let ((_%e134039134077%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx136235136236%_))))
                                      (let ((_%tl134041134082%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e134039134077%_)))
                                            (_%hd134040134080%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e134039134077%_))))
                                        (_%__kont136237136238%_
                                         _%tl134041134082%_
                                         _%hd134040134080%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g134033134072%_)))))))))))
          (let _%loop133970%_ ((_%rest133972%_
                                (_%flatten133968%_ _%bindings133966%_))
                               (_%locals133973%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-local-env))))
            (let* ((_%rest133974133985%_ _%rest133972%_)
                   (_%E133978133989%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching"
                               _%rest133974133985%_
                               '([(? identifier? id) . rest])
                               '((? identifier? id))
                               '(_)))
                      '#!void)))
              (let ((_%K133981134014%_
                     (lambda (_%rest134011%_ _%id134012%_)
                       (_%loop133970%_
                        _%rest134011%_
                        (cons (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _%id134012%_))
                              _%locals133973%_))))
                    (_%K133980134003%_
                     (lambda (_%id134001%_)
                       (cons (let ()
                               (declare (not safe))
                               (gxc#identifier-symbol _%id134001%_))
                             _%locals133973%_)))
                    (_%K133979133994%_ (lambda () _%locals133973%_)))
                (let ((_%try-match133976134008%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%rest133974133985%_))
                             (let ((_%id134006%_ _%rest133974133985%_))
                               (_%K133980134003%_ _%id134006%_))
                             (_%K133979133994%_)))))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%rest133974133985%_))
                      (let ((_%tl133983134019%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest133974133985%_)))
                            (_%hd133982134017%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest133974133985%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd133982134017%_))
                            (let ((_%id134022%_ _%hd133982134017%_)
                                  (_%rest134024%_ _%tl133983134019%_))
                              (_%K133981134014%_ _%rest134024%_ _%id134022%_))
                            (_%K133979133994%_)))
                      (_%try-match133976134008%_)))))))))
    (define gxc#xform-operands
      (lambda (_%self133918%_ _%stx133919%_)
        (let* ((_%g133921133932%_
                (lambda (_%g133922133929%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133922133929%_))))
               (_%g133920133963%_
                (lambda (_%g133922133935%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133922133935%_))
                      (let ((_%e133925133937%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133922133935%_))))
                        (let ((_%hd133926133940%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133925133937%_)))
                              (_%tl133927133942%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133925133937%_))))
                          ((lambda (_%L133945%_ _%L133946%_)
                             (let ((_%rands133961%_
                                    (map (lambda (_%g133956133958%_)
                                           (gxc#compile-e__1
                                            _%self133918%_
                                            _%g133956133958%_))
                                         _%L133945%_)))
                               (gxc#xform-wrap-source
                                (cons _%L133946%_ _%rands133961%_)
                                _%stx133919%_)))
                           _%tl133927133942%_
                           _%hd133926133940%_)))
                      (_%g133921133932%_ _%g133922133935%_)))))
          (_%g133920133963%_ _%stx133919%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self133848%_ _%stx133849%_)
        (let* ((_%g133851133868%_
                (lambda (_%g133852133865%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133852133865%_))))
               (_%g133850133915%_
                (lambda (_%g133852133871%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133852133871%_))
                      (let ((_%e133855133873%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133852133871%_))))
                        (let ((_%hd133856133876%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133855133873%_)))
                              (_%tl133857133878%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133855133873%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133857133878%_))
                              (let ((_%e133858133881%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133857133878%_))))
                                (let ((_%hd133859133884%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133858133881%_)))
                                      (_%tl133860133886%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133858133881%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133860133886%_))
                                      (let ((_%e133861133889%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133860133886%_))))
                                        (let ((_%hd133862133892%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133861133889%_)))
                                              (_%tl133863133894%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133861133889%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133863133894%_))
                                              ((lambda (_%L133897%_
                                                        _%L133898%_)
                                                 (let ((_%expr133913%_
                                                        (gxc#compile-e__1
                                                         _%self133848%_
                                                         _%L133897%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _%L133898%_
                                                                (cons _%expr133913%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx133849%_)))
                                               _%hd133862133892%_
                                               _%hd133859133884%_)
                                              (_%g133851133868%_
                                               _%g133852133871%_))))
                                      (_%g133851133868%_ _%g133852133871%_))))
                              (_%g133851133868%_ _%g133852133871%_))))
                      (_%g133851133868%_ _%g133852133871%_)))))
          (_%g133850133915%_ _%stx133849%_))))))
