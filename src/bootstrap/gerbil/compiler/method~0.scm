(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1755903077)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx142312%_)
        (let* ((_%self142314%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e142316%_
                (let ((__tmp142512 (gxc#stx-car-e _%stx142312%_)))
                  (declare (not safe))
                  (method-ref _%self142314%_ __tmp142512))))
          (if _%$e142316%_
              ((lambda (_%method142319%_)
                 (declare (not safe))
                 (_%method142319%_ _%self142314%_ _%stx142312%_))
               _%$e142316%_)
              (let ((__tmp142514 (gxc#stx-car-e _%stx142312%_))
                    (__tmp142513
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx142312%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self142314%_
                       __tmp142514
                       __tmp142513))))))
    (define gxc#compile-e__1
      (lambda (_%self142323%_ _%stx142324%_)
        (let ((_%$e142326%_
               (let ((__tmp142515 (gxc#stx-car-e _%stx142324%_)))
                 (declare (not safe))
                 (method-ref _%self142323%_ __tmp142515))))
          (if _%$e142326%_
              ((lambda (_%method142329%_)
                 (declare (not safe))
                 (_%method142329%_ _%self142323%_ _%stx142324%_))
               _%$e142326%_)
              (let ((__tmp142517 (gxc#stx-car-e _%stx142324%_))
                    (__tmp142516
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx142324%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self142323%_
                       __tmp142517
                       __tmp142516))))))
    (define gxc#compile-e
      (lambda _g142518_
        (let ((_g142519_ (let () (declare (not safe)) (##length _g142518_))))
          (cond ((let () (declare (not safe)) (##fx= _g142519_ 1))
                 (apply gxc#compile-e__0 _g142518_))
                ((let () (declare (not safe)) (##fx= _g142519_ 2))
                 (apply gxc#compile-e__1 _g142518_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g142518_))))))
    (define gxc#stx-car-e
      (lambda (_%stx142310%_)
        (let ((__tmp142520
               (car (let () (declare (not safe)) (gx#stx-e _%stx142310%_)))))
          (declare (not safe))
          (gx#stx-e __tmp142520))))
    (define gxc#void-method (lambda (_%self142307%_ _%stx142308%_) '#!void))
    (define gxc#false-method (lambda (_%self142304%_ _%stx142305%_) '#f))
    (define gxc#true-method (lambda (_%self142301%_ _%stx142302%_) '#t))
    (define gxc#identity-method
      (lambda (_%self142298%_ _%stx142299%_) _%stx142299%_))
    (define gxc#::void-expression::t
      (let ((__tmp142521 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp142521
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args142295%_
        (apply make-instance gxc#::void-expression::t _%$args142295%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp142522
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
        (__make-promise __tmp142522)))
    (define gxc#::void-special-form::t
      (let ((__tmp142523 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp142523
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args142291%_
        (apply make-instance gxc#::void-special-form::t _%$args142291%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp142524
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
        (__make-promise __tmp142524)))
    (define gxc#::void::t
      (let ((__tmp142525
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp142525 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args142287%_
        (apply make-instance gxc#::void::t _%$args142287%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp142526
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp142526)))
    (define gxc#::false-expression::t
      (let ((__tmp142527 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp142527
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args142283%_
        (apply make-instance gxc#::false-expression::t _%$args142283%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp142528
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
        (__make-promise __tmp142528)))
    (define gxc#::false-special-form::t
      (let ((__tmp142529 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp142529
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args142279%_
        (apply make-instance gxc#::false-special-form::t _%$args142279%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp142530
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
        (__make-promise __tmp142530)))
    (define gxc#::false::t
      (let ((__tmp142531
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp142531 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args142275%_
        (apply make-instance gxc#::false::t _%$args142275%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp142532
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp142532)))
    (define gxc#::identity-expression::t
      (let ((__tmp142533 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp142533
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args142271%_
        (apply make-instance gxc#::identity-expression::t _%$args142271%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp142534
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
        (__make-promise __tmp142534)))
    (define gxc#::identity-special-form::t
      (let ((__tmp142535 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp142535
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args142267%_
        (apply make-instance gxc#::identity-special-form::t _%$args142267%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp142536
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
        (__make-promise __tmp142536)))
    (define gxc#::identity::t
      (let ((__tmp142537
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp142537
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args142263%_
        (apply make-instance gxc#::identity::t _%$args142263%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp142538
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp142538)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp142539 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp142539
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args142259%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args142259%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp142540
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
        (__make-promise __tmp142540)))
    (define gxc#::basic-xform::t
      (let ((__tmp142541
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp142541
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args142255%_
        (apply make-instance gxc#::basic-xform::t _%$args142255%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp142542
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
        (__make-promise __tmp142542)))
    (define gxc#apply-begin%
      (lambda (_%self142211%_ _%stx142212%_)
        (let* ((_%g142214142224%_
                (lambda (_%g142215142221%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142215142221%_))))
               (_%g142213142251%_
                (lambda (_%g142215142227%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142215142227%_))
                      (let ((_%e142217142229%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142215142227%_))))
                        (let ((_%hd142218142232%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142217142229%_)))
                              (_%tl142219142234%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142217142229%_))))
                          ((lambda (_%L142237%_)
                             (for-each
                              (lambda (_%g142246142248%_)
                                (gxc#compile-e__1
                                 _%self142211%_
                                 _%g142246142248%_))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L142237%_))))
                           _%tl142219142234%_)))
                      (_%g142214142224%_ _%g142215142227%_)))))
          (_%g142213142251%_ _%stx142212%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self142172%_ _%stx142173%_)
        (let* ((_%g142175142185%_
                (lambda (_%g142176142182%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142176142182%_))))
               (_%g142174142208%_
                (lambda (_%g142176142188%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142176142188%_))
                      (let ((_%e142178142190%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142176142188%_))))
                        (let ((_%hd142179142193%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142178142190%_)))
                              (_%tl142180142195%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142178142190%_))))
                          ((lambda (_%L142198%_)
                             (gxc#compile-e__1
                              _%self142172%_
                              (last _%L142198%_)))
                           _%tl142180142195%_)))
                      (_%g142175142185%_ _%g142176142188%_)))))
          (_%g142174142208%_ _%stx142173%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self142168%_ _%stx142169%_)
        (let ((__tmp142545
               (lambda () (gxc#apply-begin% _%self142168%_ _%stx142169%_)))
              (__tmp142543
               (let ((__tmp142544
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp142544 '1))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp142545
           gx#current-expander-phi
           __tmp142543))))
    (define gxc#apply-module%
      (lambda (_%self142107%_ _%stx142108%_)
        (let* ((_%g142110142124%_
                (lambda (_%g142111142121%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142111142121%_))))
               (_%g142109142165%_
                (lambda (_%g142111142127%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142111142127%_))
                      (let ((_%e142114142129%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142111142127%_))))
                        (let ((_%hd142115142132%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142114142129%_)))
                              (_%tl142116142134%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142114142129%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142116142134%_))
                              (let ((_%e142117142137%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142116142134%_))))
                                (let ((_%hd142118142140%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142117142137%_)))
                                      (_%tl142119142142%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142117142137%_))))
                                  ((lambda (_%L142145%_ _%L142146%_)
                                     (let* ((_%ctx142159%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L142146%_)))
                                            (_%ctx-stx142161%_
                                             (##structure-ref
                                              _%ctx142159%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp142546
                                             (lambda ()
                                               (gxc#compile-e__1
                                                _%self142107%_
                                                _%ctx-stx142161%_))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp142546
                                        gx#current-expander-context
                                        _%ctx142159%_)))
                                   _%tl142119142142%_
                                   _%hd142118142140%_)))
                              (_%g142110142124%_ _%g142111142127%_))))
                      (_%g142110142124%_ _%g142111142127%_)))))
          (_%g142109142165%_ _%stx142108%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self142039%_ _%stx142040%_)
        (let* ((_%g142042142059%_
                (lambda (_%g142043142056%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142043142056%_))))
               (_%g142041142104%_
                (lambda (_%g142043142062%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142043142062%_))
                      (let ((_%e142046142064%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142043142062%_))))
                        (let ((_%hd142047142067%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142046142064%_)))
                              (_%tl142048142069%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142046142064%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142048142069%_))
                              (let ((_%e142049142072%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142048142069%_))))
                                (let ((_%hd142050142075%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142049142072%_)))
                                      (_%tl142051142077%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142049142072%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142051142077%_))
                                      (let ((_%e142052142080%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142051142077%_))))
                                        (let ((_%hd142053142083%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142052142080%_)))
                                              (_%tl142054142085%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142052142080%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl142054142085%_))
                                              ((lambda (_%L142088%_
                                                        _%L142089%_)
                                                 (gxc#compile-e__1
                                                  _%self142039%_
                                                  _%L142088%_))
                                               _%hd142053142083%_
                                               _%hd142050142075%_)
                                              (_%g142042142059%_
                                               _%g142043142062%_))))
                                      (_%g142042142059%_ _%g142043142062%_))))
                              (_%g142042142059%_ _%g142043142062%_))))
                      (_%g142042142059%_ _%g142043142062%_)))))
          (_%g142041142104%_ _%stx142040%_))))
    (define gxc#apply-define-values%
      (lambda (_%self141971%_ _%stx141972%_)
        (let* ((_%g141974141991%_
                (lambda (_%g141975141988%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141975141988%_))))
               (_%g141973142036%_
                (lambda (_%g141975141994%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141975141994%_))
                      (let ((_%e141978141996%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141975141994%_))))
                        (let ((_%hd141979141999%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141978141996%_)))
                              (_%tl141980142001%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141978141996%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141980142001%_))
                              (let ((_%e141981142004%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl141980142001%_))))
                                (let ((_%hd141982142007%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141981142004%_)))
                                      (_%tl141983142009%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141981142004%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141983142009%_))
                                      (let ((_%e141984142012%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141983142009%_))))
                                        (let ((_%hd141985142015%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141984142012%_)))
                                              (_%tl141986142017%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141984142012%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl141986142017%_))
                                              ((lambda (_%L142020%_
                                                        _%L142021%_)
                                                 (gxc#compile-e__1
                                                  _%self141971%_
                                                  _%L142020%_))
                                               _%hd141985142015%_
                                               _%hd141982142007%_)
                                              (_%g141974141991%_
                                               _%g141975141994%_))))
                                      (_%g141974141991%_ _%g141975141994%_))))
                              (_%g141974141991%_ _%g141975141994%_))))
                      (_%g141974141991%_ _%g141975141994%_)))))
          (_%g141973142036%_ _%stx141972%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self141902%_ _%stx141903%_)
        (let* ((_%g141905141922%_
                (lambda (_%g141906141919%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141906141919%_))))
               (_%g141904141968%_
                (lambda (_%g141906141925%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141906141925%_))
                      (let ((_%e141909141927%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141906141925%_))))
                        (let ((_%hd141910141930%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141909141927%_)))
                              (_%tl141911141932%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141909141927%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141911141932%_))
                              (let ((_%e141912141935%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl141911141932%_))))
                                (let ((_%hd141913141938%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141912141935%_)))
                                      (_%tl141914141940%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141912141935%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141914141940%_))
                                      (let ((_%e141915141943%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141914141940%_))))
                                        (let ((_%hd141916141946%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141915141943%_)))
                                              (_%tl141917141948%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141915141943%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl141917141948%_))
                                              ((lambda (_%L141951%_
                                                        _%L141952%_)
                                                 (let ((__tmp142549
                                                        (lambda ()
                                                          (gxc#compile-e__1
                                                           _%self141902%_
                                                           _%L141951%_)))
                                                       (__tmp142547
                                                        (let ((__tmp142548
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp142548 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp142549
                                                    gx#current-expander-phi
                                                    __tmp142547)))
                                               _%hd141916141946%_
                                               _%hd141913141938%_)
                                              (_%g141905141922%_
                                               _%g141906141925%_))))
                                      (_%g141905141922%_ _%g141906141925%_))))
                              (_%g141905141922%_ _%g141906141925%_))))
                      (_%g141905141922%_ _%g141906141925%_)))))
          (_%g141904141968%_ _%stx141903%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self141834%_ _%stx141835%_)
        (let* ((_%g141837141854%_
                (lambda (_%g141838141851%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141838141851%_))))
               (_%g141836141899%_
                (lambda (_%g141838141857%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141838141857%_))
                      (let ((_%e141841141859%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141838141857%_))))
                        (let ((_%hd141842141862%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141841141859%_)))
                              (_%tl141843141864%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141841141859%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141843141864%_))
                              (let ((_%e141844141867%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl141843141864%_))))
                                (let ((_%hd141845141870%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141844141867%_)))
                                      (_%tl141846141872%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141844141867%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141846141872%_))
                                      (let ((_%e141847141875%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141846141872%_))))
                                        (let ((_%hd141848141878%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141847141875%_)))
                                              (_%tl141849141880%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141847141875%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl141849141880%_))
                                              ((lambda (_%L141883%_
                                                        _%L141884%_)
                                                 (gxc#compile-e__1
                                                  _%self141834%_
                                                  _%L141883%_))
                                               _%hd141848141878%_
                                               _%hd141845141870%_)
                                              (_%g141837141854%_
                                               _%g141838141857%_))))
                                      (_%g141837141854%_ _%g141838141857%_))))
                              (_%g141837141854%_ _%g141838141857%_))))
                      (_%g141837141854%_ _%g141838141857%_)))))
          (_%g141836141899%_ _%stx141835%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self141716%_ _%stx141717%_)
        (let* ((_%g141719141747%_
                (lambda (_%g141720141744%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141720141744%_))))
               (_%g141718141831%_
                (lambda (_%g141720141750%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141720141750%_))
                      (let ((_%e141723141752%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141720141750%_))))
                        (let ((_%hd141724141755%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141723141752%_)))
                              (_%tl141725141757%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141723141752%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl141725141757%_))
                              (let ((_g142550_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl141725141757%_
                                        '0))))
                                (begin
                                  (let ((_g142551_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g142550_)
                                               (##values-length _g142550_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g142551_ 2)))
                                        (error "Context expects 2 values"
                                               _g142551_)))
                                  (let ((_%target141726141760%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g142550_ 0)))
                                        (_%tl141728141762%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g142550_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl141728141762%_))
                                        (letrec ((_%loop141729141765%_
                                                  (lambda (_%hd141727141768%_
                                                           _%body141733141770%_
                                                           _%hd141734141772%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd141727141768%_))
                                                        (let ((_%e141730141775%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd141727141768%_))))
                  (let ((_%lp-hd141731141778%_
                         (let ()
                           (declare (not safe))
                           (##car _%e141730141775%_)))
                        (_%lp-tl141732141780%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e141730141775%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd141731141778%_))
                        (let ((_%e141737141783%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd141731141778%_))))
                          (let ((_%hd141738141786%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141737141783%_)))
                                (_%tl141739141788%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141737141783%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl141739141788%_))
                                (let ((_%e141740141791%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl141739141788%_))))
                                  (let ((_%hd141741141794%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e141740141791%_)))
                                        (_%tl141742141796%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e141740141791%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl141742141796%_))
                                        (_%loop141729141765%_
                                         _%lp-tl141732141780%_
                                         (cons _%hd141741141794%_
                                               _%body141733141770%_)
                                         (cons _%hd141738141786%_
                                               _%hd141734141772%_))
                                        (_%g141719141747%_
                                         _%g141720141750%_))))
                                (_%g141719141747%_ _%g141720141750%_))))
                        (_%g141719141747%_ _%g141720141750%_))))
                (let ((_%body141735141799%_ (reverse _%body141733141770%_))
                      (_%hd141736141801%_ (reverse _%hd141734141772%_)))
                  ((lambda (_%L141804%_ _%L141805%_)
                     (for-each
                      (lambda (_%g141819141821%_)
                        (gxc#compile-e__1 _%self141716%_ _%g141819141821%_))
                      (let ((__tmp142552
                             (lambda (_%g141823141826%_ _%g141824141828%_)
                               (cons _%g141823141826%_ _%g141824141828%_))))
                        (declare (not safe))
                        (__foldr1 __tmp142552 '() _%L141804%_))))
                   _%body141735141799%_
                   _%hd141736141801%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop141729141765%_
                                           _%target141726141760%_
                                           '()
                                           '()))
                                        (_%g141719141747%_
                                         _%g141720141750%_)))))
                              (_%g141719141747%_ _%g141720141750%_))))
                      (_%g141719141747%_ _%g141720141750%_)))))
          (_%g141718141831%_ _%stx141717%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self141569%_ _%stx141570%_)
        (let* ((_%g141572141607%_
                (lambda (_%g141573141604%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141573141604%_))))
               (_%g141571141713%_
                (lambda (_%g141573141610%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141573141610%_))
                      (let ((_%e141577141612%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141573141610%_))))
                        (let ((_%hd141578141615%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141577141612%_)))
                              (_%tl141579141617%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141577141612%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141579141617%_))
                              (let ((_%e141580141620%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl141579141617%_))))
                                (let ((_%hd141581141623%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141580141620%_)))
                                      (_%tl141582141625%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141580141620%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd141581141623%_))
                                      (let ((_g142553_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd141581141623%_
                                                '0))))
                                        (begin
                                          (let ((_g142554_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g142553_)
                                                       (##values-length
                                                        _g142553_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g142554_ 2)))
                                                (error "Context expects 2 values"
                                                       _g142554_)))
                                          (let ((_%target141583141628%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g142553_ 0)))
                                                (_%tl141585141630%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g142553_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl141585141630%_))
                                                (letrec ((_%loop141586141633%_
                                                          (lambda (_%hd141584141636%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr141590141638%_
                           _%hd141591141640%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd141584141636%_))
                        (let ((_%e141587141643%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd141584141636%_))))
                          (let ((_%lp-hd141588141646%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141587141643%_)))
                                (_%lp-tl141589141648%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141587141643%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd141588141646%_))
                                (let ((_%e141594141651%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd141588141646%_))))
                                  (let ((_%hd141595141654%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e141594141651%_)))
                                        (_%tl141596141656%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e141594141651%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141596141656%_))
                                        (let ((_%e141597141659%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141596141656%_))))
                                          (let ((_%hd141598141662%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141597141659%_)))
                                                (_%tl141599141664%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141597141659%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl141599141664%_))
                                                (_%loop141586141633%_
                                                 _%lp-tl141589141648%_
                                                 (cons _%hd141598141662%_
                                                       _%expr141590141638%_)
                                                 (cons _%hd141595141654%_
                                                       _%hd141591141640%_))
                                                (_%g141572141607%_
                                                 _%g141573141610%_))))
                                        (_%g141572141607%_
                                         _%g141573141610%_))))
                                (_%g141572141607%_ _%g141573141610%_))))
                        (let ((_%expr141592141667%_
                               (reverse _%expr141590141638%_))
                              (_%hd141593141669%_
                               (reverse _%hd141591141640%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141582141625%_))
                              (let ((_%e141600141672%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl141582141625%_))))
                                (let ((_%hd141601141675%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141600141672%_)))
                                      (_%tl141602141677%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141600141672%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl141602141677%_))
                                      ((lambda (_%L141680%_
                                                _%L141681%_
                                                _%L141682%_)
                                         (for-each
                                          (lambda (_%g141701141703%_)
                                            (gxc#compile-e__1
                                             _%self141569%_
                                             _%g141701141703%_))
                                          (let ((__tmp142556
                                                 (lambda (_%g141705141708%_
                                                          _%g141706141710%_)
                                                   (cons _%g141705141708%_
                                                         _%g141706141710%_)))
                                                (__tmp142555
                                                 (cons _%L141680%_ '())))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp142556
                                             __tmp142555
                                             _%L141681%_))))
                                       _%hd141601141675%_
                                       _%expr141592141667%_
                                       _%hd141593141669%_)
                                      (_%g141572141607%_ _%g141573141610%_))))
                              (_%g141572141607%_ _%g141573141610%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop141586141633%_
                                                   _%target141583141628%_
                                                   '()
                                                   '()))
                                                (_%g141572141607%_
                                                 _%g141573141610%_)))))
                                      (_%g141572141607%_ _%g141573141610%_))))
                              (_%g141572141607%_ _%g141573141610%_))))
                      (_%g141572141607%_ _%g141573141610%_)))))
          (_%g141571141713%_ _%stx141570%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self141514%_ _%stx141515%_)
        (let* ((_%g141517141531%_
                (lambda (_%g141518141528%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141518141528%_))))
               (_%g141516141566%_
                (lambda (_%g141518141534%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141518141534%_))
                      (let ((_%e141521141536%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141518141534%_))))
                        (let ((_%hd141522141539%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141521141536%_)))
                              (_%tl141523141541%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141521141536%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141523141541%_))
                              (let ((_%e141524141544%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl141523141541%_))))
                                (let ((_%hd141525141547%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141524141544%_)))
                                      (_%tl141526141549%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141524141544%_))))
                                  ((lambda (_%L141552%_ _%L141553%_)
                                     (gxc#compile-e__1
                                      _%self141514%_
                                      (last _%L141552%_)))
                                   _%tl141526141549%_
                                   _%hd141525141547%_)))
                              (_%g141517141531%_ _%g141518141534%_))))
                      (_%g141517141531%_ _%g141518141534%_)))))
          (_%g141516141566%_ _%stx141515%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self141446%_ _%stx141447%_)
        (let* ((_%g141449141466%_
                (lambda (_%g141450141463%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141450141463%_))))
               (_%g141448141511%_
                (lambda (_%g141450141469%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141450141469%_))
                      (let ((_%e141453141471%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141450141469%_))))
                        (let ((_%hd141454141474%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141453141471%_)))
                              (_%tl141455141476%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141453141471%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141455141476%_))
                              (let ((_%e141456141479%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl141455141476%_))))
                                (let ((_%hd141457141482%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141456141479%_)))
                                      (_%tl141458141484%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141456141479%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141458141484%_))
                                      (let ((_%e141459141487%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141458141484%_))))
                                        (let ((_%hd141460141490%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141459141487%_)))
                                              (_%tl141461141492%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141459141487%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl141461141492%_))
                                              ((lambda (_%L141495%_
                                                        _%L141496%_)
                                                 (gxc#compile-e__1
                                                  _%self141446%_
                                                  _%L141495%_))
                                               _%hd141460141490%_
                                               _%hd141457141482%_)
                                              (_%g141449141466%_
                                               _%g141450141469%_))))
                                      (_%g141449141466%_ _%g141450141469%_))))
                              (_%g141449141466%_ _%g141450141469%_))))
                      (_%g141449141466%_ _%g141450141469%_)))))
          (_%g141448141511%_ _%stx141447%_))))
    (define gxc#apply-operands
      (lambda (_%self141359%_ _%stx141360%_)
        (let* ((_%g141362141381%_
                (lambda (_%g141363141378%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141363141378%_))))
               (_%g141361141443%_
                (lambda (_%g141363141384%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141363141384%_))
                      (let ((_%e141365141386%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141363141384%_))))
                        (let ((_%hd141366141389%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141365141386%_)))
                              (_%tl141367141391%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141365141386%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl141367141391%_))
                              (let ((_g142557_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl141367141391%_
                                        '0))))
                                (begin
                                  (let ((_g142558_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g142557_)
                                               (##values-length _g142557_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g142558_ 2)))
                                        (error "Context expects 2 values"
                                               _g142558_)))
                                  (let ((_%target141368141394%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g142557_ 0)))
                                        (_%tl141370141396%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g142557_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl141370141396%_))
                                        (letrec ((_%loop141371141399%_
                                                  (lambda (_%hd141369141402%_
                                                           _%rands141375141404%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd141369141402%_))
                                                        (let ((_%e141372141407%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd141369141402%_))))
                  (let ((_%lp-hd141373141410%_
                         (let ()
                           (declare (not safe))
                           (##car _%e141372141407%_)))
                        (_%lp-tl141374141412%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e141372141407%_))))
                    (_%loop141371141399%_
                     _%lp-tl141374141412%_
                     (cons _%lp-hd141373141410%_ _%rands141375141404%_))))
                (let ((_%rands141376141415%_ (reverse _%rands141375141404%_)))
                  ((lambda (_%L141418%_)
                     (for-each
                      (lambda (_%g141431141433%_)
                        (gxc#compile-e__1 _%self141359%_ _%g141431141433%_))
                      (let ((__tmp142559
                             (lambda (_%g141435141438%_ _%g141436141440%_)
                               (cons _%g141435141438%_ _%g141436141440%_))))
                        (declare (not safe))
                        (__foldr1 __tmp142559 '() _%L141418%_))))
                   _%rands141376141415%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop141371141399%_
                                           _%target141368141394%_
                                           '()))
                                        (_%g141362141381%_
                                         _%g141363141384%_)))))
                              (_%g141362141381%_ _%g141363141384%_))))
                      (_%g141362141381%_ _%g141363141384%_)))))
          (_%g141361141443%_ _%stx141360%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx141356%_ _%src-stx141357%_)
        (let ((__tmp142560
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx141357%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx141356%_ __tmp142560))))
    (define gxc#xform-wrap-apply
      (lambda (_%stx141352%_ _%src-stx141353%_ _%ctx141354%_)
        (gxc#compile-e__1
         _%ctx141354%_
         (gxc#xform-wrap-source _%stx141352%_ _%src-stx141353%_))))
    (define gxc#xform-begin%
      (lambda (_%self141307%_ _%stx141308%_)
        (let* ((_%g141310141320%_
                (lambda (_%g141311141317%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141311141317%_))))
               (_%g141309141349%_
                (lambda (_%g141311141323%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141311141323%_))
                      (let ((_%e141313141325%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141311141323%_))))
                        (let ((_%hd141314141328%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141313141325%_)))
                              (_%tl141315141330%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141313141325%_))))
                          ((lambda (_%L141333%_)
                             (let ((_%forms141347%_
                                    (map (lambda (_%g141342141344%_)
                                           (gxc#compile-e__1
                                            _%self141307%_
                                            _%g141342141344%_))
                                         _%L141333%_)))
                               (gxc#xform-wrap-source
                                (cons '%#begin _%forms141347%_)
                                _%stx141308%_)))
                           _%tl141315141330%_)))
                      (_%g141310141320%_ _%g141311141323%_)))))
          (_%g141309141349%_ _%stx141308%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self141261%_ _%stx141262%_)
        (let* ((_%g141264141274%_
                (lambda (_%g141265141271%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141265141271%_))))
               (_%g141263141304%_
                (lambda (_%g141265141277%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141265141277%_))
                      (let ((_%e141267141279%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141265141277%_))))
                        (let ((_%hd141268141282%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141267141279%_)))
                              (_%tl141269141284%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141267141279%_))))
                          ((lambda (_%L141287%_)
                             (let ((__tmp142563
                                    (lambda ()
                                      (let ((_%forms141302%_
                                             (map (lambda (_%g141297141299%_)
                                                    (gxc#compile-e__1
                                                     _%self141261%_
                                                     _%g141297141299%_))
                                                  _%L141287%_)))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin-syntax _%forms141302%_)
                                         _%stx141262%_))))
                                   (__tmp142561
                                    (let ((__tmp142562
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp142562 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp142563
                                gx#current-expander-phi
                                __tmp142561)))
                           _%tl141269141284%_)))
                      (_%g141264141274%_ _%g141265141277%_)))))
          (_%g141263141304%_ _%stx141262%_))))
    (define gxc#xform-module%
      (lambda (_%self141198%_ _%stx141199%_)
        (let* ((_%g141201141215%_
                (lambda (_%g141202141212%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141202141212%_))))
               (_%g141200141258%_
                (lambda (_%g141202141218%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141202141218%_))
                      (let ((_%e141205141220%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141202141218%_))))
                        (let ((_%hd141206141223%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141205141220%_)))
                              (_%tl141207141225%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141205141220%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141207141225%_))
                              (let ((_%e141208141228%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl141207141225%_))))
                                (let ((_%hd141209141231%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141208141228%_)))
                                      (_%tl141210141233%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141208141228%_))))
                                  ((lambda (_%L141236%_ _%L141237%_)
                                     (let* ((_%ctx141250%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L141237%_)))
                                            (_%code141252%_
                                             (##structure-ref
                                              _%ctx141250%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code141255%_
                                             (let ((__tmp142564
                                                    (lambda ()
                                                      (gxc#compile-e__1
                                                       _%self141198%_
                                                       _%code141252%_))))
                                               (declare (not safe))
                                               (call-with-parameters__1
                                                __tmp142564
                                                gx#current-expander-context
                                                _%ctx141250%_))))
                                       (##structure-set!
                                        _%ctx141250%_
                                        _%code141255%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _%L141237%_
                                                    (cons _%code141255%_ '())))
                                        _%stx141199%_)))
                                   _%tl141210141233%_
                                   _%hd141209141231%_)))
                              (_%g141201141215%_ _%g141202141218%_))))
                      (_%g141201141215%_ _%g141202141218%_)))))
          (_%g141200141258%_ _%stx141199%_))))
    (define gxc#xform-define-values%
      (lambda (_%self141128%_ _%stx141129%_)
        (let* ((_%g141131141148%_
                (lambda (_%g141132141145%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141132141145%_))))
               (_%g141130141195%_
                (lambda (_%g141132141151%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141132141151%_))
                      (let ((_%e141135141153%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141132141151%_))))
                        (let ((_%hd141136141156%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141135141153%_)))
                              (_%tl141137141158%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141135141153%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141137141158%_))
                              (let ((_%e141138141161%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl141137141158%_))))
                                (let ((_%hd141139141164%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141138141161%_)))
                                      (_%tl141140141166%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141138141161%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141140141166%_))
                                      (let ((_%e141141141169%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141140141166%_))))
                                        (let ((_%hd141142141172%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141141141169%_)))
                                              (_%tl141143141174%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141141141169%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl141143141174%_))
                                              ((lambda (_%L141177%_
                                                        _%L141178%_)
                                                 (let ((_%expr141193%_
                                                        (gxc#compile-e__1
                                                         _%self141128%_
                                                         _%L141177%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons _%L141178%_
                                                                (cons _%expr141193%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx141129%_)))
                                               _%hd141142141172%_
                                               _%hd141139141164%_)
                                              (_%g141131141148%_
                                               _%g141132141151%_))))
                                      (_%g141131141148%_ _%g141132141151%_))))
                              (_%g141131141148%_ _%g141132141151%_))))
                      (_%g141131141148%_ _%g141132141151%_)))))
          (_%g141130141195%_ _%stx141129%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self141057%_ _%stx141058%_)
        (let* ((_%g141060141077%_
                (lambda (_%g141061141074%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141061141074%_))))
               (_%g141059141125%_
                (lambda (_%g141061141080%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141061141080%_))
                      (let ((_%e141064141082%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141061141080%_))))
                        (let ((_%hd141065141085%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141064141082%_)))
                              (_%tl141066141087%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141064141082%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141066141087%_))
                              (let ((_%e141067141090%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl141066141087%_))))
                                (let ((_%hd141068141093%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141067141090%_)))
                                      (_%tl141069141095%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141067141090%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141069141095%_))
                                      (let ((_%e141070141098%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141069141095%_))))
                                        (let ((_%hd141071141101%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141070141098%_)))
                                              (_%tl141072141103%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141070141098%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl141072141103%_))
                                              ((lambda (_%L141106%_
                                                        _%L141107%_)
                                                 (let ((__tmp142567
                                                        (lambda ()
                                                          (let ((_%expr141123%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#compile-e__1 _%self141057%_ _%L141106%_)))
                    (gxc#xform-wrap-source
                     (cons '%#define-syntax
                           (cons _%L141107%_ (cons _%expr141123%_ '())))
                     _%stx141058%_))))
               (__tmp142565
                (let ((__tmp142566
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp142566 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp142567
                                                    gx#current-expander-phi
                                                    __tmp142565)))
                                               _%hd141071141101%_
                                               _%hd141068141093%_)
                                              (_%g141060141077%_
                                               _%g141061141080%_))))
                                      (_%g141060141077%_ _%g141061141080%_))))
                              (_%g141060141077%_ _%g141061141080%_))))
                      (_%g141060141077%_ _%g141061141080%_)))))
          (_%g141059141125%_ _%stx141058%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self140987%_ _%stx140988%_)
        (let* ((_%g140990141007%_
                (lambda (_%g140991141004%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140991141004%_))))
               (_%g140989141054%_
                (lambda (_%g140991141010%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140991141010%_))
                      (let ((_%e140994141012%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g140991141010%_))))
                        (let ((_%hd140995141015%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140994141012%_)))
                              (_%tl140996141017%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140994141012%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl140996141017%_))
                              (let ((_%e140997141020%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl140996141017%_))))
                                (let ((_%hd140998141023%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140997141020%_)))
                                      (_%tl140999141025%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140997141020%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl140999141025%_))
                                      (let ((_%e141000141028%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl140999141025%_))))
                                        (let ((_%hd141001141031%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141000141028%_)))
                                              (_%tl141002141033%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141000141028%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl141002141033%_))
                                              ((lambda (_%L141036%_
                                                        _%L141037%_)
                                                 (let ((_%expr141052%_
                                                        (gxc#compile-e__1
                                                         _%self140987%_
                                                         _%L141036%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#begin-annotation
                                                          (cons _%L141037%_
                                                                (cons _%expr141052%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx140988%_)))
                                               _%hd141001141031%_
                                               _%hd140998141023%_)
                                              (_%g140990141007%_
                                               _%g140991141010%_))))
                                      (_%g140990141007%_ _%g140991141010%_))))
                              (_%g140990141007%_ _%g140991141010%_))))
                      (_%g140990141007%_ _%g140991141010%_)))))
          (_%g140989141054%_ _%stx140988%_))))
    (define gxc#xform-lambda%
      (lambda (_%self140925%_ _%stx140926%_)
        (let* ((_%g140928140942%_
                (lambda (_%g140929140939%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140929140939%_))))
               (_%g140927140984%_
                (lambda (_%g140929140945%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140929140945%_))
                      (let ((_%e140932140947%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g140929140945%_))))
                        (let ((_%hd140933140950%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140932140947%_)))
                              (_%tl140934140952%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140932140947%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl140934140952%_))
                              (let ((_%e140935140955%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl140934140952%_))))
                                (let ((_%hd140936140958%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140935140955%_)))
                                      (_%tl140937140960%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140935140955%_))))
                                  ((lambda (_%L140963%_ _%L140964%_)
                                     (let ((__tmp142569
                                            (lambda ()
                                              (let ((_%body140982%_
                                                     (map (lambda (_%g140977140979%_)
                                                            (gxc#compile-e__1
                                                             _%self140925%_
                                                             _%g140977140979%_))
                                                          _%L140963%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#lambda
                                                       (cons _%L140964%_
                                                             _%body140982%_))
                                                 _%stx140926%_))))
                                           (__tmp142568
                                            (gxc#xform-let-locals
                                             _%L140964%_)))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp142569
                                        gxc#current-compile-local-env
                                        __tmp142568)))
                                   _%tl140937140960%_
                                   _%hd140936140958%_)))
                              (_%g140928140942%_ _%g140929140945%_))))
                      (_%g140928140942%_ _%g140929140945%_)))))
          (_%g140927140984%_ _%stx140926%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self140833%_ _%stx140834%_)
        (letrec ((_%clause-e140836%_
                  (lambda (_%clause140877%_)
                    (let* ((_%g140879140890%_
                            (lambda (_%g140880140887%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g140880140887%_))))
                           (_%g140878140922%_
                            (lambda (_%g140880140893%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g140880140893%_))
                                  (let ((_%e140883140895%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g140880140893%_))))
                                    (let ((_%hd140884140898%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e140883140895%_)))
                                          (_%tl140885140900%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e140883140895%_))))
                                      ((lambda (_%L140903%_ _%L140904%_)
                                         (let ((__tmp142571
                                                (lambda ()
                                                  (let ((_%body140920%_
                                                         (map (lambda (_%g140915140917%_)
                                                                (gxc#compile-e__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%self140833%_
                         _%g140915140917%_))
                      _%L140903%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%L140904%_
                                                          _%body140920%_))))
                                               (__tmp142570
                                                (gxc#xform-let-locals
                                                 _%L140904%_)))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp142571
                                            gxc#current-compile-local-env
                                            __tmp142570)))
                                       _%tl140885140900%_
                                       _%hd140884140898%_)))
                                  (_%g140879140890%_ _%g140880140893%_)))))
                      (_%g140878140922%_ _%clause140877%_)))))
          (let* ((_%g140838140848%_
                  (lambda (_%g140839140845%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140839140845%_))))
                 (_%g140837140874%_
                  (lambda (_%g140839140851%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140839140851%_))
                        (let ((_%e140841140853%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140839140851%_))))
                          (let ((_%hd140842140856%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140841140853%_)))
                                (_%tl140843140858%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140841140853%_))))
                            ((lambda (_%L140861%_)
                               (let ((_%clauses140872%_
                                      (map _%clause-e140836%_ _%L140861%_)))
                                 (gxc#xform-wrap-source
                                  (cons '%#case-lambda _%clauses140872%_)
                                  _%stx140834%_)))
                             _%tl140843140858%_)))
                        (_%g140838140848%_ _%g140839140851%_)))))
            (_%g140837140874%_ _%stx140834%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self140587%_ _%stx140588%_)
        (let* ((_%g140590140623%_
                (lambda (_%g140591140620%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140591140620%_))))
               (_%g140589140830%_
                (lambda (_%g140591140626%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140591140626%_))
                      (let ((_%e140596140628%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g140591140626%_))))
                        (let ((_%hd140597140631%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140596140628%_)))
                              (_%tl140598140633%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140596140628%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl140598140633%_))
                              (let ((_%e140599140636%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl140598140633%_))))
                                (let ((_%hd140600140639%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140599140636%_)))
                                      (_%tl140601140641%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140599140636%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd140600140639%_))
                                      (let ((_g142572_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd140600140639%_
                                                '0))))
                                        (begin
                                          (let ((_g142573_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g142572_)
                                                       (##values-length
                                                        _g142572_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g142573_ 2)))
                                                (error "Context expects 2 values"
                                                       _g142573_)))
                                          (let ((_%target140602140644%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g142572_ 0)))
                                                (_%tl140604140646%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g142572_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl140604140646%_))
                                                (letrec ((_%loop140605140649%_
                                                          (lambda (_%hd140603140652%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr140609140654%_
                           _%hd140610140656%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd140603140652%_))
                        (let ((_%e140606140659%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd140603140652%_))))
                          (let ((_%lp-hd140607140662%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140606140659%_)))
                                (_%lp-tl140608140664%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140606140659%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd140607140662%_))
                                (let ((_%e140613140667%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd140607140662%_))))
                                  (let ((_%hd140614140670%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e140613140667%_)))
                                        (_%tl140615140672%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e140613140667%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl140615140672%_))
                                        (let ((_%e140616140675%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl140615140672%_))))
                                          (let ((_%hd140617140678%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e140616140675%_)))
                                                (_%tl140618140680%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e140616140675%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl140618140680%_))
                                                (_%loop140605140649%_
                                                 _%lp-tl140608140664%_
                                                 (cons _%hd140617140678%_
                                                       _%expr140609140654%_)
                                                 (cons _%hd140614140670%_
                                                       _%hd140610140656%_))
                                                (_%g140590140623%_
                                                 _%g140591140626%_))))
                                        (_%g140590140623%_
                                         _%g140591140626%_))))
                                (_%g140590140623%_ _%g140591140626%_))))
                        (let ((_%expr140611140683%_
                               (reverse _%expr140609140654%_))
                              (_%hd140612140685%_
                               (reverse _%hd140610140656%_)))
                          ((lambda (_%L140688%_
                                    _%L140689%_
                                    _%L140690%_
                                    _%L140691%_)
                             (let* ((_%g140710140726%_
                                     (lambda (_%g140711140723%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g140711140723%_))))
                                    (_%g140709140816%_
                                     (lambda (_%g140711140729%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g140711140729%_))
                                           (let ((_g142574_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g140711140729%_
                                                     '0))))
                                             (begin
                                               (let ((_g142575_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g142574_)
                                                            (##values-length
                                                             _g142574_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g142575_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g142575_)))
                                               (let ((_%target140713140731%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g142574_
                                                         0)))
                                                     (_%tl140715140733%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g142574_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl140715140733%_))
                                                     (letrec ((_%loop140716140736%_
                                                               (lambda (_%hd140714140739%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr140720140741%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd140714140739%_))
                             (let ((_%e140717140744%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd140714140739%_))))
                               (let ((_%lp-hd140718140747%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e140717140744%_)))
                                     (_%lp-tl140719140749%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e140717140744%_))))
                                 (_%loop140716140736%_
                                  _%lp-tl140719140749%_
                                  (cons _%lp-hd140718140747%_
                                        _%expr140720140741%_))))
                             (let ((_%expr140721140752%_
                                    (reverse _%expr140720140741%_)))
                               ((lambda (_%L140755%_)
                                  (let ((__tmp142578
                                         (lambda ()
                                           (let* ((_%g140769140776%_
                                                   (lambda (_%g140770140773%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g140770140773%_))))
                                                  (_%g140768140802%_
                                                   (lambda (_%g140770140779%_)
                                                     ((lambda (_%L140781%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L140691%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L140755%_
                                  _%L140690%_))
                               (let ((__tmp142579
                                      (lambda (_%g140791140795%_
                                               _%g140792140797%_
                                               _%g140793140799%_)
                                        (cons (cons _%g140792140797%_
                                                    (cons _%g140791140795%_
                                                          '()))
                                              _%g140793140799%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp142579
                                  '()
                                  _%L140755%_
                                  _%L140690%_)))
                             _%L140781%_))
                 _%stx140588%_))
              _%g140770140779%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g140768140802%_
                                              (map (lambda (_%g140804140806%_)
                                                     (gxc#compile-e__1
                                                      _%self140587%_
                                                      _%g140804140806%_))
                                                   _%L140688%_)))))
                                        (__tmp142576
                                         (gxc#xform-let-locals
                                          (let ((__tmp142577
                                                 (lambda (_%g140808140811%_
                                                          _%g140809140813%_)
                                                   (cons _%g140808140811%_
                                                         _%g140809140813%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp142577
                                             '()
                                             _%L140690%_)))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp142578
                                     gxc#current-compile-local-env
                                     __tmp142576)))
                                _%expr140721140752%_))))))
               (_%loop140716140736%_ _%target140713140731%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g140710140726%_
                                                      _%g140711140729%_)))))
                                           (_%g140710140726%_
                                            _%g140711140729%_)))))
                               (_%g140709140816%_
                                (map (lambda (_%g140818140820%_)
                                       (gxc#compile-e__1
                                        _%self140587%_
                                        _%g140818140820%_))
                                     (let ((__tmp142580
                                            (lambda (_%g140822140825%_
                                                     _%g140823140827%_)
                                              (cons _%g140822140825%_
                                                    _%g140823140827%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp142580
                                        '()
                                        _%L140689%_))))))
                           _%tl140601140641%_
                           _%expr140611140683%_
                           _%hd140612140685%_
                           _%hd140597140631%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop140605140649%_
                                                   _%target140602140644%_
                                                   '()
                                                   '()))
                                                (_%g140590140623%_
                                                 _%g140591140626%_)))))
                                      (_%g140590140623%_ _%g140591140626%_))))
                              (_%g140590140623%_ _%g140591140626%_))))
                      (_%g140590140623%_ _%g140591140626%_)))))
          (_%g140589140830%_ _%stx140588%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self140341%_ _%stx140342%_)
        (let* ((_%g140344140377%_
                (lambda (_%g140345140374%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140345140374%_))))
               (_%g140343140584%_
                (lambda (_%g140345140380%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140345140380%_))
                      (let ((_%e140350140382%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g140345140380%_))))
                        (let ((_%hd140351140385%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140350140382%_)))
                              (_%tl140352140387%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140350140382%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl140352140387%_))
                              (let ((_%e140353140390%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl140352140387%_))))
                                (let ((_%hd140354140393%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140353140390%_)))
                                      (_%tl140355140395%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140353140390%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd140354140393%_))
                                      (let ((_g142581_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd140354140393%_
                                                '0))))
                                        (begin
                                          (let ((_g142582_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g142581_)
                                                       (##values-length
                                                        _g142581_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g142582_ 2)))
                                                (error "Context expects 2 values"
                                                       _g142582_)))
                                          (let ((_%target140356140398%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g142581_ 0)))
                                                (_%tl140358140400%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g142581_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl140358140400%_))
                                                (letrec ((_%loop140359140403%_
                                                          (lambda (_%hd140357140406%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr140363140408%_
                           _%hd140364140410%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd140357140406%_))
                        (let ((_%e140360140413%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd140357140406%_))))
                          (let ((_%lp-hd140361140416%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140360140413%_)))
                                (_%lp-tl140362140418%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140360140413%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd140361140416%_))
                                (let ((_%e140367140421%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd140361140416%_))))
                                  (let ((_%hd140368140424%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e140367140421%_)))
                                        (_%tl140369140426%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e140367140421%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl140369140426%_))
                                        (let ((_%e140370140429%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl140369140426%_))))
                                          (let ((_%hd140371140432%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e140370140429%_)))
                                                (_%tl140372140434%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e140370140429%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl140372140434%_))
                                                (_%loop140359140403%_
                                                 _%lp-tl140362140418%_
                                                 (cons _%hd140371140432%_
                                                       _%expr140363140408%_)
                                                 (cons _%hd140368140424%_
                                                       _%hd140364140410%_))
                                                (_%g140344140377%_
                                                 _%g140345140380%_))))
                                        (_%g140344140377%_
                                         _%g140345140380%_))))
                                (_%g140344140377%_ _%g140345140380%_))))
                        (let ((_%expr140365140437%_
                               (reverse _%expr140363140408%_))
                              (_%hd140366140439%_
                               (reverse _%hd140364140410%_)))
                          ((lambda (_%L140442%_
                                    _%L140443%_
                                    _%L140444%_
                                    _%L140445%_)
                             (let ((__tmp142585
                                    (lambda ()
                                      (let* ((_%g140465140481%_
                                              (lambda (_%g140466140478%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g140466140478%_))))
                                             (_%g140464140563%_
                                              (lambda (_%g140466140484%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g140466140484%_))
                                                    (let ((_g142586_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g140466140484%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g142587_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g142586_)
                             (##values-length _g142586_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g142587_ 2)))
                      (error "Context expects 2 values" _g142587_)))
                (let ((_%target140468140486%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g142586_ 0)))
                      (_%tl140470140488%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g142586_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl140470140488%_))
                      (letrec ((_%loop140471140491%_
                                (lambda (_%hd140469140494%_
                                         _%expr140475140496%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd140469140494%_))
                                      (let ((_%e140472140499%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd140469140494%_))))
                                        (let ((_%lp-hd140473140502%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e140472140499%_)))
                                              (_%lp-tl140474140504%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e140472140499%_))))
                                          (_%loop140471140491%_
                                           _%lp-tl140474140504%_
                                           (cons _%lp-hd140473140502%_
                                                 _%expr140475140496%_))))
                                      (let ((_%expr140476140507%_
                                             (reverse _%expr140475140496%_)))
                                        ((lambda (_%L140510%_)
                                           (let* ((_%g140524140531%_
                                                   (lambda (_%g140525140528%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g140525140528%_))))
                                                  (_%g140523140556%_
                                                   (lambda (_%g140525140534%_)
                                                     ((lambda (_%L140536%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L140445%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L140510%_
                                  _%L140444%_))
                               (let ((__tmp142588
                                      (lambda (_%g140545140549%_
                                               _%g140546140551%_
                                               _%g140547140553%_)
                                        (cons (cons _%g140546140551%_
                                                    (cons _%g140545140549%_
                                                          '()))
                                              _%g140547140553%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp142588
                                  '()
                                  _%L140510%_
                                  _%L140444%_)))
                             _%L140536%_))
                 _%stx140342%_))
              _%g140525140534%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g140523140556%_
                                              (map (lambda (_%g140558140560%_)
                                                     (gxc#compile-e__1
                                                      _%self140341%_
                                                      _%g140558140560%_))
                                                   _%L140442%_))))
                                         _%expr140476140507%_))))))
                        (_%loop140471140491%_ _%target140468140486%_ '()))
                      (_%g140465140481%_ _%g140466140484%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g140465140481%_
                                                     _%g140466140484%_)))))
                                        (_%g140464140563%_
                                         (map (lambda (_%g140565140567%_)
                                                (gxc#compile-e__1
                                                 _%self140341%_
                                                 _%g140565140567%_))
                                              (let ((__tmp142589
                                                     (lambda (_%g140569140572%_
                                                              _%g140570140574%_)
                                                       (cons _%g140569140572%_
                                                             _%g140570140574%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp142589
                                                 '()
                                                 _%L140443%_)))))))
                                   (__tmp142583
                                    (gxc#xform-let-locals
                                     (let ((__tmp142584
                                            (lambda (_%g140576140579%_
                                                     _%g140577140581%_)
                                              (cons _%g140576140579%_
                                                    _%g140577140581%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp142584
                                        '()
                                        _%L140444%_)))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp142585
                                gxc#current-compile-local-env
                                __tmp142583)))
                           _%tl140355140395%_
                           _%expr140365140437%_
                           _%hd140366140439%_
                           _%hd140351140385%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop140359140403%_
                                                   _%target140356140398%_
                                                   '()
                                                   '()))
                                                (_%g140344140377%_
                                                 _%g140345140380%_)))))
                                      (_%g140344140377%_ _%g140345140380%_))))
                              (_%g140344140377%_ _%g140345140380%_))))
                      (_%g140344140377%_ _%g140345140380%_)))))
          (_%g140343140584%_ _%stx140342%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings140208%_)
        (letrec ((_%flatten140210%_
                  (lambda (_%maybe-lst140268%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%maybe-lst140268%_))
                        (cons _%maybe-lst140268%_ '())
                        (let _%loop140270%_ ((_%rest140272%_
                                              _%maybe-lst140268%_)
                                             (_%result140273%_ '()))
                          (let* ((_%__stx142477142478%_ _%rest140272%_)
                                 (_%g140277140289%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx142477142478%_)))))
                            (let ((_%__kont142479142480%_
                                   (lambda (_%L140327%_ _%L140328%_)
                                     (_%loop140270%_
                                      _%L140327%_
                                      (let ((__tmp142590
                                             (_%flatten140210%_ _%L140328%_)))
                                        (declare (not safe))
                                        (__foldl1
                                         cons
                                         _%result140273%_
                                         __tmp142590)))))
                                  (_%__kont142481142482%_
                                   (lambda (_%L140301%_)
                                     (cons _%L140301%_ _%result140273%_)))
                                  (_%__kont142483142484%_
                                   (lambda () _%result140273%_)))
                              (let ((_%g140275140314%_
                                     (lambda ()
                                       (let ((_%L140301%_
                                              _%__stx142477142478%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L140301%_))
                                             (_%__kont142481142482%_
                                              _%L140301%_)
                                             (_%__kont142483142484%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx142477142478%_))
                                    (let ((_%e140281140319%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx142477142478%_))))
                                      (let ((_%tl140283140324%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e140281140319%_)))
                                            (_%hd140282140322%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e140281140319%_))))
                                        (_%__kont142479142480%_
                                         _%tl140283140324%_
                                         _%hd140282140322%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g140275140314%_)))))))))))
          (let _%loop140212%_ ((_%rest140214%_
                                (_%flatten140210%_ _%bindings140208%_))
                               (_%locals140215%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-local-env))))
            (let* ((_%rest140216140227%_ _%rest140214%_)
                   (_%E140220140231%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching"
                               _%rest140216140227%_
                               '([(? identifier? id) . rest])
                               '((? identifier? id))
                               '(_)))
                      '#!void)))
              (let ((_%K140223140256%_
                     (lambda (_%rest140253%_ _%id140254%_)
                       (_%loop140212%_
                        _%rest140253%_
                        (cons (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _%id140254%_))
                              _%locals140215%_))))
                    (_%K140222140245%_
                     (lambda (_%id140243%_)
                       (cons (let ()
                               (declare (not safe))
                               (gxc#identifier-symbol _%id140243%_))
                             _%locals140215%_)))
                    (_%K140221140236%_ (lambda () _%locals140215%_)))
                (let ((_%try-match140218140250%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%rest140216140227%_))
                             (let ((_%id140248%_ _%rest140216140227%_))
                               (_%K140222140245%_ _%id140248%_))
                             (_%K140221140236%_)))))
                  (if (pair? _%rest140216140227%_)
                      (let ((_%tl140225140261%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest140216140227%_)))
                            (_%hd140224140259%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest140216140227%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd140224140259%_))
                            (let ((_%id140264%_ _%hd140224140259%_)
                                  (_%rest140266%_ _%tl140225140261%_))
                              (_%K140223140256%_ _%rest140266%_ _%id140264%_))
                            (_%K140221140236%_)))
                      (_%try-match140218140250%_)))))))))
    (define gxc#xform-operands
      (lambda (_%self140160%_ _%stx140161%_)
        (let* ((_%g140163140174%_
                (lambda (_%g140164140171%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140164140171%_))))
               (_%g140162140205%_
                (lambda (_%g140164140177%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140164140177%_))
                      (let ((_%e140167140179%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g140164140177%_))))
                        (let ((_%hd140168140182%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140167140179%_)))
                              (_%tl140169140184%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140167140179%_))))
                          ((lambda (_%L140187%_ _%L140188%_)
                             (let ((_%rands140203%_
                                    (map (lambda (_%g140198140200%_)
                                           (gxc#compile-e__1
                                            _%self140160%_
                                            _%g140198140200%_))
                                         _%L140187%_)))
                               (gxc#xform-wrap-source
                                (cons _%L140188%_ _%rands140203%_)
                                _%stx140161%_)))
                           _%tl140169140184%_
                           _%hd140168140182%_)))
                      (_%g140163140174%_ _%g140164140177%_)))))
          (_%g140162140205%_ _%stx140161%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self140090%_ _%stx140091%_)
        (let* ((_%g140093140110%_
                (lambda (_%g140094140107%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140094140107%_))))
               (_%g140092140157%_
                (lambda (_%g140094140113%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140094140113%_))
                      (let ((_%e140097140115%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g140094140113%_))))
                        (let ((_%hd140098140118%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140097140115%_)))
                              (_%tl140099140120%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140097140115%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl140099140120%_))
                              (let ((_%e140100140123%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl140099140120%_))))
                                (let ((_%hd140101140126%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140100140123%_)))
                                      (_%tl140102140128%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140100140123%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl140102140128%_))
                                      (let ((_%e140103140131%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl140102140128%_))))
                                        (let ((_%hd140104140134%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e140103140131%_)))
                                              (_%tl140105140136%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e140103140131%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl140105140136%_))
                                              ((lambda (_%L140139%_
                                                        _%L140140%_)
                                                 (let ((_%expr140155%_
                                                        (gxc#compile-e__1
                                                         _%self140090%_
                                                         _%L140139%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _%L140140%_
                                                                (cons _%expr140155%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx140091%_)))
                                               _%hd140104140134%_
                                               _%hd140101140126%_)
                                              (_%g140093140110%_
                                               _%g140094140113%_))))
                                      (_%g140093140110%_ _%g140094140113%_))))
                              (_%g140093140110%_ _%g140094140113%_))))
                      (_%g140093140110%_ _%g140094140113%_)))))
          (_%g140092140157%_ _%stx140091%_))))))
