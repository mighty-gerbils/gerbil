(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1712269046)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx134290%_)
        (let* ((_%self134292%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e134294%_
                (let ((__tmp134472
                       (let ()
                         (declare (not safe))
                         (gxc#stx-car-e _%stx134290%_))))
                  (declare (not safe))
                  (method-ref _%self134292%_ __tmp134472))))
          (if _%$e134294%_
              ((lambda (_%method134297%_)
                 (declare (not safe))
                 (_%method134297%_ _%self134292%_ _%stx134290%_))
               _%$e134294%_)
              (let ((__tmp134474
                     (let ()
                       (declare (not safe))
                       (gxc#stx-car-e _%stx134290%_)))
                    (__tmp134473
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx134290%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self134292%_
                       __tmp134474
                       __tmp134473))))))
    (define gxc#compile-e__1
      (lambda (_%self134301%_ _%stx134302%_)
        (let ((_%$e134304%_
               (let ((__tmp134475
                      (let ()
                        (declare (not safe))
                        (gxc#stx-car-e _%stx134302%_))))
                 (declare (not safe))
                 (method-ref _%self134301%_ __tmp134475))))
          (if _%$e134304%_
              ((lambda (_%method134307%_)
                 (declare (not safe))
                 (_%method134307%_ _%self134301%_ _%stx134302%_))
               _%$e134304%_)
              (let ((__tmp134477
                     (let ()
                       (declare (not safe))
                       (gxc#stx-car-e _%stx134302%_)))
                    (__tmp134476
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx134302%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self134301%_
                       __tmp134477
                       __tmp134476))))))
    (define gxc#compile-e
      (lambda _g134479_
        (let ((_g134478_ (let () (declare (not safe)) (##length _g134479_))))
          (cond ((let () (declare (not safe)) (##fx= _g134478_ 1))
                 (apply (lambda (_%stx134290%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _%stx134290%_)))
                        _g134479_))
                ((let () (declare (not safe)) (##fx= _g134478_ 2))
                 (apply (lambda (_%self134301%_ _%stx134302%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__1 _%self134301%_ _%stx134302%_)))
                        _g134479_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g134479_))))))
    (define gxc#stx-car-e
      (lambda (_%stx134288%_)
        (let ((__tmp134480
               (car (let () (declare (not safe)) (gx#stx-e _%stx134288%_)))))
          (declare (not safe))
          (gx#stx-e __tmp134480))))
    (define gxc#void-method (lambda (_%self134285%_ _%stx134286%_) '#!void))
    (define gxc#false-method (lambda (_%self134282%_ _%stx134283%_) '#f))
    (define gxc#true-method (lambda (_%self134279%_ _%stx134280%_) '#t))
    (define gxc#identity-method
      (lambda (_%self134276%_ _%stx134277%_) _%stx134277%_))
    (define gxc#::void-expression::t
      (let ((__tmp134481 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp134481
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args134273%_
        (apply make-instance gxc#::void-expression::t _%$args134273%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp134482
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
        (__make-promise __tmp134482)))
    (define gxc#::void-special-form::t
      (let ((__tmp134483 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp134483
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args134269%_
        (apply make-instance gxc#::void-special-form::t _%$args134269%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp134484
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
        (__make-promise __tmp134484)))
    (define gxc#::void::t
      (let ((__tmp134485
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp134485 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args134265%_
        (apply make-instance gxc#::void::t _%$args134265%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp134486
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp134486)))
    (define gxc#::false-expression::t
      (let ((__tmp134487 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp134487
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args134261%_
        (apply make-instance gxc#::false-expression::t _%$args134261%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp134488
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
        (__make-promise __tmp134488)))
    (define gxc#::false-special-form::t
      (let ((__tmp134489 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp134489
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args134257%_
        (apply make-instance gxc#::false-special-form::t _%$args134257%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp134490
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
        (__make-promise __tmp134490)))
    (define gxc#::false::t
      (let ((__tmp134491
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp134491 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args134253%_
        (apply make-instance gxc#::false::t _%$args134253%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp134492
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp134492)))
    (define gxc#::identity-expression::t
      (let ((__tmp134493 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp134493
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args134249%_
        (apply make-instance gxc#::identity-expression::t _%$args134249%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp134494
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
        (__make-promise __tmp134494)))
    (define gxc#::identity-special-form::t
      (let ((__tmp134495 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp134495
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args134245%_
        (apply make-instance gxc#::identity-special-form::t _%$args134245%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp134496
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
        (__make-promise __tmp134496)))
    (define gxc#::identity::t
      (let ((__tmp134497
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp134497
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args134241%_
        (apply make-instance gxc#::identity::t _%$args134241%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp134498
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp134498)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp134499 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp134499
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args134237%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args134237%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp134500
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
        (__make-promise __tmp134500)))
    (define gxc#::basic-xform::t
      (let ((__tmp134501
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp134501
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args134233%_
        (apply make-instance gxc#::basic-xform::t _%$args134233%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp134502
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
        (__make-promise __tmp134502)))
    (define gxc#apply-begin%
      (lambda (_%self134189%_ _%stx134190%_)
        (let* ((_%g134192134202%_
                (lambda (_%g134193134199%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134193134199%_))))
               (_%g134191134229%_
                (lambda (_%g134193134205%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134193134205%_))
                      (let ((_%e134197134207%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134193134205%_))))
                        (let ((_%hd134196134210%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134197134207%_)))
                              (_%tl134195134212%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134197134207%_))))
                          ((lambda (_%L134215%_)
                             (for-each
                              (lambda (_%g134224134226%_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1
                                   _%self134189%_
                                   _%g134224134226%_)))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L134215%_))))
                           _%tl134195134212%_)))
                      (let ()
                        (declare (not safe))
                        (_%g134192134202%_ _%g134193134205%_))))))
          (declare (not safe))
          (_%g134191134229%_ _%stx134190%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self134150%_ _%stx134151%_)
        (let* ((_%g134153134163%_
                (lambda (_%g134154134160%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134154134160%_))))
               (_%g134152134186%_
                (lambda (_%g134154134166%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134154134166%_))
                      (let ((_%e134158134168%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134154134166%_))))
                        (let ((_%hd134157134171%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134158134168%_)))
                              (_%tl134156134173%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134158134168%_))))
                          ((lambda (_%L134176%_)
                             (let ((__tmp134503 (last _%L134176%_)))
                               (declare (not safe))
                               (gxc#compile-e__1 _%self134150%_ __tmp134503)))
                           _%tl134156134173%_)))
                      (let ()
                        (declare (not safe))
                        (_%g134153134163%_ _%g134154134166%_))))))
          (declare (not safe))
          (_%g134152134186%_ _%stx134151%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self134146%_ _%stx134147%_)
        (let ((__tmp134506
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#apply-begin% _%self134146%_ _%stx134147%_))))
              (__tmp134504
               (let ((__tmp134505
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp134505 '1))))
          (declare (not safe))
          (__call-with-parameters
           __tmp134506
           gx#current-expander-phi
           __tmp134504))))
    (define gxc#apply-module%
      (lambda (_%self134085%_ _%stx134086%_)
        (let* ((_%g134088134102%_
                (lambda (_%g134089134099%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134089134099%_))))
               (_%g134087134143%_
                (lambda (_%g134089134105%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134089134105%_))
                      (let ((_%e134094134107%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134089134105%_))))
                        (let ((_%hd134093134110%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134094134107%_)))
                              (_%tl134092134112%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134094134107%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134092134112%_))
                              (let ((_%e134097134115%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134092134112%_))))
                                (let ((_%hd134096134118%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134097134115%_)))
                                      (_%tl134095134120%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134097134115%_))))
                                  ((lambda (_%L134123%_ _%L134124%_)
                                     (let* ((_%ctx134137%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L134124%_)))
                                            (_%ctx-stx134139%_
                                             (##structure-ref
                                              _%ctx134137%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp134507
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self134085%_
                                                  _%ctx-stx134139%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp134507
                                        gx#current-expander-context
                                        _%ctx134137%_)))
                                   _%tl134095134120%_
                                   _%hd134096134118%_)))
                              (let ()
                                (declare (not safe))
                                (_%g134088134102%_ _%g134089134105%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g134088134102%_ _%g134089134105%_))))))
          (declare (not safe))
          (_%g134087134143%_ _%stx134086%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self134017%_ _%stx134018%_)
        (let* ((_%g134020134037%_
                (lambda (_%g134021134034%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134021134034%_))))
               (_%g134019134082%_
                (lambda (_%g134021134040%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134021134040%_))
                      (let ((_%e134026134042%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134021134040%_))))
                        (let ((_%hd134025134045%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134026134042%_)))
                              (_%tl134024134047%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134026134042%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134024134047%_))
                              (let ((_%e134029134050%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134024134047%_))))
                                (let ((_%hd134028134053%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134029134050%_)))
                                      (_%tl134027134055%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134029134050%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134027134055%_))
                                      (let ((_%e134032134058%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134027134055%_))))
                                        (let ((_%hd134031134061%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134032134058%_)))
                                              (_%tl134030134063%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134032134058%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl134030134063%_))
                                              ((lambda (_%L134066%_
                                                        _%L134067%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self134017%_
                                                    _%L134066%_)))
                                               _%hd134031134061%_
                                               _%hd134028134053%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g134020134037%_
                                                 _%g134021134040%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g134020134037%_
                                         _%g134021134040%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g134020134037%_ _%g134021134040%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g134020134037%_ _%g134021134040%_))))))
          (declare (not safe))
          (_%g134019134082%_ _%stx134018%_))))
    (define gxc#apply-define-values%
      (lambda (_%self133949%_ _%stx133950%_)
        (let* ((_%g133952133969%_
                (lambda (_%g133953133966%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133953133966%_))))
               (_%g133951134014%_
                (lambda (_%g133953133972%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133953133972%_))
                      (let ((_%e133958133974%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133953133972%_))))
                        (let ((_%hd133957133977%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133958133974%_)))
                              (_%tl133956133979%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133958133974%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133956133979%_))
                              (let ((_%e133961133982%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133956133979%_))))
                                (let ((_%hd133960133985%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133961133982%_)))
                                      (_%tl133959133987%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133961133982%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133959133987%_))
                                      (let ((_%e133964133990%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133959133987%_))))
                                        (let ((_%hd133963133993%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133964133990%_)))
                                              (_%tl133962133995%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133964133990%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133962133995%_))
                                              ((lambda (_%L133998%_
                                                        _%L133999%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self133949%_
                                                    _%L133998%_)))
                                               _%hd133963133993%_
                                               _%hd133960133985%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g133952133969%_
                                                 _%g133953133972%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g133952133969%_
                                         _%g133953133972%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133952133969%_ _%g133953133972%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133952133969%_ _%g133953133972%_))))))
          (declare (not safe))
          (_%g133951134014%_ _%stx133950%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self133880%_ _%stx133881%_)
        (let* ((_%g133883133900%_
                (lambda (_%g133884133897%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133884133897%_))))
               (_%g133882133946%_
                (lambda (_%g133884133903%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133884133903%_))
                      (let ((_%e133889133905%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133884133903%_))))
                        (let ((_%hd133888133908%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133889133905%_)))
                              (_%tl133887133910%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133889133905%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133887133910%_))
                              (let ((_%e133892133913%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133887133910%_))))
                                (let ((_%hd133891133916%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133892133913%_)))
                                      (_%tl133890133918%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133892133913%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133890133918%_))
                                      (let ((_%e133895133921%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133890133918%_))))
                                        (let ((_%hd133894133924%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133895133921%_)))
                                              (_%tl133893133926%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133895133921%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133893133926%_))
                                              ((lambda (_%L133929%_
                                                        _%L133930%_)
                                                 (let ((__tmp134510
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self133880%_
                                                             _%L133929%_))))
                                                       (__tmp134508
                                                        (let ((__tmp134509
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp134509 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp134510
                                                    gx#current-expander-phi
                                                    __tmp134508)))
                                               _%hd133894133924%_
                                               _%hd133891133916%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g133883133900%_
                                                 _%g133884133903%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g133883133900%_
                                         _%g133884133903%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133883133900%_ _%g133884133903%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133883133900%_ _%g133884133903%_))))))
          (declare (not safe))
          (_%g133882133946%_ _%stx133881%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self133812%_ _%stx133813%_)
        (let* ((_%g133815133832%_
                (lambda (_%g133816133829%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133816133829%_))))
               (_%g133814133877%_
                (lambda (_%g133816133835%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133816133835%_))
                      (let ((_%e133821133837%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133816133835%_))))
                        (let ((_%hd133820133840%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133821133837%_)))
                              (_%tl133819133842%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133821133837%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133819133842%_))
                              (let ((_%e133824133845%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133819133842%_))))
                                (let ((_%hd133823133848%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133824133845%_)))
                                      (_%tl133822133850%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133824133845%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133822133850%_))
                                      (let ((_%e133827133853%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133822133850%_))))
                                        (let ((_%hd133826133856%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133827133853%_)))
                                              (_%tl133825133858%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133827133853%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133825133858%_))
                                              ((lambda (_%L133861%_
                                                        _%L133862%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self133812%_
                                                    _%L133861%_)))
                                               _%hd133826133856%_
                                               _%hd133823133848%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g133815133832%_
                                                 _%g133816133835%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g133815133832%_
                                         _%g133816133835%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133815133832%_ _%g133816133835%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133815133832%_ _%g133816133835%_))))))
          (declare (not safe))
          (_%g133814133877%_ _%stx133813%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self133694%_ _%stx133695%_)
        (let* ((_%g133697133725%_
                (lambda (_%g133698133722%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133698133722%_))))
               (_%g133696133809%_
                (lambda (_%g133698133728%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133698133728%_))
                      (let ((_%e133703133730%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133698133728%_))))
                        (let ((_%hd133702133733%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133703133730%_)))
                              (_%tl133701133735%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133703133730%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl133701133735%_))
                              (let ((_g134511_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl133701133735%_
                                        '0))))
                                (begin
                                  (let ((_g134512_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g134511_)
                                               (##vector-length _g134511_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g134512_ 2)))
                                        (error "Context expects 2 values"
                                               _g134512_)))
                                  (let ((_%target133704133738%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g134511_ 0)))
                                        (_%tl133706133740%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g134511_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl133706133740%_))
                                        (letrec ((_%loop133707133743%_
                                                  (lambda (_%hd133705133746%_
                                                           _%body133711133748%_
                                                           _%hd133712133750%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd133705133746%_))
                                                        (let ((_%e133708133753%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd133705133746%_))))
                  (let ((_%lp-hd133709133756%_
                         (let ()
                           (declare (not safe))
                           (##car _%e133708133753%_)))
                        (_%lp-tl133710133758%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e133708133753%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd133709133756%_))
                        (let ((_%e133717133761%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd133709133756%_))))
                          (let ((_%hd133716133764%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e133717133761%_)))
                                (_%tl133715133766%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e133717133761%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl133715133766%_))
                                (let ((_%e133720133769%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl133715133766%_))))
                                  (let ((_%hd133719133772%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e133720133769%_)))
                                        (_%tl133718133774%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e133720133769%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl133718133774%_))
                                        (let ((__tmp134514
                                               (cons _%hd133719133772%_
                                                     _%body133711133748%_))
                                              (__tmp134513
                                               (cons _%hd133716133764%_
                                                     _%hd133712133750%_)))
                                          (declare (not safe))
                                          (_%loop133707133743%_
                                           _%lp-tl133710133758%_
                                           __tmp134514
                                           __tmp134513))
                                        (let ()
                                          (declare (not safe))
                                          (_%g133697133725%_
                                           _%g133698133728%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g133697133725%_ _%g133698133728%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g133697133725%_ _%g133698133728%_)))))
                (let ((_%body133713133777%_ (reverse _%body133711133748%_))
                      (_%hd133714133779%_ (reverse _%hd133712133750%_)))
                  ((lambda (_%L133782%_ _%L133783%_)
                     (for-each
                      (lambda (_%g133797133799%_)
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _%self133694%_ _%g133797133799%_)))
                      (let ((__tmp134515
                             (lambda (_%g133801133804%_ _%g133802133806%_)
                               (cons _%g133801133804%_ _%g133802133806%_))))
                        (declare (not safe))
                        (__foldr1 __tmp134515 '() _%L133782%_))))
                   _%body133713133777%_
                   _%hd133714133779%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_%loop133707133743%_
                                             _%target133704133738%_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_%g133697133725%_
                                           _%g133698133728%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g133697133725%_ _%g133698133728%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133697133725%_ _%g133698133728%_))))))
          (declare (not safe))
          (_%g133696133809%_ _%stx133695%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self133547%_ _%stx133548%_)
        (let* ((_%g133550133585%_
                (lambda (_%g133551133582%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133551133582%_))))
               (_%g133549133691%_
                (lambda (_%g133551133588%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133551133588%_))
                      (let ((_%e133557133590%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133551133588%_))))
                        (let ((_%hd133556133593%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133557133590%_)))
                              (_%tl133555133595%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133557133590%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133555133595%_))
                              (let ((_%e133560133598%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133555133595%_))))
                                (let ((_%hd133559133601%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133560133598%_)))
                                      (_%tl133558133603%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133560133598%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd133559133601%_))
                                      (let ((_g134516_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd133559133601%_
                                                '0))))
                                        (begin
                                          (let ((_g134517_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g134516_)
                                                       (##vector-length
                                                        _g134516_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g134517_ 2)))
                                                (error "Context expects 2 values"
                                                       _g134517_)))
                                          (let ((_%target133561133606%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g134516_ 0)))
                                                (_%tl133563133608%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g134516_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl133563133608%_))
                                                (letrec ((_%loop133564133611%_
                                                          (lambda (_%hd133562133614%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr133568133616%_
                           _%hd133569133618%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd133562133614%_))
                        (let ((_%e133565133621%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd133562133614%_))))
                          (let ((_%lp-hd133566133624%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e133565133621%_)))
                                (_%lp-tl133567133626%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e133565133621%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd133566133624%_))
                                (let ((_%e133574133629%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd133566133624%_))))
                                  (let ((_%hd133573133632%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e133574133629%_)))
                                        (_%tl133572133634%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e133574133629%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl133572133634%_))
                                        (let ((_%e133577133637%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl133572133634%_))))
                                          (let ((_%hd133576133640%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e133577133637%_)))
                                                (_%tl133575133642%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e133577133637%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl133575133642%_))
                                                (let ((__tmp134519
                                                       (cons _%hd133576133640%_
                                                             _%expr133568133616%_))
                                                      (__tmp134518
                                                       (cons _%hd133573133632%_
                                                             _%hd133569133618%_)))
                                                  (declare (not safe))
                                                  (_%loop133564133611%_
                                                   _%lp-tl133567133626%_
                                                   __tmp134519
                                                   __tmp134518))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g133550133585%_
                                                   _%g133551133588%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g133550133585%_
                                           _%g133551133588%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g133550133585%_ _%g133551133588%_)))))
                        (let ((_%expr133570133645%_
                               (reverse _%expr133568133616%_))
                              (_%hd133571133647%_
                               (reverse _%hd133569133618%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133558133603%_))
                              (let ((_%e133580133650%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133558133603%_))))
                                (let ((_%hd133579133653%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133580133650%_)))
                                      (_%tl133578133655%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133580133650%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl133578133655%_))
                                      ((lambda (_%L133658%_
                                                _%L133659%_
                                                _%L133660%_)
                                         (for-each
                                          (lambda (_%g133679133681%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self133547%_
                                               _%g133679133681%_)))
                                          (let ((__tmp134521
                                                 (lambda (_%g133683133686%_
                                                          _%g133684133688%_)
                                                   (cons _%g133683133686%_
                                                         _%g133684133688%_)))
                                                (__tmp134520
                                                 (cons _%L133658%_ '())))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp134521
                                             __tmp134520
                                             _%L133659%_))))
                                       _%hd133579133653%_
                                       _%expr133570133645%_
                                       _%hd133571133647%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g133550133585%_
                                         _%g133551133588%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133550133585%_ _%g133551133588%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%loop133564133611%_
                                                     _%target133561133606%_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g133550133585%_
                                                   _%g133551133588%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g133550133585%_
                                         _%g133551133588%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133550133585%_ _%g133551133588%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133550133585%_ _%g133551133588%_))))))
          (declare (not safe))
          (_%g133549133691%_ _%stx133548%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self133492%_ _%stx133493%_)
        (let* ((_%g133495133509%_
                (lambda (_%g133496133506%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133496133506%_))))
               (_%g133494133544%_
                (lambda (_%g133496133512%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133496133512%_))
                      (let ((_%e133501133514%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133496133512%_))))
                        (let ((_%hd133500133517%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133501133514%_)))
                              (_%tl133499133519%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133501133514%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133499133519%_))
                              (let ((_%e133504133522%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133499133519%_))))
                                (let ((_%hd133503133525%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133504133522%_)))
                                      (_%tl133502133527%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133504133522%_))))
                                  ((lambda (_%L133530%_ _%L133531%_)
                                     (let ((__tmp134522 (last _%L133530%_)))
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self133492%_
                                        __tmp134522)))
                                   _%tl133502133527%_
                                   _%hd133503133525%_)))
                              (let ()
                                (declare (not safe))
                                (_%g133495133509%_ _%g133496133512%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133495133509%_ _%g133496133512%_))))))
          (declare (not safe))
          (_%g133494133544%_ _%stx133493%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self133424%_ _%stx133425%_)
        (let* ((_%g133427133444%_
                (lambda (_%g133428133441%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133428133441%_))))
               (_%g133426133489%_
                (lambda (_%g133428133447%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133428133447%_))
                      (let ((_%e133433133449%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133428133447%_))))
                        (let ((_%hd133432133452%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133433133449%_)))
                              (_%tl133431133454%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133433133449%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133431133454%_))
                              (let ((_%e133436133457%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133431133454%_))))
                                (let ((_%hd133435133460%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133436133457%_)))
                                      (_%tl133434133462%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133436133457%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133434133462%_))
                                      (let ((_%e133439133465%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133434133462%_))))
                                        (let ((_%hd133438133468%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133439133465%_)))
                                              (_%tl133437133470%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133439133465%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133437133470%_))
                                              ((lambda (_%L133473%_
                                                        _%L133474%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self133424%_
                                                    _%L133473%_)))
                                               _%hd133438133468%_
                                               _%hd133435133460%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g133427133444%_
                                                 _%g133428133447%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g133427133444%_
                                         _%g133428133447%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133427133444%_ _%g133428133447%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133427133444%_ _%g133428133447%_))))))
          (declare (not safe))
          (_%g133426133489%_ _%stx133425%_))))
    (define gxc#apply-operands
      (lambda (_%self133337%_ _%stx133338%_)
        (let* ((_%g133340133359%_
                (lambda (_%g133341133356%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133341133356%_))))
               (_%g133339133421%_
                (lambda (_%g133341133362%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133341133362%_))
                      (let ((_%e133345133364%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133341133362%_))))
                        (let ((_%hd133344133367%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133345133364%_)))
                              (_%tl133343133369%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133345133364%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl133343133369%_))
                              (let ((_g134523_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl133343133369%_
                                        '0))))
                                (begin
                                  (let ((_g134524_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g134523_)
                                               (##vector-length _g134523_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g134524_ 2)))
                                        (error "Context expects 2 values"
                                               _g134524_)))
                                  (let ((_%target133346133372%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g134523_ 0)))
                                        (_%tl133348133374%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g134523_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl133348133374%_))
                                        (letrec ((_%loop133349133377%_
                                                  (lambda (_%hd133347133380%_
                                                           _%rands133353133382%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd133347133380%_))
                                                        (let ((_%e133350133385%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd133347133380%_))))
                  (let ((_%lp-hd133351133388%_
                         (let ()
                           (declare (not safe))
                           (##car _%e133350133385%_)))
                        (_%lp-tl133352133390%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e133350133385%_))))
                    (let ((__tmp134525
                           (cons _%lp-hd133351133388%_ _%rands133353133382%_)))
                      (declare (not safe))
                      (_%loop133349133377%_
                       _%lp-tl133352133390%_
                       __tmp134525))))
                (let ((_%rands133354133393%_ (reverse _%rands133353133382%_)))
                  ((lambda (_%L133396%_)
                     (for-each
                      (lambda (_%g133409133411%_)
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _%self133337%_ _%g133409133411%_)))
                      (let ((__tmp134526
                             (lambda (_%g133413133416%_ _%g133414133418%_)
                               (cons _%g133413133416%_ _%g133414133418%_))))
                        (declare (not safe))
                        (__foldr1 __tmp134526 '() _%L133396%_))))
                   _%rands133354133393%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_%loop133349133377%_
                                             _%target133346133372%_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_%g133340133359%_
                                           _%g133341133362%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g133340133359%_ _%g133341133362%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133340133359%_ _%g133341133362%_))))))
          (declare (not safe))
          (_%g133339133421%_ _%stx133338%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx133334%_ _%src-stx133335%_)
        (let ((__tmp134527
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx133335%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx133334%_ __tmp134527))))
    (define gxc#xform-begin%
      (lambda (_%self133289%_ _%stx133290%_)
        (let* ((_%g133292133302%_
                (lambda (_%g133293133299%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133293133299%_))))
               (_%g133291133331%_
                (lambda (_%g133293133305%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133293133305%_))
                      (let ((_%e133297133307%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133293133305%_))))
                        (let ((_%hd133296133310%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133297133307%_)))
                              (_%tl133295133312%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133297133307%_))))
                          ((lambda (_%L133315%_)
                             (let* ((_%forms133329%_
                                     (map (lambda (_%g133324133326%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self133289%_
                                               _%g133324133326%_)))
                                          _%L133315%_))
                                    (__tmp134528
                                     (cons '%#begin _%forms133329%_)))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp134528
                                _%stx133290%_)))
                           _%tl133295133312%_)))
                      (let ()
                        (declare (not safe))
                        (_%g133292133302%_ _%g133293133305%_))))))
          (declare (not safe))
          (_%g133291133331%_ _%stx133290%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self133243%_ _%stx133244%_)
        (let* ((_%g133246133256%_
                (lambda (_%g133247133253%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133247133253%_))))
               (_%g133245133286%_
                (lambda (_%g133247133259%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133247133259%_))
                      (let ((_%e133251133261%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133247133259%_))))
                        (let ((_%hd133250133264%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133251133261%_)))
                              (_%tl133249133266%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133251133261%_))))
                          ((lambda (_%L133269%_)
                             (let ((__tmp134531
                                    (lambda ()
                                      (let* ((_%forms133284%_
                                              (map (lambda (_%g133279133281%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self133243%_
                                                        _%g133279133281%_)))
                                                   _%L133269%_))
                                             (__tmp134532
                                              (cons '%#begin-syntax
                                                    _%forms133284%_)))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp134532
                                         _%stx133244%_))))
                                   (__tmp134529
                                    (let ((__tmp134530
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp134530 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp134531
                                gx#current-expander-phi
                                __tmp134529)))
                           _%tl133249133266%_)))
                      (let ()
                        (declare (not safe))
                        (_%g133246133256%_ _%g133247133259%_))))))
          (declare (not safe))
          (_%g133245133286%_ _%stx133244%_))))
    (define gxc#xform-module%
      (lambda (_%self133180%_ _%stx133181%_)
        (let* ((_%g133183133197%_
                (lambda (_%g133184133194%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133184133194%_))))
               (_%g133182133240%_
                (lambda (_%g133184133200%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133184133200%_))
                      (let ((_%e133189133202%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133184133200%_))))
                        (let ((_%hd133188133205%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133189133202%_)))
                              (_%tl133187133207%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133189133202%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133187133207%_))
                              (let ((_%e133192133210%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133187133207%_))))
                                (let ((_%hd133191133213%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133192133210%_)))
                                      (_%tl133190133215%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133192133210%_))))
                                  ((lambda (_%L133218%_ _%L133219%_)
                                     (let* ((_%ctx133232%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L133219%_)))
                                            (_%code133234%_
                                             (##structure-ref
                                              _%ctx133232%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code133237%_
                                             (let ((__tmp134533
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _%self133180%_
                                                         _%code133234%_)))))
                                               (declare (not safe))
                                               (__call-with-parameters
                                                __tmp134533
                                                gx#current-expander-context
                                                _%ctx133232%_))))
                                       (##structure-set!
                                        _%ctx133232%_
                                        _%code133237%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp134534
                                              (cons '%#module
                                                    (cons _%L133219%_
                                                          (cons _%code133237%_
                                                                '())))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp134534
                                          _%stx133181%_))))
                                   _%tl133190133215%_
                                   _%hd133191133213%_)))
                              (let ()
                                (declare (not safe))
                                (_%g133183133197%_ _%g133184133200%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133183133197%_ _%g133184133200%_))))))
          (declare (not safe))
          (_%g133182133240%_ _%stx133181%_))))
    (define gxc#xform-define-values%
      (lambda (_%self133110%_ _%stx133111%_)
        (let* ((_%g133113133130%_
                (lambda (_%g133114133127%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133114133127%_))))
               (_%g133112133177%_
                (lambda (_%g133114133133%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133114133133%_))
                      (let ((_%e133119133135%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133114133133%_))))
                        (let ((_%hd133118133138%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133119133135%_)))
                              (_%tl133117133140%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133119133135%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133117133140%_))
                              (let ((_%e133122133143%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133117133140%_))))
                                (let ((_%hd133121133146%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133122133143%_)))
                                      (_%tl133120133148%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133122133143%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133120133148%_))
                                      (let ((_%e133125133151%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133120133148%_))))
                                        (let ((_%hd133124133154%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133125133151%_)))
                                              (_%tl133123133156%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133125133151%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133123133156%_))
                                              ((lambda (_%L133159%_
                                                        _%L133160%_)
                                                 (let* ((_%expr133175%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self133110%_
                                                            _%L133159%_)))
                                                        (__tmp134535
                                                         (cons '%#define-values
                                                               (cons _%L133160%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%expr133175%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp134535
                                                    _%stx133111%_)))
                                               _%hd133124133154%_
                                               _%hd133121133146%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g133113133130%_
                                                 _%g133114133133%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g133113133130%_
                                         _%g133114133133%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133113133130%_ _%g133114133133%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133113133130%_ _%g133114133133%_))))))
          (declare (not safe))
          (_%g133112133177%_ _%stx133111%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self133039%_ _%stx133040%_)
        (let* ((_%g133042133059%_
                (lambda (_%g133043133056%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133043133056%_))))
               (_%g133041133107%_
                (lambda (_%g133043133062%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133043133062%_))
                      (let ((_%e133048133064%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133043133062%_))))
                        (let ((_%hd133047133067%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133048133064%_)))
                              (_%tl133046133069%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133048133064%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133046133069%_))
                              (let ((_%e133051133072%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133046133069%_))))
                                (let ((_%hd133050133075%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133051133072%_)))
                                      (_%tl133049133077%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133051133072%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133049133077%_))
                                      (let ((_%e133054133080%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133049133077%_))))
                                        (let ((_%hd133053133083%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133054133080%_)))
                                              (_%tl133052133085%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133054133080%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133052133085%_))
                                              ((lambda (_%L133088%_
                                                        _%L133089%_)
                                                 (let ((__tmp134538
                                                        (lambda ()
                                                          (let* ((_%expr133105%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__1 _%self133039%_ _%L133088%_)))
                         (__tmp134539
                          (cons '%#define-syntax
                                (cons _%L133089%_ (cons _%expr133105%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp134539 _%stx133040%_))))
               (__tmp134536
                (let ((__tmp134537
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp134537 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp134538
                                                    gx#current-expander-phi
                                                    __tmp134536)))
                                               _%hd133053133083%_
                                               _%hd133050133075%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g133042133059%_
                                                 _%g133043133062%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g133042133059%_
                                         _%g133043133062%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133042133059%_ _%g133043133062%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133042133059%_ _%g133043133062%_))))))
          (declare (not safe))
          (_%g133041133107%_ _%stx133040%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self132969%_ _%stx132970%_)
        (let* ((_%g132972132989%_
                (lambda (_%g132973132986%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132973132986%_))))
               (_%g132971133036%_
                (lambda (_%g132973132992%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132973132992%_))
                      (let ((_%e132978132994%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132973132992%_))))
                        (let ((_%hd132977132997%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132978132994%_)))
                              (_%tl132976132999%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132978132994%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132976132999%_))
                              (let ((_%e132981133002%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132976132999%_))))
                                (let ((_%hd132980133005%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132981133002%_)))
                                      (_%tl132979133007%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132981133002%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl132979133007%_))
                                      (let ((_%e132984133010%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl132979133007%_))))
                                        (let ((_%hd132983133013%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e132984133010%_)))
                                              (_%tl132982133015%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e132984133010%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl132982133015%_))
                                              ((lambda (_%L133018%_
                                                        _%L133019%_)
                                                 (let* ((_%expr133034%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self132969%_
                                                            _%L133018%_)))
                                                        (__tmp134540
                                                         (cons '%#begin-annotation
                                                               (cons _%L133019%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%expr133034%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp134540
                                                    _%stx132970%_)))
                                               _%hd132983133013%_
                                               _%hd132980133005%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g132972132989%_
                                                 _%g132973132992%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g132972132989%_
                                         _%g132973132992%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g132972132989%_ _%g132973132992%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g132972132989%_ _%g132973132992%_))))))
          (declare (not safe))
          (_%g132971133036%_ _%stx132970%_))))
    (define gxc#xform-lambda%
      (lambda (_%self132907%_ _%stx132908%_)
        (let* ((_%g132910132924%_
                (lambda (_%g132911132921%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132911132921%_))))
               (_%g132909132966%_
                (lambda (_%g132911132927%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132911132927%_))
                      (let ((_%e132916132929%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132911132927%_))))
                        (let ((_%hd132915132932%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132916132929%_)))
                              (_%tl132914132934%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132916132929%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132914132934%_))
                              (let ((_%e132919132937%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132914132934%_))))
                                (let ((_%hd132918132940%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132919132937%_)))
                                      (_%tl132917132942%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132919132937%_))))
                                  ((lambda (_%L132945%_ _%L132946%_)
                                     (let ((__tmp134543
                                            (lambda ()
                                              (let* ((_%body132964%_
                                                      (map (lambda (_%g132959132961%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__1 _%self132907%_ _%g132959132961%_)))
                   _%L132945%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp134544
                                                      (cons '%#lambda
                                                            (cons _%L132946%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%body132964%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-source
                                                 __tmp134544
                                                 _%stx132908%_))))
                                           (__tmp134541
                                            (let ((__tmp134542
                                                   (cons _%L132946%_ '())))
                                              (declare (not safe))
                                              (gxc#xform-let-locals
                                               __tmp134542))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp134543
                                        gxc#current-compile-local-env
                                        __tmp134541)))
                                   _%tl132917132942%_
                                   _%hd132918132940%_)))
                              (let ()
                                (declare (not safe))
                                (_%g132910132924%_ _%g132911132927%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g132910132924%_ _%g132911132927%_))))))
          (declare (not safe))
          (_%g132909132966%_ _%stx132908%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self132815%_ _%stx132816%_)
        (letrec ((_%clause-e132818%_
                  (lambda (_%clause132859%_)
                    (let* ((_%g132861132872%_
                            (lambda (_%g132862132869%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g132862132869%_))))
                           (_%g132860132904%_
                            (lambda (_%g132862132875%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g132862132875%_))
                                  (let ((_%e132867132877%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g132862132875%_))))
                                    (let ((_%hd132866132880%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e132867132877%_)))
                                          (_%tl132865132882%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e132867132877%_))))
                                      ((lambda (_%L132885%_ _%L132886%_)
                                         (let ((__tmp134547
                                                (lambda ()
                                                  (let ((_%body132902%_
                                                         (map (lambda (_%g132897132899%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _%self132815%_ _%g132897132899%_)))
                      _%L132885%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%L132886%_
                                                          _%body132902%_))))
                                               (__tmp134545
                                                (let ((__tmp134546
                                                       (cons _%L132886%_ '())))
                                                  (declare (not safe))
                                                  (gxc#xform-let-locals
                                                   __tmp134546))))
                                           (declare (not safe))
                                           (__call-with-parameters
                                            __tmp134547
                                            gxc#current-compile-local-env
                                            __tmp134545)))
                                       _%tl132865132882%_
                                       _%hd132866132880%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g132861132872%_ _%g132862132875%_))))))
                      (declare (not safe))
                      (_%g132860132904%_ _%clause132859%_)))))
          (let* ((_%g132820132830%_
                  (lambda (_%g132821132827%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g132821132827%_))))
                 (_%g132819132856%_
                  (lambda (_%g132821132833%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g132821132833%_))
                        (let ((_%e132825132835%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g132821132833%_))))
                          (let ((_%hd132824132838%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e132825132835%_)))
                                (_%tl132823132840%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e132825132835%_))))
                            ((lambda (_%L132843%_)
                               (let* ((_%clauses132854%_
                                       (map _%clause-e132818%_ _%L132843%_))
                                      (__tmp134548
                                       (cons '%#case-lambda
                                             _%clauses132854%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp134548
                                  _%stx132816%_)))
                             _%tl132823132840%_)))
                        (let ()
                          (declare (not safe))
                          (_%g132820132830%_ _%g132821132833%_))))))
            (declare (not safe))
            (_%g132819132856%_ _%stx132816%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self132569%_ _%stx132570%_)
        (let* ((_%g132572132605%_
                (lambda (_%g132573132602%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132573132602%_))))
               (_%g132571132812%_
                (lambda (_%g132573132608%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132573132608%_))
                      (let ((_%e132580132610%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132573132608%_))))
                        (let ((_%hd132579132613%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132580132610%_)))
                              (_%tl132578132615%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132580132610%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132578132615%_))
                              (let ((_%e132583132618%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132578132615%_))))
                                (let ((_%hd132582132621%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132583132618%_)))
                                      (_%tl132581132623%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132583132618%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd132582132621%_))
                                      (let ((_g134549_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd132582132621%_
                                                '0))))
                                        (begin
                                          (let ((_g134550_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g134549_)
                                                       (##vector-length
                                                        _g134549_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g134550_ 2)))
                                                (error "Context expects 2 values"
                                                       _g134550_)))
                                          (let ((_%target132584132626%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g134549_ 0)))
                                                (_%tl132586132628%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g134549_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl132586132628%_))
                                                (letrec ((_%loop132587132631%_
                                                          (lambda (_%hd132585132634%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr132591132636%_
                           _%hd132592132638%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd132585132634%_))
                        (let ((_%e132588132641%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd132585132634%_))))
                          (let ((_%lp-hd132589132644%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e132588132641%_)))
                                (_%lp-tl132590132646%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e132588132641%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd132589132644%_))
                                (let ((_%e132597132649%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd132589132644%_))))
                                  (let ((_%hd132596132652%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e132597132649%_)))
                                        (_%tl132595132654%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e132597132649%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl132595132654%_))
                                        (let ((_%e132600132657%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl132595132654%_))))
                                          (let ((_%hd132599132660%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e132600132657%_)))
                                                (_%tl132598132662%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e132600132657%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl132598132662%_))
                                                (let ((__tmp134552
                                                       (cons _%hd132599132660%_
                                                             _%expr132591132636%_))
                                                      (__tmp134551
                                                       (cons _%hd132596132652%_
                                                             _%hd132592132638%_)))
                                                  (declare (not safe))
                                                  (_%loop132587132631%_
                                                   _%lp-tl132590132646%_
                                                   __tmp134552
                                                   __tmp134551))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g132572132605%_
                                                   _%g132573132608%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g132572132605%_
                                           _%g132573132608%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g132572132605%_ _%g132573132608%_)))))
                        (let ((_%expr132593132665%_
                               (reverse _%expr132591132636%_))
                              (_%hd132594132667%_
                               (reverse _%hd132592132638%_)))
                          ((lambda (_%L132670%_
                                    _%L132671%_
                                    _%L132672%_
                                    _%L132673%_)
                             (let* ((_%g132692132708%_
                                     (lambda (_%g132693132705%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g132693132705%_))))
                                    (_%g132691132798%_
                                     (lambda (_%g132693132711%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g132693132711%_))
                                           (let ((_g134553_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g132693132711%_
                                                     '0))))
                                             (begin
                                               (let ((_g134554_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g134553_)
                                                            (##vector-length
                                                             _g134553_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g134554_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g134554_)))
                                               (let ((_%target132695132713%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g134553_
                                                         0)))
                                                     (_%tl132697132715%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g134553_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl132697132715%_))
                                                     (letrec ((_%loop132698132718%_
                                                               (lambda (_%hd132696132721%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr132702132723%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd132696132721%_))
                             (let ((_%e132699132726%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd132696132721%_))))
                               (let ((_%lp-hd132700132729%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e132699132726%_)))
                                     (_%lp-tl132701132731%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e132699132726%_))))
                                 (let ((__tmp134555
                                        (cons _%lp-hd132700132729%_
                                              _%expr132702132723%_)))
                                   (declare (not safe))
                                   (_%loop132698132718%_
                                    _%lp-tl132701132731%_
                                    __tmp134555))))
                             (let ((_%expr132703132734%_
                                    (reverse _%expr132702132723%_)))
                               ((lambda (_%L132737%_)
                                  (let ((__tmp134559
                                         (lambda ()
                                           (let* ((_%g132751132758%_
                                                   (lambda (_%g132752132755%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g132752132755%_))))
                                                  (_%g132750132784%_
                                                   (lambda (_%g132752132761%_)
                                                     ((lambda (_%L132763%_)
                                                        (let ((__tmp134560
                                                               (cons _%L132673%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%L132737%_
                                        _%L132672%_))
                                     (let ((__tmp134561
                                            (lambda (_%g132773132777%_
                                                     _%g132774132779%_
                                                     _%g132775132781%_)
                                              (cons (cons _%g132774132779%_
                                                          (cons _%g132773132777%_
                                                                '()))
                                                    _%g132775132781%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp134561
                                        '()
                                        _%L132737%_
                                        _%L132672%_)))
                                   _%L132763%_))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp134560 _%stx132570%_)))
              _%g132752132761%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp134562
                                                   (map (lambda (_%g132786132788%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self132569%_
                                                             _%g132786132788%_)))
                                                        _%L132670%_)))
                                             (declare (not safe))
                                             (_%g132750132784%_ __tmp134562))))
                                        (__tmp134556
                                         (let ((__tmp134557
                                                (let ((__tmp134558
                                                       (lambda (_%g132790132793%_
                                                                _%g132791132795%_)
                                                         (cons _%g132790132793%_
                                                               _%g132791132795%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp134558
                                                   '()
                                                   _%L132672%_))))
                                           (declare (not safe))
                                           (gxc#xform-let-locals
                                            __tmp134557))))
                                    (declare (not safe))
                                    (__call-with-parameters
                                     __tmp134559
                                     gxc#current-compile-local-env
                                     __tmp134556)))
                                _%expr132703132734%_))))))
               (let ()
                 (declare (not safe))
                 (_%loop132698132718%_ _%target132695132713%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g132692132708%_
                                                        _%g132693132711%_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g132692132708%_
                                              _%g132693132711%_)))))
                                    (__tmp134563
                                     (map (lambda (_%g132800132802%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self132569%_
                                               _%g132800132802%_)))
                                          (let ((__tmp134564
                                                 (lambda (_%g132804132807%_
                                                          _%g132805132809%_)
                                                   (cons _%g132804132807%_
                                                         _%g132805132809%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp134564
                                             '()
                                             _%L132671%_)))))
                               (declare (not safe))
                               (_%g132691132798%_ __tmp134563)))
                           _%tl132581132623%_
                           _%expr132593132665%_
                           _%hd132594132667%_
                           _%hd132579132613%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%loop132587132631%_
                                                     _%target132584132626%_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g132572132605%_
                                                   _%g132573132608%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g132572132605%_
                                         _%g132573132608%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g132572132605%_ _%g132573132608%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g132572132605%_ _%g132573132608%_))))))
          (declare (not safe))
          (_%g132571132812%_ _%stx132570%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self132323%_ _%stx132324%_)
        (let* ((_%g132326132359%_
                (lambda (_%g132327132356%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132327132356%_))))
               (_%g132325132566%_
                (lambda (_%g132327132362%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132327132362%_))
                      (let ((_%e132334132364%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132327132362%_))))
                        (let ((_%hd132333132367%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132334132364%_)))
                              (_%tl132332132369%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132334132364%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132332132369%_))
                              (let ((_%e132337132372%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132332132369%_))))
                                (let ((_%hd132336132375%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132337132372%_)))
                                      (_%tl132335132377%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132337132372%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd132336132375%_))
                                      (let ((_g134565_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd132336132375%_
                                                '0))))
                                        (begin
                                          (let ((_g134566_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g134565_)
                                                       (##vector-length
                                                        _g134565_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g134566_ 2)))
                                                (error "Context expects 2 values"
                                                       _g134566_)))
                                          (let ((_%target132338132380%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g134565_ 0)))
                                                (_%tl132340132382%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g134565_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl132340132382%_))
                                                (letrec ((_%loop132341132385%_
                                                          (lambda (_%hd132339132388%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr132345132390%_
                           _%hd132346132392%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd132339132388%_))
                        (let ((_%e132342132395%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd132339132388%_))))
                          (let ((_%lp-hd132343132398%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e132342132395%_)))
                                (_%lp-tl132344132400%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e132342132395%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd132343132398%_))
                                (let ((_%e132351132403%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd132343132398%_))))
                                  (let ((_%hd132350132406%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e132351132403%_)))
                                        (_%tl132349132408%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e132351132403%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl132349132408%_))
                                        (let ((_%e132354132411%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl132349132408%_))))
                                          (let ((_%hd132353132414%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e132354132411%_)))
                                                (_%tl132352132416%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e132354132411%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl132352132416%_))
                                                (let ((__tmp134568
                                                       (cons _%hd132353132414%_
                                                             _%expr132345132390%_))
                                                      (__tmp134567
                                                       (cons _%hd132350132406%_
                                                             _%hd132346132392%_)))
                                                  (declare (not safe))
                                                  (_%loop132341132385%_
                                                   _%lp-tl132344132400%_
                                                   __tmp134568
                                                   __tmp134567))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g132326132359%_
                                                   _%g132327132362%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g132326132359%_
                                           _%g132327132362%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g132326132359%_ _%g132327132362%_)))))
                        (let ((_%expr132347132419%_
                               (reverse _%expr132345132390%_))
                              (_%hd132348132421%_
                               (reverse _%hd132346132392%_)))
                          ((lambda (_%L132424%_
                                    _%L132425%_
                                    _%L132426%_
                                    _%L132427%_)
                             (let ((__tmp134572
                                    (lambda ()
                                      (let* ((_%g132447132463%_
                                              (lambda (_%g132448132460%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g132448132460%_))))
                                             (_%g132446132545%_
                                              (lambda (_%g132448132466%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g132448132466%_))
                                                    (let ((_g134573_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g132448132466%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g134574_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g134573_)
                             (##vector-length _g134573_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g134574_ 2)))
                      (error "Context expects 2 values" _g134574_)))
                (let ((_%target132450132468%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g134573_ 0)))
                      (_%tl132452132470%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g134573_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl132452132470%_))
                      (letrec ((_%loop132453132473%_
                                (lambda (_%hd132451132476%_
                                         _%expr132457132478%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd132451132476%_))
                                      (let ((_%e132454132481%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd132451132476%_))))
                                        (let ((_%lp-hd132455132484%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e132454132481%_)))
                                              (_%lp-tl132456132486%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e132454132481%_))))
                                          (let ((__tmp134575
                                                 (cons _%lp-hd132455132484%_
                                                       _%expr132457132478%_)))
                                            (declare (not safe))
                                            (_%loop132453132473%_
                                             _%lp-tl132456132486%_
                                             __tmp134575))))
                                      (let ((_%expr132458132489%_
                                             (reverse _%expr132457132478%_)))
                                        ((lambda (_%L132492%_)
                                           (let ()
                                             (let* ((_%g132506132513%_
                                                     (lambda (_%g132507132510%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g132507132510%_))))
                                                    (_%g132505132538%_
                                                     (lambda (_%g132507132516%_)
                                                       ((lambda (_%L132518%_)
                                                          (let ((__tmp134576
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L132427%_
                               (cons (begin
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-check-splice-targets
                                          _%L132492%_
                                          _%L132426%_))
                                       (let ((__tmp134577
                                              (lambda (_%g132527132531%_
                                                       _%g132528132533%_
                                                       _%g132529132535%_)
                                                (cons (cons _%g132528132533%_
                                                            (cons _%g132527132531%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%g132529132535%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr2
                                          __tmp134577
                                          '()
                                          _%L132492%_
                                          _%L132426%_)))
                                     _%L132518%_))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp134576 _%stx132324%_)))
                _%g132507132516%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp134578
                                                     (map (lambda (_%g132540132542%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self132323%_
                                                               _%g132540132542%_)))
                                                          _%L132424%_)))
                                               (declare (not safe))
                                               (_%g132505132538%_
                                                __tmp134578))))
                                         _%expr132458132489%_))))))
                        (let ()
                          (declare (not safe))
                          (_%loop132453132473%_ _%target132450132468%_ '())))
                      (let ()
                        (declare (not safe))
                        (_%g132447132463%_ _%g132448132466%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g132447132463%_
                                                       _%g132448132466%_)))))
                                             (__tmp134579
                                              (map (lambda (_%g132547132549%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self132323%_
                                                        _%g132547132549%_)))
                                                   (let ((__tmp134580
                                                          (lambda (_%g132551132554%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g132552132556%_)
                    (cons _%g132551132554%_ _%g132552132556%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      __tmp134580
                                                      '()
                                                      _%L132425%_)))))
                                        (declare (not safe))
                                        (_%g132446132545%_ __tmp134579))))
                                   (__tmp134569
                                    (let ((__tmp134570
                                           (let ((__tmp134571
                                                  (lambda (_%g132558132561%_
                                                           _%g132559132563%_)
                                                    (cons _%g132558132561%_
                                                          _%g132559132563%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp134571
                                              '()
                                              _%L132426%_))))
                                      (declare (not safe))
                                      (gxc#xform-let-locals __tmp134570))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp134572
                                gxc#current-compile-local-env
                                __tmp134569)))
                           _%tl132335132377%_
                           _%expr132347132419%_
                           _%hd132348132421%_
                           _%hd132333132367%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%loop132341132385%_
                                                     _%target132338132380%_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g132326132359%_
                                                   _%g132327132362%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g132326132359%_
                                         _%g132327132362%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g132326132359%_ _%g132327132362%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g132326132359%_ _%g132327132362%_))))))
          (declare (not safe))
          (_%g132325132566%_ _%stx132324%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings132227%_)
        (let _%loop132229%_ ((_%rest132231%_ _%bindings132227%_)
                             (_%locals132232%_
                              (let ()
                                (declare (not safe))
                                (gxc#current-compile-local-env))))
          (let* ((_%rest132233132241%_ _%rest132231%_)
                 (_%else132235132249%_ (lambda () _%locals132232%_))
                 (_%K132237132311%_
                  (lambda (_%rest132252%_ _%bind132253%_)
                    (let _%loop-bind132255%_ ((_%bind132257%_ _%bind132253%_)
                                              (_%locals132258%_
                                               _%locals132232%_))
                      (let* ((_%bind132259132270%_ _%bind132257%_)
                             (_%E132263132274%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%bind132259132270%_
                                         '([id . bind-rest])
                                         '((? identifier? id))
                                         '(_)))
                                '#!void)))
                        (let ((_%K132266132299%_
                               (lambda (_%bind-rest132296%_ _%id132297%_)
                                 (let ((__tmp134581
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#identifier-symbol
                                                 _%id132297%_))
                                              _%locals132258%_)))
                                   (declare (not safe))
                                   (_%loop-bind132255%_
                                    _%bind-rest132296%_
                                    __tmp134581))))
                              (_%K132265132288%_
                               (lambda (_%id132286%_)
                                 (let ((__tmp134582
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#identifier-symbol
                                                 _%id132286%_))
                                              _%locals132258%_)))
                                   (declare (not safe))
                                   (_%loop132229%_
                                    _%rest132252%_
                                    __tmp134582))))
                              (_%K132264132279%_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (_%loop132229%_
                                    _%rest132252%_
                                    _%locals132258%_)))))
                          (let ((_%try-match132261132293%_
                                 (lambda ()
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%bind132259132270%_))
                                       (let ((_%id132291%_
                                              _%bind132259132270%_))
                                         (declare (not safe))
                                         (_%K132265132288%_ _%id132291%_))
                                       (let ()
                                         (declare (not safe))
                                         (_%K132264132279%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%bind132259132270%_))
                                (let ((_%tl132268132304%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%bind132259132270%_)))
                                      (_%hd132267132302%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%bind132259132270%_))))
                                  (let ((_%id132307%_ _%hd132267132302%_)
                                        (_%bind-rest132309%_
                                         _%tl132268132304%_))
                                    (let ()
                                      (declare (not safe))
                                      (_%K132266132299%_
                                       _%bind-rest132309%_
                                       _%id132307%_))))
                                (let ()
                                  (declare (not safe))
                                  (_%try-match132261132293%_))))))))))
            (if (let () (declare (not safe)) (##pair? _%rest132233132241%_))
                (let ((_%hd132238132314%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest132233132241%_)))
                      (_%tl132239132316%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest132233132241%_))))
                  (let* ((_%bind132319%_ _%hd132238132314%_)
                         (_%rest132321%_ _%tl132239132316%_))
                    (declare (not safe))
                    (_%K132237132311%_ _%rest132321%_ _%bind132319%_)))
                (let () (declare (not safe)) (_%else132235132249%_)))))))
    (define gxc#xform-operands
      (lambda (_%self132179%_ _%stx132180%_)
        (let* ((_%g132182132193%_
                (lambda (_%g132183132190%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132183132190%_))))
               (_%g132181132224%_
                (lambda (_%g132183132196%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132183132196%_))
                      (let ((_%e132188132198%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132183132196%_))))
                        (let ((_%hd132187132201%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132188132198%_)))
                              (_%tl132186132203%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132188132198%_))))
                          ((lambda (_%L132206%_ _%L132207%_)
                             (let* ((_%rands132222%_
                                     (map (lambda (_%g132217132219%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self132179%_
                                               _%g132217132219%_)))
                                          _%L132206%_))
                                    (__tmp134583
                                     (cons _%L132207%_ _%rands132222%_)))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp134583
                                _%stx132180%_)))
                           _%tl132186132203%_
                           _%hd132187132201%_)))
                      (let ()
                        (declare (not safe))
                        (_%g132182132193%_ _%g132183132196%_))))))
          (declare (not safe))
          (_%g132181132224%_ _%stx132180%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self132109%_ _%stx132110%_)
        (let* ((_%g132112132129%_
                (lambda (_%g132113132126%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132113132126%_))))
               (_%g132111132176%_
                (lambda (_%g132113132132%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132113132132%_))
                      (let ((_%e132118132134%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132113132132%_))))
                        (let ((_%hd132117132137%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132118132134%_)))
                              (_%tl132116132139%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132118132134%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132116132139%_))
                              (let ((_%e132121132142%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132116132139%_))))
                                (let ((_%hd132120132145%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132121132142%_)))
                                      (_%tl132119132147%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132121132142%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl132119132147%_))
                                      (let ((_%e132124132150%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl132119132147%_))))
                                        (let ((_%hd132123132153%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e132124132150%_)))
                                              (_%tl132122132155%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e132124132150%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl132122132155%_))
                                              ((lambda (_%L132158%_
                                                        _%L132159%_)
                                                 (let* ((_%expr132174%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self132109%_
                                                            _%L132158%_)))
                                                        (__tmp134584
                                                         (cons '%#set!
                                                               (cons _%L132159%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%expr132174%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp134584
                                                    _%stx132110%_)))
                                               _%hd132123132153%_
                                               _%hd132120132145%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g132112132129%_
                                                 _%g132113132132%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g132112132129%_
                                         _%g132113132132%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g132112132129%_ _%g132113132132%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g132112132129%_ _%g132113132132%_))))))
          (declare (not safe))
          (_%g132111132176%_ _%stx132110%_))))))
