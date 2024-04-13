(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1713004411)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx136181%_)
        (let* ((_%self136183%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e136185%_
                (let ((__tmp136381 (gxc#stx-car-e _%stx136181%_)))
                  (declare (not safe))
                  (method-ref _%self136183%_ __tmp136381))))
          (if _%$e136185%_
              ((lambda (_%method136188%_)
                 (declare (not safe))
                 (_%method136188%_ _%self136183%_ _%stx136181%_))
               _%$e136185%_)
              (let ((__tmp136383 (gxc#stx-car-e _%stx136181%_))
                    (__tmp136382
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx136181%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self136183%_
                       __tmp136383
                       __tmp136382))))))
    (define gxc#compile-e__1
      (lambda (_%self136192%_ _%stx136193%_)
        (let ((_%$e136195%_
               (let ((__tmp136384 (gxc#stx-car-e _%stx136193%_)))
                 (declare (not safe))
                 (method-ref _%self136192%_ __tmp136384))))
          (if _%$e136195%_
              ((lambda (_%method136198%_)
                 (declare (not safe))
                 (_%method136198%_ _%self136192%_ _%stx136193%_))
               _%$e136195%_)
              (let ((__tmp136386 (gxc#stx-car-e _%stx136193%_))
                    (__tmp136385
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx136193%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self136192%_
                       __tmp136386
                       __tmp136385))))))
    (define gxc#compile-e
      (lambda _g136388_
        (let ((_g136387_ (let () (declare (not safe)) (##length _g136388_))))
          (cond ((let () (declare (not safe)) (##fx= _g136387_ 1))
                 (apply gxc#compile-e__0 _g136388_))
                ((let () (declare (not safe)) (##fx= _g136387_ 2))
                 (apply gxc#compile-e__1 _g136388_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g136388_))))))
    (define gxc#stx-car-e
      (lambda (_%stx136179%_)
        (let ((__tmp136389
               (car (let () (declare (not safe)) (gx#stx-e _%stx136179%_)))))
          (declare (not safe))
          (gx#stx-e __tmp136389))))
    (define gxc#void-method (lambda (_%self136176%_ _%stx136177%_) '#!void))
    (define gxc#false-method (lambda (_%self136173%_ _%stx136174%_) '#f))
    (define gxc#true-method (lambda (_%self136170%_ _%stx136171%_) '#t))
    (define gxc#identity-method
      (lambda (_%self136167%_ _%stx136168%_) _%stx136168%_))
    (define gxc#::void-expression::t
      (let ((__tmp136390 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp136390
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args136164%_
        (apply make-instance gxc#::void-expression::t _%$args136164%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp136391
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
        (__make-promise __tmp136391)))
    (define gxc#::void-special-form::t
      (let ((__tmp136392 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp136392
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args136160%_
        (apply make-instance gxc#::void-special-form::t _%$args136160%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp136393
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
        (__make-promise __tmp136393)))
    (define gxc#::void::t
      (let ((__tmp136394
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp136394 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args136156%_
        (apply make-instance gxc#::void::t _%$args136156%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp136395
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp136395)))
    (define gxc#::false-expression::t
      (let ((__tmp136396 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp136396
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args136152%_
        (apply make-instance gxc#::false-expression::t _%$args136152%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp136397
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
        (__make-promise __tmp136397)))
    (define gxc#::false-special-form::t
      (let ((__tmp136398 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp136398
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args136148%_
        (apply make-instance gxc#::false-special-form::t _%$args136148%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp136399
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
        (__make-promise __tmp136399)))
    (define gxc#::false::t
      (let ((__tmp136400
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp136400 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args136144%_
        (apply make-instance gxc#::false::t _%$args136144%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp136401
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp136401)))
    (define gxc#::identity-expression::t
      (let ((__tmp136402 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp136402
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args136140%_
        (apply make-instance gxc#::identity-expression::t _%$args136140%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp136403
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
        (__make-promise __tmp136403)))
    (define gxc#::identity-special-form::t
      (let ((__tmp136404 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp136404
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args136136%_
        (apply make-instance gxc#::identity-special-form::t _%$args136136%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp136405
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
        (__make-promise __tmp136405)))
    (define gxc#::identity::t
      (let ((__tmp136406
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp136406
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args136132%_
        (apply make-instance gxc#::identity::t _%$args136132%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp136407
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp136407)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp136408 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp136408
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args136128%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args136128%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp136409
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
        (__make-promise __tmp136409)))
    (define gxc#::basic-xform::t
      (let ((__tmp136410
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp136410
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args136124%_
        (apply make-instance gxc#::basic-xform::t _%$args136124%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp136411
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
        (__make-promise __tmp136411)))
    (define gxc#apply-begin%
      (lambda (_%self136080%_ _%stx136081%_)
        (let* ((_%g136083136093%_
                (lambda (_%g136084136090%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136084136090%_))))
               (_%g136082136120%_
                (lambda (_%g136084136096%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136084136096%_))
                      (let ((_%e136086136098%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136084136096%_))))
                        (let ((_%hd136087136101%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136086136098%_)))
                              (_%tl136088136103%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136086136098%_))))
                          ((lambda (_%L136106%_)
                             (for-each
                              (lambda (_%g136115136117%_)
                                (gxc#compile-e__1
                                 _%self136080%_
                                 _%g136115136117%_))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L136106%_))))
                           _%tl136088136103%_)))
                      (_%g136083136093%_ _%g136084136096%_)))))
          (_%g136082136120%_ _%stx136081%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self136041%_ _%stx136042%_)
        (let* ((_%g136044136054%_
                (lambda (_%g136045136051%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136045136051%_))))
               (_%g136043136077%_
                (lambda (_%g136045136057%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136045136057%_))
                      (let ((_%e136047136059%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136045136057%_))))
                        (let ((_%hd136048136062%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136047136059%_)))
                              (_%tl136049136064%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136047136059%_))))
                          ((lambda (_%L136067%_)
                             (gxc#compile-e__1
                              _%self136041%_
                              (last _%L136067%_)))
                           _%tl136049136064%_)))
                      (_%g136044136054%_ _%g136045136057%_)))))
          (_%g136043136077%_ _%stx136042%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self136037%_ _%stx136038%_)
        (let ((__tmp136414
               (lambda () (gxc#apply-begin% _%self136037%_ _%stx136038%_)))
              (__tmp136412
               (let ((__tmp136413
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp136413 '1))))
          (declare (not safe))
          (__call-with-parameters
           __tmp136414
           gx#current-expander-phi
           __tmp136412))))
    (define gxc#apply-module%
      (lambda (_%self135976%_ _%stx135977%_)
        (let* ((_%g135979135993%_
                (lambda (_%g135980135990%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135980135990%_))))
               (_%g135978136034%_
                (lambda (_%g135980135996%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135980135996%_))
                      (let ((_%e135983135998%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135980135996%_))))
                        (let ((_%hd135984136001%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135983135998%_)))
                              (_%tl135985136003%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135983135998%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135985136003%_))
                              (let ((_%e135986136006%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135985136003%_))))
                                (let ((_%hd135987136009%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135986136006%_)))
                                      (_%tl135988136011%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135986136006%_))))
                                  ((lambda (_%L136014%_ _%L136015%_)
                                     (let* ((_%ctx136028%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L136015%_)))
                                            (_%ctx-stx136030%_
                                             (##structure-ref
                                              _%ctx136028%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp136415
                                             (lambda ()
                                               (gxc#compile-e__1
                                                _%self135976%_
                                                _%ctx-stx136030%_))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp136415
                                        gx#current-expander-context
                                        _%ctx136028%_)))
                                   _%tl135988136011%_
                                   _%hd135987136009%_)))
                              (_%g135979135993%_ _%g135980135996%_))))
                      (_%g135979135993%_ _%g135980135996%_)))))
          (_%g135978136034%_ _%stx135977%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self135908%_ _%stx135909%_)
        (let* ((_%g135911135928%_
                (lambda (_%g135912135925%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135912135925%_))))
               (_%g135910135973%_
                (lambda (_%g135912135931%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135912135931%_))
                      (let ((_%e135915135933%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135912135931%_))))
                        (let ((_%hd135916135936%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135915135933%_)))
                              (_%tl135917135938%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135915135933%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135917135938%_))
                              (let ((_%e135918135941%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135917135938%_))))
                                (let ((_%hd135919135944%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135918135941%_)))
                                      (_%tl135920135946%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135918135941%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135920135946%_))
                                      (let ((_%e135921135949%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135920135946%_))))
                                        (let ((_%hd135922135952%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135921135949%_)))
                                              (_%tl135923135954%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135921135949%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135923135954%_))
                                              ((lambda (_%L135957%_
                                                        _%L135958%_)
                                                 (gxc#compile-e__1
                                                  _%self135908%_
                                                  _%L135957%_))
                                               _%hd135922135952%_
                                               _%hd135919135944%_)
                                              (_%g135911135928%_
                                               _%g135912135931%_))))
                                      (_%g135911135928%_ _%g135912135931%_))))
                              (_%g135911135928%_ _%g135912135931%_))))
                      (_%g135911135928%_ _%g135912135931%_)))))
          (_%g135910135973%_ _%stx135909%_))))
    (define gxc#apply-define-values%
      (lambda (_%self135840%_ _%stx135841%_)
        (let* ((_%g135843135860%_
                (lambda (_%g135844135857%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135844135857%_))))
               (_%g135842135905%_
                (lambda (_%g135844135863%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135844135863%_))
                      (let ((_%e135847135865%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135844135863%_))))
                        (let ((_%hd135848135868%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135847135865%_)))
                              (_%tl135849135870%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135847135865%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135849135870%_))
                              (let ((_%e135850135873%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135849135870%_))))
                                (let ((_%hd135851135876%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135850135873%_)))
                                      (_%tl135852135878%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135850135873%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135852135878%_))
                                      (let ((_%e135853135881%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135852135878%_))))
                                        (let ((_%hd135854135884%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135853135881%_)))
                                              (_%tl135855135886%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135853135881%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135855135886%_))
                                              ((lambda (_%L135889%_
                                                        _%L135890%_)
                                                 (gxc#compile-e__1
                                                  _%self135840%_
                                                  _%L135889%_))
                                               _%hd135854135884%_
                                               _%hd135851135876%_)
                                              (_%g135843135860%_
                                               _%g135844135863%_))))
                                      (_%g135843135860%_ _%g135844135863%_))))
                              (_%g135843135860%_ _%g135844135863%_))))
                      (_%g135843135860%_ _%g135844135863%_)))))
          (_%g135842135905%_ _%stx135841%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self135771%_ _%stx135772%_)
        (let* ((_%g135774135791%_
                (lambda (_%g135775135788%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135775135788%_))))
               (_%g135773135837%_
                (lambda (_%g135775135794%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135775135794%_))
                      (let ((_%e135778135796%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135775135794%_))))
                        (let ((_%hd135779135799%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135778135796%_)))
                              (_%tl135780135801%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135778135796%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135780135801%_))
                              (let ((_%e135781135804%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135780135801%_))))
                                (let ((_%hd135782135807%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135781135804%_)))
                                      (_%tl135783135809%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135781135804%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135783135809%_))
                                      (let ((_%e135784135812%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135783135809%_))))
                                        (let ((_%hd135785135815%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135784135812%_)))
                                              (_%tl135786135817%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135784135812%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135786135817%_))
                                              ((lambda (_%L135820%_
                                                        _%L135821%_)
                                                 (let ((__tmp136418
                                                        (lambda ()
                                                          (gxc#compile-e__1
                                                           _%self135771%_
                                                           _%L135820%_)))
                                                       (__tmp136416
                                                        (let ((__tmp136417
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp136417 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp136418
                                                    gx#current-expander-phi
                                                    __tmp136416)))
                                               _%hd135785135815%_
                                               _%hd135782135807%_)
                                              (_%g135774135791%_
                                               _%g135775135794%_))))
                                      (_%g135774135791%_ _%g135775135794%_))))
                              (_%g135774135791%_ _%g135775135794%_))))
                      (_%g135774135791%_ _%g135775135794%_)))))
          (_%g135773135837%_ _%stx135772%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self135703%_ _%stx135704%_)
        (let* ((_%g135706135723%_
                (lambda (_%g135707135720%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135707135720%_))))
               (_%g135705135768%_
                (lambda (_%g135707135726%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135707135726%_))
                      (let ((_%e135710135728%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135707135726%_))))
                        (let ((_%hd135711135731%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135710135728%_)))
                              (_%tl135712135733%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135710135728%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135712135733%_))
                              (let ((_%e135713135736%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135712135733%_))))
                                (let ((_%hd135714135739%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135713135736%_)))
                                      (_%tl135715135741%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135713135736%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135715135741%_))
                                      (let ((_%e135716135744%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135715135741%_))))
                                        (let ((_%hd135717135747%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135716135744%_)))
                                              (_%tl135718135749%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135716135744%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135718135749%_))
                                              ((lambda (_%L135752%_
                                                        _%L135753%_)
                                                 (gxc#compile-e__1
                                                  _%self135703%_
                                                  _%L135752%_))
                                               _%hd135717135747%_
                                               _%hd135714135739%_)
                                              (_%g135706135723%_
                                               _%g135707135726%_))))
                                      (_%g135706135723%_ _%g135707135726%_))))
                              (_%g135706135723%_ _%g135707135726%_))))
                      (_%g135706135723%_ _%g135707135726%_)))))
          (_%g135705135768%_ _%stx135704%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self135585%_ _%stx135586%_)
        (let* ((_%g135588135616%_
                (lambda (_%g135589135613%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135589135613%_))))
               (_%g135587135700%_
                (lambda (_%g135589135619%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135589135619%_))
                      (let ((_%e135592135621%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135589135619%_))))
                        (let ((_%hd135593135624%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135592135621%_)))
                              (_%tl135594135626%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135592135621%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl135594135626%_))
                              (let ((_g136419_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl135594135626%_
                                        '0))))
                                (begin
                                  (let ((_g136420_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g136419_)
                                               (##vector-length _g136419_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g136420_ 2)))
                                        (error "Context expects 2 values"
                                               _g136420_)))
                                  (let ((_%target135595135629%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g136419_ 0)))
                                        (_%tl135597135631%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g136419_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl135597135631%_))
                                        (letrec ((_%loop135598135634%_
                                                  (lambda (_%hd135596135637%_
                                                           _%body135602135639%_
                                                           _%hd135603135641%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd135596135637%_))
                                                        (let ((_%e135599135644%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd135596135637%_))))
                  (let ((_%lp-hd135600135647%_
                         (let ()
                           (declare (not safe))
                           (##car _%e135599135644%_)))
                        (_%lp-tl135601135649%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e135599135644%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd135600135647%_))
                        (let ((_%e135606135652%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd135600135647%_))))
                          (let ((_%hd135607135655%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135606135652%_)))
                                (_%tl135608135657%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135606135652%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl135608135657%_))
                                (let ((_%e135609135660%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl135608135657%_))))
                                  (let ((_%hd135610135663%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e135609135660%_)))
                                        (_%tl135611135665%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e135609135660%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl135611135665%_))
                                        (_%loop135598135634%_
                                         _%lp-tl135601135649%_
                                         (cons _%hd135610135663%_
                                               _%body135602135639%_)
                                         (cons _%hd135607135655%_
                                               _%hd135603135641%_))
                                        (_%g135588135616%_
                                         _%g135589135619%_))))
                                (_%g135588135616%_ _%g135589135619%_))))
                        (_%g135588135616%_ _%g135589135619%_))))
                (let ((_%body135604135668%_ (reverse _%body135602135639%_))
                      (_%hd135605135670%_ (reverse _%hd135603135641%_)))
                  ((lambda (_%L135673%_ _%L135674%_)
                     (for-each
                      (lambda (_%g135688135690%_)
                        (gxc#compile-e__1 _%self135585%_ _%g135688135690%_))
                      (let ((__tmp136421
                             (lambda (_%g135692135695%_ _%g135693135697%_)
                               (cons _%g135692135695%_ _%g135693135697%_))))
                        (declare (not safe))
                        (__foldr1 __tmp136421 '() _%L135673%_))))
                   _%body135604135668%_
                   _%hd135605135670%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop135598135634%_
                                           _%target135595135629%_
                                           '()
                                           '()))
                                        (_%g135588135616%_
                                         _%g135589135619%_)))))
                              (_%g135588135616%_ _%g135589135619%_))))
                      (_%g135588135616%_ _%g135589135619%_)))))
          (_%g135587135700%_ _%stx135586%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self135438%_ _%stx135439%_)
        (let* ((_%g135441135476%_
                (lambda (_%g135442135473%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135442135473%_))))
               (_%g135440135582%_
                (lambda (_%g135442135479%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135442135479%_))
                      (let ((_%e135446135481%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135442135479%_))))
                        (let ((_%hd135447135484%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135446135481%_)))
                              (_%tl135448135486%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135446135481%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135448135486%_))
                              (let ((_%e135449135489%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135448135486%_))))
                                (let ((_%hd135450135492%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135449135489%_)))
                                      (_%tl135451135494%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135449135489%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd135450135492%_))
                                      (let ((_g136422_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd135450135492%_
                                                '0))))
                                        (begin
                                          (let ((_g136423_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g136422_)
                                                       (##vector-length
                                                        _g136422_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g136423_ 2)))
                                                (error "Context expects 2 values"
                                                       _g136423_)))
                                          (let ((_%target135452135497%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g136422_ 0)))
                                                (_%tl135454135499%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g136422_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl135454135499%_))
                                                (letrec ((_%loop135455135502%_
                                                          (lambda (_%hd135453135505%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr135459135507%_
                           _%hd135460135509%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd135453135505%_))
                        (let ((_%e135456135512%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd135453135505%_))))
                          (let ((_%lp-hd135457135515%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135456135512%_)))
                                (_%lp-tl135458135517%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135456135512%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd135457135515%_))
                                (let ((_%e135466135520%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd135457135515%_))))
                                  (let ((_%hd135467135523%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e135466135520%_)))
                                        (_%tl135468135525%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e135466135520%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl135468135525%_))
                                        (let ((_%e135469135528%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl135468135525%_))))
                                          (let ((_%hd135470135531%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e135469135528%_)))
                                                (_%tl135471135533%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e135469135528%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl135471135533%_))
                                                (_%loop135455135502%_
                                                 _%lp-tl135458135517%_
                                                 (cons _%hd135470135531%_
                                                       _%expr135459135507%_)
                                                 (cons _%hd135467135523%_
                                                       _%hd135460135509%_))
                                                (_%g135441135476%_
                                                 _%g135442135479%_))))
                                        (_%g135441135476%_
                                         _%g135442135479%_))))
                                (_%g135441135476%_ _%g135442135479%_))))
                        (let ((_%expr135461135536%_
                               (reverse _%expr135459135507%_))
                              (_%hd135462135538%_
                               (reverse _%hd135460135509%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135451135494%_))
                              (let ((_%e135463135541%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135451135494%_))))
                                (let ((_%hd135464135544%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135463135541%_)))
                                      (_%tl135465135546%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135463135541%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl135465135546%_))
                                      ((lambda (_%L135549%_
                                                _%L135550%_
                                                _%L135551%_)
                                         (for-each
                                          (lambda (_%g135570135572%_)
                                            (gxc#compile-e__1
                                             _%self135438%_
                                             _%g135570135572%_))
                                          (let ((__tmp136425
                                                 (lambda (_%g135574135577%_
                                                          _%g135575135579%_)
                                                   (cons _%g135574135577%_
                                                         _%g135575135579%_)))
                                                (__tmp136424
                                                 (cons _%L135549%_ '())))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp136425
                                             __tmp136424
                                             _%L135550%_))))
                                       _%hd135464135544%_
                                       _%expr135461135536%_
                                       _%hd135462135538%_)
                                      (_%g135441135476%_ _%g135442135479%_))))
                              (_%g135441135476%_ _%g135442135479%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop135455135502%_
                                                   _%target135452135497%_
                                                   '()
                                                   '()))
                                                (_%g135441135476%_
                                                 _%g135442135479%_)))))
                                      (_%g135441135476%_ _%g135442135479%_))))
                              (_%g135441135476%_ _%g135442135479%_))))
                      (_%g135441135476%_ _%g135442135479%_)))))
          (_%g135440135582%_ _%stx135439%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self135383%_ _%stx135384%_)
        (let* ((_%g135386135400%_
                (lambda (_%g135387135397%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135387135397%_))))
               (_%g135385135435%_
                (lambda (_%g135387135403%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135387135403%_))
                      (let ((_%e135390135405%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135387135403%_))))
                        (let ((_%hd135391135408%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135390135405%_)))
                              (_%tl135392135410%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135390135405%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135392135410%_))
                              (let ((_%e135393135413%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135392135410%_))))
                                (let ((_%hd135394135416%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135393135413%_)))
                                      (_%tl135395135418%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135393135413%_))))
                                  ((lambda (_%L135421%_ _%L135422%_)
                                     (gxc#compile-e__1
                                      _%self135383%_
                                      (last _%L135421%_)))
                                   _%tl135395135418%_
                                   _%hd135394135416%_)))
                              (_%g135386135400%_ _%g135387135403%_))))
                      (_%g135386135400%_ _%g135387135403%_)))))
          (_%g135385135435%_ _%stx135384%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self135315%_ _%stx135316%_)
        (let* ((_%g135318135335%_
                (lambda (_%g135319135332%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135319135332%_))))
               (_%g135317135380%_
                (lambda (_%g135319135338%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135319135338%_))
                      (let ((_%e135322135340%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135319135338%_))))
                        (let ((_%hd135323135343%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135322135340%_)))
                              (_%tl135324135345%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135322135340%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135324135345%_))
                              (let ((_%e135325135348%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135324135345%_))))
                                (let ((_%hd135326135351%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135325135348%_)))
                                      (_%tl135327135353%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135325135348%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135327135353%_))
                                      (let ((_%e135328135356%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135327135353%_))))
                                        (let ((_%hd135329135359%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135328135356%_)))
                                              (_%tl135330135361%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135328135356%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135330135361%_))
                                              ((lambda (_%L135364%_
                                                        _%L135365%_)
                                                 (gxc#compile-e__1
                                                  _%self135315%_
                                                  _%L135364%_))
                                               _%hd135329135359%_
                                               _%hd135326135351%_)
                                              (_%g135318135335%_
                                               _%g135319135338%_))))
                                      (_%g135318135335%_ _%g135319135338%_))))
                              (_%g135318135335%_ _%g135319135338%_))))
                      (_%g135318135335%_ _%g135319135338%_)))))
          (_%g135317135380%_ _%stx135316%_))))
    (define gxc#apply-operands
      (lambda (_%self135228%_ _%stx135229%_)
        (let* ((_%g135231135250%_
                (lambda (_%g135232135247%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135232135247%_))))
               (_%g135230135312%_
                (lambda (_%g135232135253%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135232135253%_))
                      (let ((_%e135234135255%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135232135253%_))))
                        (let ((_%hd135235135258%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135234135255%_)))
                              (_%tl135236135260%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135234135255%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl135236135260%_))
                              (let ((_g136426_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl135236135260%_
                                        '0))))
                                (begin
                                  (let ((_g136427_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g136426_)
                                               (##vector-length _g136426_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g136427_ 2)))
                                        (error "Context expects 2 values"
                                               _g136427_)))
                                  (let ((_%target135237135263%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g136426_ 0)))
                                        (_%tl135239135265%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g136426_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl135239135265%_))
                                        (letrec ((_%loop135240135268%_
                                                  (lambda (_%hd135238135271%_
                                                           _%rands135244135273%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd135238135271%_))
                                                        (let ((_%e135241135276%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd135238135271%_))))
                  (let ((_%lp-hd135242135279%_
                         (let ()
                           (declare (not safe))
                           (##car _%e135241135276%_)))
                        (_%lp-tl135243135281%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e135241135276%_))))
                    (_%loop135240135268%_
                     _%lp-tl135243135281%_
                     (cons _%lp-hd135242135279%_ _%rands135244135273%_))))
                (let ((_%rands135245135284%_ (reverse _%rands135244135273%_)))
                  ((lambda (_%L135287%_)
                     (for-each
                      (lambda (_%g135300135302%_)
                        (gxc#compile-e__1 _%self135228%_ _%g135300135302%_))
                      (let ((__tmp136428
                             (lambda (_%g135304135307%_ _%g135305135309%_)
                               (cons _%g135304135307%_ _%g135305135309%_))))
                        (declare (not safe))
                        (__foldr1 __tmp136428 '() _%L135287%_))))
                   _%rands135245135284%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop135240135268%_
                                           _%target135237135263%_
                                           '()))
                                        (_%g135231135250%_
                                         _%g135232135253%_)))))
                              (_%g135231135250%_ _%g135232135253%_))))
                      (_%g135231135250%_ _%g135232135253%_)))))
          (_%g135230135312%_ _%stx135229%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx135225%_ _%src-stx135226%_)
        (let ((__tmp136429
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx135226%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx135225%_ __tmp136429))))
    (define gxc#xform-wrap-apply
      (lambda (_%stx135221%_ _%src-stx135222%_ _%ctx135223%_)
        (gxc#compile-e__1
         _%ctx135223%_
         (gxc#xform-wrap-source _%stx135221%_ _%src-stx135222%_))))
    (define gxc#xform-begin%
      (lambda (_%self135176%_ _%stx135177%_)
        (let* ((_%g135179135189%_
                (lambda (_%g135180135186%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135180135186%_))))
               (_%g135178135218%_
                (lambda (_%g135180135192%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135180135192%_))
                      (let ((_%e135182135194%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135180135192%_))))
                        (let ((_%hd135183135197%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135182135194%_)))
                              (_%tl135184135199%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135182135194%_))))
                          ((lambda (_%L135202%_)
                             (let ((_%forms135216%_
                                    (map (lambda (_%g135211135213%_)
                                           (gxc#compile-e__1
                                            _%self135176%_
                                            _%g135211135213%_))
                                         _%L135202%_)))
                               (gxc#xform-wrap-source
                                (cons '%#begin _%forms135216%_)
                                _%stx135177%_)))
                           _%tl135184135199%_)))
                      (_%g135179135189%_ _%g135180135192%_)))))
          (_%g135178135218%_ _%stx135177%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self135130%_ _%stx135131%_)
        (let* ((_%g135133135143%_
                (lambda (_%g135134135140%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135134135140%_))))
               (_%g135132135173%_
                (lambda (_%g135134135146%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135134135146%_))
                      (let ((_%e135136135148%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135134135146%_))))
                        (let ((_%hd135137135151%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135136135148%_)))
                              (_%tl135138135153%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135136135148%_))))
                          ((lambda (_%L135156%_)
                             (let ((__tmp136432
                                    (lambda ()
                                      (let ((_%forms135171%_
                                             (map (lambda (_%g135166135168%_)
                                                    (gxc#compile-e__1
                                                     _%self135130%_
                                                     _%g135166135168%_))
                                                  _%L135156%_)))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin-syntax _%forms135171%_)
                                         _%stx135131%_))))
                                   (__tmp136430
                                    (let ((__tmp136431
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp136431 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp136432
                                gx#current-expander-phi
                                __tmp136430)))
                           _%tl135138135153%_)))
                      (_%g135133135143%_ _%g135134135146%_)))))
          (_%g135132135173%_ _%stx135131%_))))
    (define gxc#xform-module%
      (lambda (_%self135067%_ _%stx135068%_)
        (let* ((_%g135070135084%_
                (lambda (_%g135071135081%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135071135081%_))))
               (_%g135069135127%_
                (lambda (_%g135071135087%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135071135087%_))
                      (let ((_%e135074135089%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135071135087%_))))
                        (let ((_%hd135075135092%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135074135089%_)))
                              (_%tl135076135094%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135074135089%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135076135094%_))
                              (let ((_%e135077135097%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135076135094%_))))
                                (let ((_%hd135078135100%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135077135097%_)))
                                      (_%tl135079135102%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135077135097%_))))
                                  ((lambda (_%L135105%_ _%L135106%_)
                                     (let* ((_%ctx135119%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L135106%_)))
                                            (_%code135121%_
                                             (##structure-ref
                                              _%ctx135119%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code135124%_
                                             (let ((__tmp136433
                                                    (lambda ()
                                                      (gxc#compile-e__1
                                                       _%self135067%_
                                                       _%code135121%_))))
                                               (declare (not safe))
                                               (__call-with-parameters
                                                __tmp136433
                                                gx#current-expander-context
                                                _%ctx135119%_))))
                                       (##structure-set!
                                        _%ctx135119%_
                                        _%code135124%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _%L135106%_
                                                    (cons _%code135124%_ '())))
                                        _%stx135068%_)))
                                   _%tl135079135102%_
                                   _%hd135078135100%_)))
                              (_%g135070135084%_ _%g135071135087%_))))
                      (_%g135070135084%_ _%g135071135087%_)))))
          (_%g135069135127%_ _%stx135068%_))))
    (define gxc#xform-define-values%
      (lambda (_%self134997%_ _%stx134998%_)
        (let* ((_%g135000135017%_
                (lambda (_%g135001135014%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135001135014%_))))
               (_%g134999135064%_
                (lambda (_%g135001135020%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135001135020%_))
                      (let ((_%e135004135022%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135001135020%_))))
                        (let ((_%hd135005135025%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135004135022%_)))
                              (_%tl135006135027%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135004135022%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135006135027%_))
                              (let ((_%e135007135030%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135006135027%_))))
                                (let ((_%hd135008135033%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135007135030%_)))
                                      (_%tl135009135035%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135007135030%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135009135035%_))
                                      (let ((_%e135010135038%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135009135035%_))))
                                        (let ((_%hd135011135041%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135010135038%_)))
                                              (_%tl135012135043%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135010135038%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135012135043%_))
                                              ((lambda (_%L135046%_
                                                        _%L135047%_)
                                                 (let ((_%expr135062%_
                                                        (gxc#compile-e__1
                                                         _%self134997%_
                                                         _%L135046%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons _%L135047%_
                                                                (cons _%expr135062%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx134998%_)))
                                               _%hd135011135041%_
                                               _%hd135008135033%_)
                                              (_%g135000135017%_
                                               _%g135001135020%_))))
                                      (_%g135000135017%_ _%g135001135020%_))))
                              (_%g135000135017%_ _%g135001135020%_))))
                      (_%g135000135017%_ _%g135001135020%_)))))
          (_%g134999135064%_ _%stx134998%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self134926%_ _%stx134927%_)
        (let* ((_%g134929134946%_
                (lambda (_%g134930134943%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134930134943%_))))
               (_%g134928134994%_
                (lambda (_%g134930134949%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134930134949%_))
                      (let ((_%e134933134951%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134930134949%_))))
                        (let ((_%hd134934134954%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134933134951%_)))
                              (_%tl134935134956%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134933134951%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134935134956%_))
                              (let ((_%e134936134959%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134935134956%_))))
                                (let ((_%hd134937134962%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134936134959%_)))
                                      (_%tl134938134964%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134936134959%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134938134964%_))
                                      (let ((_%e134939134967%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134938134964%_))))
                                        (let ((_%hd134940134970%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134939134967%_)))
                                              (_%tl134941134972%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134939134967%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl134941134972%_))
                                              ((lambda (_%L134975%_
                                                        _%L134976%_)
                                                 (let ((__tmp136436
                                                        (lambda ()
                                                          (let ((_%expr134992%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#compile-e__1 _%self134926%_ _%L134975%_)))
                    (gxc#xform-wrap-source
                     (cons '%#define-syntax
                           (cons _%L134976%_ (cons _%expr134992%_ '())))
                     _%stx134927%_))))
               (__tmp136434
                (let ((__tmp136435
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp136435 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp136436
                                                    gx#current-expander-phi
                                                    __tmp136434)))
                                               _%hd134940134970%_
                                               _%hd134937134962%_)
                                              (_%g134929134946%_
                                               _%g134930134949%_))))
                                      (_%g134929134946%_ _%g134930134949%_))))
                              (_%g134929134946%_ _%g134930134949%_))))
                      (_%g134929134946%_ _%g134930134949%_)))))
          (_%g134928134994%_ _%stx134927%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self134856%_ _%stx134857%_)
        (let* ((_%g134859134876%_
                (lambda (_%g134860134873%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134860134873%_))))
               (_%g134858134923%_
                (lambda (_%g134860134879%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134860134879%_))
                      (let ((_%e134863134881%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134860134879%_))))
                        (let ((_%hd134864134884%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134863134881%_)))
                              (_%tl134865134886%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134863134881%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134865134886%_))
                              (let ((_%e134866134889%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134865134886%_))))
                                (let ((_%hd134867134892%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134866134889%_)))
                                      (_%tl134868134894%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134866134889%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134868134894%_))
                                      (let ((_%e134869134897%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134868134894%_))))
                                        (let ((_%hd134870134900%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134869134897%_)))
                                              (_%tl134871134902%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134869134897%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl134871134902%_))
                                              ((lambda (_%L134905%_
                                                        _%L134906%_)
                                                 (let ((_%expr134921%_
                                                        (gxc#compile-e__1
                                                         _%self134856%_
                                                         _%L134905%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#begin-annotation
                                                          (cons _%L134906%_
                                                                (cons _%expr134921%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx134857%_)))
                                               _%hd134870134900%_
                                               _%hd134867134892%_)
                                              (_%g134859134876%_
                                               _%g134860134879%_))))
                                      (_%g134859134876%_ _%g134860134879%_))))
                              (_%g134859134876%_ _%g134860134879%_))))
                      (_%g134859134876%_ _%g134860134879%_)))))
          (_%g134858134923%_ _%stx134857%_))))
    (define gxc#xform-lambda%
      (lambda (_%self134794%_ _%stx134795%_)
        (let* ((_%g134797134811%_
                (lambda (_%g134798134808%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134798134808%_))))
               (_%g134796134853%_
                (lambda (_%g134798134814%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134798134814%_))
                      (let ((_%e134801134816%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134798134814%_))))
                        (let ((_%hd134802134819%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134801134816%_)))
                              (_%tl134803134821%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134801134816%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134803134821%_))
                              (let ((_%e134804134824%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134803134821%_))))
                                (let ((_%hd134805134827%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134804134824%_)))
                                      (_%tl134806134829%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134804134824%_))))
                                  ((lambda (_%L134832%_ _%L134833%_)
                                     (let ((__tmp136438
                                            (lambda ()
                                              (let ((_%body134851%_
                                                     (map (lambda (_%g134846134848%_)
                                                            (gxc#compile-e__1
                                                             _%self134794%_
                                                             _%g134846134848%_))
                                                          _%L134832%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#lambda
                                                       (cons _%L134833%_
                                                             _%body134851%_))
                                                 _%stx134795%_))))
                                           (__tmp136437
                                            (gxc#xform-let-locals
                                             _%L134833%_)))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp136438
                                        gxc#current-compile-local-env
                                        __tmp136437)))
                                   _%tl134806134829%_
                                   _%hd134805134827%_)))
                              (_%g134797134811%_ _%g134798134814%_))))
                      (_%g134797134811%_ _%g134798134814%_)))))
          (_%g134796134853%_ _%stx134795%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self134702%_ _%stx134703%_)
        (letrec ((_%clause-e134705%_
                  (lambda (_%clause134746%_)
                    (let* ((_%g134748134759%_
                            (lambda (_%g134749134756%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g134749134756%_))))
                           (_%g134747134791%_
                            (lambda (_%g134749134762%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g134749134762%_))
                                  (let ((_%e134752134764%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g134749134762%_))))
                                    (let ((_%hd134753134767%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e134752134764%_)))
                                          (_%tl134754134769%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e134752134764%_))))
                                      ((lambda (_%L134772%_ _%L134773%_)
                                         (let ((__tmp136440
                                                (lambda ()
                                                  (let ((_%body134789%_
                                                         (map (lambda (_%g134784134786%_)
                                                                (gxc#compile-e__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%self134702%_
                         _%g134784134786%_))
                      _%L134772%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%L134773%_
                                                          _%body134789%_))))
                                               (__tmp136439
                                                (gxc#xform-let-locals
                                                 _%L134773%_)))
                                           (declare (not safe))
                                           (__call-with-parameters
                                            __tmp136440
                                            gxc#current-compile-local-env
                                            __tmp136439)))
                                       _%tl134754134769%_
                                       _%hd134753134767%_)))
                                  (_%g134748134759%_ _%g134749134762%_)))))
                      (_%g134747134791%_ _%clause134746%_)))))
          (let* ((_%g134707134717%_
                  (lambda (_%g134708134714%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g134708134714%_))))
                 (_%g134706134743%_
                  (lambda (_%g134708134720%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g134708134720%_))
                        (let ((_%e134710134722%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g134708134720%_))))
                          (let ((_%hd134711134725%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e134710134722%_)))
                                (_%tl134712134727%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e134710134722%_))))
                            ((lambda (_%L134730%_)
                               (let ((_%clauses134741%_
                                      (map _%clause-e134705%_ _%L134730%_)))
                                 (gxc#xform-wrap-source
                                  (cons '%#case-lambda _%clauses134741%_)
                                  _%stx134703%_)))
                             _%tl134712134727%_)))
                        (_%g134707134717%_ _%g134708134720%_)))))
            (_%g134706134743%_ _%stx134703%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self134456%_ _%stx134457%_)
        (let* ((_%g134459134492%_
                (lambda (_%g134460134489%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134460134489%_))))
               (_%g134458134699%_
                (lambda (_%g134460134495%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134460134495%_))
                      (let ((_%e134465134497%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134460134495%_))))
                        (let ((_%hd134466134500%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134465134497%_)))
                              (_%tl134467134502%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134465134497%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134467134502%_))
                              (let ((_%e134468134505%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134467134502%_))))
                                (let ((_%hd134469134508%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134468134505%_)))
                                      (_%tl134470134510%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134468134505%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd134469134508%_))
                                      (let ((_g136441_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd134469134508%_
                                                '0))))
                                        (begin
                                          (let ((_g136442_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g136441_)
                                                       (##vector-length
                                                        _g136441_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g136442_ 2)))
                                                (error "Context expects 2 values"
                                                       _g136442_)))
                                          (let ((_%target134471134513%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g136441_ 0)))
                                                (_%tl134473134515%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g136441_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl134473134515%_))
                                                (letrec ((_%loop134474134518%_
                                                          (lambda (_%hd134472134521%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr134478134523%_
                           _%hd134479134525%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd134472134521%_))
                        (let ((_%e134475134528%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd134472134521%_))))
                          (let ((_%lp-hd134476134531%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e134475134528%_)))
                                (_%lp-tl134477134533%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e134475134528%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd134476134531%_))
                                (let ((_%e134482134536%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd134476134531%_))))
                                  (let ((_%hd134483134539%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e134482134536%_)))
                                        (_%tl134484134541%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e134482134536%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl134484134541%_))
                                        (let ((_%e134485134544%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl134484134541%_))))
                                          (let ((_%hd134486134547%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e134485134544%_)))
                                                (_%tl134487134549%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e134485134544%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl134487134549%_))
                                                (_%loop134474134518%_
                                                 _%lp-tl134477134533%_
                                                 (cons _%hd134486134547%_
                                                       _%expr134478134523%_)
                                                 (cons _%hd134483134539%_
                                                       _%hd134479134525%_))
                                                (_%g134459134492%_
                                                 _%g134460134495%_))))
                                        (_%g134459134492%_
                                         _%g134460134495%_))))
                                (_%g134459134492%_ _%g134460134495%_))))
                        (let ((_%expr134480134552%_
                               (reverse _%expr134478134523%_))
                              (_%hd134481134554%_
                               (reverse _%hd134479134525%_)))
                          ((lambda (_%L134557%_
                                    _%L134558%_
                                    _%L134559%_
                                    _%L134560%_)
                             (let* ((_%g134579134595%_
                                     (lambda (_%g134580134592%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g134580134592%_))))
                                    (_%g134578134685%_
                                     (lambda (_%g134580134598%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g134580134598%_))
                                           (let ((_g136443_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g134580134598%_
                                                     '0))))
                                             (begin
                                               (let ((_g136444_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g136443_)
                                                            (##vector-length
                                                             _g136443_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g136444_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g136444_)))
                                               (let ((_%target134582134600%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g136443_
                                                         0)))
                                                     (_%tl134584134602%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g136443_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl134584134602%_))
                                                     (letrec ((_%loop134585134605%_
                                                               (lambda (_%hd134583134608%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr134589134610%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd134583134608%_))
                             (let ((_%e134586134613%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd134583134608%_))))
                               (let ((_%lp-hd134587134616%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e134586134613%_)))
                                     (_%lp-tl134588134618%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e134586134613%_))))
                                 (_%loop134585134605%_
                                  _%lp-tl134588134618%_
                                  (cons _%lp-hd134587134616%_
                                        _%expr134589134610%_))))
                             (let ((_%expr134590134621%_
                                    (reverse _%expr134589134610%_)))
                               ((lambda (_%L134624%_)
                                  (let ((__tmp136447
                                         (lambda ()
                                           (let* ((_%g134638134645%_
                                                   (lambda (_%g134639134642%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g134639134642%_))))
                                                  (_%g134637134671%_
                                                   (lambda (_%g134639134648%_)
                                                     ((lambda (_%L134650%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L134560%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L134624%_
                                  _%L134559%_))
                               (let ((__tmp136448
                                      (lambda (_%g134660134664%_
                                               _%g134661134666%_
                                               _%g134662134668%_)
                                        (cons (cons _%g134661134666%_
                                                    (cons _%g134660134664%_
                                                          '()))
                                              _%g134662134668%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp136448
                                  '()
                                  _%L134624%_
                                  _%L134559%_)))
                             _%L134650%_))
                 _%stx134457%_))
              _%g134639134648%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g134637134671%_
                                              (map (lambda (_%g134673134675%_)
                                                     (gxc#compile-e__1
                                                      _%self134456%_
                                                      _%g134673134675%_))
                                                   _%L134557%_)))))
                                        (__tmp136445
                                         (gxc#xform-let-locals
                                          (let ((__tmp136446
                                                 (lambda (_%g134677134680%_
                                                          _%g134678134682%_)
                                                   (cons _%g134677134680%_
                                                         _%g134678134682%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp136446
                                             '()
                                             _%L134559%_)))))
                                    (declare (not safe))
                                    (__call-with-parameters
                                     __tmp136447
                                     gxc#current-compile-local-env
                                     __tmp136445)))
                                _%expr134590134621%_))))))
               (_%loop134585134605%_ _%target134582134600%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g134579134595%_
                                                      _%g134580134598%_)))))
                                           (_%g134579134595%_
                                            _%g134580134598%_)))))
                               (_%g134578134685%_
                                (map (lambda (_%g134687134689%_)
                                       (gxc#compile-e__1
                                        _%self134456%_
                                        _%g134687134689%_))
                                     (let ((__tmp136449
                                            (lambda (_%g134691134694%_
                                                     _%g134692134696%_)
                                              (cons _%g134691134694%_
                                                    _%g134692134696%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp136449
                                        '()
                                        _%L134558%_))))))
                           _%tl134470134510%_
                           _%expr134480134552%_
                           _%hd134481134554%_
                           _%hd134466134500%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop134474134518%_
                                                   _%target134471134513%_
                                                   '()
                                                   '()))
                                                (_%g134459134492%_
                                                 _%g134460134495%_)))))
                                      (_%g134459134492%_ _%g134460134495%_))))
                              (_%g134459134492%_ _%g134460134495%_))))
                      (_%g134459134492%_ _%g134460134495%_)))))
          (_%g134458134699%_ _%stx134457%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self134210%_ _%stx134211%_)
        (let* ((_%g134213134246%_
                (lambda (_%g134214134243%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134214134243%_))))
               (_%g134212134453%_
                (lambda (_%g134214134249%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134214134249%_))
                      (let ((_%e134219134251%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134214134249%_))))
                        (let ((_%hd134220134254%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134219134251%_)))
                              (_%tl134221134256%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134219134251%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134221134256%_))
                              (let ((_%e134222134259%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134221134256%_))))
                                (let ((_%hd134223134262%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134222134259%_)))
                                      (_%tl134224134264%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134222134259%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd134223134262%_))
                                      (let ((_g136450_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd134223134262%_
                                                '0))))
                                        (begin
                                          (let ((_g136451_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g136450_)
                                                       (##vector-length
                                                        _g136450_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g136451_ 2)))
                                                (error "Context expects 2 values"
                                                       _g136451_)))
                                          (let ((_%target134225134267%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g136450_ 0)))
                                                (_%tl134227134269%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g136450_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl134227134269%_))
                                                (letrec ((_%loop134228134272%_
                                                          (lambda (_%hd134226134275%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr134232134277%_
                           _%hd134233134279%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd134226134275%_))
                        (let ((_%e134229134282%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd134226134275%_))))
                          (let ((_%lp-hd134230134285%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e134229134282%_)))
                                (_%lp-tl134231134287%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e134229134282%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd134230134285%_))
                                (let ((_%e134236134290%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd134230134285%_))))
                                  (let ((_%hd134237134293%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e134236134290%_)))
                                        (_%tl134238134295%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e134236134290%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl134238134295%_))
                                        (let ((_%e134239134298%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl134238134295%_))))
                                          (let ((_%hd134240134301%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e134239134298%_)))
                                                (_%tl134241134303%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e134239134298%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl134241134303%_))
                                                (_%loop134228134272%_
                                                 _%lp-tl134231134287%_
                                                 (cons _%hd134240134301%_
                                                       _%expr134232134277%_)
                                                 (cons _%hd134237134293%_
                                                       _%hd134233134279%_))
                                                (_%g134213134246%_
                                                 _%g134214134249%_))))
                                        (_%g134213134246%_
                                         _%g134214134249%_))))
                                (_%g134213134246%_ _%g134214134249%_))))
                        (let ((_%expr134234134306%_
                               (reverse _%expr134232134277%_))
                              (_%hd134235134308%_
                               (reverse _%hd134233134279%_)))
                          ((lambda (_%L134311%_
                                    _%L134312%_
                                    _%L134313%_
                                    _%L134314%_)
                             (let ((__tmp136454
                                    (lambda ()
                                      (let* ((_%g134334134350%_
                                              (lambda (_%g134335134347%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g134335134347%_))))
                                             (_%g134333134432%_
                                              (lambda (_%g134335134353%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g134335134353%_))
                                                    (let ((_g136455_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g134335134353%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g136456_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g136455_)
                             (##vector-length _g136455_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g136456_ 2)))
                      (error "Context expects 2 values" _g136456_)))
                (let ((_%target134337134355%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g136455_ 0)))
                      (_%tl134339134357%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g136455_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl134339134357%_))
                      (letrec ((_%loop134340134360%_
                                (lambda (_%hd134338134363%_
                                         _%expr134344134365%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd134338134363%_))
                                      (let ((_%e134341134368%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd134338134363%_))))
                                        (let ((_%lp-hd134342134371%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134341134368%_)))
                                              (_%lp-tl134343134373%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134341134368%_))))
                                          (_%loop134340134360%_
                                           _%lp-tl134343134373%_
                                           (cons _%lp-hd134342134371%_
                                                 _%expr134344134365%_))))
                                      (let ((_%expr134345134376%_
                                             (reverse _%expr134344134365%_)))
                                        ((lambda (_%L134379%_)
                                           (let* ((_%g134393134400%_
                                                   (lambda (_%g134394134397%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g134394134397%_))))
                                                  (_%g134392134425%_
                                                   (lambda (_%g134394134403%_)
                                                     ((lambda (_%L134405%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L134314%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L134379%_
                                  _%L134313%_))
                               (let ((__tmp136457
                                      (lambda (_%g134414134418%_
                                               _%g134415134420%_
                                               _%g134416134422%_)
                                        (cons (cons _%g134415134420%_
                                                    (cons _%g134414134418%_
                                                          '()))
                                              _%g134416134422%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp136457
                                  '()
                                  _%L134379%_
                                  _%L134313%_)))
                             _%L134405%_))
                 _%stx134211%_))
              _%g134394134403%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g134392134425%_
                                              (map (lambda (_%g134427134429%_)
                                                     (gxc#compile-e__1
                                                      _%self134210%_
                                                      _%g134427134429%_))
                                                   _%L134311%_))))
                                         _%expr134345134376%_))))))
                        (_%loop134340134360%_ _%target134337134355%_ '()))
                      (_%g134334134350%_ _%g134335134353%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g134334134350%_
                                                     _%g134335134353%_)))))
                                        (_%g134333134432%_
                                         (map (lambda (_%g134434134436%_)
                                                (gxc#compile-e__1
                                                 _%self134210%_
                                                 _%g134434134436%_))
                                              (let ((__tmp136458
                                                     (lambda (_%g134438134441%_
                                                              _%g134439134443%_)
                                                       (cons _%g134438134441%_
                                                             _%g134439134443%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp136458
                                                 '()
                                                 _%L134312%_)))))))
                                   (__tmp136452
                                    (gxc#xform-let-locals
                                     (let ((__tmp136453
                                            (lambda (_%g134445134448%_
                                                     _%g134446134450%_)
                                              (cons _%g134445134448%_
                                                    _%g134446134450%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp136453
                                        '()
                                        _%L134313%_)))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp136454
                                gxc#current-compile-local-env
                                __tmp136452)))
                           _%tl134224134264%_
                           _%expr134234134306%_
                           _%hd134235134308%_
                           _%hd134220134254%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop134228134272%_
                                                   _%target134225134267%_
                                                   '()
                                                   '()))
                                                (_%g134213134246%_
                                                 _%g134214134249%_)))))
                                      (_%g134213134246%_ _%g134214134249%_))))
                              (_%g134213134246%_ _%g134214134249%_))))
                      (_%g134213134246%_ _%g134214134249%_)))))
          (_%g134212134453%_ _%stx134211%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings134077%_)
        (letrec ((_%flatten134079%_
                  (lambda (_%maybe-lst134137%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%maybe-lst134137%_))
                        (cons _%maybe-lst134137%_ '())
                        (let _%loop134139%_ ((_%rest134141%_
                                              _%maybe-lst134137%_)
                                             (_%result134142%_ '()))
                          (let* ((_%__stx136346136347%_ _%rest134141%_)
                                 (_%g134146134158%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx136346136347%_)))))
                            (let ((_%__kont136348136349%_
                                   (lambda (_%L134196%_ _%L134197%_)
                                     (_%loop134139%_
                                      _%L134196%_
                                      (let ((__tmp136459
                                             (_%flatten134079%_ _%L134197%_)))
                                        (declare (not safe))
                                        (__foldl1
                                         cons
                                         _%result134142%_
                                         __tmp136459)))))
                                  (_%__kont136350136351%_
                                   (lambda (_%L134170%_)
                                     (cons _%L134170%_ _%result134142%_)))
                                  (_%__kont136352136353%_
                                   (lambda () _%result134142%_)))
                              (let ((_%g134144134183%_
                                     (lambda ()
                                       (let ((_%L134170%_
                                              _%__stx136346136347%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L134170%_))
                                             (_%__kont136350136351%_
                                              _%L134170%_)
                                             (_%__kont136352136353%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx136346136347%_))
                                    (let ((_%e134150134188%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx136346136347%_))))
                                      (let ((_%tl134152134193%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e134150134188%_)))
                                            (_%hd134151134191%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e134150134188%_))))
                                        (_%__kont136348136349%_
                                         _%tl134152134193%_
                                         _%hd134151134191%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g134144134183%_)))))))))))
          (let _%loop134081%_ ((_%rest134083%_
                                (_%flatten134079%_ _%bindings134077%_))
                               (_%locals134084%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-local-env))))
            (let* ((_%rest134085134096%_ _%rest134083%_)
                   (_%E134089134100%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching"
                               _%rest134085134096%_
                               '([(? identifier? id) . rest])
                               '((? identifier? id))
                               '(_)))
                      '#!void)))
              (let ((_%K134092134125%_
                     (lambda (_%rest134122%_ _%id134123%_)
                       (_%loop134081%_
                        _%rest134122%_
                        (cons (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _%id134123%_))
                              _%locals134084%_))))
                    (_%K134091134114%_
                     (lambda (_%id134112%_)
                       (cons (let ()
                               (declare (not safe))
                               (gxc#identifier-symbol _%id134112%_))
                             _%locals134084%_)))
                    (_%K134090134105%_ (lambda () _%locals134084%_)))
                (let ((_%try-match134087134119%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%rest134085134096%_))
                             (let ((_%id134117%_ _%rest134085134096%_))
                               (_%K134091134114%_ _%id134117%_))
                             (_%K134090134105%_)))))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%rest134085134096%_))
                      (let ((_%tl134094134130%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest134085134096%_)))
                            (_%hd134093134128%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest134085134096%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd134093134128%_))
                            (let ((_%id134133%_ _%hd134093134128%_)
                                  (_%rest134135%_ _%tl134094134130%_))
                              (_%K134092134125%_ _%rest134135%_ _%id134133%_))
                            (_%K134090134105%_)))
                      (_%try-match134087134119%_)))))))))
    (define gxc#xform-operands
      (lambda (_%self134029%_ _%stx134030%_)
        (let* ((_%g134032134043%_
                (lambda (_%g134033134040%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134033134040%_))))
               (_%g134031134074%_
                (lambda (_%g134033134046%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134033134046%_))
                      (let ((_%e134036134048%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134033134046%_))))
                        (let ((_%hd134037134051%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134036134048%_)))
                              (_%tl134038134053%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134036134048%_))))
                          ((lambda (_%L134056%_ _%L134057%_)
                             (let ((_%rands134072%_
                                    (map (lambda (_%g134067134069%_)
                                           (gxc#compile-e__1
                                            _%self134029%_
                                            _%g134067134069%_))
                                         _%L134056%_)))
                               (gxc#xform-wrap-source
                                (cons _%L134057%_ _%rands134072%_)
                                _%stx134030%_)))
                           _%tl134038134053%_
                           _%hd134037134051%_)))
                      (_%g134032134043%_ _%g134033134046%_)))))
          (_%g134031134074%_ _%stx134030%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self133959%_ _%stx133960%_)
        (let* ((_%g133962133979%_
                (lambda (_%g133963133976%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133963133976%_))))
               (_%g133961134026%_
                (lambda (_%g133963133982%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133963133982%_))
                      (let ((_%e133966133984%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133963133982%_))))
                        (let ((_%hd133967133987%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133966133984%_)))
                              (_%tl133968133989%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133966133984%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133968133989%_))
                              (let ((_%e133969133992%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133968133989%_))))
                                (let ((_%hd133970133995%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133969133992%_)))
                                      (_%tl133971133997%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133969133992%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133971133997%_))
                                      (let ((_%e133972134000%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133971133997%_))))
                                        (let ((_%hd133973134003%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133972134000%_)))
                                              (_%tl133974134005%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133972134000%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133974134005%_))
                                              ((lambda (_%L134008%_
                                                        _%L134009%_)
                                                 (let ((_%expr134024%_
                                                        (gxc#compile-e__1
                                                         _%self133959%_
                                                         _%L134008%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _%L134009%_
                                                                (cons _%expr134024%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx133960%_)))
                                               _%hd133973134003%_
                                               _%hd133970133995%_)
                                              (_%g133962133979%_
                                               _%g133963133982%_))))
                                      (_%g133962133979%_ _%g133963133982%_))))
                              (_%g133962133979%_ _%g133963133982%_))))
                      (_%g133962133979%_ _%g133963133982%_)))))
          (_%g133961134026%_ _%stx133960%_))))))
