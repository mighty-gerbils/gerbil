(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1783939350)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx201257%_)
        (if gxc#__DEBUG-COMPILE
            (let ((__tmp201479
                   (let ()
                     (declare (not safe))
                     (gx#syntax->datum _%stx201257%_))))
              (declare (not safe))
              (displayln '"@compile " __tmp201479))
            '#!void)
        (let* ((_%self201259%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e201261%_
                (let ((__tmp201480 (gxc#stx-car-e _%stx201257%_)))
                  (declare (not safe))
                  (method-ref _%self201259%_ __tmp201480))))
          (if _%$e201261%_
              (let ()
                (declare (not safe))
                (let ((_%$e201267%_ (gx#stx-source _%stx201257%_)))
                  (if _%$e201267%_
                      (call-with-parameters__1
                       (lambda () (_%$e201261%_ _%self201259%_ _%stx201257%_))
                       gxc#current-compile-context
                       (cons (cons '@ (cons _%$e201267%_ '()))
                             (let ((_%$e201274%_
                                    (gxc#current-compile-context)))
                               (if _%$e201274%_ _%$e201274%_ '()))))
                      (_%$e201261%_ _%self201259%_ _%stx201257%_))))
              (let ((__tmp201482 (gxc#stx-car-e _%stx201257%_))
                    (__tmp201481
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx201257%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self201259%_
                       __tmp201482
                       __tmp201481))))))
    (define gxc#compile-e__1
      (lambda (_%self201279%_ _%stx201280%_)
        (if gxc#__DEBUG-COMPILE
            (let ((__tmp201483
                   (let ()
                     (declare (not safe))
                     (gx#syntax->datum _%stx201280%_))))
              (declare (not safe))
              (displayln '"@compile " __tmp201483))
            '#!void)
        (let ((_%$e201282%_
               (let ((__tmp201484 (gxc#stx-car-e _%stx201280%_)))
                 (declare (not safe))
                 (method-ref _%self201279%_ __tmp201484))))
          (if _%$e201282%_
              (let ()
                (declare (not safe))
                (let ((_%$e201288%_ (gx#stx-source _%stx201280%_)))
                  (if _%$e201288%_
                      (call-with-parameters__1
                       (lambda () (_%$e201282%_ _%self201279%_ _%stx201280%_))
                       gxc#current-compile-context
                       (cons (cons '@ (cons _%$e201288%_ '()))
                             (let ((_%$e201295%_
                                    (gxc#current-compile-context)))
                               (if _%$e201295%_ _%$e201295%_ '()))))
                      (_%$e201282%_ _%self201279%_ _%stx201280%_))))
              (let ((__tmp201486 (gxc#stx-car-e _%stx201280%_))
                    (__tmp201485
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx201280%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self201279%_
                       __tmp201486
                       __tmp201485))))))
    (define gxc#compile-e
      (lambda _g201487_
        (let ((_g201488_ (let () (declare (not safe)) (##length _g201487_))))
          (cond ((let () (declare (not safe)) (##fx= _g201488_ 1))
                 (apply gxc#compile-e__0 _g201487_))
                ((let () (declare (not safe)) (##fx= _g201488_ 2))
                 (apply gxc#compile-e__1 _g201487_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g201487_))))))
    (define gxc#stx-car-e
      (lambda (_%stx201255%_)
        (let ((__tmp201489
               (car (let () (declare (not safe)) (gx#stx-e _%stx201255%_)))))
          (declare (not safe))
          (gx#stx-e __tmp201489))))
    (define gxc#void-method (lambda (_%self201252%_ _%stx201253%_) '#!void))
    (define gxc#false-method (lambda (_%self201249%_ _%stx201250%_) '#f))
    (define gxc#true-method (lambda (_%self201246%_ _%stx201247%_) '#t))
    (define gxc#identity-method
      (lambda (_%self201243%_ _%stx201244%_) _%stx201244%_))
    (define gxc#::void-expression::t
      (let ((__tmp201490 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp201490
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args201240%_
        (apply make-instance gxc#::void-expression::t _%$args201240%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp201491
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
        (__make-atomic-promise __tmp201491)))
    (define gxc#::void-special-form::t
      (let ((__tmp201492 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp201492
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args201236%_
        (apply make-instance gxc#::void-special-form::t _%$args201236%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp201493
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
                  '%#define-runtime
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::void-special-form::t
                  '%#declare
                  gxc#void-method)))))
        (declare (not safe))
        (__make-atomic-promise __tmp201493)))
    (define gxc#::void::t
      (let ((__tmp201494
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp201494 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args201232%_
        (apply make-instance gxc#::void::t _%$args201232%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp201495
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp201495)))
    (define gxc#::false-expression::t
      (let ((__tmp201496 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp201496
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args201228%_
        (apply make-instance gxc#::false-expression::t _%$args201228%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp201497
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
        (__make-atomic-promise __tmp201497)))
    (define gxc#::false-special-form::t
      (let ((__tmp201498 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp201498
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args201224%_
        (apply make-instance gxc#::false-special-form::t _%$args201224%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp201499
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
                  '%#define-runtime
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::false-special-form::t
                  '%#declare
                  gxc#false-method)))))
        (declare (not safe))
        (__make-atomic-promise __tmp201499)))
    (define gxc#::false::t
      (let ((__tmp201500
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp201500 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args201220%_
        (apply make-instance gxc#::false::t _%$args201220%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp201501
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp201501)))
    (define gxc#::identity-expression::t
      (let ((__tmp201502 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp201502
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args201216%_
        (apply make-instance gxc#::identity-expression::t _%$args201216%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp201503
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
        (__make-atomic-promise __tmp201503)))
    (define gxc#::identity-special-form::t
      (let ((__tmp201504 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp201504
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args201212%_
        (apply make-instance gxc#::identity-special-form::t _%$args201212%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp201505
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
                  '%#define-runtime
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::identity-special-form::t
                  '%#declare
                  gxc#identity-method)))))
        (declare (not safe))
        (__make-atomic-promise __tmp201505)))
    (define gxc#::identity::t
      (let ((__tmp201506
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp201506
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args201208%_
        (apply make-instance gxc#::identity::t _%$args201208%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp201507
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp201507)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp201508 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp201508
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args201204%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args201204%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp201509
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
        (__make-atomic-promise __tmp201509)))
    (define gxc#::basic-xform::t
      (let ((__tmp201510
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp201510
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args201200%_
        (apply make-instance gxc#::basic-xform::t _%$args201200%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp201511
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
        (__make-atomic-promise __tmp201511)))
    (define gxc#apply-begin%
      (lambda (_%self201156%_ _%stx201157%_)
        (let* ((_%$%g201159201169%_
                (lambda (_%$%g201160201166%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g201160201166%_))))
               (_%$%g201158201196%_
                (lambda (_%$%g201160201172%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g201160201172%_))
                      (let ((_%$%e201162201174%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g201160201172%_))))
                        (let ((_%$%hd201163201177%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e201162201174%_)))
                              (_%$%tl201164201179%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e201162201174%_))))
                          (for-each
                           (lambda (_%$%g201191201193%_)
                             (gxc#compile-e__1
                              _%self201156%_
                              _%$%g201191201193%_))
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl201164201179%_)))))
                      (_%$%g201159201169%_ _%$%g201160201172%_)))))
          (_%$%g201158201196%_ _%stx201157%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self201117%_ _%stx201118%_)
        (let* ((_%$%g201120201130%_
                (lambda (_%$%g201121201127%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g201121201127%_))))
               (_%$%g201119201153%_
                (lambda (_%$%g201121201133%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g201121201133%_))
                      (let ((_%$%e201123201135%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g201121201133%_))))
                        (let ((_%$%hd201124201138%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e201123201135%_)))
                              (_%$%tl201125201140%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e201123201135%_))))
                          (gxc#compile-e__1
                           _%self201117%_
                           (last _%$%tl201125201140%_))))
                      (_%$%g201120201130%_ _%$%g201121201133%_)))))
          (_%$%g201119201153%_ _%stx201118%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self201113%_ _%stx201114%_)
        (let ((__tmp201514
               (lambda () (gxc#apply-begin% _%self201113%_ _%stx201114%_)))
              (__tmp201512
               (let ((__tmp201513
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp201513 '1))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp201514
           gx#current-expander-phi
           __tmp201512))))
    (define gxc#apply-module%
      (lambda (_%self201052%_ _%stx201053%_)
        (let* ((_%$%g201055201069%_
                (lambda (_%$%g201056201066%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g201056201066%_))))
               (_%$%g201054201110%_
                (lambda (_%$%g201056201072%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g201056201072%_))
                      (let ((_%$%e201059201074%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g201056201072%_))))
                        (let ((_%$%hd201060201077%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e201059201074%_)))
                              (_%$%tl201061201079%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e201059201074%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl201061201079%_))
                              (let ((_%$%e201062201082%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl201061201079%_))))
                                (let ((_%$%hd201063201085%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e201062201082%_)))
                                      (_%$%tl201064201087%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e201062201082%_))))
                                  (let* ((_%ctx201104%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-local-e__0
                                             _%$%hd201063201085%_)))
                                         (_%ctx-stx201106%_
                                          (##structure-ref
                                           _%ctx201104%_
                                           '11
                                           gx#module-context::t
                                           '#f))
                                         (__tmp201515
                                          (lambda ()
                                            (gxc#compile-e__1
                                             _%self201052%_
                                             _%ctx-stx201106%_))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp201515
                                     gx#current-expander-context
                                     _%ctx201104%_))))
                              (_%$%g201055201069%_ _%$%g201056201072%_))))
                      (_%$%g201055201069%_ _%$%g201056201072%_)))))
          (_%$%g201054201110%_ _%stx201053%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self200984%_ _%stx200985%_)
        (let* ((_%$%g200987201004%_
                (lambda (_%$%g200988201001%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g200988201001%_))))
               (_%$%g200986201049%_
                (lambda (_%$%g200988201007%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g200988201007%_))
                      (let ((_%$%e200991201009%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g200988201007%_))))
                        (let ((_%$%hd200992201012%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e200991201009%_)))
                              (_%$%tl200993201014%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e200991201009%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl200993201014%_))
                              (let ((_%$%e200994201017%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl200993201014%_))))
                                (let ((_%$%hd200995201020%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e200994201017%_)))
                                      (_%$%tl200996201022%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e200994201017%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl200996201022%_))
                                      (let ((_%$%e200997201025%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl200996201022%_))))
                                        (let ((_%$%hd200998201028%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e200997201025%_)))
                                              (_%$%tl200999201030%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e200997201025%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl200999201030%_))
                                              (gxc#compile-e__1
                                               _%self200984%_
                                               _%$%hd200998201028%_)
                                              (_%$%g200987201004%_
                                               _%$%g200988201007%_))))
                                      (_%$%g200987201004%_
                                       _%$%g200988201007%_))))
                              (_%$%g200987201004%_ _%$%g200988201007%_))))
                      (_%$%g200987201004%_ _%$%g200988201007%_)))))
          (_%$%g200986201049%_ _%stx200985%_))))
    (define gxc#apply-define-values%
      (lambda (_%self200916%_ _%stx200917%_)
        (let* ((_%$%g200919200936%_
                (lambda (_%$%g200920200933%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g200920200933%_))))
               (_%$%g200918200981%_
                (lambda (_%$%g200920200939%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g200920200939%_))
                      (let ((_%$%e200923200941%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g200920200939%_))))
                        (let ((_%$%hd200924200944%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e200923200941%_)))
                              (_%$%tl200925200946%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e200923200941%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl200925200946%_))
                              (let ((_%$%e200926200949%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl200925200946%_))))
                                (let ((_%$%hd200927200952%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e200926200949%_)))
                                      (_%$%tl200928200954%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e200926200949%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl200928200954%_))
                                      (let ((_%$%e200929200957%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl200928200954%_))))
                                        (let ((_%$%hd200930200960%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e200929200957%_)))
                                              (_%$%tl200931200962%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e200929200957%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl200931200962%_))
                                              (gxc#compile-e__1
                                               _%self200916%_
                                               _%$%hd200930200960%_)
                                              (_%$%g200919200936%_
                                               _%$%g200920200939%_))))
                                      (_%$%g200919200936%_
                                       _%$%g200920200939%_))))
                              (_%$%g200919200936%_ _%$%g200920200939%_))))
                      (_%$%g200919200936%_ _%$%g200920200939%_)))))
          (_%$%g200918200981%_ _%stx200917%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self200847%_ _%stx200848%_)
        (let* ((_%$%g200850200867%_
                (lambda (_%$%g200851200864%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g200851200864%_))))
               (_%$%g200849200913%_
                (lambda (_%$%g200851200870%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g200851200870%_))
                      (let ((_%$%e200854200872%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g200851200870%_))))
                        (let ((_%$%hd200855200875%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e200854200872%_)))
                              (_%$%tl200856200877%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e200854200872%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl200856200877%_))
                              (let ((_%$%e200857200880%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl200856200877%_))))
                                (let ((_%$%hd200858200883%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e200857200880%_)))
                                      (_%$%tl200859200885%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e200857200880%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl200859200885%_))
                                      (let ((_%$%e200860200888%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl200859200885%_))))
                                        (let ((_%$%hd200861200891%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e200860200888%_)))
                                              (_%$%tl200862200893%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e200860200888%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl200862200893%_))
                                              (let ((__tmp201518
                                                     (lambda ()
                                                       (gxc#compile-e__1
                                                        _%self200847%_
                                                        _%$%hd200861200891%_)))
                                                    (__tmp201516
                                                     (let ((__tmp201517
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#current-expander-phi))))
                                                       (declare (not safe))
                                                       (##fx+ __tmp201517
                                                              '1))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp201518
                                                 gx#current-expander-phi
                                                 __tmp201516))
                                              (_%$%g200850200867%_
                                               _%$%g200851200870%_))))
                                      (_%$%g200850200867%_
                                       _%$%g200851200870%_))))
                              (_%$%g200850200867%_ _%$%g200851200870%_))))
                      (_%$%g200850200867%_ _%$%g200851200870%_)))))
          (_%$%g200849200913%_ _%stx200848%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self200779%_ _%stx200780%_)
        (let* ((_%$%g200782200799%_
                (lambda (_%$%g200783200796%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g200783200796%_))))
               (_%$%g200781200844%_
                (lambda (_%$%g200783200802%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g200783200802%_))
                      (let ((_%$%e200786200804%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g200783200802%_))))
                        (let ((_%$%hd200787200807%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e200786200804%_)))
                              (_%$%tl200788200809%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e200786200804%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl200788200809%_))
                              (let ((_%$%e200789200812%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl200788200809%_))))
                                (let ((_%$%hd200790200815%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e200789200812%_)))
                                      (_%$%tl200791200817%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e200789200812%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl200791200817%_))
                                      (let ((_%$%e200792200820%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl200791200817%_))))
                                        (let ((_%$%hd200793200823%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e200792200820%_)))
                                              (_%$%tl200794200825%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e200792200820%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl200794200825%_))
                                              (gxc#compile-e__1
                                               _%self200779%_
                                               _%$%hd200793200823%_)
                                              (_%$%g200782200799%_
                                               _%$%g200783200802%_))))
                                      (_%$%g200782200799%_
                                       _%$%g200783200802%_))))
                              (_%$%g200782200799%_ _%$%g200783200802%_))))
                      (_%$%g200782200799%_ _%$%g200783200802%_)))))
          (_%$%g200781200844%_ _%stx200780%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self200665%_ _%stx200666%_)
        (let* ((_%$%g200668200696%_
                (lambda (_%$%g200669200693%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g200669200693%_))))
               (_%$%g200667200776%_
                (lambda (_%$%g200669200699%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g200669200699%_))
                      (let ((_%$%e200672200701%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g200669200699%_))))
                        (let ((_%$%hd200673200704%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e200672200701%_)))
                              (_%$%tl200674200706%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e200672200701%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl200674200706%_))
                              (let ((_g201519_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl200674200706%_
                                        '0))))
                                (begin
                                  (let ((_g201520_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g201519_)
                                               (##values-length _g201519_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g201520_ 2)))
                                        (error "Context expects 2 values"
                                               _g201520_)))
                                  (let ((_%$%target200675200709%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g201519_ 0)))
                                        (_%$%tl200677200711%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g201519_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl200677200711%_))
                                        (letrec ((_%$%loop200678200714%_
                                                  (lambda (_%$%hd200676200717%_
                                                           _%$%body200682200719%_
                                                           _%$%hd200683200720%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd200676200717%_))
                                                        (let ((_%$%e200679200722%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%hd200676200717%_))))
                  (let ((_%$%lp-hd200680200725%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e200679200722%_)))
                        (_%$%lp-tl200681200727%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e200679200722%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%lp-hd200680200725%_))
                        (let ((_%$%e200686200730%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%lp-hd200680200725%_))))
                          (let ((_%$%hd200687200733%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e200686200730%_)))
                                (_%$%tl200688200735%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e200686200730%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl200688200735%_))
                                (let ((_%$%e200689200738%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl200688200735%_))))
                                  (let ((_%$%hd200690200741%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e200689200738%_)))
                                        (_%$%tl200691200743%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e200689200738%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl200691200743%_))
                                        (_%$%loop200678200714%_
                                         _%$%lp-tl200681200727%_
                                         (cons _%$%hd200690200741%_
                                               _%$%body200682200719%_)
                                         (cons _%$%hd200687200733%_
                                               _%$%hd200683200720%_))
                                        (_%$%g200668200696%_
                                         _%$%g200669200699%_))))
                                (_%$%g200668200696%_ _%$%g200669200699%_))))
                        (_%$%g200668200696%_ _%$%g200669200699%_))))
                (let ((_%$%body200684200746%_ (reverse _%$%body200682200719%_))
                      (_%$%hd200685200747%_ (reverse _%$%hd200683200720%_)))
                  (for-each
                   (lambda (_%$%g200764200766%_)
                     (gxc#compile-e__1 _%self200665%_ _%$%g200764200766%_))
                   (let ((__tmp201521
                          (lambda (_%$%g200768200771%_ _%$%g200769200773%_)
                            (cons _%$%g200768200771%_ _%$%g200769200773%_))))
                     (declare (not safe))
                     (foldr__0 __tmp201521 '() _%$%body200684200746%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop200678200714%_
                                           _%$%target200675200709%_
                                           '()
                                           '()))
                                        (_%$%g200668200696%_
                                         _%$%g200669200699%_)))))
                              (_%$%g200668200696%_ _%$%g200669200699%_))))
                      (_%$%g200668200696%_ _%$%g200669200699%_)))))
          (_%$%g200667200776%_ _%stx200666%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self200522%_ _%stx200523%_)
        (let* ((_%$%g200525200560%_
                (lambda (_%$%g200526200557%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g200526200557%_))))
               (_%$%g200524200662%_
                (lambda (_%$%g200526200563%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g200526200563%_))
                      (let ((_%$%e200530200565%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g200526200563%_))))
                        (let ((_%$%hd200531200568%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e200530200565%_)))
                              (_%$%tl200532200570%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e200530200565%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl200532200570%_))
                              (let ((_%$%e200533200573%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl200532200570%_))))
                                (let ((_%$%hd200534200576%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e200533200573%_)))
                                      (_%$%tl200535200578%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e200533200573%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%hd200534200576%_))
                                      (let ((_g201522_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%hd200534200576%_
                                                '0))))
                                        (begin
                                          (let ((_g201523_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g201522_)
                                                       (##values-length
                                                        _g201522_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g201523_ 2)))
                                                (error "Context expects 2 values"
                                                       _g201523_)))
                                          (let ((_%$%target200536200581%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g201522_ 0)))
                                                (_%$%tl200538200583%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g201522_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl200538200583%_))
                                                (letrec ((_%$%loop200539200586%_
                                                          (lambda (_%$%hd200537200589%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%expr200543200591%_
                           _%$%hd200544200592%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd200537200589%_))
                        (let ((_%$%e200540200594%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd200537200589%_))))
                          (let ((_%$%lp-hd200541200597%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e200540200594%_)))
                                (_%$%lp-tl200542200599%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e200540200594%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%lp-hd200541200597%_))
                                (let ((_%$%e200547200602%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%lp-hd200541200597%_))))
                                  (let ((_%$%hd200548200605%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e200547200602%_)))
                                        (_%$%tl200549200607%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e200547200602%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl200549200607%_))
                                        (let ((_%$%e200550200610%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl200549200607%_))))
                                          (let ((_%$%hd200551200613%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e200550200610%_)))
                                                (_%$%tl200552200615%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e200550200610%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl200552200615%_))
                                                (_%$%loop200539200586%_
                                                 _%$%lp-tl200542200599%_
                                                 (cons _%$%hd200551200613%_
                                                       _%$%expr200543200591%_)
                                                 (cons _%$%hd200548200605%_
                                                       _%$%hd200544200592%_))
                                                (_%$%g200525200560%_
                                                 _%$%g200526200563%_))))
                                        (_%$%g200525200560%_
                                         _%$%g200526200563%_))))
                                (_%$%g200525200560%_ _%$%g200526200563%_))))
                        (let ((_%$%expr200545200618%_
                               (reverse _%$%expr200543200591%_))
                              (_%$%hd200546200619%_
                               (reverse _%$%hd200544200592%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl200535200578%_))
                              (let ((_%$%e200553200621%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl200535200578%_))))
                                (let ((_%$%hd200554200624%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e200553200621%_)))
                                      (_%$%tl200555200626%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e200553200621%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl200555200626%_))
                                      (for-each
                                       (lambda (_%$%g200650200652%_)
                                         (gxc#compile-e__1
                                          _%self200522%_
                                          _%$%g200650200652%_))
                                       (let ((__tmp201525
                                              (lambda (_%$%g200654200657%_
                                                       _%$%g200655200659%_)
                                                (cons _%$%g200654200657%_
                                                      _%$%g200655200659%_)))
                                             (__tmp201524
                                              (cons _%$%hd200554200624%_ '())))
                                         (declare (not safe))
                                         (foldr__0
                                          __tmp201525
                                          __tmp201524
                                          _%$%expr200545200618%_)))
                                      (_%$%g200525200560%_
                                       _%$%g200526200563%_))))
                              (_%$%g200525200560%_ _%$%g200526200563%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop200539200586%_
                                                   _%$%target200536200581%_
                                                   '()
                                                   '()))
                                                (_%$%g200525200560%_
                                                 _%$%g200526200563%_)))))
                                      (_%$%g200525200560%_
                                       _%$%g200526200563%_))))
                              (_%$%g200525200560%_ _%$%g200526200563%_))))
                      (_%$%g200525200560%_ _%$%g200526200563%_)))))
          (_%$%g200524200662%_ _%stx200523%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self200467%_ _%stx200468%_)
        (let* ((_%$%g200470200484%_
                (lambda (_%$%g200471200481%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g200471200481%_))))
               (_%$%g200469200519%_
                (lambda (_%$%g200471200487%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g200471200487%_))
                      (let ((_%$%e200474200489%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g200471200487%_))))
                        (let ((_%$%hd200475200492%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e200474200489%_)))
                              (_%$%tl200476200494%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e200474200489%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl200476200494%_))
                              (let ((_%$%e200477200497%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl200476200494%_))))
                                (let ((_%$%hd200478200500%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e200477200497%_)))
                                      (_%$%tl200479200502%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e200477200497%_))))
                                  (gxc#compile-e__1
                                   _%self200467%_
                                   (last _%$%tl200479200502%_))))
                              (_%$%g200470200484%_ _%$%g200471200487%_))))
                      (_%$%g200470200484%_ _%$%g200471200487%_)))))
          (_%$%g200469200519%_ _%stx200468%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self200399%_ _%stx200400%_)
        (let* ((_%$%g200402200419%_
                (lambda (_%$%g200403200416%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g200403200416%_))))
               (_%$%g200401200464%_
                (lambda (_%$%g200403200422%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g200403200422%_))
                      (let ((_%$%e200406200424%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g200403200422%_))))
                        (let ((_%$%hd200407200427%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e200406200424%_)))
                              (_%$%tl200408200429%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e200406200424%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl200408200429%_))
                              (let ((_%$%e200409200432%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl200408200429%_))))
                                (let ((_%$%hd200410200435%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e200409200432%_)))
                                      (_%$%tl200411200437%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e200409200432%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl200411200437%_))
                                      (let ((_%$%e200412200440%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl200411200437%_))))
                                        (let ((_%$%hd200413200443%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e200412200440%_)))
                                              (_%$%tl200414200445%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e200412200440%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl200414200445%_))
                                              (gxc#compile-e__1
                                               _%self200399%_
                                               _%$%hd200413200443%_)
                                              (_%$%g200402200419%_
                                               _%$%g200403200422%_))))
                                      (_%$%g200402200419%_
                                       _%$%g200403200422%_))))
                              (_%$%g200402200419%_ _%$%g200403200422%_))))
                      (_%$%g200402200419%_ _%$%g200403200422%_)))))
          (_%$%g200401200464%_ _%stx200400%_))))
    (define gxc#apply-operands
      (lambda (_%self200314%_ _%stx200315%_)
        (let* ((_%$%g200317200336%_
                (lambda (_%$%g200318200333%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g200318200333%_))))
               (_%$%g200316200396%_
                (lambda (_%$%g200318200339%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g200318200339%_))
                      (let ((_%$%e200320200341%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g200318200339%_))))
                        (let ((_%$%hd200321200344%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e200320200341%_)))
                              (_%$%tl200322200346%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e200320200341%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl200322200346%_))
                              (let ((_g201526_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl200322200346%_
                                        '0))))
                                (begin
                                  (let ((_g201527_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g201526_)
                                               (##values-length _g201526_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g201527_ 2)))
                                        (error "Context expects 2 values"
                                               _g201527_)))
                                  (let ((_%$%target200323200349%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g201526_ 0)))
                                        (_%$%tl200325200351%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g201526_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl200325200351%_))
                                        (letrec ((_%$%loop200326200354%_
                                                  (lambda (_%$%hd200324200357%_
                                                           _%$%rands200330200359%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd200324200357%_))
                                                        (let ((_%$%e200327200361%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%hd200324200357%_))))
                  (let ((_%$%lp-hd200328200364%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e200327200361%_)))
                        (_%$%lp-tl200329200366%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e200327200361%_))))
                    (_%$%loop200326200354%_
                     _%$%lp-tl200329200366%_
                     (cons _%$%lp-hd200328200364%_ _%$%rands200330200359%_))))
                (let ((_%$%rands200331200369%_
                       (reverse _%$%rands200330200359%_)))
                  (for-each
                   (lambda (_%$%g200384200386%_)
                     (gxc#compile-e__1 _%self200314%_ _%$%g200384200386%_))
                   (let ((__tmp201528
                          (lambda (_%$%g200388200391%_ _%$%g200389200393%_)
                            (cons _%$%g200388200391%_ _%$%g200389200393%_))))
                     (declare (not safe))
                     (foldr__0 __tmp201528 '() _%$%rands200331200369%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop200326200354%_
                                           _%$%target200323200349%_
                                           '()))
                                        (_%$%g200317200336%_
                                         _%$%g200318200339%_)))))
                              (_%$%g200317200336%_ _%$%g200318200339%_))))
                      (_%$%g200317200336%_ _%$%g200318200339%_)))))
          (_%$%g200316200396%_ _%stx200315%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx200311%_ _%src-stx200312%_)
        (let ((__tmp201529
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx200312%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx200311%_ __tmp201529))))
    (define gxc#xform-wrap-apply
      (lambda (_%stx200307%_ _%src-stx200308%_ _%ctx200309%_)
        (gxc#compile-e__1
         _%ctx200309%_
         (gxc#xform-wrap-source _%stx200307%_ _%src-stx200308%_))))
    (define gxc#xform-begin%
      (lambda (_%self200262%_ _%stx200263%_)
        (let* ((_%$%g200265200275%_
                (lambda (_%$%g200266200272%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g200266200272%_))))
               (_%$%g200264200304%_
                (lambda (_%$%g200266200278%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g200266200278%_))
                      (let ((_%$%e200268200280%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g200266200278%_))))
                        (let ((_%$%hd200269200283%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e200268200280%_)))
                              (_%$%tl200270200285%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e200268200280%_))))
                          (let ((_%forms200302%_
                                 (map (lambda (_%$%g200297200299%_)
                                        (gxc#compile-e__1
                                         _%self200262%_
                                         _%$%g200297200299%_))
                                      _%$%tl200270200285%_)))
                            (gxc#xform-wrap-source
                             (cons '%#begin _%forms200302%_)
                             _%stx200263%_))))
                      (_%$%g200265200275%_ _%$%g200266200278%_)))))
          (_%$%g200264200304%_ _%stx200263%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self200216%_ _%stx200217%_)
        (let* ((_%$%g200219200229%_
                (lambda (_%$%g200220200226%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g200220200226%_))))
               (_%$%g200218200259%_
                (lambda (_%$%g200220200232%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g200220200232%_))
                      (let ((_%$%e200222200234%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g200220200232%_))))
                        (let ((_%$%hd200223200237%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e200222200234%_)))
                              (_%$%tl200224200239%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e200222200234%_))))
                          (let ((__tmp201532
                                 (lambda ()
                                   (let ((_%forms200257%_
                                          (map (lambda (_%$%g200252200254%_)
                                                 (gxc#compile-e__1
                                                  _%self200216%_
                                                  _%$%g200252200254%_))
                                               _%$%tl200224200239%_)))
                                     (gxc#xform-wrap-source
                                      (cons '%#begin-syntax _%forms200257%_)
                                      _%stx200217%_))))
                                (__tmp201530
                                 (let ((__tmp201531
                                        (let ()
                                          (declare (not safe))
                                          (gx#current-expander-phi))))
                                   (declare (not safe))
                                   (##fx+ __tmp201531 '1))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp201532
                             gx#current-expander-phi
                             __tmp201530))))
                      (_%$%g200219200229%_ _%$%g200220200232%_)))))
          (_%$%g200218200259%_ _%stx200217%_))))
    (define gxc#xform-module%
      (lambda (_%self200153%_ _%stx200154%_)
        (let* ((_%$%g200156200170%_
                (lambda (_%$%g200157200167%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g200157200167%_))))
               (_%$%g200155200213%_
                (lambda (_%$%g200157200173%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g200157200173%_))
                      (let ((_%$%e200160200175%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g200157200173%_))))
                        (let ((_%$%hd200161200178%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e200160200175%_)))
                              (_%$%tl200162200180%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e200160200175%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl200162200180%_))
                              (let ((_%$%e200163200183%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl200162200180%_))))
                                (let ((_%$%hd200164200186%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e200163200183%_)))
                                      (_%$%tl200165200188%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e200163200183%_))))
                                  (let* ((_%ctx200205%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-local-e__0
                                             _%$%hd200164200186%_)))
                                         (_%code200207%_
                                          (##structure-ref
                                           _%ctx200205%_
                                           '11
                                           gx#module-context::t
                                           '#f))
                                         (_%code200210%_
                                          (let ((__tmp201533
                                                 (lambda ()
                                                   (gxc#compile-e__1
                                                    _%self200153%_
                                                    _%code200207%_))))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp201533
                                             gx#current-expander-context
                                             _%ctx200205%_))))
                                    (##structure-set!
                                     _%ctx200205%_
                                     _%code200210%_
                                     '11
                                     gx#module-context::t
                                     '#f)
                                    (gxc#xform-wrap-source
                                     (cons '%#module
                                           (cons _%$%hd200164200186%_
                                                 (cons _%code200210%_ '())))
                                     _%stx200154%_))))
                              (_%$%g200156200170%_ _%$%g200157200173%_))))
                      (_%$%g200156200170%_ _%$%g200157200173%_)))))
          (_%$%g200155200213%_ _%stx200154%_))))
    (define gxc#xform-define-values%
      (lambda (_%self200083%_ _%stx200084%_)
        (let* ((_%$%g200086200103%_
                (lambda (_%$%g200087200100%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g200087200100%_))))
               (_%$%g200085200150%_
                (lambda (_%$%g200087200106%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g200087200106%_))
                      (let ((_%$%e200090200108%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g200087200106%_))))
                        (let ((_%$%hd200091200111%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e200090200108%_)))
                              (_%$%tl200092200113%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e200090200108%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl200092200113%_))
                              (let ((_%$%e200093200116%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl200092200113%_))))
                                (let ((_%$%hd200094200119%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e200093200116%_)))
                                      (_%$%tl200095200121%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e200093200116%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl200095200121%_))
                                      (let ((_%$%e200096200124%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl200095200121%_))))
                                        (let ((_%$%hd200097200127%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e200096200124%_)))
                                              (_%$%tl200098200129%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e200096200124%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl200098200129%_))
                                              (let ((_%expr200148%_
                                                     (gxc#compile-e__1
                                                      _%self200083%_
                                                      _%$%hd200097200127%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#define-values
                                                       (cons _%$%hd200094200119%_
                                                             (cons _%expr200148%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%stx200084%_))
                                              (_%$%g200086200103%_
                                               _%$%g200087200106%_))))
                                      (_%$%g200086200103%_
                                       _%$%g200087200106%_))))
                              (_%$%g200086200103%_ _%$%g200087200106%_))))
                      (_%$%g200086200103%_ _%$%g200087200106%_)))))
          (_%$%g200085200150%_ _%stx200084%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self200012%_ _%stx200013%_)
        (let* ((_%$%g200015200032%_
                (lambda (_%$%g200016200029%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g200016200029%_))))
               (_%$%g200014200080%_
                (lambda (_%$%g200016200035%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g200016200035%_))
                      (let ((_%$%e200019200037%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g200016200035%_))))
                        (let ((_%$%hd200020200040%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e200019200037%_)))
                              (_%$%tl200021200042%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e200019200037%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl200021200042%_))
                              (let ((_%$%e200022200045%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl200021200042%_))))
                                (let ((_%$%hd200023200048%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e200022200045%_)))
                                      (_%$%tl200024200050%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e200022200045%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl200024200050%_))
                                      (let ((_%$%e200025200053%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl200024200050%_))))
                                        (let ((_%$%hd200026200056%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e200025200053%_)))
                                              (_%$%tl200027200058%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e200025200053%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl200027200058%_))
                                              (let ((__tmp201536
                                                     (lambda ()
                                                       (let ((_%expr200078%_
                                                              (gxc#compile-e__1
                                                               _%self200012%_
                                                               _%$%hd200026200056%_)))
                                                         (gxc#xform-wrap-source
                                                          (cons '%#define-syntax
                                                                (cons _%$%hd200023200048%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%expr200078%_ '())))
                  _%stx200013%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp201534
                                                     (let ((__tmp201535
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#current-expander-phi))))
                                                       (declare (not safe))
                                                       (##fx+ __tmp201535
                                                              '1))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp201536
                                                 gx#current-expander-phi
                                                 __tmp201534))
                                              (_%$%g200015200032%_
                                               _%$%g200016200035%_))))
                                      (_%$%g200015200032%_
                                       _%$%g200016200035%_))))
                              (_%$%g200015200032%_ _%$%g200016200035%_))))
                      (_%$%g200015200032%_ _%$%g200016200035%_)))))
          (_%$%g200014200080%_ _%stx200013%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self199942%_ _%stx199943%_)
        (let* ((_%$%g199945199962%_
                (lambda (_%$%g199946199959%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g199946199959%_))))
               (_%$%g199944200009%_
                (lambda (_%$%g199946199965%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g199946199965%_))
                      (let ((_%$%e199949199967%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g199946199965%_))))
                        (let ((_%$%hd199950199970%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e199949199967%_)))
                              (_%$%tl199951199972%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e199949199967%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl199951199972%_))
                              (let ((_%$%e199952199975%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl199951199972%_))))
                                (let ((_%$%hd199953199978%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e199952199975%_)))
                                      (_%$%tl199954199980%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e199952199975%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl199954199980%_))
                                      (let ((_%$%e199955199983%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl199954199980%_))))
                                        (let ((_%$%hd199956199986%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e199955199983%_)))
                                              (_%$%tl199957199988%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e199955199983%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl199957199988%_))
                                              (let ((_%expr200007%_
                                                     (gxc#compile-e__1
                                                      _%self199942%_
                                                      _%$%hd199956199986%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#begin-annotation
                                                       (cons _%$%hd199953199978%_
                                                             (cons _%expr200007%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%stx199943%_))
                                              (_%$%g199945199962%_
                                               _%$%g199946199965%_))))
                                      (_%$%g199945199962%_
                                       _%$%g199946199965%_))))
                              (_%$%g199945199962%_ _%$%g199946199965%_))))
                      (_%$%g199945199962%_ _%$%g199946199965%_)))))
          (_%$%g199944200009%_ _%stx199943%_))))
    (define gxc#xform-lambda%
      (lambda (_%self199880%_ _%stx199881%_)
        (let* ((_%$%g199883199897%_
                (lambda (_%$%g199884199894%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g199884199894%_))))
               (_%$%g199882199939%_
                (lambda (_%$%g199884199900%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g199884199900%_))
                      (let ((_%$%e199887199902%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g199884199900%_))))
                        (let ((_%$%hd199888199905%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e199887199902%_)))
                              (_%$%tl199889199907%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e199887199902%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl199889199907%_))
                              (let ((_%$%e199890199910%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl199889199907%_))))
                                (let ((_%$%hd199891199913%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e199890199910%_)))
                                      (_%$%tl199892199915%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e199890199910%_))))
                                  (let ((__tmp201538
                                         (lambda ()
                                           (let ((_%body199937%_
                                                  (map (lambda (_%$%g199932199934%_)
                                                         (gxc#compile-e__1
                                                          _%self199880%_
                                                          _%$%g199932199934%_))
                                                       _%$%tl199892199915%_)))
                                             (gxc#xform-wrap-source
                                              (cons '%#lambda
                                                    (cons _%$%hd199891199913%_
                                                          _%body199937%_))
                                              _%stx199881%_))))
                                        (__tmp201537
                                         (gxc#xform-let-locals
                                          _%$%hd199891199913%_)))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp201538
                                     gxc#current-compile-local-env
                                     __tmp201537))))
                              (_%$%g199883199897%_ _%$%g199884199900%_))))
                      (_%$%g199883199897%_ _%$%g199884199900%_)))))
          (_%$%g199882199939%_ _%stx199881%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self199788%_ _%stx199789%_)
        (letrec ((_%clause-e199791%_
                  (lambda (_%clause199832%_)
                    (let* ((_%$%g199834199845%_
                            (lambda (_%$%g199835199842%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g199835199842%_))))
                           (_%$%g199833199877%_
                            (lambda (_%$%g199835199848%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%g199835199848%_))
                                  (let ((_%$%e199838199850%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%g199835199848%_))))
                                    (let ((_%$%hd199839199853%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e199838199850%_)))
                                          (_%$%tl199840199855%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e199838199850%_))))
                                      (let ((__tmp201540
                                             (lambda ()
                                               (let ((_%body199875%_
                                                      (map (lambda (_%$%g199870199872%_)
                                                             (gxc#compile-e__1
                                                              _%self199788%_
                                                              _%$%g199870199872%_))
                                                           _%$%tl199840199855%_)))
                                                 (cons _%$%hd199839199853%_
                                                       _%body199875%_))))
                                            (__tmp201539
                                             (gxc#xform-let-locals
                                              _%$%hd199839199853%_)))
                                        (declare (not safe))
                                        (call-with-parameters__1
                                         __tmp201540
                                         gxc#current-compile-local-env
                                         __tmp201539))))
                                  (_%$%g199834199845%_ _%$%g199835199848%_)))))
                      (_%$%g199833199877%_ _%clause199832%_)))))
          (let* ((_%$%g199793199803%_
                  (lambda (_%$%g199794199800%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%$%g199794199800%_))))
                 (_%$%g199792199829%_
                  (lambda (_%$%g199794199806%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%g199794199806%_))
                        (let ((_%$%e199796199808%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%g199794199806%_))))
                          (let ((_%$%hd199797199811%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e199796199808%_)))
                                (_%$%tl199798199813%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e199796199808%_))))
                            (let ((_%clauses199827%_
                                   (map _%clause-e199791%_
                                        _%$%tl199798199813%_)))
                              (gxc#xform-wrap-source
                               (cons '%#case-lambda _%clauses199827%_)
                               _%stx199789%_))))
                        (_%$%g199793199803%_ _%$%g199794199806%_)))))
            (_%$%g199792199829%_ _%stx199789%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self199548%_ _%stx199549%_)
        (let* ((_%$%g199551199584%_
                (lambda (_%$%g199552199581%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g199552199581%_))))
               (_%$%g199550199785%_
                (lambda (_%$%g199552199587%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g199552199587%_))
                      (let ((_%$%e199557199589%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g199552199587%_))))
                        (let ((_%$%hd199558199592%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e199557199589%_)))
                              (_%$%tl199559199594%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e199557199589%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl199559199594%_))
                              (let ((_%$%e199560199597%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl199559199594%_))))
                                (let ((_%$%hd199561199600%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e199560199597%_)))
                                      (_%$%tl199562199602%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e199560199597%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%hd199561199600%_))
                                      (let ((_g201541_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%hd199561199600%_
                                                '0))))
                                        (begin
                                          (let ((_g201542_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g201541_)
                                                       (##values-length
                                                        _g201541_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g201542_ 2)))
                                                (error "Context expects 2 values"
                                                       _g201542_)))
                                          (let ((_%$%target199563199605%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g201541_ 0)))
                                                (_%$%tl199565199607%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g201541_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl199565199607%_))
                                                (letrec ((_%$%loop199566199610%_
                                                          (lambda (_%$%hd199564199613%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%expr199570199615%_
                           _%$%hd199571199616%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd199564199613%_))
                        (let ((_%$%e199567199618%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd199564199613%_))))
                          (let ((_%$%lp-hd199568199621%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e199567199618%_)))
                                (_%$%lp-tl199569199623%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e199567199618%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%lp-hd199568199621%_))
                                (let ((_%$%e199574199626%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%lp-hd199568199621%_))))
                                  (let ((_%$%hd199575199629%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e199574199626%_)))
                                        (_%$%tl199576199631%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e199574199626%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl199576199631%_))
                                        (let ((_%$%e199577199634%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl199576199631%_))))
                                          (let ((_%$%hd199578199637%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e199577199634%_)))
                                                (_%$%tl199579199639%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e199577199634%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl199579199639%_))
                                                (_%$%loop199566199610%_
                                                 _%$%lp-tl199569199623%_
                                                 (cons _%$%hd199578199637%_
                                                       _%$%expr199570199615%_)
                                                 (cons _%$%hd199575199629%_
                                                       _%$%hd199571199616%_))
                                                (_%$%g199551199584%_
                                                 _%$%g199552199587%_))))
                                        (_%$%g199551199584%_
                                         _%$%g199552199587%_))))
                                (_%$%g199551199584%_ _%$%g199552199587%_))))
                        (let ((_%$%expr199572199642%_
                               (reverse _%$%expr199570199615%_))
                              (_%$%hd199573199643%_
                               (reverse _%$%hd199571199616%_)))
                          (let* ((_%$%g199667199683%_
                                  (lambda (_%$%g199668199680%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%$%g199668199680%_))))
                                 (_%$%g199666199771%_
                                  (lambda (_%$%g199668199686%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%$%g199668199686%_))
                                        (let ((_g201543_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%$%g199668199686%_
                                                  '0))))
                                          (begin
                                            (let ((_g201544_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g201543_)
                                                         (##values-length
                                                          _g201543_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g201544_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g201544_)))
                                            (let ((_%$%target199670199688%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g201543_
                                                      0)))
                                                  (_%$%tl199672199690%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g201543_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%$%tl199672199690%_))
                                                  (letrec ((_%$%loop199673199693%_
                                                            (lambda (_%$%hd199671199696%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%expr199677199698%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%hd199671199696%_))
                          (let ((_%$%e199674199700%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%hd199671199696%_))))
                            (let ((_%$%lp-hd199675199703%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e199674199700%_)))
                                  (_%$%lp-tl199676199705%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e199674199700%_))))
                              (_%$%loop199673199693%_
                               _%$%lp-tl199676199705%_
                               (cons _%$%lp-hd199675199703%_
                                     _%$%expr199677199698%_))))
                          (let ((_%$%expr199678199708%_
                                 (reverse _%$%expr199677199698%_)))
                            (let ((__tmp201547
                                   (lambda ()
                                     (let* ((_%$%g199724199731%_
                                             (lambda (_%$%g199725199728%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%$%g199725199728%_))))
                                            (_%$%g199723199757%_
                                             (lambda (_%$%g199725199734%_)
                                               (gxc#xform-wrap-source
                                                (cons _%$%hd199558199592%_
                                                      (cons (begin
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-check-splice-targets
                         _%$%expr199678199708%_
                         _%$%hd199573199643%_))
                      (let ((__tmp201548
                             (lambda (_%$%g199746199750%_
                                      _%$%g199747199752%_
                                      _%$%g199748199754%_)
                               (cons (cons _%$%g199747199752%_
                                           (cons _%$%g199746199750%_ '()))
                                     _%$%g199748199754%_))))
                        (declare (not safe))
                        (foldr__1
                         __tmp201548
                         '()
                         _%$%expr199678199708%_
                         _%$%hd199573199643%_)))
                    _%$%g199725199734%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%stx199549%_))))
                                       (_%$%g199723199757%_
                                        (map (lambda (_%$%g199759199761%_)
                                               (gxc#compile-e__1
                                                _%self199548%_
                                                _%$%g199759199761%_))
                                             _%$%tl199562199602%_)))))
                                  (__tmp201545
                                   (gxc#xform-let-locals
                                    (let ((__tmp201546
                                           (lambda (_%$%g199763199766%_
                                                    _%$%g199764199768%_)
                                             (cons _%$%g199763199766%_
                                                   _%$%g199764199768%_))))
                                      (declare (not safe))
                                      (foldr__0
                                       __tmp201546
                                       '()
                                       _%$%hd199573199643%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp201547
                               gxc#current-compile-local-env
                               __tmp201545)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%loop199673199693%_
                                                     _%$%target199670199688%_
                                                     '()))
                                                  (_%$%g199667199683%_
                                                   _%$%g199668199686%_)))))
                                        (_%$%g199667199683%_
                                         _%$%g199668199686%_)))))
                            (_%$%g199666199771%_
                             (map (lambda (_%$%g199773199775%_)
                                    (gxc#compile-e__1
                                     _%self199548%_
                                     _%$%g199773199775%_))
                                  (let ((__tmp201549
                                         (lambda (_%$%g199777199780%_
                                                  _%$%g199778199782%_)
                                           (cons _%$%g199777199780%_
                                                 _%$%g199778199782%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp201549
                                     '()
                                     _%$%expr199572199642%_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop199566199610%_
                                                   _%$%target199563199605%_
                                                   '()
                                                   '()))
                                                (_%$%g199551199584%_
                                                 _%$%g199552199587%_)))))
                                      (_%$%g199551199584%_
                                       _%$%g199552199587%_))))
                              (_%$%g199551199584%_ _%$%g199552199587%_))))
                      (_%$%g199551199584%_ _%$%g199552199587%_)))))
          (_%$%g199550199785%_ _%stx199549%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self199308%_ _%stx199309%_)
        (let* ((_%$%g199311199344%_
                (lambda (_%$%g199312199341%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g199312199341%_))))
               (_%$%g199310199545%_
                (lambda (_%$%g199312199347%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g199312199347%_))
                      (let ((_%$%e199317199349%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g199312199347%_))))
                        (let ((_%$%hd199318199352%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e199317199349%_)))
                              (_%$%tl199319199354%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e199317199349%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl199319199354%_))
                              (let ((_%$%e199320199357%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl199319199354%_))))
                                (let ((_%$%hd199321199360%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e199320199357%_)))
                                      (_%$%tl199322199362%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e199320199357%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%hd199321199360%_))
                                      (let ((_g201550_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%hd199321199360%_
                                                '0))))
                                        (begin
                                          (let ((_g201551_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g201550_)
                                                       (##values-length
                                                        _g201550_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g201551_ 2)))
                                                (error "Context expects 2 values"
                                                       _g201551_)))
                                          (let ((_%$%target199323199365%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g201550_ 0)))
                                                (_%$%tl199325199367%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g201550_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl199325199367%_))
                                                (letrec ((_%$%loop199326199370%_
                                                          (lambda (_%$%hd199324199373%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%expr199330199375%_
                           _%$%hd199331199376%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd199324199373%_))
                        (let ((_%$%e199327199378%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd199324199373%_))))
                          (let ((_%$%lp-hd199328199381%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e199327199378%_)))
                                (_%$%lp-tl199329199383%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e199327199378%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%lp-hd199328199381%_))
                                (let ((_%$%e199334199386%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%lp-hd199328199381%_))))
                                  (let ((_%$%hd199335199389%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e199334199386%_)))
                                        (_%$%tl199336199391%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e199334199386%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl199336199391%_))
                                        (let ((_%$%e199337199394%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl199336199391%_))))
                                          (let ((_%$%hd199338199397%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e199337199394%_)))
                                                (_%$%tl199339199399%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e199337199394%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl199339199399%_))
                                                (_%$%loop199326199370%_
                                                 _%$%lp-tl199329199383%_
                                                 (cons _%$%hd199338199397%_
                                                       _%$%expr199330199375%_)
                                                 (cons _%$%hd199335199389%_
                                                       _%$%hd199331199376%_))
                                                (_%$%g199311199344%_
                                                 _%$%g199312199347%_))))
                                        (_%$%g199311199344%_
                                         _%$%g199312199347%_))))
                                (_%$%g199311199344%_ _%$%g199312199347%_))))
                        (let ((_%$%expr199332199402%_
                               (reverse _%$%expr199330199375%_))
                              (_%$%hd199333199403%_
                               (reverse _%$%hd199331199376%_)))
                          (let ((__tmp201554
                                 (lambda ()
                                   (let* ((_%$%g199428199444%_
                                           (lambda (_%$%g199429199441%_)
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%$%g199429199441%_))))
                                          (_%$%g199427199524%_
                                           (lambda (_%$%g199429199447%_)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair/null?
                                                    _%$%g199429199447%_))
                                                 (let ((_g201555_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-split-splice
                                                           _%$%g199429199447%_
                                                           '0))))
                                                   (begin
                                                     (let ((_g201556_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g201555_)
                          (##values-length _g201555_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g201556_ 2)))
                   (error "Context expects 2 values" _g201556_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%$%target199431199449%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g201555_
                                                               0)))
                                                           (_%$%tl199433199451%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g201555_
                                                               1))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%$%tl199433199451%_))
                                                           (letrec ((_%$%loop199434199454%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%$%hd199432199457%_
                                      _%$%expr199438199459%_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%hd199432199457%_))
                                   (let ((_%$%e199435199461%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e
                                             _%$%hd199432199457%_))))
                                     (let ((_%$%lp-hd199436199464%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e199435199461%_)))
                                           (_%$%lp-tl199437199466%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e199435199461%_))))
                                       (_%$%loop199434199454%_
                                        _%$%lp-tl199437199466%_
                                        (cons _%$%lp-hd199436199464%_
                                              _%$%expr199438199459%_))))
                                   (let* ((_%$%expr199439199469%_
                                           (reverse _%$%expr199438199459%_))
                                          (_%$%g199485199492%_
                                           (lambda (_%$%g199486199489%_)
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%$%g199486199489%_))))
                                          (_%$%g199484199517%_
                                           (lambda (_%$%g199486199495%_)
                                             (gxc#xform-wrap-source
                                              (cons _%$%hd199318199352%_
                                                    (cons (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _%$%expr199439199469%_
                                                               _%$%hd199333199403%_))
                                                            (let ((__tmp201557
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%$%g199506199510%_
                                    _%$%g199507199512%_
                                    _%$%g199508199514%_)
                             (cons (cons _%$%g199507199512%_
                                         (cons _%$%g199506199510%_ '()))
                                   _%$%g199508199514%_))))
                      (declare (not safe))
                      (foldr__1
                       __tmp201557
                       '()
                       _%$%expr199439199469%_
                       _%$%hd199333199403%_)))
                  _%$%g199486199495%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%stx199309%_))))
                                     (_%$%g199484199517%_
                                      (map (lambda (_%$%g199519199521%_)
                                             (gxc#compile-e__1
                                              _%self199308%_
                                              _%$%g199519199521%_))
                                           _%$%tl199322199362%_)))))))
                     (_%$%loop199434199454%_ _%$%target199431199449%_ '()))
                   (_%$%g199428199444%_ _%$%g199429199447%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g199428199444%_
                                                  _%$%g199429199447%_)))))
                                     (_%$%g199427199524%_
                                      (map (lambda (_%$%g199526199528%_)
                                             (gxc#compile-e__1
                                              _%self199308%_
                                              _%$%g199526199528%_))
                                           (let ((__tmp201558
                                                  (lambda (_%$%g199530199533%_
                                                           _%$%g199531199535%_)
                                                    (cons _%$%g199530199533%_
                                                          _%$%g199531199535%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp201558
                                              '()
                                              _%$%expr199332199402%_)))))))
                                (__tmp201552
                                 (gxc#xform-let-locals
                                  (let ((__tmp201553
                                         (lambda (_%$%g199537199540%_
                                                  _%$%g199538199542%_)
                                           (cons _%$%g199537199540%_
                                                 _%$%g199538199542%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp201553
                                     '()
                                     _%$%hd199333199403%_)))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp201554
                             gxc#current-compile-local-env
                             __tmp201552)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop199326199370%_
                                                   _%$%target199323199365%_
                                                   '()
                                                   '()))
                                                (_%$%g199311199344%_
                                                 _%$%g199312199347%_)))))
                                      (_%$%g199311199344%_
                                       _%$%g199312199347%_))))
                              (_%$%g199311199344%_ _%$%g199312199347%_))))
                      (_%$%g199311199344%_ _%$%g199312199347%_)))))
          (_%$%g199310199545%_ _%stx199309%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings199175%_)
        (letrec ((_%flatten199177%_
                  (lambda (_%maybe-lst199235%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%maybe-lst199235%_))
                        (cons _%maybe-lst199235%_ '())
                        (let _%loop199237%_ ((_%rest199239%_
                                              _%maybe-lst199235%_)
                                             (_%result199240%_ '()))
                          (let* ((_%__stx201444201445%_ _%rest199239%_)
                                 (_%$%g199244199256%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx201444201445%_)))))
                            (let ((_%__kont201446201447%_
                                   (lambda (_%$%g199246199294%_
                                            _%$%g199247199295%_)
                                     (_%loop199237%_
                                      _%$%g199246199294%_
                                      (let ((__tmp201559
                                             (_%flatten199177%_
                                              _%$%g199247199295%_)))
                                        (declare (not safe))
                                        (foldl__0
                                         cons
                                         _%result199240%_
                                         __tmp201559)))))
                                  (_%__kont201448201449%_
                                   (lambda (_%$%g199251199268%_)
                                     (cons _%$%g199251199268%_
                                           _%result199240%_)))
                                  (_%__kont201450201451%_
                                   (lambda () _%result199240%_)))
                              (let ((_%$%g199242199281%_
                                     (lambda ()
                                       (let ((_%$%g199251199268%_
                                              _%__stx201444201445%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%$%g199251199268%_))
                                             (_%__kont201448201449%_
                                              _%$%g199251199268%_)
                                             (_%__kont201450201451%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx201444201445%_))
                                    (let ((_%$%e199248199286%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx201444201445%_))))
                                      (let ((_%$%tl199250199291%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e199248199286%_)))
                                            (_%$%hd199249199289%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e199248199286%_))))
                                        (_%__kont201446201447%_
                                         _%$%tl199250199291%_
                                         _%$%hd199249199289%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g199242199281%_)))))))))))
          (let _%loop199179%_ ((_%rest199181%_
                                (_%flatten199177%_ _%bindings199175%_))
                               (_%locals199182%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-local-env))))
            (let* ((_%$%rest199183199194%_ _%rest199181%_)
                   (_%$%E199187199198%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching"
                               _%$%rest199183199194%_
                               '([(? identifier? id) . rest])
                               '((? identifier? id))
                               '(_)))
                      '#!void)))
              (let ((_%$%K199190199223%_
                     (lambda (_%rest199220%_ _%id199221%_)
                       (_%loop199179%_
                        _%rest199220%_
                        (cons (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _%id199221%_))
                              _%locals199182%_))))
                    (_%$%K199189199212%_
                     (lambda (_%id199210%_)
                       (cons (let ()
                               (declare (not safe))
                               (gxc#identifier-symbol _%id199210%_))
                             _%locals199182%_)))
                    (_%$%K199188199203%_ (lambda () _%locals199182%_)))
                (let ((_%$%try-match199185199217%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%$%rest199183199194%_))
                             (let ((_%id199215%_ _%$%rest199183199194%_))
                               (_%$%K199189199212%_ _%id199215%_))
                             (_%$%K199188199203%_)))))
                  (if (pair? _%$%rest199183199194%_)
                      (let ((_%$%tl199192199228%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%rest199183199194%_)))
                            (_%$%hd199191199226%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%rest199183199194%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%$%hd199191199226%_))
                            (let ((_%id199231%_ _%$%hd199191199226%_)
                                  (_%rest199233%_ _%$%tl199192199228%_))
                              (_%$%K199190199223%_
                               _%rest199233%_
                               _%id199231%_))
                            (_%$%K199188199203%_)))
                      (_%$%try-match199185199217%_)))))))))
    (define gxc#xform-operands
      (lambda (_%self199127%_ _%stx199128%_)
        (let* ((_%$%g199130199141%_
                (lambda (_%$%g199131199138%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g199131199138%_))))
               (_%$%g199129199172%_
                (lambda (_%$%g199131199144%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g199131199144%_))
                      (let ((_%$%e199134199146%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g199131199144%_))))
                        (let ((_%$%hd199135199149%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e199134199146%_)))
                              (_%$%tl199136199151%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e199134199146%_))))
                          (let ((_%rands199170%_
                                 (map (lambda (_%$%g199165199167%_)
                                        (gxc#compile-e__1
                                         _%self199127%_
                                         _%$%g199165199167%_))
                                      _%$%tl199136199151%_)))
                            (gxc#xform-wrap-source
                             (cons _%$%hd199135199149%_ _%rands199170%_)
                             _%stx199128%_))))
                      (_%$%g199130199141%_ _%$%g199131199144%_)))))
          (_%$%g199129199172%_ _%stx199128%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self199057%_ _%stx199058%_)
        (let* ((_%$%g199060199077%_
                (lambda (_%$%g199061199074%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g199061199074%_))))
               (_%$%g199059199124%_
                (lambda (_%$%g199061199080%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g199061199080%_))
                      (let ((_%$%e199064199082%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g199061199080%_))))
                        (let ((_%$%hd199065199085%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e199064199082%_)))
                              (_%$%tl199066199087%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e199064199082%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl199066199087%_))
                              (let ((_%$%e199067199090%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl199066199087%_))))
                                (let ((_%$%hd199068199093%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e199067199090%_)))
                                      (_%$%tl199069199095%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e199067199090%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl199069199095%_))
                                      (let ((_%$%e199070199098%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl199069199095%_))))
                                        (let ((_%$%hd199071199101%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e199070199098%_)))
                                              (_%$%tl199072199103%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e199070199098%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl199072199103%_))
                                              (let ((_%expr199122%_
                                                     (gxc#compile-e__1
                                                      _%self199057%_
                                                      _%$%hd199071199101%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#set!
                                                       (cons _%$%hd199068199093%_
                                                             (cons _%expr199122%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%stx199058%_))
                                              (_%$%g199060199077%_
                                               _%$%g199061199080%_))))
                                      (_%$%g199060199077%_
                                       _%$%g199061199080%_))))
                              (_%$%g199060199077%_ _%$%g199061199080%_))))
                      (_%$%g199060199077%_ _%$%g199061199080%_)))))
          (_%$%g199059199124%_ _%stx199058%_))))))
