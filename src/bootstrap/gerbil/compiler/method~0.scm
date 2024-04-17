(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1713044316)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx136129%_)
        (let* ((_%self136131%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e136133%_
                (let ((__tmp136329 (gxc#stx-car-e _%stx136129%_)))
                  (declare (not safe))
                  (method-ref _%self136131%_ __tmp136329))))
          (if _%$e136133%_
              ((lambda (_%method136136%_)
                 (declare (not safe))
                 (_%method136136%_ _%self136131%_ _%stx136129%_))
               _%$e136133%_)
              (let ((__tmp136331 (gxc#stx-car-e _%stx136129%_))
                    (__tmp136330
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx136129%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self136131%_
                       __tmp136331
                       __tmp136330))))))
    (define gxc#compile-e__1
      (lambda (_%self136140%_ _%stx136141%_)
        (let ((_%$e136143%_
               (let ((__tmp136332 (gxc#stx-car-e _%stx136141%_)))
                 (declare (not safe))
                 (method-ref _%self136140%_ __tmp136332))))
          (if _%$e136143%_
              ((lambda (_%method136146%_)
                 (declare (not safe))
                 (_%method136146%_ _%self136140%_ _%stx136141%_))
               _%$e136143%_)
              (let ((__tmp136334 (gxc#stx-car-e _%stx136141%_))
                    (__tmp136333
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx136141%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self136140%_
                       __tmp136334
                       __tmp136333))))))
    (define gxc#compile-e
      (lambda _g136336_
        (let ((_g136335_ (let () (declare (not safe)) (##length _g136336_))))
          (cond ((let () (declare (not safe)) (##fx= _g136335_ 1))
                 (apply gxc#compile-e__0 _g136336_))
                ((let () (declare (not safe)) (##fx= _g136335_ 2))
                 (apply gxc#compile-e__1 _g136336_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g136336_))))))
    (define gxc#stx-car-e
      (lambda (_%stx136127%_)
        (let ((__tmp136337
               (car (let () (declare (not safe)) (gx#stx-e _%stx136127%_)))))
          (declare (not safe))
          (gx#stx-e __tmp136337))))
    (define gxc#void-method (lambda (_%self136124%_ _%stx136125%_) '#!void))
    (define gxc#false-method (lambda (_%self136121%_ _%stx136122%_) '#f))
    (define gxc#true-method (lambda (_%self136118%_ _%stx136119%_) '#t))
    (define gxc#identity-method
      (lambda (_%self136115%_ _%stx136116%_) _%stx136116%_))
    (define gxc#::void-expression::t
      (let ((__tmp136338 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp136338
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args136112%_
        (apply make-instance gxc#::void-expression::t _%$args136112%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp136339
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
        (__make-promise __tmp136339)))
    (define gxc#::void-special-form::t
      (let ((__tmp136340 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp136340
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args136108%_
        (apply make-instance gxc#::void-special-form::t _%$args136108%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp136341
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
        (__make-promise __tmp136341)))
    (define gxc#::void::t
      (let ((__tmp136342
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp136342 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args136104%_
        (apply make-instance gxc#::void::t _%$args136104%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp136343
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp136343)))
    (define gxc#::false-expression::t
      (let ((__tmp136344 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp136344
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args136100%_
        (apply make-instance gxc#::false-expression::t _%$args136100%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp136345
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
        (__make-promise __tmp136345)))
    (define gxc#::false-special-form::t
      (let ((__tmp136346 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp136346
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args136096%_
        (apply make-instance gxc#::false-special-form::t _%$args136096%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp136347
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
        (__make-promise __tmp136347)))
    (define gxc#::false::t
      (let ((__tmp136348
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp136348 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args136092%_
        (apply make-instance gxc#::false::t _%$args136092%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp136349
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp136349)))
    (define gxc#::identity-expression::t
      (let ((__tmp136350 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp136350
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args136088%_
        (apply make-instance gxc#::identity-expression::t _%$args136088%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp136351
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
        (__make-promise __tmp136351)))
    (define gxc#::identity-special-form::t
      (let ((__tmp136352 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp136352
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args136084%_
        (apply make-instance gxc#::identity-special-form::t _%$args136084%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp136353
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
        (__make-promise __tmp136353)))
    (define gxc#::identity::t
      (let ((__tmp136354
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp136354
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args136080%_
        (apply make-instance gxc#::identity::t _%$args136080%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp136355
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp136355)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp136356 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp136356
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args136076%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args136076%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp136357
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
        (__make-promise __tmp136357)))
    (define gxc#::basic-xform::t
      (let ((__tmp136358
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp136358
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args136072%_
        (apply make-instance gxc#::basic-xform::t _%$args136072%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp136359
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
        (__make-promise __tmp136359)))
    (define gxc#apply-begin%
      (lambda (_%self136028%_ _%stx136029%_)
        (let* ((_%g136031136041%_
                (lambda (_%g136032136038%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136032136038%_))))
               (_%g136030136068%_
                (lambda (_%g136032136044%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136032136044%_))
                      (let ((_%e136034136046%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136032136044%_))))
                        (let ((_%hd136035136049%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136034136046%_)))
                              (_%tl136036136051%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136034136046%_))))
                          ((lambda (_%L136054%_)
                             (for-each
                              (lambda (_%g136063136065%_)
                                (gxc#compile-e__1
                                 _%self136028%_
                                 _%g136063136065%_))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L136054%_))))
                           _%tl136036136051%_)))
                      (_%g136031136041%_ _%g136032136044%_)))))
          (_%g136030136068%_ _%stx136029%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self135989%_ _%stx135990%_)
        (let* ((_%g135992136002%_
                (lambda (_%g135993135999%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135993135999%_))))
               (_%g135991136025%_
                (lambda (_%g135993136005%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135993136005%_))
                      (let ((_%e135995136007%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135993136005%_))))
                        (let ((_%hd135996136010%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135995136007%_)))
                              (_%tl135997136012%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135995136007%_))))
                          ((lambda (_%L136015%_)
                             (gxc#compile-e__1
                              _%self135989%_
                              (last _%L136015%_)))
                           _%tl135997136012%_)))
                      (_%g135992136002%_ _%g135993136005%_)))))
          (_%g135991136025%_ _%stx135990%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self135985%_ _%stx135986%_)
        (let ((__tmp136362
               (lambda () (gxc#apply-begin% _%self135985%_ _%stx135986%_)))
              (__tmp136360
               (let ((__tmp136361
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp136361 '1))))
          (declare (not safe))
          (__call-with-parameters
           __tmp136362
           gx#current-expander-phi
           __tmp136360))))
    (define gxc#apply-module%
      (lambda (_%self135924%_ _%stx135925%_)
        (let* ((_%g135927135941%_
                (lambda (_%g135928135938%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135928135938%_))))
               (_%g135926135982%_
                (lambda (_%g135928135944%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135928135944%_))
                      (let ((_%e135931135946%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135928135944%_))))
                        (let ((_%hd135932135949%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135931135946%_)))
                              (_%tl135933135951%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135931135946%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135933135951%_))
                              (let ((_%e135934135954%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135933135951%_))))
                                (let ((_%hd135935135957%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135934135954%_)))
                                      (_%tl135936135959%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135934135954%_))))
                                  ((lambda (_%L135962%_ _%L135963%_)
                                     (let* ((_%ctx135976%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L135963%_)))
                                            (_%ctx-stx135978%_
                                             (##structure-ref
                                              _%ctx135976%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp136363
                                             (lambda ()
                                               (gxc#compile-e__1
                                                _%self135924%_
                                                _%ctx-stx135978%_))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp136363
                                        gx#current-expander-context
                                        _%ctx135976%_)))
                                   _%tl135936135959%_
                                   _%hd135935135957%_)))
                              (_%g135927135941%_ _%g135928135944%_))))
                      (_%g135927135941%_ _%g135928135944%_)))))
          (_%g135926135982%_ _%stx135925%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self135856%_ _%stx135857%_)
        (let* ((_%g135859135876%_
                (lambda (_%g135860135873%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135860135873%_))))
               (_%g135858135921%_
                (lambda (_%g135860135879%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135860135879%_))
                      (let ((_%e135863135881%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135860135879%_))))
                        (let ((_%hd135864135884%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135863135881%_)))
                              (_%tl135865135886%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135863135881%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135865135886%_))
                              (let ((_%e135866135889%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135865135886%_))))
                                (let ((_%hd135867135892%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135866135889%_)))
                                      (_%tl135868135894%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135866135889%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135868135894%_))
                                      (let ((_%e135869135897%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135868135894%_))))
                                        (let ((_%hd135870135900%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135869135897%_)))
                                              (_%tl135871135902%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135869135897%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135871135902%_))
                                              ((lambda (_%L135905%_
                                                        _%L135906%_)
                                                 (gxc#compile-e__1
                                                  _%self135856%_
                                                  _%L135905%_))
                                               _%hd135870135900%_
                                               _%hd135867135892%_)
                                              (_%g135859135876%_
                                               _%g135860135879%_))))
                                      (_%g135859135876%_ _%g135860135879%_))))
                              (_%g135859135876%_ _%g135860135879%_))))
                      (_%g135859135876%_ _%g135860135879%_)))))
          (_%g135858135921%_ _%stx135857%_))))
    (define gxc#apply-define-values%
      (lambda (_%self135788%_ _%stx135789%_)
        (let* ((_%g135791135808%_
                (lambda (_%g135792135805%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135792135805%_))))
               (_%g135790135853%_
                (lambda (_%g135792135811%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135792135811%_))
                      (let ((_%e135795135813%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135792135811%_))))
                        (let ((_%hd135796135816%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135795135813%_)))
                              (_%tl135797135818%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135795135813%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135797135818%_))
                              (let ((_%e135798135821%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135797135818%_))))
                                (let ((_%hd135799135824%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135798135821%_)))
                                      (_%tl135800135826%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135798135821%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135800135826%_))
                                      (let ((_%e135801135829%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135800135826%_))))
                                        (let ((_%hd135802135832%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135801135829%_)))
                                              (_%tl135803135834%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135801135829%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135803135834%_))
                                              ((lambda (_%L135837%_
                                                        _%L135838%_)
                                                 (gxc#compile-e__1
                                                  _%self135788%_
                                                  _%L135837%_))
                                               _%hd135802135832%_
                                               _%hd135799135824%_)
                                              (_%g135791135808%_
                                               _%g135792135811%_))))
                                      (_%g135791135808%_ _%g135792135811%_))))
                              (_%g135791135808%_ _%g135792135811%_))))
                      (_%g135791135808%_ _%g135792135811%_)))))
          (_%g135790135853%_ _%stx135789%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self135719%_ _%stx135720%_)
        (let* ((_%g135722135739%_
                (lambda (_%g135723135736%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135723135736%_))))
               (_%g135721135785%_
                (lambda (_%g135723135742%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135723135742%_))
                      (let ((_%e135726135744%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135723135742%_))))
                        (let ((_%hd135727135747%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135726135744%_)))
                              (_%tl135728135749%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135726135744%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135728135749%_))
                              (let ((_%e135729135752%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135728135749%_))))
                                (let ((_%hd135730135755%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135729135752%_)))
                                      (_%tl135731135757%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135729135752%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135731135757%_))
                                      (let ((_%e135732135760%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135731135757%_))))
                                        (let ((_%hd135733135763%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135732135760%_)))
                                              (_%tl135734135765%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135732135760%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135734135765%_))
                                              ((lambda (_%L135768%_
                                                        _%L135769%_)
                                                 (let ((__tmp136366
                                                        (lambda ()
                                                          (gxc#compile-e__1
                                                           _%self135719%_
                                                           _%L135768%_)))
                                                       (__tmp136364
                                                        (let ((__tmp136365
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp136365 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp136366
                                                    gx#current-expander-phi
                                                    __tmp136364)))
                                               _%hd135733135763%_
                                               _%hd135730135755%_)
                                              (_%g135722135739%_
                                               _%g135723135742%_))))
                                      (_%g135722135739%_ _%g135723135742%_))))
                              (_%g135722135739%_ _%g135723135742%_))))
                      (_%g135722135739%_ _%g135723135742%_)))))
          (_%g135721135785%_ _%stx135720%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self135651%_ _%stx135652%_)
        (let* ((_%g135654135671%_
                (lambda (_%g135655135668%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135655135668%_))))
               (_%g135653135716%_
                (lambda (_%g135655135674%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135655135674%_))
                      (let ((_%e135658135676%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135655135674%_))))
                        (let ((_%hd135659135679%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135658135676%_)))
                              (_%tl135660135681%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135658135676%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135660135681%_))
                              (let ((_%e135661135684%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135660135681%_))))
                                (let ((_%hd135662135687%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135661135684%_)))
                                      (_%tl135663135689%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135661135684%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135663135689%_))
                                      (let ((_%e135664135692%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135663135689%_))))
                                        (let ((_%hd135665135695%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135664135692%_)))
                                              (_%tl135666135697%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135664135692%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135666135697%_))
                                              ((lambda (_%L135700%_
                                                        _%L135701%_)
                                                 (gxc#compile-e__1
                                                  _%self135651%_
                                                  _%L135700%_))
                                               _%hd135665135695%_
                                               _%hd135662135687%_)
                                              (_%g135654135671%_
                                               _%g135655135674%_))))
                                      (_%g135654135671%_ _%g135655135674%_))))
                              (_%g135654135671%_ _%g135655135674%_))))
                      (_%g135654135671%_ _%g135655135674%_)))))
          (_%g135653135716%_ _%stx135652%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self135533%_ _%stx135534%_)
        (let* ((_%g135536135564%_
                (lambda (_%g135537135561%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135537135561%_))))
               (_%g135535135648%_
                (lambda (_%g135537135567%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135537135567%_))
                      (let ((_%e135540135569%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135537135567%_))))
                        (let ((_%hd135541135572%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135540135569%_)))
                              (_%tl135542135574%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135540135569%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl135542135574%_))
                              (let ((_g136367_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl135542135574%_
                                        '0))))
                                (begin
                                  (let ((_g136368_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g136367_)
                                               (##vector-length _g136367_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g136368_ 2)))
                                        (error "Context expects 2 values"
                                               _g136368_)))
                                  (let ((_%target135543135577%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g136367_ 0)))
                                        (_%tl135545135579%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g136367_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl135545135579%_))
                                        (letrec ((_%loop135546135582%_
                                                  (lambda (_%hd135544135585%_
                                                           _%body135550135587%_
                                                           _%hd135551135589%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd135544135585%_))
                                                        (let ((_%e135547135592%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd135544135585%_))))
                  (let ((_%lp-hd135548135595%_
                         (let ()
                           (declare (not safe))
                           (##car _%e135547135592%_)))
                        (_%lp-tl135549135597%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e135547135592%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd135548135595%_))
                        (let ((_%e135554135600%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd135548135595%_))))
                          (let ((_%hd135555135603%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135554135600%_)))
                                (_%tl135556135605%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135554135600%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl135556135605%_))
                                (let ((_%e135557135608%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl135556135605%_))))
                                  (let ((_%hd135558135611%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e135557135608%_)))
                                        (_%tl135559135613%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e135557135608%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl135559135613%_))
                                        (_%loop135546135582%_
                                         _%lp-tl135549135597%_
                                         (cons _%hd135558135611%_
                                               _%body135550135587%_)
                                         (cons _%hd135555135603%_
                                               _%hd135551135589%_))
                                        (_%g135536135564%_
                                         _%g135537135567%_))))
                                (_%g135536135564%_ _%g135537135567%_))))
                        (_%g135536135564%_ _%g135537135567%_))))
                (let ((_%body135552135616%_ (reverse _%body135550135587%_))
                      (_%hd135553135618%_ (reverse _%hd135551135589%_)))
                  ((lambda (_%L135621%_ _%L135622%_)
                     (for-each
                      (lambda (_%g135636135638%_)
                        (gxc#compile-e__1 _%self135533%_ _%g135636135638%_))
                      (let ((__tmp136369
                             (lambda (_%g135640135643%_ _%g135641135645%_)
                               (cons _%g135640135643%_ _%g135641135645%_))))
                        (declare (not safe))
                        (__foldr1 __tmp136369 '() _%L135621%_))))
                   _%body135552135616%_
                   _%hd135553135618%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop135546135582%_
                                           _%target135543135577%_
                                           '()
                                           '()))
                                        (_%g135536135564%_
                                         _%g135537135567%_)))))
                              (_%g135536135564%_ _%g135537135567%_))))
                      (_%g135536135564%_ _%g135537135567%_)))))
          (_%g135535135648%_ _%stx135534%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self135386%_ _%stx135387%_)
        (let* ((_%g135389135424%_
                (lambda (_%g135390135421%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135390135421%_))))
               (_%g135388135530%_
                (lambda (_%g135390135427%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135390135427%_))
                      (let ((_%e135394135429%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135390135427%_))))
                        (let ((_%hd135395135432%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135394135429%_)))
                              (_%tl135396135434%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135394135429%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135396135434%_))
                              (let ((_%e135397135437%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135396135434%_))))
                                (let ((_%hd135398135440%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135397135437%_)))
                                      (_%tl135399135442%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135397135437%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd135398135440%_))
                                      (let ((_g136370_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd135398135440%_
                                                '0))))
                                        (begin
                                          (let ((_g136371_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g136370_)
                                                       (##vector-length
                                                        _g136370_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g136371_ 2)))
                                                (error "Context expects 2 values"
                                                       _g136371_)))
                                          (let ((_%target135400135445%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g136370_ 0)))
                                                (_%tl135402135447%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g136370_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl135402135447%_))
                                                (letrec ((_%loop135403135450%_
                                                          (lambda (_%hd135401135453%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr135407135455%_
                           _%hd135408135457%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd135401135453%_))
                        (let ((_%e135404135460%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd135401135453%_))))
                          (let ((_%lp-hd135405135463%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135404135460%_)))
                                (_%lp-tl135406135465%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135404135460%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd135405135463%_))
                                (let ((_%e135414135468%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd135405135463%_))))
                                  (let ((_%hd135415135471%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e135414135468%_)))
                                        (_%tl135416135473%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e135414135468%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl135416135473%_))
                                        (let ((_%e135417135476%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl135416135473%_))))
                                          (let ((_%hd135418135479%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e135417135476%_)))
                                                (_%tl135419135481%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e135417135476%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl135419135481%_))
                                                (_%loop135403135450%_
                                                 _%lp-tl135406135465%_
                                                 (cons _%hd135418135479%_
                                                       _%expr135407135455%_)
                                                 (cons _%hd135415135471%_
                                                       _%hd135408135457%_))
                                                (_%g135389135424%_
                                                 _%g135390135427%_))))
                                        (_%g135389135424%_
                                         _%g135390135427%_))))
                                (_%g135389135424%_ _%g135390135427%_))))
                        (let ((_%expr135409135484%_
                               (reverse _%expr135407135455%_))
                              (_%hd135410135486%_
                               (reverse _%hd135408135457%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135399135442%_))
                              (let ((_%e135411135489%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135399135442%_))))
                                (let ((_%hd135412135492%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135411135489%_)))
                                      (_%tl135413135494%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135411135489%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl135413135494%_))
                                      ((lambda (_%L135497%_
                                                _%L135498%_
                                                _%L135499%_)
                                         (for-each
                                          (lambda (_%g135518135520%_)
                                            (gxc#compile-e__1
                                             _%self135386%_
                                             _%g135518135520%_))
                                          (let ((__tmp136373
                                                 (lambda (_%g135522135525%_
                                                          _%g135523135527%_)
                                                   (cons _%g135522135525%_
                                                         _%g135523135527%_)))
                                                (__tmp136372
                                                 (cons _%L135497%_ '())))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp136373
                                             __tmp136372
                                             _%L135498%_))))
                                       _%hd135412135492%_
                                       _%expr135409135484%_
                                       _%hd135410135486%_)
                                      (_%g135389135424%_ _%g135390135427%_))))
                              (_%g135389135424%_ _%g135390135427%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop135403135450%_
                                                   _%target135400135445%_
                                                   '()
                                                   '()))
                                                (_%g135389135424%_
                                                 _%g135390135427%_)))))
                                      (_%g135389135424%_ _%g135390135427%_))))
                              (_%g135389135424%_ _%g135390135427%_))))
                      (_%g135389135424%_ _%g135390135427%_)))))
          (_%g135388135530%_ _%stx135387%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self135331%_ _%stx135332%_)
        (let* ((_%g135334135348%_
                (lambda (_%g135335135345%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135335135345%_))))
               (_%g135333135383%_
                (lambda (_%g135335135351%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135335135351%_))
                      (let ((_%e135338135353%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135335135351%_))))
                        (let ((_%hd135339135356%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135338135353%_)))
                              (_%tl135340135358%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135338135353%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135340135358%_))
                              (let ((_%e135341135361%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135340135358%_))))
                                (let ((_%hd135342135364%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135341135361%_)))
                                      (_%tl135343135366%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135341135361%_))))
                                  ((lambda (_%L135369%_ _%L135370%_)
                                     (gxc#compile-e__1
                                      _%self135331%_
                                      (last _%L135369%_)))
                                   _%tl135343135366%_
                                   _%hd135342135364%_)))
                              (_%g135334135348%_ _%g135335135351%_))))
                      (_%g135334135348%_ _%g135335135351%_)))))
          (_%g135333135383%_ _%stx135332%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self135263%_ _%stx135264%_)
        (let* ((_%g135266135283%_
                (lambda (_%g135267135280%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135267135280%_))))
               (_%g135265135328%_
                (lambda (_%g135267135286%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135267135286%_))
                      (let ((_%e135270135288%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135267135286%_))))
                        (let ((_%hd135271135291%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135270135288%_)))
                              (_%tl135272135293%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135270135288%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135272135293%_))
                              (let ((_%e135273135296%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135272135293%_))))
                                (let ((_%hd135274135299%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135273135296%_)))
                                      (_%tl135275135301%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135273135296%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135275135301%_))
                                      (let ((_%e135276135304%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135275135301%_))))
                                        (let ((_%hd135277135307%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135276135304%_)))
                                              (_%tl135278135309%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135276135304%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135278135309%_))
                                              ((lambda (_%L135312%_
                                                        _%L135313%_)
                                                 (gxc#compile-e__1
                                                  _%self135263%_
                                                  _%L135312%_))
                                               _%hd135277135307%_
                                               _%hd135274135299%_)
                                              (_%g135266135283%_
                                               _%g135267135286%_))))
                                      (_%g135266135283%_ _%g135267135286%_))))
                              (_%g135266135283%_ _%g135267135286%_))))
                      (_%g135266135283%_ _%g135267135286%_)))))
          (_%g135265135328%_ _%stx135264%_))))
    (define gxc#apply-operands
      (lambda (_%self135176%_ _%stx135177%_)
        (let* ((_%g135179135198%_
                (lambda (_%g135180135195%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135180135195%_))))
               (_%g135178135260%_
                (lambda (_%g135180135201%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135180135201%_))
                      (let ((_%e135182135203%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135180135201%_))))
                        (let ((_%hd135183135206%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135182135203%_)))
                              (_%tl135184135208%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135182135203%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl135184135208%_))
                              (let ((_g136374_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl135184135208%_
                                        '0))))
                                (begin
                                  (let ((_g136375_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g136374_)
                                               (##vector-length _g136374_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g136375_ 2)))
                                        (error "Context expects 2 values"
                                               _g136375_)))
                                  (let ((_%target135185135211%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g136374_ 0)))
                                        (_%tl135187135213%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g136374_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl135187135213%_))
                                        (letrec ((_%loop135188135216%_
                                                  (lambda (_%hd135186135219%_
                                                           _%rands135192135221%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd135186135219%_))
                                                        (let ((_%e135189135224%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd135186135219%_))))
                  (let ((_%lp-hd135190135227%_
                         (let ()
                           (declare (not safe))
                           (##car _%e135189135224%_)))
                        (_%lp-tl135191135229%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e135189135224%_))))
                    (_%loop135188135216%_
                     _%lp-tl135191135229%_
                     (cons _%lp-hd135190135227%_ _%rands135192135221%_))))
                (let ((_%rands135193135232%_ (reverse _%rands135192135221%_)))
                  ((lambda (_%L135235%_)
                     (for-each
                      (lambda (_%g135248135250%_)
                        (gxc#compile-e__1 _%self135176%_ _%g135248135250%_))
                      (let ((__tmp136376
                             (lambda (_%g135252135255%_ _%g135253135257%_)
                               (cons _%g135252135255%_ _%g135253135257%_))))
                        (declare (not safe))
                        (__foldr1 __tmp136376 '() _%L135235%_))))
                   _%rands135193135232%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop135188135216%_
                                           _%target135185135211%_
                                           '()))
                                        (_%g135179135198%_
                                         _%g135180135201%_)))))
                              (_%g135179135198%_ _%g135180135201%_))))
                      (_%g135179135198%_ _%g135180135201%_)))))
          (_%g135178135260%_ _%stx135177%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx135173%_ _%src-stx135174%_)
        (let ((__tmp136377
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx135174%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx135173%_ __tmp136377))))
    (define gxc#xform-wrap-apply
      (lambda (_%stx135169%_ _%src-stx135170%_ _%ctx135171%_)
        (gxc#compile-e__1
         _%ctx135171%_
         (gxc#xform-wrap-source _%stx135169%_ _%src-stx135170%_))))
    (define gxc#xform-begin%
      (lambda (_%self135124%_ _%stx135125%_)
        (let* ((_%g135127135137%_
                (lambda (_%g135128135134%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135128135134%_))))
               (_%g135126135166%_
                (lambda (_%g135128135140%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135128135140%_))
                      (let ((_%e135130135142%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135128135140%_))))
                        (let ((_%hd135131135145%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135130135142%_)))
                              (_%tl135132135147%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135130135142%_))))
                          ((lambda (_%L135150%_)
                             (let ((_%forms135164%_
                                    (map (lambda (_%g135159135161%_)
                                           (gxc#compile-e__1
                                            _%self135124%_
                                            _%g135159135161%_))
                                         _%L135150%_)))
                               (gxc#xform-wrap-source
                                (cons '%#begin _%forms135164%_)
                                _%stx135125%_)))
                           _%tl135132135147%_)))
                      (_%g135127135137%_ _%g135128135140%_)))))
          (_%g135126135166%_ _%stx135125%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self135078%_ _%stx135079%_)
        (let* ((_%g135081135091%_
                (lambda (_%g135082135088%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135082135088%_))))
               (_%g135080135121%_
                (lambda (_%g135082135094%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135082135094%_))
                      (let ((_%e135084135096%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135082135094%_))))
                        (let ((_%hd135085135099%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135084135096%_)))
                              (_%tl135086135101%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135084135096%_))))
                          ((lambda (_%L135104%_)
                             (let ((__tmp136380
                                    (lambda ()
                                      (let ((_%forms135119%_
                                             (map (lambda (_%g135114135116%_)
                                                    (gxc#compile-e__1
                                                     _%self135078%_
                                                     _%g135114135116%_))
                                                  _%L135104%_)))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin-syntax _%forms135119%_)
                                         _%stx135079%_))))
                                   (__tmp136378
                                    (let ((__tmp136379
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp136379 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp136380
                                gx#current-expander-phi
                                __tmp136378)))
                           _%tl135086135101%_)))
                      (_%g135081135091%_ _%g135082135094%_)))))
          (_%g135080135121%_ _%stx135079%_))))
    (define gxc#xform-module%
      (lambda (_%self135015%_ _%stx135016%_)
        (let* ((_%g135018135032%_
                (lambda (_%g135019135029%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135019135029%_))))
               (_%g135017135075%_
                (lambda (_%g135019135035%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135019135035%_))
                      (let ((_%e135022135037%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135019135035%_))))
                        (let ((_%hd135023135040%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135022135037%_)))
                              (_%tl135024135042%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135022135037%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135024135042%_))
                              (let ((_%e135025135045%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135024135042%_))))
                                (let ((_%hd135026135048%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135025135045%_)))
                                      (_%tl135027135050%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135025135045%_))))
                                  ((lambda (_%L135053%_ _%L135054%_)
                                     (let* ((_%ctx135067%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L135054%_)))
                                            (_%code135069%_
                                             (##structure-ref
                                              _%ctx135067%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code135072%_
                                             (let ((__tmp136381
                                                    (lambda ()
                                                      (gxc#compile-e__1
                                                       _%self135015%_
                                                       _%code135069%_))))
                                               (declare (not safe))
                                               (__call-with-parameters
                                                __tmp136381
                                                gx#current-expander-context
                                                _%ctx135067%_))))
                                       (##structure-set!
                                        _%ctx135067%_
                                        _%code135072%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _%L135054%_
                                                    (cons _%code135072%_ '())))
                                        _%stx135016%_)))
                                   _%tl135027135050%_
                                   _%hd135026135048%_)))
                              (_%g135018135032%_ _%g135019135035%_))))
                      (_%g135018135032%_ _%g135019135035%_)))))
          (_%g135017135075%_ _%stx135016%_))))
    (define gxc#xform-define-values%
      (lambda (_%self134945%_ _%stx134946%_)
        (let* ((_%g134948134965%_
                (lambda (_%g134949134962%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134949134962%_))))
               (_%g134947135012%_
                (lambda (_%g134949134968%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134949134968%_))
                      (let ((_%e134952134970%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134949134968%_))))
                        (let ((_%hd134953134973%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134952134970%_)))
                              (_%tl134954134975%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134952134970%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134954134975%_))
                              (let ((_%e134955134978%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134954134975%_))))
                                (let ((_%hd134956134981%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134955134978%_)))
                                      (_%tl134957134983%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134955134978%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134957134983%_))
                                      (let ((_%e134958134986%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134957134983%_))))
                                        (let ((_%hd134959134989%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134958134986%_)))
                                              (_%tl134960134991%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134958134986%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl134960134991%_))
                                              ((lambda (_%L134994%_
                                                        _%L134995%_)
                                                 (let ((_%expr135010%_
                                                        (gxc#compile-e__1
                                                         _%self134945%_
                                                         _%L134994%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons _%L134995%_
                                                                (cons _%expr135010%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx134946%_)))
                                               _%hd134959134989%_
                                               _%hd134956134981%_)
                                              (_%g134948134965%_
                                               _%g134949134968%_))))
                                      (_%g134948134965%_ _%g134949134968%_))))
                              (_%g134948134965%_ _%g134949134968%_))))
                      (_%g134948134965%_ _%g134949134968%_)))))
          (_%g134947135012%_ _%stx134946%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self134874%_ _%stx134875%_)
        (let* ((_%g134877134894%_
                (lambda (_%g134878134891%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134878134891%_))))
               (_%g134876134942%_
                (lambda (_%g134878134897%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134878134897%_))
                      (let ((_%e134881134899%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134878134897%_))))
                        (let ((_%hd134882134902%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134881134899%_)))
                              (_%tl134883134904%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134881134899%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134883134904%_))
                              (let ((_%e134884134907%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134883134904%_))))
                                (let ((_%hd134885134910%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134884134907%_)))
                                      (_%tl134886134912%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134884134907%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134886134912%_))
                                      (let ((_%e134887134915%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134886134912%_))))
                                        (let ((_%hd134888134918%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134887134915%_)))
                                              (_%tl134889134920%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134887134915%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl134889134920%_))
                                              ((lambda (_%L134923%_
                                                        _%L134924%_)
                                                 (let ((__tmp136384
                                                        (lambda ()
                                                          (let ((_%expr134940%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#compile-e__1 _%self134874%_ _%L134923%_)))
                    (gxc#xform-wrap-source
                     (cons '%#define-syntax
                           (cons _%L134924%_ (cons _%expr134940%_ '())))
                     _%stx134875%_))))
               (__tmp136382
                (let ((__tmp136383
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp136383 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp136384
                                                    gx#current-expander-phi
                                                    __tmp136382)))
                                               _%hd134888134918%_
                                               _%hd134885134910%_)
                                              (_%g134877134894%_
                                               _%g134878134897%_))))
                                      (_%g134877134894%_ _%g134878134897%_))))
                              (_%g134877134894%_ _%g134878134897%_))))
                      (_%g134877134894%_ _%g134878134897%_)))))
          (_%g134876134942%_ _%stx134875%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self134804%_ _%stx134805%_)
        (let* ((_%g134807134824%_
                (lambda (_%g134808134821%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134808134821%_))))
               (_%g134806134871%_
                (lambda (_%g134808134827%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134808134827%_))
                      (let ((_%e134811134829%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134808134827%_))))
                        (let ((_%hd134812134832%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134811134829%_)))
                              (_%tl134813134834%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134811134829%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134813134834%_))
                              (let ((_%e134814134837%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134813134834%_))))
                                (let ((_%hd134815134840%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134814134837%_)))
                                      (_%tl134816134842%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134814134837%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134816134842%_))
                                      (let ((_%e134817134845%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134816134842%_))))
                                        (let ((_%hd134818134848%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134817134845%_)))
                                              (_%tl134819134850%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134817134845%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl134819134850%_))
                                              ((lambda (_%L134853%_
                                                        _%L134854%_)
                                                 (let ((_%expr134869%_
                                                        (gxc#compile-e__1
                                                         _%self134804%_
                                                         _%L134853%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#begin-annotation
                                                          (cons _%L134854%_
                                                                (cons _%expr134869%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx134805%_)))
                                               _%hd134818134848%_
                                               _%hd134815134840%_)
                                              (_%g134807134824%_
                                               _%g134808134827%_))))
                                      (_%g134807134824%_ _%g134808134827%_))))
                              (_%g134807134824%_ _%g134808134827%_))))
                      (_%g134807134824%_ _%g134808134827%_)))))
          (_%g134806134871%_ _%stx134805%_))))
    (define gxc#xform-lambda%
      (lambda (_%self134742%_ _%stx134743%_)
        (let* ((_%g134745134759%_
                (lambda (_%g134746134756%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134746134756%_))))
               (_%g134744134801%_
                (lambda (_%g134746134762%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134746134762%_))
                      (let ((_%e134749134764%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134746134762%_))))
                        (let ((_%hd134750134767%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134749134764%_)))
                              (_%tl134751134769%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134749134764%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134751134769%_))
                              (let ((_%e134752134772%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134751134769%_))))
                                (let ((_%hd134753134775%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134752134772%_)))
                                      (_%tl134754134777%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134752134772%_))))
                                  ((lambda (_%L134780%_ _%L134781%_)
                                     (let ((__tmp136386
                                            (lambda ()
                                              (let ((_%body134799%_
                                                     (map (lambda (_%g134794134796%_)
                                                            (gxc#compile-e__1
                                                             _%self134742%_
                                                             _%g134794134796%_))
                                                          _%L134780%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#lambda
                                                       (cons _%L134781%_
                                                             _%body134799%_))
                                                 _%stx134743%_))))
                                           (__tmp136385
                                            (gxc#xform-let-locals
                                             _%L134781%_)))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp136386
                                        gxc#current-compile-local-env
                                        __tmp136385)))
                                   _%tl134754134777%_
                                   _%hd134753134775%_)))
                              (_%g134745134759%_ _%g134746134762%_))))
                      (_%g134745134759%_ _%g134746134762%_)))))
          (_%g134744134801%_ _%stx134743%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self134650%_ _%stx134651%_)
        (letrec ((_%clause-e134653%_
                  (lambda (_%clause134694%_)
                    (let* ((_%g134696134707%_
                            (lambda (_%g134697134704%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g134697134704%_))))
                           (_%g134695134739%_
                            (lambda (_%g134697134710%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g134697134710%_))
                                  (let ((_%e134700134712%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g134697134710%_))))
                                    (let ((_%hd134701134715%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e134700134712%_)))
                                          (_%tl134702134717%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e134700134712%_))))
                                      ((lambda (_%L134720%_ _%L134721%_)
                                         (let ((__tmp136388
                                                (lambda ()
                                                  (let ((_%body134737%_
                                                         (map (lambda (_%g134732134734%_)
                                                                (gxc#compile-e__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%self134650%_
                         _%g134732134734%_))
                      _%L134720%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%L134721%_
                                                          _%body134737%_))))
                                               (__tmp136387
                                                (gxc#xform-let-locals
                                                 _%L134721%_)))
                                           (declare (not safe))
                                           (__call-with-parameters
                                            __tmp136388
                                            gxc#current-compile-local-env
                                            __tmp136387)))
                                       _%tl134702134717%_
                                       _%hd134701134715%_)))
                                  (_%g134696134707%_ _%g134697134710%_)))))
                      (_%g134695134739%_ _%clause134694%_)))))
          (let* ((_%g134655134665%_
                  (lambda (_%g134656134662%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g134656134662%_))))
                 (_%g134654134691%_
                  (lambda (_%g134656134668%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g134656134668%_))
                        (let ((_%e134658134670%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g134656134668%_))))
                          (let ((_%hd134659134673%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e134658134670%_)))
                                (_%tl134660134675%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e134658134670%_))))
                            ((lambda (_%L134678%_)
                               (let ((_%clauses134689%_
                                      (map _%clause-e134653%_ _%L134678%_)))
                                 (gxc#xform-wrap-source
                                  (cons '%#case-lambda _%clauses134689%_)
                                  _%stx134651%_)))
                             _%tl134660134675%_)))
                        (_%g134655134665%_ _%g134656134668%_)))))
            (_%g134654134691%_ _%stx134651%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self134404%_ _%stx134405%_)
        (let* ((_%g134407134440%_
                (lambda (_%g134408134437%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134408134437%_))))
               (_%g134406134647%_
                (lambda (_%g134408134443%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134408134443%_))
                      (let ((_%e134413134445%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134408134443%_))))
                        (let ((_%hd134414134448%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134413134445%_)))
                              (_%tl134415134450%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134413134445%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134415134450%_))
                              (let ((_%e134416134453%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134415134450%_))))
                                (let ((_%hd134417134456%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134416134453%_)))
                                      (_%tl134418134458%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134416134453%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd134417134456%_))
                                      (let ((_g136389_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd134417134456%_
                                                '0))))
                                        (begin
                                          (let ((_g136390_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g136389_)
                                                       (##vector-length
                                                        _g136389_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g136390_ 2)))
                                                (error "Context expects 2 values"
                                                       _g136390_)))
                                          (let ((_%target134419134461%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g136389_ 0)))
                                                (_%tl134421134463%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g136389_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl134421134463%_))
                                                (letrec ((_%loop134422134466%_
                                                          (lambda (_%hd134420134469%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr134426134471%_
                           _%hd134427134473%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd134420134469%_))
                        (let ((_%e134423134476%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd134420134469%_))))
                          (let ((_%lp-hd134424134479%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e134423134476%_)))
                                (_%lp-tl134425134481%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e134423134476%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd134424134479%_))
                                (let ((_%e134430134484%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd134424134479%_))))
                                  (let ((_%hd134431134487%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e134430134484%_)))
                                        (_%tl134432134489%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e134430134484%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl134432134489%_))
                                        (let ((_%e134433134492%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl134432134489%_))))
                                          (let ((_%hd134434134495%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e134433134492%_)))
                                                (_%tl134435134497%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e134433134492%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl134435134497%_))
                                                (_%loop134422134466%_
                                                 _%lp-tl134425134481%_
                                                 (cons _%hd134434134495%_
                                                       _%expr134426134471%_)
                                                 (cons _%hd134431134487%_
                                                       _%hd134427134473%_))
                                                (_%g134407134440%_
                                                 _%g134408134443%_))))
                                        (_%g134407134440%_
                                         _%g134408134443%_))))
                                (_%g134407134440%_ _%g134408134443%_))))
                        (let ((_%expr134428134500%_
                               (reverse _%expr134426134471%_))
                              (_%hd134429134502%_
                               (reverse _%hd134427134473%_)))
                          ((lambda (_%L134505%_
                                    _%L134506%_
                                    _%L134507%_
                                    _%L134508%_)
                             (let* ((_%g134527134543%_
                                     (lambda (_%g134528134540%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g134528134540%_))))
                                    (_%g134526134633%_
                                     (lambda (_%g134528134546%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g134528134546%_))
                                           (let ((_g136391_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g134528134546%_
                                                     '0))))
                                             (begin
                                               (let ((_g136392_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g136391_)
                                                            (##vector-length
                                                             _g136391_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g136392_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g136392_)))
                                               (let ((_%target134530134548%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g136391_
                                                         0)))
                                                     (_%tl134532134550%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g136391_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl134532134550%_))
                                                     (letrec ((_%loop134533134553%_
                                                               (lambda (_%hd134531134556%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr134537134558%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd134531134556%_))
                             (let ((_%e134534134561%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd134531134556%_))))
                               (let ((_%lp-hd134535134564%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e134534134561%_)))
                                     (_%lp-tl134536134566%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e134534134561%_))))
                                 (_%loop134533134553%_
                                  _%lp-tl134536134566%_
                                  (cons _%lp-hd134535134564%_
                                        _%expr134537134558%_))))
                             (let ((_%expr134538134569%_
                                    (reverse _%expr134537134558%_)))
                               ((lambda (_%L134572%_)
                                  (let ((__tmp136395
                                         (lambda ()
                                           (let* ((_%g134586134593%_
                                                   (lambda (_%g134587134590%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g134587134590%_))))
                                                  (_%g134585134619%_
                                                   (lambda (_%g134587134596%_)
                                                     ((lambda (_%L134598%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L134508%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L134572%_
                                  _%L134507%_))
                               (let ((__tmp136396
                                      (lambda (_%g134608134612%_
                                               _%g134609134614%_
                                               _%g134610134616%_)
                                        (cons (cons _%g134609134614%_
                                                    (cons _%g134608134612%_
                                                          '()))
                                              _%g134610134616%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp136396
                                  '()
                                  _%L134572%_
                                  _%L134507%_)))
                             _%L134598%_))
                 _%stx134405%_))
              _%g134587134596%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g134585134619%_
                                              (map (lambda (_%g134621134623%_)
                                                     (gxc#compile-e__1
                                                      _%self134404%_
                                                      _%g134621134623%_))
                                                   _%L134505%_)))))
                                        (__tmp136393
                                         (gxc#xform-let-locals
                                          (let ((__tmp136394
                                                 (lambda (_%g134625134628%_
                                                          _%g134626134630%_)
                                                   (cons _%g134625134628%_
                                                         _%g134626134630%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp136394
                                             '()
                                             _%L134507%_)))))
                                    (declare (not safe))
                                    (__call-with-parameters
                                     __tmp136395
                                     gxc#current-compile-local-env
                                     __tmp136393)))
                                _%expr134538134569%_))))))
               (_%loop134533134553%_ _%target134530134548%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g134527134543%_
                                                      _%g134528134546%_)))))
                                           (_%g134527134543%_
                                            _%g134528134546%_)))))
                               (_%g134526134633%_
                                (map (lambda (_%g134635134637%_)
                                       (gxc#compile-e__1
                                        _%self134404%_
                                        _%g134635134637%_))
                                     (let ((__tmp136397
                                            (lambda (_%g134639134642%_
                                                     _%g134640134644%_)
                                              (cons _%g134639134642%_
                                                    _%g134640134644%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp136397
                                        '()
                                        _%L134506%_))))))
                           _%tl134418134458%_
                           _%expr134428134500%_
                           _%hd134429134502%_
                           _%hd134414134448%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop134422134466%_
                                                   _%target134419134461%_
                                                   '()
                                                   '()))
                                                (_%g134407134440%_
                                                 _%g134408134443%_)))))
                                      (_%g134407134440%_ _%g134408134443%_))))
                              (_%g134407134440%_ _%g134408134443%_))))
                      (_%g134407134440%_ _%g134408134443%_)))))
          (_%g134406134647%_ _%stx134405%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self134158%_ _%stx134159%_)
        (let* ((_%g134161134194%_
                (lambda (_%g134162134191%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134162134191%_))))
               (_%g134160134401%_
                (lambda (_%g134162134197%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134162134197%_))
                      (let ((_%e134167134199%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134162134197%_))))
                        (let ((_%hd134168134202%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134167134199%_)))
                              (_%tl134169134204%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134167134199%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134169134204%_))
                              (let ((_%e134170134207%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134169134204%_))))
                                (let ((_%hd134171134210%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134170134207%_)))
                                      (_%tl134172134212%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134170134207%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd134171134210%_))
                                      (let ((_g136398_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd134171134210%_
                                                '0))))
                                        (begin
                                          (let ((_g136399_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g136398_)
                                                       (##vector-length
                                                        _g136398_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g136399_ 2)))
                                                (error "Context expects 2 values"
                                                       _g136399_)))
                                          (let ((_%target134173134215%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g136398_ 0)))
                                                (_%tl134175134217%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g136398_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl134175134217%_))
                                                (letrec ((_%loop134176134220%_
                                                          (lambda (_%hd134174134223%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr134180134225%_
                           _%hd134181134227%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd134174134223%_))
                        (let ((_%e134177134230%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd134174134223%_))))
                          (let ((_%lp-hd134178134233%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e134177134230%_)))
                                (_%lp-tl134179134235%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e134177134230%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd134178134233%_))
                                (let ((_%e134184134238%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd134178134233%_))))
                                  (let ((_%hd134185134241%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e134184134238%_)))
                                        (_%tl134186134243%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e134184134238%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl134186134243%_))
                                        (let ((_%e134187134246%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl134186134243%_))))
                                          (let ((_%hd134188134249%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e134187134246%_)))
                                                (_%tl134189134251%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e134187134246%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl134189134251%_))
                                                (_%loop134176134220%_
                                                 _%lp-tl134179134235%_
                                                 (cons _%hd134188134249%_
                                                       _%expr134180134225%_)
                                                 (cons _%hd134185134241%_
                                                       _%hd134181134227%_))
                                                (_%g134161134194%_
                                                 _%g134162134197%_))))
                                        (_%g134161134194%_
                                         _%g134162134197%_))))
                                (_%g134161134194%_ _%g134162134197%_))))
                        (let ((_%expr134182134254%_
                               (reverse _%expr134180134225%_))
                              (_%hd134183134256%_
                               (reverse _%hd134181134227%_)))
                          ((lambda (_%L134259%_
                                    _%L134260%_
                                    _%L134261%_
                                    _%L134262%_)
                             (let ((__tmp136402
                                    (lambda ()
                                      (let* ((_%g134282134298%_
                                              (lambda (_%g134283134295%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g134283134295%_))))
                                             (_%g134281134380%_
                                              (lambda (_%g134283134301%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g134283134301%_))
                                                    (let ((_g136403_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g134283134301%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g136404_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g136403_)
                             (##vector-length _g136403_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g136404_ 2)))
                      (error "Context expects 2 values" _g136404_)))
                (let ((_%target134285134303%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g136403_ 0)))
                      (_%tl134287134305%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g136403_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl134287134305%_))
                      (letrec ((_%loop134288134308%_
                                (lambda (_%hd134286134311%_
                                         _%expr134292134313%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd134286134311%_))
                                      (let ((_%e134289134316%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd134286134311%_))))
                                        (let ((_%lp-hd134290134319%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134289134316%_)))
                                              (_%lp-tl134291134321%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134289134316%_))))
                                          (_%loop134288134308%_
                                           _%lp-tl134291134321%_
                                           (cons _%lp-hd134290134319%_
                                                 _%expr134292134313%_))))
                                      (let ((_%expr134293134324%_
                                             (reverse _%expr134292134313%_)))
                                        ((lambda (_%L134327%_)
                                           (let* ((_%g134341134348%_
                                                   (lambda (_%g134342134345%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g134342134345%_))))
                                                  (_%g134340134373%_
                                                   (lambda (_%g134342134351%_)
                                                     ((lambda (_%L134353%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L134262%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L134327%_
                                  _%L134261%_))
                               (let ((__tmp136405
                                      (lambda (_%g134362134366%_
                                               _%g134363134368%_
                                               _%g134364134370%_)
                                        (cons (cons _%g134363134368%_
                                                    (cons _%g134362134366%_
                                                          '()))
                                              _%g134364134370%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp136405
                                  '()
                                  _%L134327%_
                                  _%L134261%_)))
                             _%L134353%_))
                 _%stx134159%_))
              _%g134342134351%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g134340134373%_
                                              (map (lambda (_%g134375134377%_)
                                                     (gxc#compile-e__1
                                                      _%self134158%_
                                                      _%g134375134377%_))
                                                   _%L134259%_))))
                                         _%expr134293134324%_))))))
                        (_%loop134288134308%_ _%target134285134303%_ '()))
                      (_%g134282134298%_ _%g134283134301%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g134282134298%_
                                                     _%g134283134301%_)))))
                                        (_%g134281134380%_
                                         (map (lambda (_%g134382134384%_)
                                                (gxc#compile-e__1
                                                 _%self134158%_
                                                 _%g134382134384%_))
                                              (let ((__tmp136406
                                                     (lambda (_%g134386134389%_
                                                              _%g134387134391%_)
                                                       (cons _%g134386134389%_
                                                             _%g134387134391%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp136406
                                                 '()
                                                 _%L134260%_)))))))
                                   (__tmp136400
                                    (gxc#xform-let-locals
                                     (let ((__tmp136401
                                            (lambda (_%g134393134396%_
                                                     _%g134394134398%_)
                                              (cons _%g134393134396%_
                                                    _%g134394134398%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp136401
                                        '()
                                        _%L134261%_)))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp136402
                                gxc#current-compile-local-env
                                __tmp136400)))
                           _%tl134172134212%_
                           _%expr134182134254%_
                           _%hd134183134256%_
                           _%hd134168134202%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop134176134220%_
                                                   _%target134173134215%_
                                                   '()
                                                   '()))
                                                (_%g134161134194%_
                                                 _%g134162134197%_)))))
                                      (_%g134161134194%_ _%g134162134197%_))))
                              (_%g134161134194%_ _%g134162134197%_))))
                      (_%g134161134194%_ _%g134162134197%_)))))
          (_%g134160134401%_ _%stx134159%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings134025%_)
        (letrec ((_%flatten134027%_
                  (lambda (_%maybe-lst134085%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%maybe-lst134085%_))
                        (cons _%maybe-lst134085%_ '())
                        (let _%loop134087%_ ((_%rest134089%_
                                              _%maybe-lst134085%_)
                                             (_%result134090%_ '()))
                          (let* ((_%__stx136294136295%_ _%rest134089%_)
                                 (_%g134094134106%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx136294136295%_)))))
                            (let ((_%__kont136296136297%_
                                   (lambda (_%L134144%_ _%L134145%_)
                                     (_%loop134087%_
                                      _%L134144%_
                                      (let ((__tmp136407
                                             (_%flatten134027%_ _%L134145%_)))
                                        (declare (not safe))
                                        (__foldl1
                                         cons
                                         _%result134090%_
                                         __tmp136407)))))
                                  (_%__kont136298136299%_
                                   (lambda (_%L134118%_)
                                     (cons _%L134118%_ _%result134090%_)))
                                  (_%__kont136300136301%_
                                   (lambda () _%result134090%_)))
                              (let ((_%g134092134131%_
                                     (lambda ()
                                       (let ((_%L134118%_
                                              _%__stx136294136295%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L134118%_))
                                             (_%__kont136298136299%_
                                              _%L134118%_)
                                             (_%__kont136300136301%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx136294136295%_))
                                    (let ((_%e134098134136%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx136294136295%_))))
                                      (let ((_%tl134100134141%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e134098134136%_)))
                                            (_%hd134099134139%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e134098134136%_))))
                                        (_%__kont136296136297%_
                                         _%tl134100134141%_
                                         _%hd134099134139%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g134092134131%_)))))))))))
          (let _%loop134029%_ ((_%rest134031%_
                                (_%flatten134027%_ _%bindings134025%_))
                               (_%locals134032%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-local-env))))
            (let* ((_%rest134033134044%_ _%rest134031%_)
                   (_%E134037134048%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching"
                               _%rest134033134044%_
                               '([(? identifier? id) . rest])
                               '((? identifier? id))
                               '(_)))
                      '#!void)))
              (let ((_%K134040134073%_
                     (lambda (_%rest134070%_ _%id134071%_)
                       (_%loop134029%_
                        _%rest134070%_
                        (cons (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _%id134071%_))
                              _%locals134032%_))))
                    (_%K134039134062%_
                     (lambda (_%id134060%_)
                       (cons (let ()
                               (declare (not safe))
                               (gxc#identifier-symbol _%id134060%_))
                             _%locals134032%_)))
                    (_%K134038134053%_ (lambda () _%locals134032%_)))
                (let ((_%try-match134035134067%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%rest134033134044%_))
                             (let ((_%id134065%_ _%rest134033134044%_))
                               (_%K134039134062%_ _%id134065%_))
                             (_%K134038134053%_)))))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%rest134033134044%_))
                      (let ((_%tl134042134078%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest134033134044%_)))
                            (_%hd134041134076%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest134033134044%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd134041134076%_))
                            (let ((_%id134081%_ _%hd134041134076%_)
                                  (_%rest134083%_ _%tl134042134078%_))
                              (_%K134040134073%_ _%rest134083%_ _%id134081%_))
                            (_%K134038134053%_)))
                      (_%try-match134035134067%_)))))))))
    (define gxc#xform-operands
      (lambda (_%self133977%_ _%stx133978%_)
        (let* ((_%g133980133991%_
                (lambda (_%g133981133988%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133981133988%_))))
               (_%g133979134022%_
                (lambda (_%g133981133994%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133981133994%_))
                      (let ((_%e133984133996%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133981133994%_))))
                        (let ((_%hd133985133999%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133984133996%_)))
                              (_%tl133986134001%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133984133996%_))))
                          ((lambda (_%L134004%_ _%L134005%_)
                             (let ((_%rands134020%_
                                    (map (lambda (_%g134015134017%_)
                                           (gxc#compile-e__1
                                            _%self133977%_
                                            _%g134015134017%_))
                                         _%L134004%_)))
                               (gxc#xform-wrap-source
                                (cons _%L134005%_ _%rands134020%_)
                                _%stx133978%_)))
                           _%tl133986134001%_
                           _%hd133985133999%_)))
                      (_%g133980133991%_ _%g133981133994%_)))))
          (_%g133979134022%_ _%stx133978%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self133907%_ _%stx133908%_)
        (let* ((_%g133910133927%_
                (lambda (_%g133911133924%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133911133924%_))))
               (_%g133909133974%_
                (lambda (_%g133911133930%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133911133930%_))
                      (let ((_%e133914133932%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133911133930%_))))
                        (let ((_%hd133915133935%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133914133932%_)))
                              (_%tl133916133937%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133914133932%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133916133937%_))
                              (let ((_%e133917133940%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133916133937%_))))
                                (let ((_%hd133918133943%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133917133940%_)))
                                      (_%tl133919133945%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133917133940%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133919133945%_))
                                      (let ((_%e133920133948%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133919133945%_))))
                                        (let ((_%hd133921133951%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133920133948%_)))
                                              (_%tl133922133953%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133920133948%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133922133953%_))
                                              ((lambda (_%L133956%_
                                                        _%L133957%_)
                                                 (let ((_%expr133972%_
                                                        (gxc#compile-e__1
                                                         _%self133907%_
                                                         _%L133956%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _%L133957%_
                                                                (cons _%expr133972%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx133908%_)))
                                               _%hd133921133951%_
                                               _%hd133918133943%_)
                                              (_%g133910133927%_
                                               _%g133911133930%_))))
                                      (_%g133910133927%_ _%g133911133930%_))))
                              (_%g133910133927%_ _%g133911133930%_))))
                      (_%g133910133927%_ _%g133911133930%_)))))
          (_%g133909133974%_ _%stx133908%_))))))
