(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1771036677)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx377309%_)
        (let* ((_%self377311%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e377313%_
                (let ((__tmp377531 (gxc#stx-car-e _%stx377309%_)))
                  (declare (not safe))
                  (method-ref _%self377311%_ __tmp377531))))
          (if _%$e377313%_
              ((lambda (_%method377316%_)
                 (declare (not safe))
                 (let ((_%$e377319%_ (gx#stx-source _%stx377309%_)))
                   (if _%$e377319%_
                       ((lambda (_%source377322%_)
                          (call-with-parameters__1
                           (lambda ()
                             (_%method377316%_ _%self377311%_ _%stx377309%_))
                           gxc#current-compile-context
                           (cons (cons '@ (cons _%source377322%_ '()))
                                 (let ((_%$e377326%_
                                        (gxc#current-compile-context)))
                                   (if _%$e377326%_ _%$e377326%_ '())))))
                        _%$e377319%_)
                       (_%method377316%_ _%self377311%_ _%stx377309%_))))
               _%$e377313%_)
              (let ((__tmp377533 (gxc#stx-car-e _%stx377309%_))
                    (__tmp377532
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx377309%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self377311%_
                       __tmp377533
                       __tmp377532))))))
    (define gxc#compile-e__1
      (lambda (_%self377331%_ _%stx377332%_)
        (let ((_%$e377334%_
               (let ((__tmp377534 (gxc#stx-car-e _%stx377332%_)))
                 (declare (not safe))
                 (method-ref _%self377331%_ __tmp377534))))
          (if _%$e377334%_
              ((lambda (_%method377337%_)
                 (declare (not safe))
                 (let ((_%$e377340%_ (gx#stx-source _%stx377332%_)))
                   (if _%$e377340%_
                       ((lambda (_%source377343%_)
                          (call-with-parameters__1
                           (lambda ()
                             (_%method377337%_ _%self377331%_ _%stx377332%_))
                           gxc#current-compile-context
                           (cons (cons '@ (cons _%source377343%_ '()))
                                 (let ((_%$e377347%_
                                        (gxc#current-compile-context)))
                                   (if _%$e377347%_ _%$e377347%_ '())))))
                        _%$e377340%_)
                       (_%method377337%_ _%self377331%_ _%stx377332%_))))
               _%$e377334%_)
              (let ((__tmp377536 (gxc#stx-car-e _%stx377332%_))
                    (__tmp377535
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx377332%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self377331%_
                       __tmp377536
                       __tmp377535))))))
    (define gxc#compile-e
      (lambda _g377537_
        (let ((_g377538_ (let () (declare (not safe)) (##length _g377537_))))
          (cond ((let () (declare (not safe)) (##fx= _g377538_ 1))
                 (apply gxc#compile-e__0 _g377537_))
                ((let () (declare (not safe)) (##fx= _g377538_ 2))
                 (apply gxc#compile-e__1 _g377537_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g377537_))))))
    (define gxc#stx-car-e
      (lambda (_%stx377307%_)
        (let ((__tmp377539
               (car (let () (declare (not safe)) (gx#stx-e _%stx377307%_)))))
          (declare (not safe))
          (gx#stx-e __tmp377539))))
    (define gxc#void-method (lambda (_%self377304%_ _%stx377305%_) '#!void))
    (define gxc#false-method (lambda (_%self377301%_ _%stx377302%_) '#f))
    (define gxc#true-method (lambda (_%self377298%_ _%stx377299%_) '#t))
    (define gxc#identity-method
      (lambda (_%self377295%_ _%stx377296%_) _%stx377296%_))
    (define gxc#::void-expression::t
      (let ((__tmp377540 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp377540
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args377292%_
        (apply make-instance gxc#::void-expression::t _%$args377292%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp377541
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
        (__make-atomic-promise __tmp377541)))
    (define gxc#::void-special-form::t
      (let ((__tmp377542 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp377542
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args377288%_
        (apply make-instance gxc#::void-special-form::t _%$args377288%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp377543
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
        (__make-atomic-promise __tmp377543)))
    (define gxc#::void::t
      (let ((__tmp377544
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp377544 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args377284%_
        (apply make-instance gxc#::void::t _%$args377284%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp377545
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp377545)))
    (define gxc#::false-expression::t
      (let ((__tmp377546 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp377546
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args377280%_
        (apply make-instance gxc#::false-expression::t _%$args377280%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp377547
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
        (__make-atomic-promise __tmp377547)))
    (define gxc#::false-special-form::t
      (let ((__tmp377548 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp377548
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args377276%_
        (apply make-instance gxc#::false-special-form::t _%$args377276%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp377549
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
        (__make-atomic-promise __tmp377549)))
    (define gxc#::false::t
      (let ((__tmp377550
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp377550 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args377272%_
        (apply make-instance gxc#::false::t _%$args377272%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp377551
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp377551)))
    (define gxc#::identity-expression::t
      (let ((__tmp377552 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp377552
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args377268%_
        (apply make-instance gxc#::identity-expression::t _%$args377268%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp377553
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
        (__make-atomic-promise __tmp377553)))
    (define gxc#::identity-special-form::t
      (let ((__tmp377554 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp377554
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args377264%_
        (apply make-instance gxc#::identity-special-form::t _%$args377264%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp377555
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
        (__make-atomic-promise __tmp377555)))
    (define gxc#::identity::t
      (let ((__tmp377556
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp377556
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args377260%_
        (apply make-instance gxc#::identity::t _%$args377260%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp377557
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp377557)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp377558 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp377558
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args377256%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args377256%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp377559
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
        (__make-atomic-promise __tmp377559)))
    (define gxc#::basic-xform::t
      (let ((__tmp377560
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp377560
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args377252%_
        (apply make-instance gxc#::basic-xform::t _%$args377252%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp377561
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
        (__make-atomic-promise __tmp377561)))
    (define gxc#apply-begin%
      (lambda (_%self377208%_ _%stx377209%_)
        (let* ((_%g377211377221%_
                (lambda (_%g377212377218%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g377212377218%_))))
               (_%g377210377248%_
                (lambda (_%g377212377224%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g377212377224%_))
                      (let ((_%e377214377226%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g377212377224%_))))
                        (let ((_%hd377215377229%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e377214377226%_)))
                              (_%tl377216377231%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e377214377226%_))))
                          ((lambda (_%g377213377234%_)
                             (for-each
                              (lambda (_%g377243377245%_)
                                (gxc#compile-e__1
                                 _%self377208%_
                                 _%g377243377245%_))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%g377213377234%_))))
                           _%tl377216377231%_)))
                      (_%g377211377221%_ _%g377212377224%_)))))
          (_%g377210377248%_ _%stx377209%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self377169%_ _%stx377170%_)
        (let* ((_%g377172377182%_
                (lambda (_%g377173377179%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g377173377179%_))))
               (_%g377171377205%_
                (lambda (_%g377173377185%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g377173377185%_))
                      (let ((_%e377175377187%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g377173377185%_))))
                        (let ((_%hd377176377190%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e377175377187%_)))
                              (_%tl377177377192%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e377175377187%_))))
                          ((lambda (_%g377174377195%_)
                             (gxc#compile-e__1
                              _%self377169%_
                              (last _%g377174377195%_)))
                           _%tl377177377192%_)))
                      (_%g377172377182%_ _%g377173377185%_)))))
          (_%g377171377205%_ _%stx377170%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self377165%_ _%stx377166%_)
        (let ((__tmp377564
               (lambda () (gxc#apply-begin% _%self377165%_ _%stx377166%_)))
              (__tmp377562
               (let ((__tmp377563
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp377563 '1))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp377564
           gx#current-expander-phi
           __tmp377562))))
    (define gxc#apply-module%
      (lambda (_%self377104%_ _%stx377105%_)
        (let* ((_%g377107377121%_
                (lambda (_%g377108377118%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g377108377118%_))))
               (_%g377106377162%_
                (lambda (_%g377108377124%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g377108377124%_))
                      (let ((_%e377111377126%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g377108377124%_))))
                        (let ((_%hd377112377129%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e377111377126%_)))
                              (_%tl377113377131%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e377111377126%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl377113377131%_))
                              (let ((_%e377114377134%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl377113377131%_))))
                                (let ((_%hd377115377137%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e377114377134%_)))
                                      (_%tl377116377139%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e377114377134%_))))
                                  ((lambda (_%g377109377142%_
                                            _%g377110377143%_)
                                     (let* ((_%ctx377156%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g377110377143%_)))
                                            (_%ctx-stx377158%_
                                             (##structure-ref
                                              _%ctx377156%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp377565
                                             (lambda ()
                                               (gxc#compile-e__1
                                                _%self377104%_
                                                _%ctx-stx377158%_))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp377565
                                        gx#current-expander-context
                                        _%ctx377156%_)))
                                   _%tl377116377139%_
                                   _%hd377115377137%_)))
                              (_%g377107377121%_ _%g377108377124%_))))
                      (_%g377107377121%_ _%g377108377124%_)))))
          (_%g377106377162%_ _%stx377105%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self377036%_ _%stx377037%_)
        (let* ((_%g377039377056%_
                (lambda (_%g377040377053%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g377040377053%_))))
               (_%g377038377101%_
                (lambda (_%g377040377059%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g377040377059%_))
                      (let ((_%e377043377061%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g377040377059%_))))
                        (let ((_%hd377044377064%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e377043377061%_)))
                              (_%tl377045377066%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e377043377061%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl377045377066%_))
                              (let ((_%e377046377069%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl377045377066%_))))
                                (let ((_%hd377047377072%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e377046377069%_)))
                                      (_%tl377048377074%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e377046377069%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl377048377074%_))
                                      (let ((_%e377049377077%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl377048377074%_))))
                                        (let ((_%hd377050377080%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e377049377077%_)))
                                              (_%tl377051377082%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e377049377077%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl377051377082%_))
                                              ((lambda (_%g377041377085%_
                                                        _%g377042377086%_)
                                                 (gxc#compile-e__1
                                                  _%self377036%_
                                                  _%g377041377085%_))
                                               _%hd377050377080%_
                                               _%hd377047377072%_)
                                              (_%g377039377056%_
                                               _%g377040377059%_))))
                                      (_%g377039377056%_ _%g377040377059%_))))
                              (_%g377039377056%_ _%g377040377059%_))))
                      (_%g377039377056%_ _%g377040377059%_)))))
          (_%g377038377101%_ _%stx377037%_))))
    (define gxc#apply-define-values%
      (lambda (_%self376968%_ _%stx376969%_)
        (let* ((_%g376971376988%_
                (lambda (_%g376972376985%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g376972376985%_))))
               (_%g376970377033%_
                (lambda (_%g376972376991%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g376972376991%_))
                      (let ((_%e376975376993%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g376972376991%_))))
                        (let ((_%hd376976376996%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e376975376993%_)))
                              (_%tl376977376998%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e376975376993%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl376977376998%_))
                              (let ((_%e376978377001%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl376977376998%_))))
                                (let ((_%hd376979377004%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e376978377001%_)))
                                      (_%tl376980377006%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e376978377001%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl376980377006%_))
                                      (let ((_%e376981377009%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl376980377006%_))))
                                        (let ((_%hd376982377012%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e376981377009%_)))
                                              (_%tl376983377014%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e376981377009%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl376983377014%_))
                                              ((lambda (_%g376973377017%_
                                                        _%g376974377018%_)
                                                 (gxc#compile-e__1
                                                  _%self376968%_
                                                  _%g376973377017%_))
                                               _%hd376982377012%_
                                               _%hd376979377004%_)
                                              (_%g376971376988%_
                                               _%g376972376991%_))))
                                      (_%g376971376988%_ _%g376972376991%_))))
                              (_%g376971376988%_ _%g376972376991%_))))
                      (_%g376971376988%_ _%g376972376991%_)))))
          (_%g376970377033%_ _%stx376969%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self376899%_ _%stx376900%_)
        (let* ((_%g376902376919%_
                (lambda (_%g376903376916%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g376903376916%_))))
               (_%g376901376965%_
                (lambda (_%g376903376922%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g376903376922%_))
                      (let ((_%e376906376924%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g376903376922%_))))
                        (let ((_%hd376907376927%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e376906376924%_)))
                              (_%tl376908376929%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e376906376924%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl376908376929%_))
                              (let ((_%e376909376932%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl376908376929%_))))
                                (let ((_%hd376910376935%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e376909376932%_)))
                                      (_%tl376911376937%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e376909376932%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl376911376937%_))
                                      (let ((_%e376912376940%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl376911376937%_))))
                                        (let ((_%hd376913376943%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e376912376940%_)))
                                              (_%tl376914376945%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e376912376940%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl376914376945%_))
                                              ((lambda (_%g376904376948%_
                                                        _%g376905376949%_)
                                                 (let ((__tmp377568
                                                        (lambda ()
                                                          (gxc#compile-e__1
                                                           _%self376899%_
                                                           _%g376904376948%_)))
                                                       (__tmp377566
                                                        (let ((__tmp377567
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp377567 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp377568
                                                    gx#current-expander-phi
                                                    __tmp377566)))
                                               _%hd376913376943%_
                                               _%hd376910376935%_)
                                              (_%g376902376919%_
                                               _%g376903376922%_))))
                                      (_%g376902376919%_ _%g376903376922%_))))
                              (_%g376902376919%_ _%g376903376922%_))))
                      (_%g376902376919%_ _%g376903376922%_)))))
          (_%g376901376965%_ _%stx376900%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self376831%_ _%stx376832%_)
        (let* ((_%g376834376851%_
                (lambda (_%g376835376848%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g376835376848%_))))
               (_%g376833376896%_
                (lambda (_%g376835376854%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g376835376854%_))
                      (let ((_%e376838376856%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g376835376854%_))))
                        (let ((_%hd376839376859%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e376838376856%_)))
                              (_%tl376840376861%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e376838376856%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl376840376861%_))
                              (let ((_%e376841376864%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl376840376861%_))))
                                (let ((_%hd376842376867%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e376841376864%_)))
                                      (_%tl376843376869%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e376841376864%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl376843376869%_))
                                      (let ((_%e376844376872%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl376843376869%_))))
                                        (let ((_%hd376845376875%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e376844376872%_)))
                                              (_%tl376846376877%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e376844376872%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl376846376877%_))
                                              ((lambda (_%g376836376880%_
                                                        _%g376837376881%_)
                                                 (gxc#compile-e__1
                                                  _%self376831%_
                                                  _%g376836376880%_))
                                               _%hd376845376875%_
                                               _%hd376842376867%_)
                                              (_%g376834376851%_
                                               _%g376835376854%_))))
                                      (_%g376834376851%_ _%g376835376854%_))))
                              (_%g376834376851%_ _%g376835376854%_))))
                      (_%g376834376851%_ _%g376835376854%_)))))
          (_%g376833376896%_ _%stx376832%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self376717%_ _%stx376718%_)
        (let* ((_%g376720376748%_
                (lambda (_%g376721376745%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g376721376745%_))))
               (_%g376719376828%_
                (lambda (_%g376721376751%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g376721376751%_))
                      (let ((_%e376724376753%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g376721376751%_))))
                        (let ((_%hd376725376756%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e376724376753%_)))
                              (_%tl376726376758%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e376724376753%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl376726376758%_))
                              (let ((_g377569_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl376726376758%_
                                        '0))))
                                (begin
                                  (let ((_g377570_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g377569_)
                                               (##values-length _g377569_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g377570_ 2)))
                                        (error "Context expects 2 values"
                                               _g377570_)))
                                  (let ((_%target376727376761%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g377569_ 0)))
                                        (_%tl376729376763%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g377569_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl376729376763%_))
                                        (letrec ((_%loop376730376766%_
                                                  (lambda (_%hd376728376769%_
                                                           _%body376734376771%_
                                                           _%hd376735376772%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd376728376769%_))
                                                        (let ((_%e376731376774%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd376728376769%_))))
                  (let ((_%lp-hd376732376777%_
                         (let ()
                           (declare (not safe))
                           (##car _%e376731376774%_)))
                        (_%lp-tl376733376779%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e376731376774%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd376732376777%_))
                        (let ((_%e376738376782%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd376732376777%_))))
                          (let ((_%hd376739376785%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e376738376782%_)))
                                (_%tl376740376787%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e376738376782%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl376740376787%_))
                                (let ((_%e376741376790%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl376740376787%_))))
                                  (let ((_%hd376742376793%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e376741376790%_)))
                                        (_%tl376743376795%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e376741376790%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl376743376795%_))
                                        (_%loop376730376766%_
                                         _%lp-tl376733376779%_
                                         (cons _%hd376742376793%_
                                               _%body376734376771%_)
                                         (cons _%hd376739376785%_
                                               _%hd376735376772%_))
                                        (_%g376720376748%_
                                         _%g376721376751%_))))
                                (_%g376720376748%_ _%g376721376751%_))))
                        (_%g376720376748%_ _%g376721376751%_))))
                (let ((_%body376736376798%_ (reverse _%body376734376771%_))
                      (_%hd376737376799%_ (reverse _%hd376735376772%_)))
                  ((lambda (_%g376722376801%_ _%g376723376802%_)
                     (for-each
                      (lambda (_%g376816376818%_)
                        (gxc#compile-e__1 _%self376717%_ _%g376816376818%_))
                      (let ((__tmp377571
                             (lambda (_%g376820376823%_ _%g376821376825%_)
                               (cons _%g376820376823%_ _%g376821376825%_))))
                        (declare (not safe))
                        (foldr__0 __tmp377571 '() _%g376722376801%_))))
                   _%body376736376798%_
                   _%hd376737376799%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop376730376766%_
                                           _%target376727376761%_
                                           '()
                                           '()))
                                        (_%g376720376748%_
                                         _%g376721376751%_)))))
                              (_%g376720376748%_ _%g376721376751%_))))
                      (_%g376720376748%_ _%g376721376751%_)))))
          (_%g376719376828%_ _%stx376718%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self376574%_ _%stx376575%_)
        (let* ((_%g376577376612%_
                (lambda (_%g376578376609%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g376578376609%_))))
               (_%g376576376714%_
                (lambda (_%g376578376615%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g376578376615%_))
                      (let ((_%e376582376617%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g376578376615%_))))
                        (let ((_%hd376583376620%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e376582376617%_)))
                              (_%tl376584376622%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e376582376617%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl376584376622%_))
                              (let ((_%e376585376625%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl376584376622%_))))
                                (let ((_%hd376586376628%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e376585376625%_)))
                                      (_%tl376587376630%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e376585376625%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd376586376628%_))
                                      (let ((_g377572_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd376586376628%_
                                                '0))))
                                        (begin
                                          (let ((_g377573_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g377572_)
                                                       (##values-length
                                                        _g377572_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g377573_ 2)))
                                                (error "Context expects 2 values"
                                                       _g377573_)))
                                          (let ((_%target376588376633%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g377572_ 0)))
                                                (_%tl376590376635%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g377572_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl376590376635%_))
                                                (letrec ((_%loop376591376638%_
                                                          (lambda (_%hd376589376641%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr376595376643%_
                           _%hd376596376644%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd376589376641%_))
                        (let ((_%e376592376646%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd376589376641%_))))
                          (let ((_%lp-hd376593376649%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e376592376646%_)))
                                (_%lp-tl376594376651%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e376592376646%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd376593376649%_))
                                (let ((_%e376599376654%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd376593376649%_))))
                                  (let ((_%hd376600376657%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e376599376654%_)))
                                        (_%tl376601376659%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e376599376654%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl376601376659%_))
                                        (let ((_%e376602376662%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl376601376659%_))))
                                          (let ((_%hd376603376665%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e376602376662%_)))
                                                (_%tl376604376667%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e376602376662%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl376604376667%_))
                                                (_%loop376591376638%_
                                                 _%lp-tl376594376651%_
                                                 (cons _%hd376603376665%_
                                                       _%expr376595376643%_)
                                                 (cons _%hd376600376657%_
                                                       _%hd376596376644%_))
                                                (_%g376577376612%_
                                                 _%g376578376615%_))))
                                        (_%g376577376612%_
                                         _%g376578376615%_))))
                                (_%g376577376612%_ _%g376578376615%_))))
                        (let ((_%expr376597376670%_
                               (reverse _%expr376595376643%_))
                              (_%hd376598376671%_
                               (reverse _%hd376596376644%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl376587376630%_))
                              (let ((_%e376605376673%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl376587376630%_))))
                                (let ((_%hd376606376676%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e376605376673%_)))
                                      (_%tl376607376678%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e376605376673%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl376607376678%_))
                                      ((lambda (_%g376579376681%_
                                                _%g376580376682%_
                                                _%g376581376683%_)
                                         (for-each
                                          (lambda (_%g376702376704%_)
                                            (gxc#compile-e__1
                                             _%self376574%_
                                             _%g376702376704%_))
                                          (let ((__tmp377575
                                                 (lambda (_%g376706376709%_
                                                          _%g376707376711%_)
                                                   (cons _%g376706376709%_
                                                         _%g376707376711%_)))
                                                (__tmp377574
                                                 (cons _%g376579376681%_ '())))
                                            (declare (not safe))
                                            (foldr__0
                                             __tmp377575
                                             __tmp377574
                                             _%g376580376682%_))))
                                       _%hd376606376676%_
                                       _%expr376597376670%_
                                       _%hd376598376671%_)
                                      (_%g376577376612%_ _%g376578376615%_))))
                              (_%g376577376612%_ _%g376578376615%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop376591376638%_
                                                   _%target376588376633%_
                                                   '()
                                                   '()))
                                                (_%g376577376612%_
                                                 _%g376578376615%_)))))
                                      (_%g376577376612%_ _%g376578376615%_))))
                              (_%g376577376612%_ _%g376578376615%_))))
                      (_%g376577376612%_ _%g376578376615%_)))))
          (_%g376576376714%_ _%stx376575%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self376519%_ _%stx376520%_)
        (let* ((_%g376522376536%_
                (lambda (_%g376523376533%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g376523376533%_))))
               (_%g376521376571%_
                (lambda (_%g376523376539%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g376523376539%_))
                      (let ((_%e376526376541%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g376523376539%_))))
                        (let ((_%hd376527376544%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e376526376541%_)))
                              (_%tl376528376546%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e376526376541%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl376528376546%_))
                              (let ((_%e376529376549%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl376528376546%_))))
                                (let ((_%hd376530376552%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e376529376549%_)))
                                      (_%tl376531376554%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e376529376549%_))))
                                  ((lambda (_%g376524376557%_
                                            _%g376525376558%_)
                                     (gxc#compile-e__1
                                      _%self376519%_
                                      (last _%g376524376557%_)))
                                   _%tl376531376554%_
                                   _%hd376530376552%_)))
                              (_%g376522376536%_ _%g376523376539%_))))
                      (_%g376522376536%_ _%g376523376539%_)))))
          (_%g376521376571%_ _%stx376520%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self376451%_ _%stx376452%_)
        (let* ((_%g376454376471%_
                (lambda (_%g376455376468%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g376455376468%_))))
               (_%g376453376516%_
                (lambda (_%g376455376474%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g376455376474%_))
                      (let ((_%e376458376476%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g376455376474%_))))
                        (let ((_%hd376459376479%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e376458376476%_)))
                              (_%tl376460376481%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e376458376476%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl376460376481%_))
                              (let ((_%e376461376484%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl376460376481%_))))
                                (let ((_%hd376462376487%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e376461376484%_)))
                                      (_%tl376463376489%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e376461376484%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl376463376489%_))
                                      (let ((_%e376464376492%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl376463376489%_))))
                                        (let ((_%hd376465376495%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e376464376492%_)))
                                              (_%tl376466376497%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e376464376492%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl376466376497%_))
                                              ((lambda (_%g376456376500%_
                                                        _%g376457376501%_)
                                                 (gxc#compile-e__1
                                                  _%self376451%_
                                                  _%g376456376500%_))
                                               _%hd376465376495%_
                                               _%hd376462376487%_)
                                              (_%g376454376471%_
                                               _%g376455376474%_))))
                                      (_%g376454376471%_ _%g376455376474%_))))
                              (_%g376454376471%_ _%g376455376474%_))))
                      (_%g376454376471%_ _%g376455376474%_)))))
          (_%g376453376516%_ _%stx376452%_))))
    (define gxc#apply-operands
      (lambda (_%self376366%_ _%stx376367%_)
        (let* ((_%g376369376388%_
                (lambda (_%g376370376385%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g376370376385%_))))
               (_%g376368376448%_
                (lambda (_%g376370376391%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g376370376391%_))
                      (let ((_%e376372376393%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g376370376391%_))))
                        (let ((_%hd376373376396%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e376372376393%_)))
                              (_%tl376374376398%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e376372376393%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl376374376398%_))
                              (let ((_g377576_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl376374376398%_
                                        '0))))
                                (begin
                                  (let ((_g377577_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g377576_)
                                               (##values-length _g377576_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g377577_ 2)))
                                        (error "Context expects 2 values"
                                               _g377577_)))
                                  (let ((_%target376375376401%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g377576_ 0)))
                                        (_%tl376377376403%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g377576_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl376377376403%_))
                                        (letrec ((_%loop376378376406%_
                                                  (lambda (_%hd376376376409%_
                                                           _%rands376382376411%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd376376376409%_))
                                                        (let ((_%e376379376413%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd376376376409%_))))
                  (let ((_%lp-hd376380376416%_
                         (let ()
                           (declare (not safe))
                           (##car _%e376379376413%_)))
                        (_%lp-tl376381376418%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e376379376413%_))))
                    (_%loop376378376406%_
                     _%lp-tl376381376418%_
                     (cons _%lp-hd376380376416%_ _%rands376382376411%_))))
                (let ((_%rands376383376421%_ (reverse _%rands376382376411%_)))
                  ((lambda (_%g376371376423%_)
                     (for-each
                      (lambda (_%g376436376438%_)
                        (gxc#compile-e__1 _%self376366%_ _%g376436376438%_))
                      (let ((__tmp377578
                             (lambda (_%g376440376443%_ _%g376441376445%_)
                               (cons _%g376440376443%_ _%g376441376445%_))))
                        (declare (not safe))
                        (foldr__0 __tmp377578 '() _%g376371376423%_))))
                   _%rands376383376421%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop376378376406%_
                                           _%target376375376401%_
                                           '()))
                                        (_%g376369376388%_
                                         _%g376370376391%_)))))
                              (_%g376369376388%_ _%g376370376391%_))))
                      (_%g376369376388%_ _%g376370376391%_)))))
          (_%g376368376448%_ _%stx376367%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx376363%_ _%src-stx376364%_)
        (let ((__tmp377579
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx376364%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx376363%_ __tmp377579))))
    (define gxc#xform-wrap-apply
      (lambda (_%stx376359%_ _%src-stx376360%_ _%ctx376361%_)
        (gxc#compile-e__1
         _%ctx376361%_
         (gxc#xform-wrap-source _%stx376359%_ _%src-stx376360%_))))
    (define gxc#xform-begin%
      (lambda (_%self376314%_ _%stx376315%_)
        (let* ((_%g376317376327%_
                (lambda (_%g376318376324%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g376318376324%_))))
               (_%g376316376356%_
                (lambda (_%g376318376330%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g376318376330%_))
                      (let ((_%e376320376332%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g376318376330%_))))
                        (let ((_%hd376321376335%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e376320376332%_)))
                              (_%tl376322376337%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e376320376332%_))))
                          ((lambda (_%g376319376340%_)
                             (let ((_%forms376354%_
                                    (map (lambda (_%g376349376351%_)
                                           (gxc#compile-e__1
                                            _%self376314%_
                                            _%g376349376351%_))
                                         _%g376319376340%_)))
                               (gxc#xform-wrap-source
                                (cons '%#begin _%forms376354%_)
                                _%stx376315%_)))
                           _%tl376322376337%_)))
                      (_%g376317376327%_ _%g376318376330%_)))))
          (_%g376316376356%_ _%stx376315%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self376268%_ _%stx376269%_)
        (let* ((_%g376271376281%_
                (lambda (_%g376272376278%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g376272376278%_))))
               (_%g376270376311%_
                (lambda (_%g376272376284%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g376272376284%_))
                      (let ((_%e376274376286%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g376272376284%_))))
                        (let ((_%hd376275376289%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e376274376286%_)))
                              (_%tl376276376291%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e376274376286%_))))
                          ((lambda (_%g376273376294%_)
                             (let ((__tmp377582
                                    (lambda ()
                                      (let ((_%forms376309%_
                                             (map (lambda (_%g376304376306%_)
                                                    (gxc#compile-e__1
                                                     _%self376268%_
                                                     _%g376304376306%_))
                                                  _%g376273376294%_)))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin-syntax _%forms376309%_)
                                         _%stx376269%_))))
                                   (__tmp377580
                                    (let ((__tmp377581
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp377581 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp377582
                                gx#current-expander-phi
                                __tmp377580)))
                           _%tl376276376291%_)))
                      (_%g376271376281%_ _%g376272376284%_)))))
          (_%g376270376311%_ _%stx376269%_))))
    (define gxc#xform-module%
      (lambda (_%self376205%_ _%stx376206%_)
        (let* ((_%g376208376222%_
                (lambda (_%g376209376219%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g376209376219%_))))
               (_%g376207376265%_
                (lambda (_%g376209376225%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g376209376225%_))
                      (let ((_%e376212376227%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g376209376225%_))))
                        (let ((_%hd376213376230%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e376212376227%_)))
                              (_%tl376214376232%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e376212376227%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl376214376232%_))
                              (let ((_%e376215376235%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl376214376232%_))))
                                (let ((_%hd376216376238%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e376215376235%_)))
                                      (_%tl376217376240%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e376215376235%_))))
                                  ((lambda (_%g376210376243%_
                                            _%g376211376244%_)
                                     (let* ((_%ctx376257%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g376211376244%_)))
                                            (_%code376259%_
                                             (##structure-ref
                                              _%ctx376257%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code376262%_
                                             (let ((__tmp377583
                                                    (lambda ()
                                                      (gxc#compile-e__1
                                                       _%self376205%_
                                                       _%code376259%_))))
                                               (declare (not safe))
                                               (call-with-parameters__1
                                                __tmp377583
                                                gx#current-expander-context
                                                _%ctx376257%_))))
                                       (##structure-set!
                                        _%ctx376257%_
                                        _%code376262%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _%g376211376244%_
                                                    (cons _%code376262%_ '())))
                                        _%stx376206%_)))
                                   _%tl376217376240%_
                                   _%hd376216376238%_)))
                              (_%g376208376222%_ _%g376209376225%_))))
                      (_%g376208376222%_ _%g376209376225%_)))))
          (_%g376207376265%_ _%stx376206%_))))
    (define gxc#xform-define-values%
      (lambda (_%self376135%_ _%stx376136%_)
        (let* ((_%g376138376155%_
                (lambda (_%g376139376152%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g376139376152%_))))
               (_%g376137376202%_
                (lambda (_%g376139376158%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g376139376158%_))
                      (let ((_%e376142376160%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g376139376158%_))))
                        (let ((_%hd376143376163%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e376142376160%_)))
                              (_%tl376144376165%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e376142376160%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl376144376165%_))
                              (let ((_%e376145376168%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl376144376165%_))))
                                (let ((_%hd376146376171%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e376145376168%_)))
                                      (_%tl376147376173%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e376145376168%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl376147376173%_))
                                      (let ((_%e376148376176%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl376147376173%_))))
                                        (let ((_%hd376149376179%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e376148376176%_)))
                                              (_%tl376150376181%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e376148376176%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl376150376181%_))
                                              ((lambda (_%g376140376184%_
                                                        _%g376141376185%_)
                                                 (let ((_%expr376200%_
                                                        (gxc#compile-e__1
                                                         _%self376135%_
                                                         _%g376140376184%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons _%g376141376185%_
                                                                (cons _%expr376200%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx376136%_)))
                                               _%hd376149376179%_
                                               _%hd376146376171%_)
                                              (_%g376138376155%_
                                               _%g376139376158%_))))
                                      (_%g376138376155%_ _%g376139376158%_))))
                              (_%g376138376155%_ _%g376139376158%_))))
                      (_%g376138376155%_ _%g376139376158%_)))))
          (_%g376137376202%_ _%stx376136%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self376064%_ _%stx376065%_)
        (let* ((_%g376067376084%_
                (lambda (_%g376068376081%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g376068376081%_))))
               (_%g376066376132%_
                (lambda (_%g376068376087%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g376068376087%_))
                      (let ((_%e376071376089%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g376068376087%_))))
                        (let ((_%hd376072376092%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e376071376089%_)))
                              (_%tl376073376094%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e376071376089%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl376073376094%_))
                              (let ((_%e376074376097%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl376073376094%_))))
                                (let ((_%hd376075376100%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e376074376097%_)))
                                      (_%tl376076376102%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e376074376097%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl376076376102%_))
                                      (let ((_%e376077376105%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl376076376102%_))))
                                        (let ((_%hd376078376108%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e376077376105%_)))
                                              (_%tl376079376110%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e376077376105%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl376079376110%_))
                                              ((lambda (_%g376069376113%_
                                                        _%g376070376114%_)
                                                 (let ((__tmp377586
                                                        (lambda ()
                                                          (let ((_%expr376130%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#compile-e__1 _%self376064%_ _%g376069376113%_)))
                    (gxc#xform-wrap-source
                     (cons '%#define-syntax
                           (cons _%g376070376114%_ (cons _%expr376130%_ '())))
                     _%stx376065%_))))
               (__tmp377584
                (let ((__tmp377585
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp377585 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp377586
                                                    gx#current-expander-phi
                                                    __tmp377584)))
                                               _%hd376078376108%_
                                               _%hd376075376100%_)
                                              (_%g376067376084%_
                                               _%g376068376087%_))))
                                      (_%g376067376084%_ _%g376068376087%_))))
                              (_%g376067376084%_ _%g376068376087%_))))
                      (_%g376067376084%_ _%g376068376087%_)))))
          (_%g376066376132%_ _%stx376065%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self375994%_ _%stx375995%_)
        (let* ((_%g375997376014%_
                (lambda (_%g375998376011%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g375998376011%_))))
               (_%g375996376061%_
                (lambda (_%g375998376017%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g375998376017%_))
                      (let ((_%e376001376019%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g375998376017%_))))
                        (let ((_%hd376002376022%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e376001376019%_)))
                              (_%tl376003376024%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e376001376019%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl376003376024%_))
                              (let ((_%e376004376027%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl376003376024%_))))
                                (let ((_%hd376005376030%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e376004376027%_)))
                                      (_%tl376006376032%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e376004376027%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl376006376032%_))
                                      (let ((_%e376007376035%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl376006376032%_))))
                                        (let ((_%hd376008376038%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e376007376035%_)))
                                              (_%tl376009376040%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e376007376035%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl376009376040%_))
                                              ((lambda (_%g375999376043%_
                                                        _%g376000376044%_)
                                                 (let ((_%expr376059%_
                                                        (gxc#compile-e__1
                                                         _%self375994%_
                                                         _%g375999376043%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#begin-annotation
                                                          (cons _%g376000376044%_
                                                                (cons _%expr376059%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx375995%_)))
                                               _%hd376008376038%_
                                               _%hd376005376030%_)
                                              (_%g375997376014%_
                                               _%g375998376017%_))))
                                      (_%g375997376014%_ _%g375998376017%_))))
                              (_%g375997376014%_ _%g375998376017%_))))
                      (_%g375997376014%_ _%g375998376017%_)))))
          (_%g375996376061%_ _%stx375995%_))))
    (define gxc#xform-lambda%
      (lambda (_%self375932%_ _%stx375933%_)
        (let* ((_%g375935375949%_
                (lambda (_%g375936375946%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g375936375946%_))))
               (_%g375934375991%_
                (lambda (_%g375936375952%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g375936375952%_))
                      (let ((_%e375939375954%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g375936375952%_))))
                        (let ((_%hd375940375957%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e375939375954%_)))
                              (_%tl375941375959%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e375939375954%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl375941375959%_))
                              (let ((_%e375942375962%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl375941375959%_))))
                                (let ((_%hd375943375965%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e375942375962%_)))
                                      (_%tl375944375967%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e375942375962%_))))
                                  ((lambda (_%g375937375970%_
                                            _%g375938375971%_)
                                     (let ((__tmp377588
                                            (lambda ()
                                              (let ((_%body375989%_
                                                     (map (lambda (_%g375984375986%_)
                                                            (gxc#compile-e__1
                                                             _%self375932%_
                                                             _%g375984375986%_))
                                                          _%g375937375970%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#lambda
                                                       (cons _%g375938375971%_
                                                             _%body375989%_))
                                                 _%stx375933%_))))
                                           (__tmp377587
                                            (gxc#xform-let-locals
                                             _%g375938375971%_)))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp377588
                                        gxc#current-compile-local-env
                                        __tmp377587)))
                                   _%tl375944375967%_
                                   _%hd375943375965%_)))
                              (_%g375935375949%_ _%g375936375952%_))))
                      (_%g375935375949%_ _%g375936375952%_)))))
          (_%g375934375991%_ _%stx375933%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self375840%_ _%stx375841%_)
        (letrec ((_%clause-e375843%_
                  (lambda (_%clause375884%_)
                    (let* ((_%g375886375897%_
                            (lambda (_%g375887375894%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g375887375894%_))))
                           (_%g375885375929%_
                            (lambda (_%g375887375900%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g375887375900%_))
                                  (let ((_%e375890375902%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g375887375900%_))))
                                    (let ((_%hd375891375905%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e375890375902%_)))
                                          (_%tl375892375907%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e375890375902%_))))
                                      ((lambda (_%g375888375910%_
                                                _%g375889375911%_)
                                         (let ((__tmp377590
                                                (lambda ()
                                                  (let ((_%body375927%_
                                                         (map (lambda (_%g375922375924%_)
                                                                (gxc#compile-e__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%self375840%_
                         _%g375922375924%_))
                      _%g375888375910%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%g375889375911%_
                                                          _%body375927%_))))
                                               (__tmp377589
                                                (gxc#xform-let-locals
                                                 _%g375889375911%_)))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp377590
                                            gxc#current-compile-local-env
                                            __tmp377589)))
                                       _%tl375892375907%_
                                       _%hd375891375905%_)))
                                  (_%g375886375897%_ _%g375887375900%_)))))
                      (_%g375885375929%_ _%clause375884%_)))))
          (let* ((_%g375845375855%_
                  (lambda (_%g375846375852%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g375846375852%_))))
                 (_%g375844375881%_
                  (lambda (_%g375846375858%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g375846375858%_))
                        (let ((_%e375848375860%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g375846375858%_))))
                          (let ((_%hd375849375863%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e375848375860%_)))
                                (_%tl375850375865%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e375848375860%_))))
                            ((lambda (_%g375847375868%_)
                               (let ((_%clauses375879%_
                                      (map _%clause-e375843%_
                                           _%g375847375868%_)))
                                 (gxc#xform-wrap-source
                                  (cons '%#case-lambda _%clauses375879%_)
                                  _%stx375841%_)))
                             _%tl375850375865%_)))
                        (_%g375845375855%_ _%g375846375858%_)))))
            (_%g375844375881%_ _%stx375841%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self375600%_ _%stx375601%_)
        (let* ((_%g375603375636%_
                (lambda (_%g375604375633%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g375604375633%_))))
               (_%g375602375837%_
                (lambda (_%g375604375639%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g375604375639%_))
                      (let ((_%e375609375641%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g375604375639%_))))
                        (let ((_%hd375610375644%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e375609375641%_)))
                              (_%tl375611375646%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e375609375641%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl375611375646%_))
                              (let ((_%e375612375649%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl375611375646%_))))
                                (let ((_%hd375613375652%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e375612375649%_)))
                                      (_%tl375614375654%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e375612375649%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd375613375652%_))
                                      (let ((_g377591_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd375613375652%_
                                                '0))))
                                        (begin
                                          (let ((_g377592_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g377591_)
                                                       (##values-length
                                                        _g377591_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g377592_ 2)))
                                                (error "Context expects 2 values"
                                                       _g377592_)))
                                          (let ((_%target375615375657%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g377591_ 0)))
                                                (_%tl375617375659%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g377591_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl375617375659%_))
                                                (letrec ((_%loop375618375662%_
                                                          (lambda (_%hd375616375665%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr375622375667%_
                           _%hd375623375668%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd375616375665%_))
                        (let ((_%e375619375670%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd375616375665%_))))
                          (let ((_%lp-hd375620375673%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e375619375670%_)))
                                (_%lp-tl375621375675%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e375619375670%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd375620375673%_))
                                (let ((_%e375626375678%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd375620375673%_))))
                                  (let ((_%hd375627375681%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e375626375678%_)))
                                        (_%tl375628375683%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e375626375678%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl375628375683%_))
                                        (let ((_%e375629375686%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl375628375683%_))))
                                          (let ((_%hd375630375689%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e375629375686%_)))
                                                (_%tl375631375691%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e375629375686%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl375631375691%_))
                                                (_%loop375618375662%_
                                                 _%lp-tl375621375675%_
                                                 (cons _%hd375630375689%_
                                                       _%expr375622375667%_)
                                                 (cons _%hd375627375681%_
                                                       _%hd375623375668%_))
                                                (_%g375603375636%_
                                                 _%g375604375639%_))))
                                        (_%g375603375636%_
                                         _%g375604375639%_))))
                                (_%g375603375636%_ _%g375604375639%_))))
                        (let ((_%expr375624375694%_
                               (reverse _%expr375622375667%_))
                              (_%hd375625375695%_
                               (reverse _%hd375623375668%_)))
                          ((lambda (_%g375605375697%_
                                    _%g375606375698%_
                                    _%g375607375699%_
                                    _%g375608375700%_)
                             (let* ((_%g375719375735%_
                                     (lambda (_%g375720375732%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g375720375732%_))))
                                    (_%g375718375823%_
                                     (lambda (_%g375720375738%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g375720375738%_))
                                           (let ((_g377593_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g375720375738%_
                                                     '0))))
                                             (begin
                                               (let ((_g377594_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g377593_)
                                                            (##values-length
                                                             _g377593_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g377594_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g377594_)))
                                               (let ((_%target375722375740%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g377593_
                                                         0)))
                                                     (_%tl375724375742%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g377593_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl375724375742%_))
                                                     (letrec ((_%loop375725375745%_
                                                               (lambda (_%hd375723375748%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr375729375750%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd375723375748%_))
                             (let ((_%e375726375752%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd375723375748%_))))
                               (let ((_%lp-hd375727375755%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e375726375752%_)))
                                     (_%lp-tl375728375757%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e375726375752%_))))
                                 (_%loop375725375745%_
                                  _%lp-tl375728375757%_
                                  (cons _%lp-hd375727375755%_
                                        _%expr375729375750%_))))
                             (let ((_%expr375730375760%_
                                    (reverse _%expr375729375750%_)))
                               ((lambda (_%g375721375762%_)
                                  (let ((__tmp377597
                                         (lambda ()
                                           (let* ((_%g375776375783%_
                                                   (lambda (_%g375777375780%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g375777375780%_))))
                                                  (_%g375775375809%_
                                                   (lambda (_%g375777375786%_)
                                                     ((lambda (_%g375778375788%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%g375608375700%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%g375721375762%_
                                  _%g375607375699%_))
                               (let ((__tmp377598
                                      (lambda (_%g375798375802%_
                                               _%g375799375804%_
                                               _%g375800375806%_)
                                        (cons (cons _%g375799375804%_
                                                    (cons _%g375798375802%_
                                                          '()))
                                              _%g375800375806%_))))
                                 (declare (not safe))
                                 (foldr__1
                                  __tmp377598
                                  '()
                                  _%g375721375762%_
                                  _%g375607375699%_)))
                             _%g375778375788%_))
                 _%stx375601%_))
              _%g375777375786%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g375775375809%_
                                              (map (lambda (_%g375811375813%_)
                                                     (gxc#compile-e__1
                                                      _%self375600%_
                                                      _%g375811375813%_))
                                                   _%g375605375697%_)))))
                                        (__tmp377595
                                         (gxc#xform-let-locals
                                          (let ((__tmp377596
                                                 (lambda (_%g375815375818%_
                                                          _%g375816375820%_)
                                                   (cons _%g375815375818%_
                                                         _%g375816375820%_))))
                                            (declare (not safe))
                                            (foldr__0
                                             __tmp377596
                                             '()
                                             _%g375607375699%_)))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp377597
                                     gxc#current-compile-local-env
                                     __tmp377595)))
                                _%expr375730375760%_))))))
               (_%loop375725375745%_ _%target375722375740%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g375719375735%_
                                                      _%g375720375738%_)))))
                                           (_%g375719375735%_
                                            _%g375720375738%_)))))
                               (_%g375718375823%_
                                (map (lambda (_%g375825375827%_)
                                       (gxc#compile-e__1
                                        _%self375600%_
                                        _%g375825375827%_))
                                     (let ((__tmp377599
                                            (lambda (_%g375829375832%_
                                                     _%g375830375834%_)
                                              (cons _%g375829375832%_
                                                    _%g375830375834%_))))
                                       (declare (not safe))
                                       (foldr__0
                                        __tmp377599
                                        '()
                                        _%g375606375698%_))))))
                           _%tl375614375654%_
                           _%expr375624375694%_
                           _%hd375625375695%_
                           _%hd375610375644%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop375618375662%_
                                                   _%target375615375657%_
                                                   '()
                                                   '()))
                                                (_%g375603375636%_
                                                 _%g375604375639%_)))))
                                      (_%g375603375636%_ _%g375604375639%_))))
                              (_%g375603375636%_ _%g375604375639%_))))
                      (_%g375603375636%_ _%g375604375639%_)))))
          (_%g375602375837%_ _%stx375601%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self375360%_ _%stx375361%_)
        (let* ((_%g375363375396%_
                (lambda (_%g375364375393%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g375364375393%_))))
               (_%g375362375597%_
                (lambda (_%g375364375399%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g375364375399%_))
                      (let ((_%e375369375401%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g375364375399%_))))
                        (let ((_%hd375370375404%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e375369375401%_)))
                              (_%tl375371375406%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e375369375401%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl375371375406%_))
                              (let ((_%e375372375409%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl375371375406%_))))
                                (let ((_%hd375373375412%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e375372375409%_)))
                                      (_%tl375374375414%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e375372375409%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd375373375412%_))
                                      (let ((_g377600_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd375373375412%_
                                                '0))))
                                        (begin
                                          (let ((_g377601_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g377600_)
                                                       (##values-length
                                                        _g377600_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g377601_ 2)))
                                                (error "Context expects 2 values"
                                                       _g377601_)))
                                          (let ((_%target375375375417%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g377600_ 0)))
                                                (_%tl375377375419%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g377600_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl375377375419%_))
                                                (letrec ((_%loop375378375422%_
                                                          (lambda (_%hd375376375425%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr375382375427%_
                           _%hd375383375428%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd375376375425%_))
                        (let ((_%e375379375430%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd375376375425%_))))
                          (let ((_%lp-hd375380375433%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e375379375430%_)))
                                (_%lp-tl375381375435%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e375379375430%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd375380375433%_))
                                (let ((_%e375386375438%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd375380375433%_))))
                                  (let ((_%hd375387375441%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e375386375438%_)))
                                        (_%tl375388375443%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e375386375438%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl375388375443%_))
                                        (let ((_%e375389375446%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl375388375443%_))))
                                          (let ((_%hd375390375449%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e375389375446%_)))
                                                (_%tl375391375451%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e375389375446%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl375391375451%_))
                                                (_%loop375378375422%_
                                                 _%lp-tl375381375435%_
                                                 (cons _%hd375390375449%_
                                                       _%expr375382375427%_)
                                                 (cons _%hd375387375441%_
                                                       _%hd375383375428%_))
                                                (_%g375363375396%_
                                                 _%g375364375399%_))))
                                        (_%g375363375396%_
                                         _%g375364375399%_))))
                                (_%g375363375396%_ _%g375364375399%_))))
                        (let ((_%expr375384375454%_
                               (reverse _%expr375382375427%_))
                              (_%hd375385375455%_
                               (reverse _%hd375383375428%_)))
                          ((lambda (_%g375365375457%_
                                    _%g375366375458%_
                                    _%g375367375459%_
                                    _%g375368375460%_)
                             (let ((__tmp377604
                                    (lambda ()
                                      (let* ((_%g375480375496%_
                                              (lambda (_%g375481375493%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g375481375493%_))))
                                             (_%g375479375576%_
                                              (lambda (_%g375481375499%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g375481375499%_))
                                                    (let ((_g377605_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g375481375499%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g377606_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g377605_)
                             (##values-length _g377605_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g377606_ 2)))
                      (error "Context expects 2 values" _g377606_)))
                (let ((_%target375483375501%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g377605_ 0)))
                      (_%tl375485375503%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g377605_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl375485375503%_))
                      (letrec ((_%loop375486375506%_
                                (lambda (_%hd375484375509%_
                                         _%expr375490375511%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd375484375509%_))
                                      (let ((_%e375487375513%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd375484375509%_))))
                                        (let ((_%lp-hd375488375516%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e375487375513%_)))
                                              (_%lp-tl375489375518%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e375487375513%_))))
                                          (_%loop375486375506%_
                                           _%lp-tl375489375518%_
                                           (cons _%lp-hd375488375516%_
                                                 _%expr375490375511%_))))
                                      (let ((_%expr375491375521%_
                                             (reverse _%expr375490375511%_)))
                                        ((lambda (_%g375482375523%_)
                                           (let* ((_%g375537375544%_
                                                   (lambda (_%g375538375541%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g375538375541%_))))
                                                  (_%g375536375569%_
                                                   (lambda (_%g375538375547%_)
                                                     ((lambda (_%g375539375549%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%g375368375460%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%g375482375523%_
                                  _%g375367375459%_))
                               (let ((__tmp377607
                                      (lambda (_%g375558375562%_
                                               _%g375559375564%_
                                               _%g375560375566%_)
                                        (cons (cons _%g375559375564%_
                                                    (cons _%g375558375562%_
                                                          '()))
                                              _%g375560375566%_))))
                                 (declare (not safe))
                                 (foldr__1
                                  __tmp377607
                                  '()
                                  _%g375482375523%_
                                  _%g375367375459%_)))
                             _%g375539375549%_))
                 _%stx375361%_))
              _%g375538375547%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g375536375569%_
                                              (map (lambda (_%g375571375573%_)
                                                     (gxc#compile-e__1
                                                      _%self375360%_
                                                      _%g375571375573%_))
                                                   _%g375365375457%_))))
                                         _%expr375491375521%_))))))
                        (_%loop375486375506%_ _%target375483375501%_ '()))
                      (_%g375480375496%_ _%g375481375499%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g375480375496%_
                                                     _%g375481375499%_)))))
                                        (_%g375479375576%_
                                         (map (lambda (_%g375578375580%_)
                                                (gxc#compile-e__1
                                                 _%self375360%_
                                                 _%g375578375580%_))
                                              (let ((__tmp377608
                                                     (lambda (_%g375582375585%_
                                                              _%g375583375587%_)
                                                       (cons _%g375582375585%_
                                                             _%g375583375587%_))))
                                                (declare (not safe))
                                                (foldr__0
                                                 __tmp377608
                                                 '()
                                                 _%g375366375458%_)))))))
                                   (__tmp377602
                                    (gxc#xform-let-locals
                                     (let ((__tmp377603
                                            (lambda (_%g375589375592%_
                                                     _%g375590375594%_)
                                              (cons _%g375589375592%_
                                                    _%g375590375594%_))))
                                       (declare (not safe))
                                       (foldr__0
                                        __tmp377603
                                        '()
                                        _%g375367375459%_)))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp377604
                                gxc#current-compile-local-env
                                __tmp377602)))
                           _%tl375374375414%_
                           _%expr375384375454%_
                           _%hd375385375455%_
                           _%hd375370375404%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop375378375422%_
                                                   _%target375375375417%_
                                                   '()
                                                   '()))
                                                (_%g375363375396%_
                                                 _%g375364375399%_)))))
                                      (_%g375363375396%_ _%g375364375399%_))))
                              (_%g375363375396%_ _%g375364375399%_))))
                      (_%g375363375396%_ _%g375364375399%_)))))
          (_%g375362375597%_ _%stx375361%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings375227%_)
        (letrec ((_%flatten375229%_
                  (lambda (_%maybe-lst375287%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%maybe-lst375287%_))
                        (cons _%maybe-lst375287%_ '())
                        (let _%loop375289%_ ((_%rest375291%_
                                              _%maybe-lst375287%_)
                                             (_%result375292%_ '()))
                          (let* ((_%__stx377496377497%_ _%rest375291%_)
                                 (_%g375296375308%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx377496377497%_)))))
                            (let ((_%__kont377498377499%_
                                   (lambda (_%g375298375346%_
                                            _%g375299375347%_)
                                     (_%loop375289%_
                                      _%g375298375346%_
                                      (let ((__tmp377609
                                             (_%flatten375229%_
                                              _%g375299375347%_)))
                                        (declare (not safe))
                                        (foldl__0
                                         cons
                                         _%result375292%_
                                         __tmp377609)))))
                                  (_%__kont377500377501%_
                                   (lambda (_%g375303375320%_)
                                     (cons _%g375303375320%_
                                           _%result375292%_)))
                                  (_%__kont377502377503%_
                                   (lambda () _%result375292%_)))
                              (let ((_%g375294375333%_
                                     (lambda ()
                                       (let ((_%g375303375320%_
                                              _%__stx377496377497%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%g375303375320%_))
                                             (_%__kont377500377501%_
                                              _%g375303375320%_)
                                             (_%__kont377502377503%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx377496377497%_))
                                    (let ((_%e375300375338%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx377496377497%_))))
                                      (let ((_%tl375302375343%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e375300375338%_)))
                                            (_%hd375301375341%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e375300375338%_))))
                                        (_%__kont377498377499%_
                                         _%tl375302375343%_
                                         _%hd375301375341%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g375294375333%_)))))))))))
          (let _%loop375231%_ ((_%rest375233%_
                                (_%flatten375229%_ _%bindings375227%_))
                               (_%locals375234%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-local-env))))
            (let* ((_%rest375235375246%_ _%rest375233%_)
                   (_%E375239375250%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching"
                               _%rest375235375246%_
                               '([(? identifier? id) . rest])
                               '((? identifier? id))
                               '(_)))
                      '#!void)))
              (let ((_%K375242375275%_
                     (lambda (_%rest375272%_ _%id375273%_)
                       (_%loop375231%_
                        _%rest375272%_
                        (cons (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _%id375273%_))
                              _%locals375234%_))))
                    (_%K375241375264%_
                     (lambda (_%id375262%_)
                       (cons (let ()
                               (declare (not safe))
                               (gxc#identifier-symbol _%id375262%_))
                             _%locals375234%_)))
                    (_%K375240375255%_ (lambda () _%locals375234%_)))
                (let ((_%try-match375237375269%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%rest375235375246%_))
                             (let ((_%id375267%_ _%rest375235375246%_))
                               (_%K375241375264%_ _%id375267%_))
                             (_%K375240375255%_)))))
                  (if (pair? _%rest375235375246%_)
                      (let ((_%tl375244375280%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest375235375246%_)))
                            (_%hd375243375278%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest375235375246%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd375243375278%_))
                            (let ((_%id375283%_ _%hd375243375278%_)
                                  (_%rest375285%_ _%tl375244375280%_))
                              (_%K375242375275%_ _%rest375285%_ _%id375283%_))
                            (_%K375240375255%_)))
                      (_%try-match375237375269%_)))))))))
    (define gxc#xform-operands
      (lambda (_%self375179%_ _%stx375180%_)
        (let* ((_%g375182375193%_
                (lambda (_%g375183375190%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g375183375190%_))))
               (_%g375181375224%_
                (lambda (_%g375183375196%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g375183375196%_))
                      (let ((_%e375186375198%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g375183375196%_))))
                        (let ((_%hd375187375201%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e375186375198%_)))
                              (_%tl375188375203%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e375186375198%_))))
                          ((lambda (_%g375184375206%_ _%g375185375207%_)
                             (let ((_%rands375222%_
                                    (map (lambda (_%g375217375219%_)
                                           (gxc#compile-e__1
                                            _%self375179%_
                                            _%g375217375219%_))
                                         _%g375184375206%_)))
                               (gxc#xform-wrap-source
                                (cons _%g375185375207%_ _%rands375222%_)
                                _%stx375180%_)))
                           _%tl375188375203%_
                           _%hd375187375201%_)))
                      (_%g375182375193%_ _%g375183375196%_)))))
          (_%g375181375224%_ _%stx375180%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self375109%_ _%stx375110%_)
        (let* ((_%g375112375129%_
                (lambda (_%g375113375126%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g375113375126%_))))
               (_%g375111375176%_
                (lambda (_%g375113375132%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g375113375132%_))
                      (let ((_%e375116375134%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g375113375132%_))))
                        (let ((_%hd375117375137%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e375116375134%_)))
                              (_%tl375118375139%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e375116375134%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl375118375139%_))
                              (let ((_%e375119375142%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl375118375139%_))))
                                (let ((_%hd375120375145%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e375119375142%_)))
                                      (_%tl375121375147%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e375119375142%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl375121375147%_))
                                      (let ((_%e375122375150%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl375121375147%_))))
                                        (let ((_%hd375123375153%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e375122375150%_)))
                                              (_%tl375124375155%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e375122375150%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl375124375155%_))
                                              ((lambda (_%g375114375158%_
                                                        _%g375115375159%_)
                                                 (let ((_%expr375174%_
                                                        (gxc#compile-e__1
                                                         _%self375109%_
                                                         _%g375114375158%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _%g375115375159%_
                                                                (cons _%expr375174%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx375110%_)))
                                               _%hd375123375153%_
                                               _%hd375120375145%_)
                                              (_%g375112375129%_
                                               _%g375113375132%_))))
                                      (_%g375112375129%_ _%g375113375132%_))))
                              (_%g375112375129%_ _%g375113375132%_))))
                      (_%g375112375129%_ _%g375113375132%_)))))
          (_%g375111375176%_ _%stx375110%_))))))
