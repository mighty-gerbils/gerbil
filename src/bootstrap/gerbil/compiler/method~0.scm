(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1712526090)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx134291%_)
        (let* ((_%self134293%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e134295%_
                (let ((__tmp134473
                       (let ()
                         (declare (not safe))
                         (gxc#stx-car-e _%stx134291%_))))
                  (declare (not safe))
                  (method-ref _%self134293%_ __tmp134473))))
          (if _%$e134295%_
              ((lambda (_%method134298%_)
                 (declare (not safe))
                 (_%method134298%_ _%self134293%_ _%stx134291%_))
               _%$e134295%_)
              (let ((__tmp134475
                     (let ()
                       (declare (not safe))
                       (gxc#stx-car-e _%stx134291%_)))
                    (__tmp134474
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx134291%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self134293%_
                       __tmp134475
                       __tmp134474))))))
    (define gxc#compile-e__1
      (lambda (_%self134302%_ _%stx134303%_)
        (let ((_%$e134305%_
               (let ((__tmp134476
                      (let ()
                        (declare (not safe))
                        (gxc#stx-car-e _%stx134303%_))))
                 (declare (not safe))
                 (method-ref _%self134302%_ __tmp134476))))
          (if _%$e134305%_
              ((lambda (_%method134308%_)
                 (declare (not safe))
                 (_%method134308%_ _%self134302%_ _%stx134303%_))
               _%$e134305%_)
              (let ((__tmp134478
                     (let ()
                       (declare (not safe))
                       (gxc#stx-car-e _%stx134303%_)))
                    (__tmp134477
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx134303%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self134302%_
                       __tmp134478
                       __tmp134477))))))
    (define gxc#compile-e
      (lambda _g134480_
        (let ((_g134479_ (let () (declare (not safe)) (##length _g134480_))))
          (cond ((let () (declare (not safe)) (##fx= _g134479_ 1))
                 (apply (lambda (_%stx134291%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _%stx134291%_)))
                        _g134480_))
                ((let () (declare (not safe)) (##fx= _g134479_ 2))
                 (apply (lambda (_%self134302%_ _%stx134303%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__1 _%self134302%_ _%stx134303%_)))
                        _g134480_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g134480_))))))
    (define gxc#stx-car-e
      (lambda (_%stx134289%_)
        (let ((__tmp134481
               (car (let () (declare (not safe)) (gx#stx-e _%stx134289%_)))))
          (declare (not safe))
          (gx#stx-e __tmp134481))))
    (define gxc#void-method (lambda (_%self134286%_ _%stx134287%_) '#!void))
    (define gxc#false-method (lambda (_%self134283%_ _%stx134284%_) '#f))
    (define gxc#true-method (lambda (_%self134280%_ _%stx134281%_) '#t))
    (define gxc#identity-method
      (lambda (_%self134277%_ _%stx134278%_) _%stx134278%_))
    (define gxc#::void-expression::t
      (let ((__tmp134482 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp134482
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args134274%_
        (apply make-instance gxc#::void-expression::t _%$args134274%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp134483
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
        (__make-promise __tmp134483)))
    (define gxc#::void-special-form::t
      (let ((__tmp134484 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp134484
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args134270%_
        (apply make-instance gxc#::void-special-form::t _%$args134270%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp134485
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
        (__make-promise __tmp134485)))
    (define gxc#::void::t
      (let ((__tmp134486
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp134486 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args134266%_
        (apply make-instance gxc#::void::t _%$args134266%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp134487
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp134487)))
    (define gxc#::false-expression::t
      (let ((__tmp134488 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp134488
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args134262%_
        (apply make-instance gxc#::false-expression::t _%$args134262%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp134489
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
        (__make-promise __tmp134489)))
    (define gxc#::false-special-form::t
      (let ((__tmp134490 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp134490
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args134258%_
        (apply make-instance gxc#::false-special-form::t _%$args134258%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp134491
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
        (__make-promise __tmp134491)))
    (define gxc#::false::t
      (let ((__tmp134492
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp134492 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args134254%_
        (apply make-instance gxc#::false::t _%$args134254%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp134493
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp134493)))
    (define gxc#::identity-expression::t
      (let ((__tmp134494 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp134494
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args134250%_
        (apply make-instance gxc#::identity-expression::t _%$args134250%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp134495
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
        (__make-promise __tmp134495)))
    (define gxc#::identity-special-form::t
      (let ((__tmp134496 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp134496
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args134246%_
        (apply make-instance gxc#::identity-special-form::t _%$args134246%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp134497
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
        (__make-promise __tmp134497)))
    (define gxc#::identity::t
      (let ((__tmp134498
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp134498
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args134242%_
        (apply make-instance gxc#::identity::t _%$args134242%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp134499
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp134499)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp134500 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp134500
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args134238%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args134238%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp134501
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
        (__make-promise __tmp134501)))
    (define gxc#::basic-xform::t
      (let ((__tmp134502
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp134502
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args134234%_
        (apply make-instance gxc#::basic-xform::t _%$args134234%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp134503
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
        (__make-promise __tmp134503)))
    (define gxc#apply-begin%
      (lambda (_%self134190%_ _%stx134191%_)
        (let* ((_%g134193134203%_
                (lambda (_%g134194134200%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134194134200%_))))
               (_%g134192134230%_
                (lambda (_%g134194134206%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134194134206%_))
                      (let ((_%e134198134208%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134194134206%_))))
                        (let ((_%hd134197134211%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134198134208%_)))
                              (_%tl134196134213%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134198134208%_))))
                          ((lambda (_%L134216%_)
                             (for-each
                              (lambda (_%g134225134227%_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1
                                   _%self134190%_
                                   _%g134225134227%_)))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L134216%_))))
                           _%tl134196134213%_)))
                      (let ()
                        (declare (not safe))
                        (_%g134193134203%_ _%g134194134206%_))))))
          (declare (not safe))
          (_%g134192134230%_ _%stx134191%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self134151%_ _%stx134152%_)
        (let* ((_%g134154134164%_
                (lambda (_%g134155134161%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134155134161%_))))
               (_%g134153134187%_
                (lambda (_%g134155134167%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134155134167%_))
                      (let ((_%e134159134169%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134155134167%_))))
                        (let ((_%hd134158134172%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134159134169%_)))
                              (_%tl134157134174%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134159134169%_))))
                          ((lambda (_%L134177%_)
                             (let ((__tmp134504 (last _%L134177%_)))
                               (declare (not safe))
                               (gxc#compile-e__1 _%self134151%_ __tmp134504)))
                           _%tl134157134174%_)))
                      (let ()
                        (declare (not safe))
                        (_%g134154134164%_ _%g134155134167%_))))))
          (declare (not safe))
          (_%g134153134187%_ _%stx134152%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self134147%_ _%stx134148%_)
        (let ((__tmp134507
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#apply-begin% _%self134147%_ _%stx134148%_))))
              (__tmp134505
               (let ((__tmp134506
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp134506 '1))))
          (declare (not safe))
          (__call-with-parameters
           __tmp134507
           gx#current-expander-phi
           __tmp134505))))
    (define gxc#apply-module%
      (lambda (_%self134086%_ _%stx134087%_)
        (let* ((_%g134089134103%_
                (lambda (_%g134090134100%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134090134100%_))))
               (_%g134088134144%_
                (lambda (_%g134090134106%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134090134106%_))
                      (let ((_%e134095134108%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134090134106%_))))
                        (let ((_%hd134094134111%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134095134108%_)))
                              (_%tl134093134113%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134095134108%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134093134113%_))
                              (let ((_%e134098134116%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134093134113%_))))
                                (let ((_%hd134097134119%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134098134116%_)))
                                      (_%tl134096134121%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134098134116%_))))
                                  ((lambda (_%L134124%_ _%L134125%_)
                                     (let* ((_%ctx134138%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L134125%_)))
                                            (_%ctx-stx134140%_
                                             (##structure-ref
                                              _%ctx134138%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp134508
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self134086%_
                                                  _%ctx-stx134140%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp134508
                                        gx#current-expander-context
                                        _%ctx134138%_)))
                                   _%tl134096134121%_
                                   _%hd134097134119%_)))
                              (let ()
                                (declare (not safe))
                                (_%g134089134103%_ _%g134090134106%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g134089134103%_ _%g134090134106%_))))))
          (declare (not safe))
          (_%g134088134144%_ _%stx134087%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self134018%_ _%stx134019%_)
        (let* ((_%g134021134038%_
                (lambda (_%g134022134035%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134022134035%_))))
               (_%g134020134083%_
                (lambda (_%g134022134041%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134022134041%_))
                      (let ((_%e134027134043%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134022134041%_))))
                        (let ((_%hd134026134046%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134027134043%_)))
                              (_%tl134025134048%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134027134043%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134025134048%_))
                              (let ((_%e134030134051%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134025134048%_))))
                                (let ((_%hd134029134054%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134030134051%_)))
                                      (_%tl134028134056%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134030134051%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134028134056%_))
                                      (let ((_%e134033134059%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134028134056%_))))
                                        (let ((_%hd134032134062%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134033134059%_)))
                                              (_%tl134031134064%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134033134059%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl134031134064%_))
                                              ((lambda (_%L134067%_
                                                        _%L134068%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self134018%_
                                                    _%L134067%_)))
                                               _%hd134032134062%_
                                               _%hd134029134054%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g134021134038%_
                                                 _%g134022134041%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g134021134038%_
                                         _%g134022134041%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g134021134038%_ _%g134022134041%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g134021134038%_ _%g134022134041%_))))))
          (declare (not safe))
          (_%g134020134083%_ _%stx134019%_))))
    (define gxc#apply-define-values%
      (lambda (_%self133950%_ _%stx133951%_)
        (let* ((_%g133953133970%_
                (lambda (_%g133954133967%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133954133967%_))))
               (_%g133952134015%_
                (lambda (_%g133954133973%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133954133973%_))
                      (let ((_%e133959133975%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133954133973%_))))
                        (let ((_%hd133958133978%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133959133975%_)))
                              (_%tl133957133980%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133959133975%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133957133980%_))
                              (let ((_%e133962133983%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133957133980%_))))
                                (let ((_%hd133961133986%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133962133983%_)))
                                      (_%tl133960133988%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133962133983%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133960133988%_))
                                      (let ((_%e133965133991%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133960133988%_))))
                                        (let ((_%hd133964133994%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133965133991%_)))
                                              (_%tl133963133996%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133965133991%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133963133996%_))
                                              ((lambda (_%L133999%_
                                                        _%L134000%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self133950%_
                                                    _%L133999%_)))
                                               _%hd133964133994%_
                                               _%hd133961133986%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g133953133970%_
                                                 _%g133954133973%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g133953133970%_
                                         _%g133954133973%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133953133970%_ _%g133954133973%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133953133970%_ _%g133954133973%_))))))
          (declare (not safe))
          (_%g133952134015%_ _%stx133951%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self133881%_ _%stx133882%_)
        (let* ((_%g133884133901%_
                (lambda (_%g133885133898%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133885133898%_))))
               (_%g133883133947%_
                (lambda (_%g133885133904%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133885133904%_))
                      (let ((_%e133890133906%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133885133904%_))))
                        (let ((_%hd133889133909%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133890133906%_)))
                              (_%tl133888133911%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133890133906%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133888133911%_))
                              (let ((_%e133893133914%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133888133911%_))))
                                (let ((_%hd133892133917%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133893133914%_)))
                                      (_%tl133891133919%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133893133914%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133891133919%_))
                                      (let ((_%e133896133922%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133891133919%_))))
                                        (let ((_%hd133895133925%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133896133922%_)))
                                              (_%tl133894133927%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133896133922%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133894133927%_))
                                              ((lambda (_%L133930%_
                                                        _%L133931%_)
                                                 (let ((__tmp134511
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self133881%_
                                                             _%L133930%_))))
                                                       (__tmp134509
                                                        (let ((__tmp134510
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp134510 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp134511
                                                    gx#current-expander-phi
                                                    __tmp134509)))
                                               _%hd133895133925%_
                                               _%hd133892133917%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g133884133901%_
                                                 _%g133885133904%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g133884133901%_
                                         _%g133885133904%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133884133901%_ _%g133885133904%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133884133901%_ _%g133885133904%_))))))
          (declare (not safe))
          (_%g133883133947%_ _%stx133882%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self133813%_ _%stx133814%_)
        (let* ((_%g133816133833%_
                (lambda (_%g133817133830%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133817133830%_))))
               (_%g133815133878%_
                (lambda (_%g133817133836%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133817133836%_))
                      (let ((_%e133822133838%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133817133836%_))))
                        (let ((_%hd133821133841%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133822133838%_)))
                              (_%tl133820133843%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133822133838%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133820133843%_))
                              (let ((_%e133825133846%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133820133843%_))))
                                (let ((_%hd133824133849%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133825133846%_)))
                                      (_%tl133823133851%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133825133846%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133823133851%_))
                                      (let ((_%e133828133854%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133823133851%_))))
                                        (let ((_%hd133827133857%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133828133854%_)))
                                              (_%tl133826133859%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133828133854%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133826133859%_))
                                              ((lambda (_%L133862%_
                                                        _%L133863%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self133813%_
                                                    _%L133862%_)))
                                               _%hd133827133857%_
                                               _%hd133824133849%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g133816133833%_
                                                 _%g133817133836%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g133816133833%_
                                         _%g133817133836%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133816133833%_ _%g133817133836%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133816133833%_ _%g133817133836%_))))))
          (declare (not safe))
          (_%g133815133878%_ _%stx133814%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self133695%_ _%stx133696%_)
        (let* ((_%g133698133726%_
                (lambda (_%g133699133723%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133699133723%_))))
               (_%g133697133810%_
                (lambda (_%g133699133729%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133699133729%_))
                      (let ((_%e133704133731%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133699133729%_))))
                        (let ((_%hd133703133734%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133704133731%_)))
                              (_%tl133702133736%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133704133731%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl133702133736%_))
                              (let ((_g134512_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl133702133736%_
                                        '0))))
                                (begin
                                  (let ((_g134513_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g134512_)
                                               (##vector-length _g134512_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g134513_ 2)))
                                        (error "Context expects 2 values"
                                               _g134513_)))
                                  (let ((_%target133705133739%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g134512_ 0)))
                                        (_%tl133707133741%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g134512_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl133707133741%_))
                                        (letrec ((_%loop133708133744%_
                                                  (lambda (_%hd133706133747%_
                                                           _%body133712133749%_
                                                           _%hd133713133751%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd133706133747%_))
                                                        (let ((_%e133709133754%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd133706133747%_))))
                  (let ((_%lp-hd133710133757%_
                         (let ()
                           (declare (not safe))
                           (##car _%e133709133754%_)))
                        (_%lp-tl133711133759%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e133709133754%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd133710133757%_))
                        (let ((_%e133718133762%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd133710133757%_))))
                          (let ((_%hd133717133765%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e133718133762%_)))
                                (_%tl133716133767%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e133718133762%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl133716133767%_))
                                (let ((_%e133721133770%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl133716133767%_))))
                                  (let ((_%hd133720133773%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e133721133770%_)))
                                        (_%tl133719133775%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e133721133770%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl133719133775%_))
                                        (let ((__tmp134515
                                               (cons _%hd133720133773%_
                                                     _%body133712133749%_))
                                              (__tmp134514
                                               (cons _%hd133717133765%_
                                                     _%hd133713133751%_)))
                                          (declare (not safe))
                                          (_%loop133708133744%_
                                           _%lp-tl133711133759%_
                                           __tmp134515
                                           __tmp134514))
                                        (let ()
                                          (declare (not safe))
                                          (_%g133698133726%_
                                           _%g133699133729%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g133698133726%_ _%g133699133729%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g133698133726%_ _%g133699133729%_)))))
                (let ((_%body133714133778%_ (reverse _%body133712133749%_))
                      (_%hd133715133780%_ (reverse _%hd133713133751%_)))
                  ((lambda (_%L133783%_ _%L133784%_)
                     (for-each
                      (lambda (_%g133798133800%_)
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _%self133695%_ _%g133798133800%_)))
                      (let ((__tmp134516
                             (lambda (_%g133802133805%_ _%g133803133807%_)
                               (cons _%g133802133805%_ _%g133803133807%_))))
                        (declare (not safe))
                        (__foldr1 __tmp134516 '() _%L133783%_))))
                   _%body133714133778%_
                   _%hd133715133780%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_%loop133708133744%_
                                             _%target133705133739%_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_%g133698133726%_
                                           _%g133699133729%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g133698133726%_ _%g133699133729%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133698133726%_ _%g133699133729%_))))))
          (declare (not safe))
          (_%g133697133810%_ _%stx133696%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self133548%_ _%stx133549%_)
        (let* ((_%g133551133586%_
                (lambda (_%g133552133583%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133552133583%_))))
               (_%g133550133692%_
                (lambda (_%g133552133589%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133552133589%_))
                      (let ((_%e133558133591%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133552133589%_))))
                        (let ((_%hd133557133594%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133558133591%_)))
                              (_%tl133556133596%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133558133591%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133556133596%_))
                              (let ((_%e133561133599%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133556133596%_))))
                                (let ((_%hd133560133602%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133561133599%_)))
                                      (_%tl133559133604%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133561133599%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd133560133602%_))
                                      (let ((_g134517_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd133560133602%_
                                                '0))))
                                        (begin
                                          (let ((_g134518_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g134517_)
                                                       (##vector-length
                                                        _g134517_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g134518_ 2)))
                                                (error "Context expects 2 values"
                                                       _g134518_)))
                                          (let ((_%target133562133607%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g134517_ 0)))
                                                (_%tl133564133609%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g134517_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl133564133609%_))
                                                (letrec ((_%loop133565133612%_
                                                          (lambda (_%hd133563133615%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr133569133617%_
                           _%hd133570133619%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd133563133615%_))
                        (let ((_%e133566133622%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd133563133615%_))))
                          (let ((_%lp-hd133567133625%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e133566133622%_)))
                                (_%lp-tl133568133627%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e133566133622%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd133567133625%_))
                                (let ((_%e133575133630%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd133567133625%_))))
                                  (let ((_%hd133574133633%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e133575133630%_)))
                                        (_%tl133573133635%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e133575133630%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl133573133635%_))
                                        (let ((_%e133578133638%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl133573133635%_))))
                                          (let ((_%hd133577133641%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e133578133638%_)))
                                                (_%tl133576133643%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e133578133638%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl133576133643%_))
                                                (let ((__tmp134520
                                                       (cons _%hd133577133641%_
                                                             _%expr133569133617%_))
                                                      (__tmp134519
                                                       (cons _%hd133574133633%_
                                                             _%hd133570133619%_)))
                                                  (declare (not safe))
                                                  (_%loop133565133612%_
                                                   _%lp-tl133568133627%_
                                                   __tmp134520
                                                   __tmp134519))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g133551133586%_
                                                   _%g133552133589%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g133551133586%_
                                           _%g133552133589%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g133551133586%_ _%g133552133589%_)))))
                        (let ((_%expr133571133646%_
                               (reverse _%expr133569133617%_))
                              (_%hd133572133648%_
                               (reverse _%hd133570133619%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133559133604%_))
                              (let ((_%e133581133651%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133559133604%_))))
                                (let ((_%hd133580133654%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133581133651%_)))
                                      (_%tl133579133656%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133581133651%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl133579133656%_))
                                      ((lambda (_%L133659%_
                                                _%L133660%_
                                                _%L133661%_)
                                         (for-each
                                          (lambda (_%g133680133682%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self133548%_
                                               _%g133680133682%_)))
                                          (let ((__tmp134522
                                                 (lambda (_%g133684133687%_
                                                          _%g133685133689%_)
                                                   (cons _%g133684133687%_
                                                         _%g133685133689%_)))
                                                (__tmp134521
                                                 (cons _%L133659%_ '())))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp134522
                                             __tmp134521
                                             _%L133660%_))))
                                       _%hd133580133654%_
                                       _%expr133571133646%_
                                       _%hd133572133648%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g133551133586%_
                                         _%g133552133589%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133551133586%_ _%g133552133589%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%loop133565133612%_
                                                     _%target133562133607%_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g133551133586%_
                                                   _%g133552133589%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g133551133586%_
                                         _%g133552133589%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133551133586%_ _%g133552133589%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133551133586%_ _%g133552133589%_))))))
          (declare (not safe))
          (_%g133550133692%_ _%stx133549%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self133493%_ _%stx133494%_)
        (let* ((_%g133496133510%_
                (lambda (_%g133497133507%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133497133507%_))))
               (_%g133495133545%_
                (lambda (_%g133497133513%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133497133513%_))
                      (let ((_%e133502133515%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133497133513%_))))
                        (let ((_%hd133501133518%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133502133515%_)))
                              (_%tl133500133520%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133502133515%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133500133520%_))
                              (let ((_%e133505133523%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133500133520%_))))
                                (let ((_%hd133504133526%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133505133523%_)))
                                      (_%tl133503133528%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133505133523%_))))
                                  ((lambda (_%L133531%_ _%L133532%_)
                                     (let ((__tmp134523 (last _%L133531%_)))
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self133493%_
                                        __tmp134523)))
                                   _%tl133503133528%_
                                   _%hd133504133526%_)))
                              (let ()
                                (declare (not safe))
                                (_%g133496133510%_ _%g133497133513%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133496133510%_ _%g133497133513%_))))))
          (declare (not safe))
          (_%g133495133545%_ _%stx133494%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self133425%_ _%stx133426%_)
        (let* ((_%g133428133445%_
                (lambda (_%g133429133442%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133429133442%_))))
               (_%g133427133490%_
                (lambda (_%g133429133448%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133429133448%_))
                      (let ((_%e133434133450%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133429133448%_))))
                        (let ((_%hd133433133453%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133434133450%_)))
                              (_%tl133432133455%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133434133450%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133432133455%_))
                              (let ((_%e133437133458%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133432133455%_))))
                                (let ((_%hd133436133461%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133437133458%_)))
                                      (_%tl133435133463%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133437133458%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133435133463%_))
                                      (let ((_%e133440133466%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133435133463%_))))
                                        (let ((_%hd133439133469%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133440133466%_)))
                                              (_%tl133438133471%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133440133466%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133438133471%_))
                                              ((lambda (_%L133474%_
                                                        _%L133475%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self133425%_
                                                    _%L133474%_)))
                                               _%hd133439133469%_
                                               _%hd133436133461%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g133428133445%_
                                                 _%g133429133448%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g133428133445%_
                                         _%g133429133448%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133428133445%_ _%g133429133448%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133428133445%_ _%g133429133448%_))))))
          (declare (not safe))
          (_%g133427133490%_ _%stx133426%_))))
    (define gxc#apply-operands
      (lambda (_%self133338%_ _%stx133339%_)
        (let* ((_%g133341133360%_
                (lambda (_%g133342133357%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133342133357%_))))
               (_%g133340133422%_
                (lambda (_%g133342133363%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133342133363%_))
                      (let ((_%e133346133365%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133342133363%_))))
                        (let ((_%hd133345133368%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133346133365%_)))
                              (_%tl133344133370%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133346133365%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl133344133370%_))
                              (let ((_g134524_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl133344133370%_
                                        '0))))
                                (begin
                                  (let ((_g134525_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g134524_)
                                               (##vector-length _g134524_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g134525_ 2)))
                                        (error "Context expects 2 values"
                                               _g134525_)))
                                  (let ((_%target133347133373%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g134524_ 0)))
                                        (_%tl133349133375%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g134524_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl133349133375%_))
                                        (letrec ((_%loop133350133378%_
                                                  (lambda (_%hd133348133381%_
                                                           _%rands133354133383%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd133348133381%_))
                                                        (let ((_%e133351133386%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd133348133381%_))))
                  (let ((_%lp-hd133352133389%_
                         (let ()
                           (declare (not safe))
                           (##car _%e133351133386%_)))
                        (_%lp-tl133353133391%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e133351133386%_))))
                    (let ((__tmp134526
                           (cons _%lp-hd133352133389%_ _%rands133354133383%_)))
                      (declare (not safe))
                      (_%loop133350133378%_
                       _%lp-tl133353133391%_
                       __tmp134526))))
                (let ((_%rands133355133394%_ (reverse _%rands133354133383%_)))
                  ((lambda (_%L133397%_)
                     (for-each
                      (lambda (_%g133410133412%_)
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _%self133338%_ _%g133410133412%_)))
                      (let ((__tmp134527
                             (lambda (_%g133414133417%_ _%g133415133419%_)
                               (cons _%g133414133417%_ _%g133415133419%_))))
                        (declare (not safe))
                        (__foldr1 __tmp134527 '() _%L133397%_))))
                   _%rands133355133394%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_%loop133350133378%_
                                             _%target133347133373%_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_%g133341133360%_
                                           _%g133342133363%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g133341133360%_ _%g133342133363%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133341133360%_ _%g133342133363%_))))))
          (declare (not safe))
          (_%g133340133422%_ _%stx133339%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx133335%_ _%src-stx133336%_)
        (let ((__tmp134528
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx133336%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx133335%_ __tmp134528))))
    (define gxc#xform-begin%
      (lambda (_%self133290%_ _%stx133291%_)
        (let* ((_%g133293133303%_
                (lambda (_%g133294133300%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133294133300%_))))
               (_%g133292133332%_
                (lambda (_%g133294133306%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133294133306%_))
                      (let ((_%e133298133308%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133294133306%_))))
                        (let ((_%hd133297133311%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133298133308%_)))
                              (_%tl133296133313%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133298133308%_))))
                          ((lambda (_%L133316%_)
                             (let* ((_%forms133330%_
                                     (map (lambda (_%g133325133327%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self133290%_
                                               _%g133325133327%_)))
                                          _%L133316%_))
                                    (__tmp134529
                                     (cons '%#begin _%forms133330%_)))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp134529
                                _%stx133291%_)))
                           _%tl133296133313%_)))
                      (let ()
                        (declare (not safe))
                        (_%g133293133303%_ _%g133294133306%_))))))
          (declare (not safe))
          (_%g133292133332%_ _%stx133291%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self133244%_ _%stx133245%_)
        (let* ((_%g133247133257%_
                (lambda (_%g133248133254%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133248133254%_))))
               (_%g133246133287%_
                (lambda (_%g133248133260%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133248133260%_))
                      (let ((_%e133252133262%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133248133260%_))))
                        (let ((_%hd133251133265%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133252133262%_)))
                              (_%tl133250133267%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133252133262%_))))
                          ((lambda (_%L133270%_)
                             (let ((__tmp134532
                                    (lambda ()
                                      (let* ((_%forms133285%_
                                              (map (lambda (_%g133280133282%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self133244%_
                                                        _%g133280133282%_)))
                                                   _%L133270%_))
                                             (__tmp134533
                                              (cons '%#begin-syntax
                                                    _%forms133285%_)))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp134533
                                         _%stx133245%_))))
                                   (__tmp134530
                                    (let ((__tmp134531
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp134531 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp134532
                                gx#current-expander-phi
                                __tmp134530)))
                           _%tl133250133267%_)))
                      (let ()
                        (declare (not safe))
                        (_%g133247133257%_ _%g133248133260%_))))))
          (declare (not safe))
          (_%g133246133287%_ _%stx133245%_))))
    (define gxc#xform-module%
      (lambda (_%self133181%_ _%stx133182%_)
        (let* ((_%g133184133198%_
                (lambda (_%g133185133195%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133185133195%_))))
               (_%g133183133241%_
                (lambda (_%g133185133201%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133185133201%_))
                      (let ((_%e133190133203%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133185133201%_))))
                        (let ((_%hd133189133206%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133190133203%_)))
                              (_%tl133188133208%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133190133203%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133188133208%_))
                              (let ((_%e133193133211%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133188133208%_))))
                                (let ((_%hd133192133214%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133193133211%_)))
                                      (_%tl133191133216%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133193133211%_))))
                                  ((lambda (_%L133219%_ _%L133220%_)
                                     (let* ((_%ctx133233%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L133220%_)))
                                            (_%code133235%_
                                             (##structure-ref
                                              _%ctx133233%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code133238%_
                                             (let ((__tmp134534
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _%self133181%_
                                                         _%code133235%_)))))
                                               (declare (not safe))
                                               (__call-with-parameters
                                                __tmp134534
                                                gx#current-expander-context
                                                _%ctx133233%_))))
                                       (##structure-set!
                                        _%ctx133233%_
                                        _%code133238%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp134535
                                              (cons '%#module
                                                    (cons _%L133220%_
                                                          (cons _%code133238%_
                                                                '())))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp134535
                                          _%stx133182%_))))
                                   _%tl133191133216%_
                                   _%hd133192133214%_)))
                              (let ()
                                (declare (not safe))
                                (_%g133184133198%_ _%g133185133201%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133184133198%_ _%g133185133201%_))))))
          (declare (not safe))
          (_%g133183133241%_ _%stx133182%_))))
    (define gxc#xform-define-values%
      (lambda (_%self133111%_ _%stx133112%_)
        (let* ((_%g133114133131%_
                (lambda (_%g133115133128%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133115133128%_))))
               (_%g133113133178%_
                (lambda (_%g133115133134%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133115133134%_))
                      (let ((_%e133120133136%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133115133134%_))))
                        (let ((_%hd133119133139%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133120133136%_)))
                              (_%tl133118133141%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133120133136%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133118133141%_))
                              (let ((_%e133123133144%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133118133141%_))))
                                (let ((_%hd133122133147%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133123133144%_)))
                                      (_%tl133121133149%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133123133144%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133121133149%_))
                                      (let ((_%e133126133152%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133121133149%_))))
                                        (let ((_%hd133125133155%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133126133152%_)))
                                              (_%tl133124133157%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133126133152%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133124133157%_))
                                              ((lambda (_%L133160%_
                                                        _%L133161%_)
                                                 (let* ((_%expr133176%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self133111%_
                                                            _%L133160%_)))
                                                        (__tmp134536
                                                         (cons '%#define-values
                                                               (cons _%L133161%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%expr133176%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp134536
                                                    _%stx133112%_)))
                                               _%hd133125133155%_
                                               _%hd133122133147%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g133114133131%_
                                                 _%g133115133134%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g133114133131%_
                                         _%g133115133134%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133114133131%_ _%g133115133134%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133114133131%_ _%g133115133134%_))))))
          (declare (not safe))
          (_%g133113133178%_ _%stx133112%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self133040%_ _%stx133041%_)
        (let* ((_%g133043133060%_
                (lambda (_%g133044133057%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133044133057%_))))
               (_%g133042133108%_
                (lambda (_%g133044133063%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133044133063%_))
                      (let ((_%e133049133065%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133044133063%_))))
                        (let ((_%hd133048133068%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133049133065%_)))
                              (_%tl133047133070%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133049133065%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133047133070%_))
                              (let ((_%e133052133073%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133047133070%_))))
                                (let ((_%hd133051133076%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133052133073%_)))
                                      (_%tl133050133078%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133052133073%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133050133078%_))
                                      (let ((_%e133055133081%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133050133078%_))))
                                        (let ((_%hd133054133084%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133055133081%_)))
                                              (_%tl133053133086%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133055133081%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133053133086%_))
                                              ((lambda (_%L133089%_
                                                        _%L133090%_)
                                                 (let ((__tmp134539
                                                        (lambda ()
                                                          (let* ((_%expr133106%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__1 _%self133040%_ _%L133089%_)))
                         (__tmp134540
                          (cons '%#define-syntax
                                (cons _%L133090%_ (cons _%expr133106%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp134540 _%stx133041%_))))
               (__tmp134537
                (let ((__tmp134538
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp134538 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp134539
                                                    gx#current-expander-phi
                                                    __tmp134537)))
                                               _%hd133054133084%_
                                               _%hd133051133076%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g133043133060%_
                                                 _%g133044133063%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g133043133060%_
                                         _%g133044133063%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133043133060%_ _%g133044133063%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133043133060%_ _%g133044133063%_))))))
          (declare (not safe))
          (_%g133042133108%_ _%stx133041%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self132970%_ _%stx132971%_)
        (let* ((_%g132973132990%_
                (lambda (_%g132974132987%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132974132987%_))))
               (_%g132972133037%_
                (lambda (_%g132974132993%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132974132993%_))
                      (let ((_%e132979132995%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132974132993%_))))
                        (let ((_%hd132978132998%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132979132995%_)))
                              (_%tl132977133000%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132979132995%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132977133000%_))
                              (let ((_%e132982133003%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132977133000%_))))
                                (let ((_%hd132981133006%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132982133003%_)))
                                      (_%tl132980133008%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132982133003%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl132980133008%_))
                                      (let ((_%e132985133011%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl132980133008%_))))
                                        (let ((_%hd132984133014%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e132985133011%_)))
                                              (_%tl132983133016%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e132985133011%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl132983133016%_))
                                              ((lambda (_%L133019%_
                                                        _%L133020%_)
                                                 (let* ((_%expr133035%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self132970%_
                                                            _%L133019%_)))
                                                        (__tmp134541
                                                         (cons '%#begin-annotation
                                                               (cons _%L133020%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%expr133035%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp134541
                                                    _%stx132971%_)))
                                               _%hd132984133014%_
                                               _%hd132981133006%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g132973132990%_
                                                 _%g132974132993%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g132973132990%_
                                         _%g132974132993%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g132973132990%_ _%g132974132993%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g132973132990%_ _%g132974132993%_))))))
          (declare (not safe))
          (_%g132972133037%_ _%stx132971%_))))
    (define gxc#xform-lambda%
      (lambda (_%self132908%_ _%stx132909%_)
        (let* ((_%g132911132925%_
                (lambda (_%g132912132922%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132912132922%_))))
               (_%g132910132967%_
                (lambda (_%g132912132928%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132912132928%_))
                      (let ((_%e132917132930%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132912132928%_))))
                        (let ((_%hd132916132933%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132917132930%_)))
                              (_%tl132915132935%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132917132930%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132915132935%_))
                              (let ((_%e132920132938%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132915132935%_))))
                                (let ((_%hd132919132941%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132920132938%_)))
                                      (_%tl132918132943%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132920132938%_))))
                                  ((lambda (_%L132946%_ _%L132947%_)
                                     (let ((__tmp134544
                                            (lambda ()
                                              (let* ((_%body132965%_
                                                      (map (lambda (_%g132960132962%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__1 _%self132908%_ _%g132960132962%_)))
                   _%L132946%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp134545
                                                      (cons '%#lambda
                                                            (cons _%L132947%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%body132965%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-source
                                                 __tmp134545
                                                 _%stx132909%_))))
                                           (__tmp134542
                                            (let ((__tmp134543
                                                   (cons _%L132947%_ '())))
                                              (declare (not safe))
                                              (gxc#xform-let-locals
                                               __tmp134543))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp134544
                                        gxc#current-compile-local-env
                                        __tmp134542)))
                                   _%tl132918132943%_
                                   _%hd132919132941%_)))
                              (let ()
                                (declare (not safe))
                                (_%g132911132925%_ _%g132912132928%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g132911132925%_ _%g132912132928%_))))))
          (declare (not safe))
          (_%g132910132967%_ _%stx132909%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self132816%_ _%stx132817%_)
        (letrec ((_%clause-e132819%_
                  (lambda (_%clause132860%_)
                    (let* ((_%g132862132873%_
                            (lambda (_%g132863132870%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g132863132870%_))))
                           (_%g132861132905%_
                            (lambda (_%g132863132876%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g132863132876%_))
                                  (let ((_%e132868132878%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g132863132876%_))))
                                    (let ((_%hd132867132881%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e132868132878%_)))
                                          (_%tl132866132883%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e132868132878%_))))
                                      ((lambda (_%L132886%_ _%L132887%_)
                                         (let ((__tmp134548
                                                (lambda ()
                                                  (let ((_%body132903%_
                                                         (map (lambda (_%g132898132900%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _%self132816%_ _%g132898132900%_)))
                      _%L132886%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%L132887%_
                                                          _%body132903%_))))
                                               (__tmp134546
                                                (let ((__tmp134547
                                                       (cons _%L132887%_ '())))
                                                  (declare (not safe))
                                                  (gxc#xform-let-locals
                                                   __tmp134547))))
                                           (declare (not safe))
                                           (__call-with-parameters
                                            __tmp134548
                                            gxc#current-compile-local-env
                                            __tmp134546)))
                                       _%tl132866132883%_
                                       _%hd132867132881%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g132862132873%_ _%g132863132876%_))))))
                      (declare (not safe))
                      (_%g132861132905%_ _%clause132860%_)))))
          (let* ((_%g132821132831%_
                  (lambda (_%g132822132828%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g132822132828%_))))
                 (_%g132820132857%_
                  (lambda (_%g132822132834%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g132822132834%_))
                        (let ((_%e132826132836%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g132822132834%_))))
                          (let ((_%hd132825132839%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e132826132836%_)))
                                (_%tl132824132841%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e132826132836%_))))
                            ((lambda (_%L132844%_)
                               (let* ((_%clauses132855%_
                                       (map _%clause-e132819%_ _%L132844%_))
                                      (__tmp134549
                                       (cons '%#case-lambda
                                             _%clauses132855%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp134549
                                  _%stx132817%_)))
                             _%tl132824132841%_)))
                        (let ()
                          (declare (not safe))
                          (_%g132821132831%_ _%g132822132834%_))))))
            (declare (not safe))
            (_%g132820132857%_ _%stx132817%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self132570%_ _%stx132571%_)
        (let* ((_%g132573132606%_
                (lambda (_%g132574132603%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132574132603%_))))
               (_%g132572132813%_
                (lambda (_%g132574132609%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132574132609%_))
                      (let ((_%e132581132611%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132574132609%_))))
                        (let ((_%hd132580132614%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132581132611%_)))
                              (_%tl132579132616%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132581132611%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132579132616%_))
                              (let ((_%e132584132619%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132579132616%_))))
                                (let ((_%hd132583132622%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132584132619%_)))
                                      (_%tl132582132624%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132584132619%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd132583132622%_))
                                      (let ((_g134550_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd132583132622%_
                                                '0))))
                                        (begin
                                          (let ((_g134551_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g134550_)
                                                       (##vector-length
                                                        _g134550_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g134551_ 2)))
                                                (error "Context expects 2 values"
                                                       _g134551_)))
                                          (let ((_%target132585132627%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g134550_ 0)))
                                                (_%tl132587132629%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g134550_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl132587132629%_))
                                                (letrec ((_%loop132588132632%_
                                                          (lambda (_%hd132586132635%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr132592132637%_
                           _%hd132593132639%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd132586132635%_))
                        (let ((_%e132589132642%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd132586132635%_))))
                          (let ((_%lp-hd132590132645%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e132589132642%_)))
                                (_%lp-tl132591132647%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e132589132642%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd132590132645%_))
                                (let ((_%e132598132650%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd132590132645%_))))
                                  (let ((_%hd132597132653%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e132598132650%_)))
                                        (_%tl132596132655%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e132598132650%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl132596132655%_))
                                        (let ((_%e132601132658%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl132596132655%_))))
                                          (let ((_%hd132600132661%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e132601132658%_)))
                                                (_%tl132599132663%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e132601132658%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl132599132663%_))
                                                (let ((__tmp134553
                                                       (cons _%hd132600132661%_
                                                             _%expr132592132637%_))
                                                      (__tmp134552
                                                       (cons _%hd132597132653%_
                                                             _%hd132593132639%_)))
                                                  (declare (not safe))
                                                  (_%loop132588132632%_
                                                   _%lp-tl132591132647%_
                                                   __tmp134553
                                                   __tmp134552))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g132573132606%_
                                                   _%g132574132609%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g132573132606%_
                                           _%g132574132609%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g132573132606%_ _%g132574132609%_)))))
                        (let ((_%expr132594132666%_
                               (reverse _%expr132592132637%_))
                              (_%hd132595132668%_
                               (reverse _%hd132593132639%_)))
                          ((lambda (_%L132671%_
                                    _%L132672%_
                                    _%L132673%_
                                    _%L132674%_)
                             (let* ((_%g132693132709%_
                                     (lambda (_%g132694132706%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g132694132706%_))))
                                    (_%g132692132799%_
                                     (lambda (_%g132694132712%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g132694132712%_))
                                           (let ((_g134554_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g132694132712%_
                                                     '0))))
                                             (begin
                                               (let ((_g134555_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g134554_)
                                                            (##vector-length
                                                             _g134554_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g134555_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g134555_)))
                                               (let ((_%target132696132714%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g134554_
                                                         0)))
                                                     (_%tl132698132716%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g134554_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl132698132716%_))
                                                     (letrec ((_%loop132699132719%_
                                                               (lambda (_%hd132697132722%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr132703132724%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd132697132722%_))
                             (let ((_%e132700132727%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd132697132722%_))))
                               (let ((_%lp-hd132701132730%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e132700132727%_)))
                                     (_%lp-tl132702132732%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e132700132727%_))))
                                 (let ((__tmp134556
                                        (cons _%lp-hd132701132730%_
                                              _%expr132703132724%_)))
                                   (declare (not safe))
                                   (_%loop132699132719%_
                                    _%lp-tl132702132732%_
                                    __tmp134556))))
                             (let ((_%expr132704132735%_
                                    (reverse _%expr132703132724%_)))
                               ((lambda (_%L132738%_)
                                  (let ((__tmp134560
                                         (lambda ()
                                           (let* ((_%g132752132759%_
                                                   (lambda (_%g132753132756%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g132753132756%_))))
                                                  (_%g132751132785%_
                                                   (lambda (_%g132753132762%_)
                                                     ((lambda (_%L132764%_)
                                                        (let ((__tmp134561
                                                               (cons _%L132674%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%L132738%_
                                        _%L132673%_))
                                     (let ((__tmp134562
                                            (lambda (_%g132774132778%_
                                                     _%g132775132780%_
                                                     _%g132776132782%_)
                                              (cons (cons _%g132775132780%_
                                                          (cons _%g132774132778%_
                                                                '()))
                                                    _%g132776132782%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp134562
                                        '()
                                        _%L132738%_
                                        _%L132673%_)))
                                   _%L132764%_))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp134561 _%stx132571%_)))
              _%g132753132762%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp134563
                                                   (map (lambda (_%g132787132789%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self132570%_
                                                             _%g132787132789%_)))
                                                        _%L132671%_)))
                                             (declare (not safe))
                                             (_%g132751132785%_ __tmp134563))))
                                        (__tmp134557
                                         (let ((__tmp134558
                                                (let ((__tmp134559
                                                       (lambda (_%g132791132794%_
                                                                _%g132792132796%_)
                                                         (cons _%g132791132794%_
                                                               _%g132792132796%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp134559
                                                   '()
                                                   _%L132673%_))))
                                           (declare (not safe))
                                           (gxc#xform-let-locals
                                            __tmp134558))))
                                    (declare (not safe))
                                    (__call-with-parameters
                                     __tmp134560
                                     gxc#current-compile-local-env
                                     __tmp134557)))
                                _%expr132704132735%_))))))
               (let ()
                 (declare (not safe))
                 (_%loop132699132719%_ _%target132696132714%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g132693132709%_
                                                        _%g132694132712%_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g132693132709%_
                                              _%g132694132712%_)))))
                                    (__tmp134564
                                     (map (lambda (_%g132801132803%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self132570%_
                                               _%g132801132803%_)))
                                          (let ((__tmp134565
                                                 (lambda (_%g132805132808%_
                                                          _%g132806132810%_)
                                                   (cons _%g132805132808%_
                                                         _%g132806132810%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp134565
                                             '()
                                             _%L132672%_)))))
                               (declare (not safe))
                               (_%g132692132799%_ __tmp134564)))
                           _%tl132582132624%_
                           _%expr132594132666%_
                           _%hd132595132668%_
                           _%hd132580132614%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%loop132588132632%_
                                                     _%target132585132627%_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g132573132606%_
                                                   _%g132574132609%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g132573132606%_
                                         _%g132574132609%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g132573132606%_ _%g132574132609%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g132573132606%_ _%g132574132609%_))))))
          (declare (not safe))
          (_%g132572132813%_ _%stx132571%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self132324%_ _%stx132325%_)
        (let* ((_%g132327132360%_
                (lambda (_%g132328132357%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132328132357%_))))
               (_%g132326132567%_
                (lambda (_%g132328132363%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132328132363%_))
                      (let ((_%e132335132365%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132328132363%_))))
                        (let ((_%hd132334132368%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132335132365%_)))
                              (_%tl132333132370%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132335132365%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132333132370%_))
                              (let ((_%e132338132373%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132333132370%_))))
                                (let ((_%hd132337132376%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132338132373%_)))
                                      (_%tl132336132378%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132338132373%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd132337132376%_))
                                      (let ((_g134566_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd132337132376%_
                                                '0))))
                                        (begin
                                          (let ((_g134567_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g134566_)
                                                       (##vector-length
                                                        _g134566_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g134567_ 2)))
                                                (error "Context expects 2 values"
                                                       _g134567_)))
                                          (let ((_%target132339132381%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g134566_ 0)))
                                                (_%tl132341132383%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g134566_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl132341132383%_))
                                                (letrec ((_%loop132342132386%_
                                                          (lambda (_%hd132340132389%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr132346132391%_
                           _%hd132347132393%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd132340132389%_))
                        (let ((_%e132343132396%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd132340132389%_))))
                          (let ((_%lp-hd132344132399%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e132343132396%_)))
                                (_%lp-tl132345132401%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e132343132396%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd132344132399%_))
                                (let ((_%e132352132404%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd132344132399%_))))
                                  (let ((_%hd132351132407%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e132352132404%_)))
                                        (_%tl132350132409%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e132352132404%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl132350132409%_))
                                        (let ((_%e132355132412%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl132350132409%_))))
                                          (let ((_%hd132354132415%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e132355132412%_)))
                                                (_%tl132353132417%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e132355132412%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl132353132417%_))
                                                (let ((__tmp134569
                                                       (cons _%hd132354132415%_
                                                             _%expr132346132391%_))
                                                      (__tmp134568
                                                       (cons _%hd132351132407%_
                                                             _%hd132347132393%_)))
                                                  (declare (not safe))
                                                  (_%loop132342132386%_
                                                   _%lp-tl132345132401%_
                                                   __tmp134569
                                                   __tmp134568))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g132327132360%_
                                                   _%g132328132363%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g132327132360%_
                                           _%g132328132363%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g132327132360%_ _%g132328132363%_)))))
                        (let ((_%expr132348132420%_
                               (reverse _%expr132346132391%_))
                              (_%hd132349132422%_
                               (reverse _%hd132347132393%_)))
                          ((lambda (_%L132425%_
                                    _%L132426%_
                                    _%L132427%_
                                    _%L132428%_)
                             (let ((__tmp134573
                                    (lambda ()
                                      (let* ((_%g132448132464%_
                                              (lambda (_%g132449132461%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g132449132461%_))))
                                             (_%g132447132546%_
                                              (lambda (_%g132449132467%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g132449132467%_))
                                                    (let ((_g134574_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g132449132467%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g134575_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g134574_)
                             (##vector-length _g134574_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g134575_ 2)))
                      (error "Context expects 2 values" _g134575_)))
                (let ((_%target132451132469%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g134574_ 0)))
                      (_%tl132453132471%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g134574_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl132453132471%_))
                      (letrec ((_%loop132454132474%_
                                (lambda (_%hd132452132477%_
                                         _%expr132458132479%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd132452132477%_))
                                      (let ((_%e132455132482%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd132452132477%_))))
                                        (let ((_%lp-hd132456132485%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e132455132482%_)))
                                              (_%lp-tl132457132487%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e132455132482%_))))
                                          (let ((__tmp134576
                                                 (cons _%lp-hd132456132485%_
                                                       _%expr132458132479%_)))
                                            (declare (not safe))
                                            (_%loop132454132474%_
                                             _%lp-tl132457132487%_
                                             __tmp134576))))
                                      (let ((_%expr132459132490%_
                                             (reverse _%expr132458132479%_)))
                                        ((lambda (_%L132493%_)
                                           (let ()
                                             (let* ((_%g132507132514%_
                                                     (lambda (_%g132508132511%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g132508132511%_))))
                                                    (_%g132506132539%_
                                                     (lambda (_%g132508132517%_)
                                                       ((lambda (_%L132519%_)
                                                          (let ((__tmp134577
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L132428%_
                               (cons (begin
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-check-splice-targets
                                          _%L132493%_
                                          _%L132427%_))
                                       (let ((__tmp134578
                                              (lambda (_%g132528132532%_
                                                       _%g132529132534%_
                                                       _%g132530132536%_)
                                                (cons (cons _%g132529132534%_
                                                            (cons _%g132528132532%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%g132530132536%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr2
                                          __tmp134578
                                          '()
                                          _%L132493%_
                                          _%L132427%_)))
                                     _%L132519%_))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp134577 _%stx132325%_)))
                _%g132508132517%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp134579
                                                     (map (lambda (_%g132541132543%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self132324%_
                                                               _%g132541132543%_)))
                                                          _%L132425%_)))
                                               (declare (not safe))
                                               (_%g132506132539%_
                                                __tmp134579))))
                                         _%expr132459132490%_))))))
                        (let ()
                          (declare (not safe))
                          (_%loop132454132474%_ _%target132451132469%_ '())))
                      (let ()
                        (declare (not safe))
                        (_%g132448132464%_ _%g132449132467%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g132448132464%_
                                                       _%g132449132467%_)))))
                                             (__tmp134580
                                              (map (lambda (_%g132548132550%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self132324%_
                                                        _%g132548132550%_)))
                                                   (let ((__tmp134581
                                                          (lambda (_%g132552132555%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g132553132557%_)
                    (cons _%g132552132555%_ _%g132553132557%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      __tmp134581
                                                      '()
                                                      _%L132426%_)))))
                                        (declare (not safe))
                                        (_%g132447132546%_ __tmp134580))))
                                   (__tmp134570
                                    (let ((__tmp134571
                                           (let ((__tmp134572
                                                  (lambda (_%g132559132562%_
                                                           _%g132560132564%_)
                                                    (cons _%g132559132562%_
                                                          _%g132560132564%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp134572
                                              '()
                                              _%L132427%_))))
                                      (declare (not safe))
                                      (gxc#xform-let-locals __tmp134571))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp134573
                                gxc#current-compile-local-env
                                __tmp134570)))
                           _%tl132336132378%_
                           _%expr132348132420%_
                           _%hd132349132422%_
                           _%hd132334132368%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%loop132342132386%_
                                                     _%target132339132381%_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g132327132360%_
                                                   _%g132328132363%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g132327132360%_
                                         _%g132328132363%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g132327132360%_ _%g132328132363%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g132327132360%_ _%g132328132363%_))))))
          (declare (not safe))
          (_%g132326132567%_ _%stx132325%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings132228%_)
        (let _%loop132230%_ ((_%rest132232%_ _%bindings132228%_)
                             (_%locals132233%_
                              (let ()
                                (declare (not safe))
                                (gxc#current-compile-local-env))))
          (let* ((_%rest132234132242%_ _%rest132232%_)
                 (_%else132236132250%_ (lambda () _%locals132233%_))
                 (_%K132238132312%_
                  (lambda (_%rest132253%_ _%bind132254%_)
                    (let _%loop-bind132256%_ ((_%bind132258%_ _%bind132254%_)
                                              (_%locals132259%_
                                               _%locals132233%_))
                      (let* ((_%bind132260132271%_ _%bind132258%_)
                             (_%E132264132275%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%bind132260132271%_
                                         '([id . bind-rest])
                                         '((? identifier? id))
                                         '(_)))
                                '#!void)))
                        (let ((_%K132267132300%_
                               (lambda (_%bind-rest132297%_ _%id132298%_)
                                 (let ((__tmp134582
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#identifier-symbol
                                                 _%id132298%_))
                                              _%locals132259%_)))
                                   (declare (not safe))
                                   (_%loop-bind132256%_
                                    _%bind-rest132297%_
                                    __tmp134582))))
                              (_%K132266132289%_
                               (lambda (_%id132287%_)
                                 (let ((__tmp134583
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#identifier-symbol
                                                 _%id132287%_))
                                              _%locals132259%_)))
                                   (declare (not safe))
                                   (_%loop132230%_
                                    _%rest132253%_
                                    __tmp134583))))
                              (_%K132265132280%_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (_%loop132230%_
                                    _%rest132253%_
                                    _%locals132259%_)))))
                          (let ((_%try-match132262132294%_
                                 (lambda ()
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%bind132260132271%_))
                                       (let ((_%id132292%_
                                              _%bind132260132271%_))
                                         (declare (not safe))
                                         (_%K132266132289%_ _%id132292%_))
                                       (let ()
                                         (declare (not safe))
                                         (_%K132265132280%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%bind132260132271%_))
                                (let ((_%tl132269132305%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%bind132260132271%_)))
                                      (_%hd132268132303%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%bind132260132271%_))))
                                  (let ((_%id132308%_ _%hd132268132303%_)
                                        (_%bind-rest132310%_
                                         _%tl132269132305%_))
                                    (let ()
                                      (declare (not safe))
                                      (_%K132267132300%_
                                       _%bind-rest132310%_
                                       _%id132308%_))))
                                (let ()
                                  (declare (not safe))
                                  (_%try-match132262132294%_))))))))))
            (if (let () (declare (not safe)) (##pair? _%rest132234132242%_))
                (let ((_%hd132239132315%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest132234132242%_)))
                      (_%tl132240132317%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest132234132242%_))))
                  (let* ((_%bind132320%_ _%hd132239132315%_)
                         (_%rest132322%_ _%tl132240132317%_))
                    (declare (not safe))
                    (_%K132238132312%_ _%rest132322%_ _%bind132320%_)))
                (let () (declare (not safe)) (_%else132236132250%_)))))))
    (define gxc#xform-operands
      (lambda (_%self132180%_ _%stx132181%_)
        (let* ((_%g132183132194%_
                (lambda (_%g132184132191%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132184132191%_))))
               (_%g132182132225%_
                (lambda (_%g132184132197%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132184132197%_))
                      (let ((_%e132189132199%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132184132197%_))))
                        (let ((_%hd132188132202%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132189132199%_)))
                              (_%tl132187132204%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132189132199%_))))
                          ((lambda (_%L132207%_ _%L132208%_)
                             (let* ((_%rands132223%_
                                     (map (lambda (_%g132218132220%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self132180%_
                                               _%g132218132220%_)))
                                          _%L132207%_))
                                    (__tmp134584
                                     (cons _%L132208%_ _%rands132223%_)))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp134584
                                _%stx132181%_)))
                           _%tl132187132204%_
                           _%hd132188132202%_)))
                      (let ()
                        (declare (not safe))
                        (_%g132183132194%_ _%g132184132197%_))))))
          (declare (not safe))
          (_%g132182132225%_ _%stx132181%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self132110%_ _%stx132111%_)
        (let* ((_%g132113132130%_
                (lambda (_%g132114132127%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132114132127%_))))
               (_%g132112132177%_
                (lambda (_%g132114132133%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132114132133%_))
                      (let ((_%e132119132135%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132114132133%_))))
                        (let ((_%hd132118132138%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132119132135%_)))
                              (_%tl132117132140%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132119132135%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132117132140%_))
                              (let ((_%e132122132143%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132117132140%_))))
                                (let ((_%hd132121132146%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132122132143%_)))
                                      (_%tl132120132148%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132122132143%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl132120132148%_))
                                      (let ((_%e132125132151%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl132120132148%_))))
                                        (let ((_%hd132124132154%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e132125132151%_)))
                                              (_%tl132123132156%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e132125132151%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl132123132156%_))
                                              ((lambda (_%L132159%_
                                                        _%L132160%_)
                                                 (let* ((_%expr132175%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self132110%_
                                                            _%L132159%_)))
                                                        (__tmp134585
                                                         (cons '%#set!
                                                               (cons _%L132160%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%expr132175%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp134585
                                                    _%stx132111%_)))
                                               _%hd132124132154%_
                                               _%hd132121132146%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g132113132130%_
                                                 _%g132114132133%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g132113132130%_
                                         _%g132114132133%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g132113132130%_ _%g132114132133%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g132113132130%_ _%g132114132133%_))))))
          (declare (not safe))
          (_%g132112132177%_ _%stx132111%_))))))
