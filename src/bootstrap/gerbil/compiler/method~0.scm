(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1712251112)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx134356%_)
        (let* ((_%self134358%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e134360%_
                (let ((__tmp134538
                       (let ()
                         (declare (not safe))
                         (gxc#stx-car-e _%stx134356%_))))
                  (declare (not safe))
                  (method-ref _%self134358%_ __tmp134538))))
          (if _%$e134360%_
              ((lambda (_%method134363%_)
                 (declare (not safe))
                 (_%method134363%_ _%self134358%_ _%stx134356%_))
               _%$e134360%_)
              (let ((__tmp134540
                     (let ()
                       (declare (not safe))
                       (gxc#stx-car-e _%stx134356%_)))
                    (__tmp134539
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx134356%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self134358%_
                       __tmp134540
                       __tmp134539))))))
    (define gxc#compile-e__1
      (lambda (_%self134367%_ _%stx134368%_)
        (let ((_%$e134370%_
               (let ((__tmp134541
                      (let ()
                        (declare (not safe))
                        (gxc#stx-car-e _%stx134368%_))))
                 (declare (not safe))
                 (method-ref _%self134367%_ __tmp134541))))
          (if _%$e134370%_
              ((lambda (_%method134373%_)
                 (declare (not safe))
                 (_%method134373%_ _%self134367%_ _%stx134368%_))
               _%$e134370%_)
              (let ((__tmp134543
                     (let ()
                       (declare (not safe))
                       (gxc#stx-car-e _%stx134368%_)))
                    (__tmp134542
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx134368%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self134367%_
                       __tmp134543
                       __tmp134542))))))
    (define gxc#compile-e
      (lambda _g134545_
        (let ((_g134544_ (let () (declare (not safe)) (##length _g134545_))))
          (cond ((let () (declare (not safe)) (##fx= _g134544_ 1))
                 (apply (lambda (_%stx134356%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _%stx134356%_)))
                        _g134545_))
                ((let () (declare (not safe)) (##fx= _g134544_ 2))
                 (apply (lambda (_%self134367%_ _%stx134368%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__1 _%self134367%_ _%stx134368%_)))
                        _g134545_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g134545_))))))
    (define gxc#stx-car-e
      (lambda (_%stx134354%_)
        (let ((__tmp134546
               (car (let () (declare (not safe)) (gx#stx-e _%stx134354%_)))))
          (declare (not safe))
          (gx#stx-e __tmp134546))))
    (define gxc#void-method (lambda (_%self134351%_ _%stx134352%_) '#!void))
    (define gxc#false-method (lambda (_%self134348%_ _%stx134349%_) '#f))
    (define gxc#true-method (lambda (_%self134345%_ _%stx134346%_) '#t))
    (define gxc#identity-method
      (lambda (_%self134342%_ _%stx134343%_) _%stx134343%_))
    (define gxc#::void-expression::t
      (let ((__tmp134547 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp134547
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args134339%_
        (apply make-instance gxc#::void-expression::t _%$args134339%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp134548
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
        (__make-promise __tmp134548)))
    (define gxc#::void-special-form::t
      (let ((__tmp134549 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp134549
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args134335%_
        (apply make-instance gxc#::void-special-form::t _%$args134335%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp134550
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
        (__make-promise __tmp134550)))
    (define gxc#::void::t
      (let ((__tmp134551
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp134551 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args134331%_
        (apply make-instance gxc#::void::t _%$args134331%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp134552
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp134552)))
    (define gxc#::false-expression::t
      (let ((__tmp134553 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp134553
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args134327%_
        (apply make-instance gxc#::false-expression::t _%$args134327%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp134554
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
        (__make-promise __tmp134554)))
    (define gxc#::false-special-form::t
      (let ((__tmp134555 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp134555
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args134323%_
        (apply make-instance gxc#::false-special-form::t _%$args134323%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp134556
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
        (__make-promise __tmp134556)))
    (define gxc#::false::t
      (let ((__tmp134557
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp134557 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args134319%_
        (apply make-instance gxc#::false::t _%$args134319%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp134558
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp134558)))
    (define gxc#::identity-expression::t
      (let ((__tmp134559 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp134559
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args134315%_
        (apply make-instance gxc#::identity-expression::t _%$args134315%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp134560
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
        (__make-promise __tmp134560)))
    (define gxc#::identity-special-form::t
      (let ((__tmp134561 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp134561
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args134311%_
        (apply make-instance gxc#::identity-special-form::t _%$args134311%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp134562
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
        (__make-promise __tmp134562)))
    (define gxc#::identity::t
      (let ((__tmp134563
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp134563
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args134307%_
        (apply make-instance gxc#::identity::t _%$args134307%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp134564
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp134564)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp134565 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp134565
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args134303%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args134303%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp134566
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
        (__make-promise __tmp134566)))
    (define gxc#::basic-xform::t
      (let ((__tmp134567
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp134567
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args134299%_
        (apply make-instance gxc#::basic-xform::t _%$args134299%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp134568
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
        (__make-promise __tmp134568)))
    (define gxc#apply-begin%
      (lambda (_%self134255%_ _%stx134256%_)
        (let* ((_%g134258134268%_
                (lambda (_%g134259134265%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134259134265%_))))
               (_%g134257134295%_
                (lambda (_%g134259134271%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134259134271%_))
                      (let ((_%e134263134273%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134259134271%_))))
                        (let ((_%hd134262134276%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134263134273%_)))
                              (_%tl134261134278%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134263134273%_))))
                          ((lambda (_%L134281%_)
                             (for-each
                              (lambda (_%g134290134292%_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1
                                   _%self134255%_
                                   _%g134290134292%_)))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L134281%_))))
                           _%tl134261134278%_)))
                      (let ()
                        (declare (not safe))
                        (_%g134258134268%_ _%g134259134271%_))))))
          (declare (not safe))
          (_%g134257134295%_ _%stx134256%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self134216%_ _%stx134217%_)
        (let* ((_%g134219134229%_
                (lambda (_%g134220134226%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134220134226%_))))
               (_%g134218134252%_
                (lambda (_%g134220134232%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134220134232%_))
                      (let ((_%e134224134234%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134220134232%_))))
                        (let ((_%hd134223134237%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134224134234%_)))
                              (_%tl134222134239%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134224134234%_))))
                          ((lambda (_%L134242%_)
                             (let ((__tmp134569 (last _%L134242%_)))
                               (declare (not safe))
                               (gxc#compile-e__1 _%self134216%_ __tmp134569)))
                           _%tl134222134239%_)))
                      (let ()
                        (declare (not safe))
                        (_%g134219134229%_ _%g134220134232%_))))))
          (declare (not safe))
          (_%g134218134252%_ _%stx134217%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self134212%_ _%stx134213%_)
        (let ((__tmp134572
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#apply-begin% _%self134212%_ _%stx134213%_))))
              (__tmp134570
               (let ((__tmp134571
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp134571 '1))))
          (declare (not safe))
          (__call-with-parameters
           __tmp134572
           gx#current-expander-phi
           __tmp134570))))
    (define gxc#apply-module%
      (lambda (_%self134151%_ _%stx134152%_)
        (let* ((_%g134154134168%_
                (lambda (_%g134155134165%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134155134165%_))))
               (_%g134153134209%_
                (lambda (_%g134155134171%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134155134171%_))
                      (let ((_%e134160134173%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134155134171%_))))
                        (let ((_%hd134159134176%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134160134173%_)))
                              (_%tl134158134178%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134160134173%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134158134178%_))
                              (let ((_%e134163134181%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134158134178%_))))
                                (let ((_%hd134162134184%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134163134181%_)))
                                      (_%tl134161134186%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134163134181%_))))
                                  ((lambda (_%L134189%_ _%L134190%_)
                                     (let* ((_%ctx134203%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L134190%_)))
                                            (_%ctx-stx134205%_
                                             (##structure-ref
                                              _%ctx134203%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp134573
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self134151%_
                                                  _%ctx-stx134205%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp134573
                                        gx#current-expander-context
                                        _%ctx134203%_)))
                                   _%tl134161134186%_
                                   _%hd134162134184%_)))
                              (let ()
                                (declare (not safe))
                                (_%g134154134168%_ _%g134155134171%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g134154134168%_ _%g134155134171%_))))))
          (declare (not safe))
          (_%g134153134209%_ _%stx134152%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self134083%_ _%stx134084%_)
        (let* ((_%g134086134103%_
                (lambda (_%g134087134100%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134087134100%_))))
               (_%g134085134148%_
                (lambda (_%g134087134106%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134087134106%_))
                      (let ((_%e134092134108%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134087134106%_))))
                        (let ((_%hd134091134111%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134092134108%_)))
                              (_%tl134090134113%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134092134108%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134090134113%_))
                              (let ((_%e134095134116%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134090134113%_))))
                                (let ((_%hd134094134119%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134095134116%_)))
                                      (_%tl134093134121%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134095134116%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134093134121%_))
                                      (let ((_%e134098134124%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134093134121%_))))
                                        (let ((_%hd134097134127%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134098134124%_)))
                                              (_%tl134096134129%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134098134124%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl134096134129%_))
                                              ((lambda (_%L134132%_
                                                        _%L134133%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self134083%_
                                                    _%L134132%_)))
                                               _%hd134097134127%_
                                               _%hd134094134119%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g134086134103%_
                                                 _%g134087134106%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g134086134103%_
                                         _%g134087134106%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g134086134103%_ _%g134087134106%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g134086134103%_ _%g134087134106%_))))))
          (declare (not safe))
          (_%g134085134148%_ _%stx134084%_))))
    (define gxc#apply-define-values%
      (lambda (_%self134015%_ _%stx134016%_)
        (let* ((_%g134018134035%_
                (lambda (_%g134019134032%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134019134032%_))))
               (_%g134017134080%_
                (lambda (_%g134019134038%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134019134038%_))
                      (let ((_%e134024134040%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134019134038%_))))
                        (let ((_%hd134023134043%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134024134040%_)))
                              (_%tl134022134045%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134024134040%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134022134045%_))
                              (let ((_%e134027134048%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134022134045%_))))
                                (let ((_%hd134026134051%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134027134048%_)))
                                      (_%tl134025134053%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134027134048%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134025134053%_))
                                      (let ((_%e134030134056%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134025134053%_))))
                                        (let ((_%hd134029134059%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134030134056%_)))
                                              (_%tl134028134061%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134030134056%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl134028134061%_))
                                              ((lambda (_%L134064%_
                                                        _%L134065%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self134015%_
                                                    _%L134064%_)))
                                               _%hd134029134059%_
                                               _%hd134026134051%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g134018134035%_
                                                 _%g134019134038%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g134018134035%_
                                         _%g134019134038%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g134018134035%_ _%g134019134038%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g134018134035%_ _%g134019134038%_))))))
          (declare (not safe))
          (_%g134017134080%_ _%stx134016%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self133946%_ _%stx133947%_)
        (let* ((_%g133949133966%_
                (lambda (_%g133950133963%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133950133963%_))))
               (_%g133948134012%_
                (lambda (_%g133950133969%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133950133969%_))
                      (let ((_%e133955133971%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133950133969%_))))
                        (let ((_%hd133954133974%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133955133971%_)))
                              (_%tl133953133976%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133955133971%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133953133976%_))
                              (let ((_%e133958133979%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133953133976%_))))
                                (let ((_%hd133957133982%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133958133979%_)))
                                      (_%tl133956133984%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133958133979%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133956133984%_))
                                      (let ((_%e133961133987%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133956133984%_))))
                                        (let ((_%hd133960133990%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133961133987%_)))
                                              (_%tl133959133992%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133961133987%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133959133992%_))
                                              ((lambda (_%L133995%_
                                                        _%L133996%_)
                                                 (let ((__tmp134576
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self133946%_
                                                             _%L133995%_))))
                                                       (__tmp134574
                                                        (let ((__tmp134575
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp134575 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp134576
                                                    gx#current-expander-phi
                                                    __tmp134574)))
                                               _%hd133960133990%_
                                               _%hd133957133982%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g133949133966%_
                                                 _%g133950133969%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g133949133966%_
                                         _%g133950133969%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133949133966%_ _%g133950133969%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133949133966%_ _%g133950133969%_))))))
          (declare (not safe))
          (_%g133948134012%_ _%stx133947%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self133878%_ _%stx133879%_)
        (let* ((_%g133881133898%_
                (lambda (_%g133882133895%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133882133895%_))))
               (_%g133880133943%_
                (lambda (_%g133882133901%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133882133901%_))
                      (let ((_%e133887133903%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133882133901%_))))
                        (let ((_%hd133886133906%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133887133903%_)))
                              (_%tl133885133908%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133887133903%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133885133908%_))
                              (let ((_%e133890133911%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133885133908%_))))
                                (let ((_%hd133889133914%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133890133911%_)))
                                      (_%tl133888133916%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133890133911%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133888133916%_))
                                      (let ((_%e133893133919%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133888133916%_))))
                                        (let ((_%hd133892133922%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133893133919%_)))
                                              (_%tl133891133924%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133893133919%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133891133924%_))
                                              ((lambda (_%L133927%_
                                                        _%L133928%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self133878%_
                                                    _%L133927%_)))
                                               _%hd133892133922%_
                                               _%hd133889133914%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g133881133898%_
                                                 _%g133882133901%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g133881133898%_
                                         _%g133882133901%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133881133898%_ _%g133882133901%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133881133898%_ _%g133882133901%_))))))
          (declare (not safe))
          (_%g133880133943%_ _%stx133879%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self133760%_ _%stx133761%_)
        (let* ((_%g133763133791%_
                (lambda (_%g133764133788%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133764133788%_))))
               (_%g133762133875%_
                (lambda (_%g133764133794%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133764133794%_))
                      (let ((_%e133769133796%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133764133794%_))))
                        (let ((_%hd133768133799%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133769133796%_)))
                              (_%tl133767133801%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133769133796%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl133767133801%_))
                              (let ((_g134577_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl133767133801%_
                                        '0))))
                                (begin
                                  (let ((_g134578_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g134577_)
                                               (##vector-length _g134577_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g134578_ 2)))
                                        (error "Context expects 2 values"
                                               _g134578_)))
                                  (let ((_%target133770133804%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g134577_ 0)))
                                        (_%tl133772133806%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g134577_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl133772133806%_))
                                        (letrec ((_%loop133773133809%_
                                                  (lambda (_%hd133771133812%_
                                                           _%body133777133814%_
                                                           _%hd133778133816%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd133771133812%_))
                                                        (let ((_%e133774133819%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd133771133812%_))))
                  (let ((_%lp-hd133775133822%_
                         (let ()
                           (declare (not safe))
                           (##car _%e133774133819%_)))
                        (_%lp-tl133776133824%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e133774133819%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd133775133822%_))
                        (let ((_%e133783133827%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd133775133822%_))))
                          (let ((_%hd133782133830%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e133783133827%_)))
                                (_%tl133781133832%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e133783133827%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl133781133832%_))
                                (let ((_%e133786133835%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl133781133832%_))))
                                  (let ((_%hd133785133838%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e133786133835%_)))
                                        (_%tl133784133840%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e133786133835%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl133784133840%_))
                                        (let ((__tmp134580
                                               (cons _%hd133785133838%_
                                                     _%body133777133814%_))
                                              (__tmp134579
                                               (cons _%hd133782133830%_
                                                     _%hd133778133816%_)))
                                          (declare (not safe))
                                          (_%loop133773133809%_
                                           _%lp-tl133776133824%_
                                           __tmp134580
                                           __tmp134579))
                                        (let ()
                                          (declare (not safe))
                                          (_%g133763133791%_
                                           _%g133764133794%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g133763133791%_ _%g133764133794%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g133763133791%_ _%g133764133794%_)))))
                (let ((_%body133779133843%_ (reverse _%body133777133814%_))
                      (_%hd133780133845%_ (reverse _%hd133778133816%_)))
                  ((lambda (_%L133848%_ _%L133849%_)
                     (for-each
                      (lambda (_%g133863133865%_)
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _%self133760%_ _%g133863133865%_)))
                      (let ((__tmp134581
                             (lambda (_%g133867133870%_ _%g133868133872%_)
                               (cons _%g133867133870%_ _%g133868133872%_))))
                        (declare (not safe))
                        (__foldr1 __tmp134581 '() _%L133848%_))))
                   _%body133779133843%_
                   _%hd133780133845%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_%loop133773133809%_
                                             _%target133770133804%_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_%g133763133791%_
                                           _%g133764133794%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g133763133791%_ _%g133764133794%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133763133791%_ _%g133764133794%_))))))
          (declare (not safe))
          (_%g133762133875%_ _%stx133761%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self133613%_ _%stx133614%_)
        (let* ((_%g133616133651%_
                (lambda (_%g133617133648%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133617133648%_))))
               (_%g133615133757%_
                (lambda (_%g133617133654%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133617133654%_))
                      (let ((_%e133623133656%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133617133654%_))))
                        (let ((_%hd133622133659%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133623133656%_)))
                              (_%tl133621133661%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133623133656%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133621133661%_))
                              (let ((_%e133626133664%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133621133661%_))))
                                (let ((_%hd133625133667%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133626133664%_)))
                                      (_%tl133624133669%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133626133664%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd133625133667%_))
                                      (let ((_g134582_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd133625133667%_
                                                '0))))
                                        (begin
                                          (let ((_g134583_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g134582_)
                                                       (##vector-length
                                                        _g134582_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g134583_ 2)))
                                                (error "Context expects 2 values"
                                                       _g134583_)))
                                          (let ((_%target133627133672%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g134582_ 0)))
                                                (_%tl133629133674%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g134582_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl133629133674%_))
                                                (letrec ((_%loop133630133677%_
                                                          (lambda (_%hd133628133680%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr133634133682%_
                           _%hd133635133684%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd133628133680%_))
                        (let ((_%e133631133687%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd133628133680%_))))
                          (let ((_%lp-hd133632133690%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e133631133687%_)))
                                (_%lp-tl133633133692%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e133631133687%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd133632133690%_))
                                (let ((_%e133640133695%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd133632133690%_))))
                                  (let ((_%hd133639133698%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e133640133695%_)))
                                        (_%tl133638133700%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e133640133695%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl133638133700%_))
                                        (let ((_%e133643133703%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl133638133700%_))))
                                          (let ((_%hd133642133706%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e133643133703%_)))
                                                (_%tl133641133708%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e133643133703%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl133641133708%_))
                                                (let ((__tmp134585
                                                       (cons _%hd133642133706%_
                                                             _%expr133634133682%_))
                                                      (__tmp134584
                                                       (cons _%hd133639133698%_
                                                             _%hd133635133684%_)))
                                                  (declare (not safe))
                                                  (_%loop133630133677%_
                                                   _%lp-tl133633133692%_
                                                   __tmp134585
                                                   __tmp134584))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g133616133651%_
                                                   _%g133617133654%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g133616133651%_
                                           _%g133617133654%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g133616133651%_ _%g133617133654%_)))))
                        (let ((_%expr133636133711%_
                               (reverse _%expr133634133682%_))
                              (_%hd133637133713%_
                               (reverse _%hd133635133684%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133624133669%_))
                              (let ((_%e133646133716%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133624133669%_))))
                                (let ((_%hd133645133719%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133646133716%_)))
                                      (_%tl133644133721%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133646133716%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl133644133721%_))
                                      ((lambda (_%L133724%_
                                                _%L133725%_
                                                _%L133726%_)
                                         (for-each
                                          (lambda (_%g133745133747%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self133613%_
                                               _%g133745133747%_)))
                                          (let ((__tmp134587
                                                 (lambda (_%g133749133752%_
                                                          _%g133750133754%_)
                                                   (cons _%g133749133752%_
                                                         _%g133750133754%_)))
                                                (__tmp134586
                                                 (cons _%L133724%_ '())))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp134587
                                             __tmp134586
                                             _%L133725%_))))
                                       _%hd133645133719%_
                                       _%expr133636133711%_
                                       _%hd133637133713%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g133616133651%_
                                         _%g133617133654%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133616133651%_ _%g133617133654%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%loop133630133677%_
                                                     _%target133627133672%_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g133616133651%_
                                                   _%g133617133654%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g133616133651%_
                                         _%g133617133654%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133616133651%_ _%g133617133654%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133616133651%_ _%g133617133654%_))))))
          (declare (not safe))
          (_%g133615133757%_ _%stx133614%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self133558%_ _%stx133559%_)
        (let* ((_%g133561133575%_
                (lambda (_%g133562133572%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133562133572%_))))
               (_%g133560133610%_
                (lambda (_%g133562133578%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133562133578%_))
                      (let ((_%e133567133580%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133562133578%_))))
                        (let ((_%hd133566133583%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133567133580%_)))
                              (_%tl133565133585%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133567133580%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133565133585%_))
                              (let ((_%e133570133588%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133565133585%_))))
                                (let ((_%hd133569133591%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133570133588%_)))
                                      (_%tl133568133593%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133570133588%_))))
                                  ((lambda (_%L133596%_ _%L133597%_)
                                     (let ((__tmp134588 (last _%L133596%_)))
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self133558%_
                                        __tmp134588)))
                                   _%tl133568133593%_
                                   _%hd133569133591%_)))
                              (let ()
                                (declare (not safe))
                                (_%g133561133575%_ _%g133562133578%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133561133575%_ _%g133562133578%_))))))
          (declare (not safe))
          (_%g133560133610%_ _%stx133559%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self133490%_ _%stx133491%_)
        (let* ((_%g133493133510%_
                (lambda (_%g133494133507%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133494133507%_))))
               (_%g133492133555%_
                (lambda (_%g133494133513%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133494133513%_))
                      (let ((_%e133499133515%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133494133513%_))))
                        (let ((_%hd133498133518%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133499133515%_)))
                              (_%tl133497133520%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133499133515%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133497133520%_))
                              (let ((_%e133502133523%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133497133520%_))))
                                (let ((_%hd133501133526%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133502133523%_)))
                                      (_%tl133500133528%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133502133523%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133500133528%_))
                                      (let ((_%e133505133531%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133500133528%_))))
                                        (let ((_%hd133504133534%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133505133531%_)))
                                              (_%tl133503133536%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133505133531%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133503133536%_))
                                              ((lambda (_%L133539%_
                                                        _%L133540%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self133490%_
                                                    _%L133539%_)))
                                               _%hd133504133534%_
                                               _%hd133501133526%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g133493133510%_
                                                 _%g133494133513%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g133493133510%_
                                         _%g133494133513%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133493133510%_ _%g133494133513%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133493133510%_ _%g133494133513%_))))))
          (declare (not safe))
          (_%g133492133555%_ _%stx133491%_))))
    (define gxc#apply-operands
      (lambda (_%self133403%_ _%stx133404%_)
        (let* ((_%g133406133425%_
                (lambda (_%g133407133422%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133407133422%_))))
               (_%g133405133487%_
                (lambda (_%g133407133428%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133407133428%_))
                      (let ((_%e133411133430%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133407133428%_))))
                        (let ((_%hd133410133433%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133411133430%_)))
                              (_%tl133409133435%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133411133430%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl133409133435%_))
                              (let ((_g134589_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl133409133435%_
                                        '0))))
                                (begin
                                  (let ((_g134590_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g134589_)
                                               (##vector-length _g134589_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g134590_ 2)))
                                        (error "Context expects 2 values"
                                               _g134590_)))
                                  (let ((_%target133412133438%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g134589_ 0)))
                                        (_%tl133414133440%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g134589_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl133414133440%_))
                                        (letrec ((_%loop133415133443%_
                                                  (lambda (_%hd133413133446%_
                                                           _%rands133419133448%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd133413133446%_))
                                                        (let ((_%e133416133451%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd133413133446%_))))
                  (let ((_%lp-hd133417133454%_
                         (let ()
                           (declare (not safe))
                           (##car _%e133416133451%_)))
                        (_%lp-tl133418133456%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e133416133451%_))))
                    (let ((__tmp134591
                           (cons _%lp-hd133417133454%_ _%rands133419133448%_)))
                      (declare (not safe))
                      (_%loop133415133443%_
                       _%lp-tl133418133456%_
                       __tmp134591))))
                (let ((_%rands133420133459%_ (reverse _%rands133419133448%_)))
                  ((lambda (_%L133462%_)
                     (for-each
                      (lambda (_%g133475133477%_)
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _%self133403%_ _%g133475133477%_)))
                      (let ((__tmp134592
                             (lambda (_%g133479133482%_ _%g133480133484%_)
                               (cons _%g133479133482%_ _%g133480133484%_))))
                        (declare (not safe))
                        (__foldr1 __tmp134592 '() _%L133462%_))))
                   _%rands133420133459%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_%loop133415133443%_
                                             _%target133412133438%_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_%g133406133425%_
                                           _%g133407133428%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g133406133425%_ _%g133407133428%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133406133425%_ _%g133407133428%_))))))
          (declare (not safe))
          (_%g133405133487%_ _%stx133404%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx133400%_ _%src-stx133401%_)
        (let ((__tmp134593
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx133401%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx133400%_ __tmp134593))))
    (define gxc#xform-begin%
      (lambda (_%self133355%_ _%stx133356%_)
        (let* ((_%g133358133368%_
                (lambda (_%g133359133365%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133359133365%_))))
               (_%g133357133397%_
                (lambda (_%g133359133371%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133359133371%_))
                      (let ((_%e133363133373%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133359133371%_))))
                        (let ((_%hd133362133376%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133363133373%_)))
                              (_%tl133361133378%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133363133373%_))))
                          ((lambda (_%L133381%_)
                             (let* ((_%forms133395%_
                                     (map (lambda (_%g133390133392%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self133355%_
                                               _%g133390133392%_)))
                                          _%L133381%_))
                                    (__tmp134594
                                     (cons '%#begin _%forms133395%_)))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp134594
                                _%stx133356%_)))
                           _%tl133361133378%_)))
                      (let ()
                        (declare (not safe))
                        (_%g133358133368%_ _%g133359133371%_))))))
          (declare (not safe))
          (_%g133357133397%_ _%stx133356%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self133309%_ _%stx133310%_)
        (let* ((_%g133312133322%_
                (lambda (_%g133313133319%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133313133319%_))))
               (_%g133311133352%_
                (lambda (_%g133313133325%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133313133325%_))
                      (let ((_%e133317133327%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133313133325%_))))
                        (let ((_%hd133316133330%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133317133327%_)))
                              (_%tl133315133332%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133317133327%_))))
                          ((lambda (_%L133335%_)
                             (let ((__tmp134597
                                    (lambda ()
                                      (let* ((_%forms133350%_
                                              (map (lambda (_%g133345133347%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self133309%_
                                                        _%g133345133347%_)))
                                                   _%L133335%_))
                                             (__tmp134598
                                              (cons '%#begin-syntax
                                                    _%forms133350%_)))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp134598
                                         _%stx133310%_))))
                                   (__tmp134595
                                    (let ((__tmp134596
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp134596 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp134597
                                gx#current-expander-phi
                                __tmp134595)))
                           _%tl133315133332%_)))
                      (let ()
                        (declare (not safe))
                        (_%g133312133322%_ _%g133313133325%_))))))
          (declare (not safe))
          (_%g133311133352%_ _%stx133310%_))))
    (define gxc#xform-module%
      (lambda (_%self133246%_ _%stx133247%_)
        (let* ((_%g133249133263%_
                (lambda (_%g133250133260%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133250133260%_))))
               (_%g133248133306%_
                (lambda (_%g133250133266%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133250133266%_))
                      (let ((_%e133255133268%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133250133266%_))))
                        (let ((_%hd133254133271%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133255133268%_)))
                              (_%tl133253133273%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133255133268%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133253133273%_))
                              (let ((_%e133258133276%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133253133273%_))))
                                (let ((_%hd133257133279%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133258133276%_)))
                                      (_%tl133256133281%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133258133276%_))))
                                  ((lambda (_%L133284%_ _%L133285%_)
                                     (let* ((_%ctx133298%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L133285%_)))
                                            (_%code133300%_
                                             (##structure-ref
                                              _%ctx133298%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code133303%_
                                             (let ((__tmp134599
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _%self133246%_
                                                         _%code133300%_)))))
                                               (declare (not safe))
                                               (__call-with-parameters
                                                __tmp134599
                                                gx#current-expander-context
                                                _%ctx133298%_))))
                                       (##structure-set!
                                        _%ctx133298%_
                                        _%code133303%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp134600
                                              (cons '%#module
                                                    (cons _%L133285%_
                                                          (cons _%code133303%_
                                                                '())))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp134600
                                          _%stx133247%_))))
                                   _%tl133256133281%_
                                   _%hd133257133279%_)))
                              (let ()
                                (declare (not safe))
                                (_%g133249133263%_ _%g133250133266%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133249133263%_ _%g133250133266%_))))))
          (declare (not safe))
          (_%g133248133306%_ _%stx133247%_))))
    (define gxc#xform-define-values%
      (lambda (_%self133176%_ _%stx133177%_)
        (let* ((_%g133179133196%_
                (lambda (_%g133180133193%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133180133193%_))))
               (_%g133178133243%_
                (lambda (_%g133180133199%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133180133199%_))
                      (let ((_%e133185133201%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133180133199%_))))
                        (let ((_%hd133184133204%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133185133201%_)))
                              (_%tl133183133206%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133185133201%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133183133206%_))
                              (let ((_%e133188133209%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133183133206%_))))
                                (let ((_%hd133187133212%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133188133209%_)))
                                      (_%tl133186133214%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133188133209%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133186133214%_))
                                      (let ((_%e133191133217%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133186133214%_))))
                                        (let ((_%hd133190133220%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133191133217%_)))
                                              (_%tl133189133222%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133191133217%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133189133222%_))
                                              ((lambda (_%L133225%_
                                                        _%L133226%_)
                                                 (let* ((_%expr133241%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self133176%_
                                                            _%L133225%_)))
                                                        (__tmp134601
                                                         (cons '%#define-values
                                                               (cons _%L133226%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%expr133241%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp134601
                                                    _%stx133177%_)))
                                               _%hd133190133220%_
                                               _%hd133187133212%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g133179133196%_
                                                 _%g133180133199%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g133179133196%_
                                         _%g133180133199%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133179133196%_ _%g133180133199%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133179133196%_ _%g133180133199%_))))))
          (declare (not safe))
          (_%g133178133243%_ _%stx133177%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self133105%_ _%stx133106%_)
        (let* ((_%g133108133125%_
                (lambda (_%g133109133122%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133109133122%_))))
               (_%g133107133173%_
                (lambda (_%g133109133128%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133109133128%_))
                      (let ((_%e133114133130%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133109133128%_))))
                        (let ((_%hd133113133133%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133114133130%_)))
                              (_%tl133112133135%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133114133130%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133112133135%_))
                              (let ((_%e133117133138%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133112133135%_))))
                                (let ((_%hd133116133141%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133117133138%_)))
                                      (_%tl133115133143%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133117133138%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133115133143%_))
                                      (let ((_%e133120133146%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133115133143%_))))
                                        (let ((_%hd133119133149%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133120133146%_)))
                                              (_%tl133118133151%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133120133146%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133118133151%_))
                                              ((lambda (_%L133154%_
                                                        _%L133155%_)
                                                 (let ((__tmp134604
                                                        (lambda ()
                                                          (let* ((_%expr133171%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__1 _%self133105%_ _%L133154%_)))
                         (__tmp134605
                          (cons '%#define-syntax
                                (cons _%L133155%_ (cons _%expr133171%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp134605 _%stx133106%_))))
               (__tmp134602
                (let ((__tmp134603
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp134603 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp134604
                                                    gx#current-expander-phi
                                                    __tmp134602)))
                                               _%hd133119133149%_
                                               _%hd133116133141%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g133108133125%_
                                                 _%g133109133128%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g133108133125%_
                                         _%g133109133128%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133108133125%_ _%g133109133128%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133108133125%_ _%g133109133128%_))))))
          (declare (not safe))
          (_%g133107133173%_ _%stx133106%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self133035%_ _%stx133036%_)
        (let* ((_%g133038133055%_
                (lambda (_%g133039133052%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133039133052%_))))
               (_%g133037133102%_
                (lambda (_%g133039133058%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133039133058%_))
                      (let ((_%e133044133060%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133039133058%_))))
                        (let ((_%hd133043133063%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133044133060%_)))
                              (_%tl133042133065%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133044133060%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133042133065%_))
                              (let ((_%e133047133068%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133042133065%_))))
                                (let ((_%hd133046133071%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133047133068%_)))
                                      (_%tl133045133073%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133047133068%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133045133073%_))
                                      (let ((_%e133050133076%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133045133073%_))))
                                        (let ((_%hd133049133079%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133050133076%_)))
                                              (_%tl133048133081%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133050133076%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133048133081%_))
                                              ((lambda (_%L133084%_
                                                        _%L133085%_)
                                                 (let* ((_%expr133100%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self133035%_
                                                            _%L133084%_)))
                                                        (__tmp134606
                                                         (cons '%#begin-annotation
                                                               (cons _%L133085%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%expr133100%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp134606
                                                    _%stx133036%_)))
                                               _%hd133049133079%_
                                               _%hd133046133071%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g133038133055%_
                                                 _%g133039133058%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g133038133055%_
                                         _%g133039133058%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133038133055%_ _%g133039133058%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133038133055%_ _%g133039133058%_))))))
          (declare (not safe))
          (_%g133037133102%_ _%stx133036%_))))
    (define gxc#xform-lambda%
      (lambda (_%self132973%_ _%stx132974%_)
        (let* ((_%g132976132990%_
                (lambda (_%g132977132987%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132977132987%_))))
               (_%g132975133032%_
                (lambda (_%g132977132993%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132977132993%_))
                      (let ((_%e132982132995%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132977132993%_))))
                        (let ((_%hd132981132998%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132982132995%_)))
                              (_%tl132980133000%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132982132995%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132980133000%_))
                              (let ((_%e132985133003%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132980133000%_))))
                                (let ((_%hd132984133006%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132985133003%_)))
                                      (_%tl132983133008%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132985133003%_))))
                                  ((lambda (_%L133011%_ _%L133012%_)
                                     (let ((__tmp134609
                                            (lambda ()
                                              (let* ((_%body133030%_
                                                      (map (lambda (_%g133025133027%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__1 _%self132973%_ _%g133025133027%_)))
                   _%L133011%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp134610
                                                      (cons '%#lambda
                                                            (cons _%L133012%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%body133030%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-source
                                                 __tmp134610
                                                 _%stx132974%_))))
                                           (__tmp134607
                                            (let ((__tmp134608
                                                   (cons _%L133012%_ '())))
                                              (declare (not safe))
                                              (gxc#xform-let-locals
                                               __tmp134608))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp134609
                                        gxc#current-compile-local-env
                                        __tmp134607)))
                                   _%tl132983133008%_
                                   _%hd132984133006%_)))
                              (let ()
                                (declare (not safe))
                                (_%g132976132990%_ _%g132977132993%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g132976132990%_ _%g132977132993%_))))))
          (declare (not safe))
          (_%g132975133032%_ _%stx132974%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self132881%_ _%stx132882%_)
        (letrec ((_%clause-e132884%_
                  (lambda (_%clause132925%_)
                    (let* ((_%g132927132938%_
                            (lambda (_%g132928132935%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g132928132935%_))))
                           (_%g132926132970%_
                            (lambda (_%g132928132941%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g132928132941%_))
                                  (let ((_%e132933132943%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g132928132941%_))))
                                    (let ((_%hd132932132946%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e132933132943%_)))
                                          (_%tl132931132948%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e132933132943%_))))
                                      ((lambda (_%L132951%_ _%L132952%_)
                                         (let ((__tmp134613
                                                (lambda ()
                                                  (let ((_%body132968%_
                                                         (map (lambda (_%g132963132965%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _%self132881%_ _%g132963132965%_)))
                      _%L132951%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%L132952%_
                                                          _%body132968%_))))
                                               (__tmp134611
                                                (let ((__tmp134612
                                                       (cons _%L132952%_ '())))
                                                  (declare (not safe))
                                                  (gxc#xform-let-locals
                                                   __tmp134612))))
                                           (declare (not safe))
                                           (__call-with-parameters
                                            __tmp134613
                                            gxc#current-compile-local-env
                                            __tmp134611)))
                                       _%tl132931132948%_
                                       _%hd132932132946%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g132927132938%_ _%g132928132941%_))))))
                      (declare (not safe))
                      (_%g132926132970%_ _%clause132925%_)))))
          (let* ((_%g132886132896%_
                  (lambda (_%g132887132893%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g132887132893%_))))
                 (_%g132885132922%_
                  (lambda (_%g132887132899%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g132887132899%_))
                        (let ((_%e132891132901%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g132887132899%_))))
                          (let ((_%hd132890132904%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e132891132901%_)))
                                (_%tl132889132906%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e132891132901%_))))
                            ((lambda (_%L132909%_)
                               (let* ((_%clauses132920%_
                                       (map _%clause-e132884%_ _%L132909%_))
                                      (__tmp134614
                                       (cons '%#case-lambda
                                             _%clauses132920%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp134614
                                  _%stx132882%_)))
                             _%tl132889132906%_)))
                        (let ()
                          (declare (not safe))
                          (_%g132886132896%_ _%g132887132899%_))))))
            (declare (not safe))
            (_%g132885132922%_ _%stx132882%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self132635%_ _%stx132636%_)
        (let* ((_%g132638132671%_
                (lambda (_%g132639132668%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132639132668%_))))
               (_%g132637132878%_
                (lambda (_%g132639132674%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132639132674%_))
                      (let ((_%e132646132676%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132639132674%_))))
                        (let ((_%hd132645132679%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132646132676%_)))
                              (_%tl132644132681%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132646132676%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132644132681%_))
                              (let ((_%e132649132684%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132644132681%_))))
                                (let ((_%hd132648132687%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132649132684%_)))
                                      (_%tl132647132689%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132649132684%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd132648132687%_))
                                      (let ((_g134615_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd132648132687%_
                                                '0))))
                                        (begin
                                          (let ((_g134616_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g134615_)
                                                       (##vector-length
                                                        _g134615_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g134616_ 2)))
                                                (error "Context expects 2 values"
                                                       _g134616_)))
                                          (let ((_%target132650132692%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g134615_ 0)))
                                                (_%tl132652132694%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g134615_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl132652132694%_))
                                                (letrec ((_%loop132653132697%_
                                                          (lambda (_%hd132651132700%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr132657132702%_
                           _%hd132658132704%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd132651132700%_))
                        (let ((_%e132654132707%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd132651132700%_))))
                          (let ((_%lp-hd132655132710%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e132654132707%_)))
                                (_%lp-tl132656132712%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e132654132707%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd132655132710%_))
                                (let ((_%e132663132715%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd132655132710%_))))
                                  (let ((_%hd132662132718%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e132663132715%_)))
                                        (_%tl132661132720%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e132663132715%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl132661132720%_))
                                        (let ((_%e132666132723%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl132661132720%_))))
                                          (let ((_%hd132665132726%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e132666132723%_)))
                                                (_%tl132664132728%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e132666132723%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl132664132728%_))
                                                (let ((__tmp134618
                                                       (cons _%hd132665132726%_
                                                             _%expr132657132702%_))
                                                      (__tmp134617
                                                       (cons _%hd132662132718%_
                                                             _%hd132658132704%_)))
                                                  (declare (not safe))
                                                  (_%loop132653132697%_
                                                   _%lp-tl132656132712%_
                                                   __tmp134618
                                                   __tmp134617))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g132638132671%_
                                                   _%g132639132674%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g132638132671%_
                                           _%g132639132674%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g132638132671%_ _%g132639132674%_)))))
                        (let ((_%expr132659132731%_
                               (reverse _%expr132657132702%_))
                              (_%hd132660132733%_
                               (reverse _%hd132658132704%_)))
                          ((lambda (_%L132736%_
                                    _%L132737%_
                                    _%L132738%_
                                    _%L132739%_)
                             (let* ((_%g132758132774%_
                                     (lambda (_%g132759132771%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g132759132771%_))))
                                    (_%g132757132864%_
                                     (lambda (_%g132759132777%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g132759132777%_))
                                           (let ((_g134619_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g132759132777%_
                                                     '0))))
                                             (begin
                                               (let ((_g134620_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g134619_)
                                                            (##vector-length
                                                             _g134619_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g134620_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g134620_)))
                                               (let ((_%target132761132779%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g134619_
                                                         0)))
                                                     (_%tl132763132781%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g134619_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl132763132781%_))
                                                     (letrec ((_%loop132764132784%_
                                                               (lambda (_%hd132762132787%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr132768132789%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd132762132787%_))
                             (let ((_%e132765132792%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd132762132787%_))))
                               (let ((_%lp-hd132766132795%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e132765132792%_)))
                                     (_%lp-tl132767132797%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e132765132792%_))))
                                 (let ((__tmp134621
                                        (cons _%lp-hd132766132795%_
                                              _%expr132768132789%_)))
                                   (declare (not safe))
                                   (_%loop132764132784%_
                                    _%lp-tl132767132797%_
                                    __tmp134621))))
                             (let ((_%expr132769132800%_
                                    (reverse _%expr132768132789%_)))
                               ((lambda (_%L132803%_)
                                  (let ((__tmp134625
                                         (lambda ()
                                           (let* ((_%g132817132824%_
                                                   (lambda (_%g132818132821%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g132818132821%_))))
                                                  (_%g132816132850%_
                                                   (lambda (_%g132818132827%_)
                                                     ((lambda (_%L132829%_)
                                                        (let ((__tmp134626
                                                               (cons _%L132739%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%L132803%_
                                        _%L132738%_))
                                     (let ((__tmp134627
                                            (lambda (_%g132839132843%_
                                                     _%g132840132845%_
                                                     _%g132841132847%_)
                                              (cons (cons _%g132840132845%_
                                                          (cons _%g132839132843%_
                                                                '()))
                                                    _%g132841132847%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp134627
                                        '()
                                        _%L132803%_
                                        _%L132738%_)))
                                   _%L132829%_))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp134626 _%stx132636%_)))
              _%g132818132827%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp134628
                                                   (map (lambda (_%g132852132854%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self132635%_
                                                             _%g132852132854%_)))
                                                        _%L132736%_)))
                                             (declare (not safe))
                                             (_%g132816132850%_ __tmp134628))))
                                        (__tmp134622
                                         (let ((__tmp134623
                                                (let ((__tmp134624
                                                       (lambda (_%g132856132859%_
                                                                _%g132857132861%_)
                                                         (cons _%g132856132859%_
                                                               _%g132857132861%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp134624
                                                   '()
                                                   _%L132738%_))))
                                           (declare (not safe))
                                           (gxc#xform-let-locals
                                            __tmp134623))))
                                    (declare (not safe))
                                    (__call-with-parameters
                                     __tmp134625
                                     gxc#current-compile-local-env
                                     __tmp134622)))
                                _%expr132769132800%_))))))
               (let ()
                 (declare (not safe))
                 (_%loop132764132784%_ _%target132761132779%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g132758132774%_
                                                        _%g132759132777%_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g132758132774%_
                                              _%g132759132777%_)))))
                                    (__tmp134629
                                     (map (lambda (_%g132866132868%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self132635%_
                                               _%g132866132868%_)))
                                          (let ((__tmp134630
                                                 (lambda (_%g132870132873%_
                                                          _%g132871132875%_)
                                                   (cons _%g132870132873%_
                                                         _%g132871132875%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp134630
                                             '()
                                             _%L132737%_)))))
                               (declare (not safe))
                               (_%g132757132864%_ __tmp134629)))
                           _%tl132647132689%_
                           _%expr132659132731%_
                           _%hd132660132733%_
                           _%hd132645132679%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%loop132653132697%_
                                                     _%target132650132692%_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g132638132671%_
                                                   _%g132639132674%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g132638132671%_
                                         _%g132639132674%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g132638132671%_ _%g132639132674%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g132638132671%_ _%g132639132674%_))))))
          (declare (not safe))
          (_%g132637132878%_ _%stx132636%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self132389%_ _%stx132390%_)
        (let* ((_%g132392132425%_
                (lambda (_%g132393132422%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132393132422%_))))
               (_%g132391132632%_
                (lambda (_%g132393132428%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132393132428%_))
                      (let ((_%e132400132430%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132393132428%_))))
                        (let ((_%hd132399132433%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132400132430%_)))
                              (_%tl132398132435%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132400132430%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132398132435%_))
                              (let ((_%e132403132438%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132398132435%_))))
                                (let ((_%hd132402132441%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132403132438%_)))
                                      (_%tl132401132443%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132403132438%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd132402132441%_))
                                      (let ((_g134631_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd132402132441%_
                                                '0))))
                                        (begin
                                          (let ((_g134632_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g134631_)
                                                       (##vector-length
                                                        _g134631_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g134632_ 2)))
                                                (error "Context expects 2 values"
                                                       _g134632_)))
                                          (let ((_%target132404132446%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g134631_ 0)))
                                                (_%tl132406132448%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g134631_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl132406132448%_))
                                                (letrec ((_%loop132407132451%_
                                                          (lambda (_%hd132405132454%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr132411132456%_
                           _%hd132412132458%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd132405132454%_))
                        (let ((_%e132408132461%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd132405132454%_))))
                          (let ((_%lp-hd132409132464%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e132408132461%_)))
                                (_%lp-tl132410132466%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e132408132461%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd132409132464%_))
                                (let ((_%e132417132469%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd132409132464%_))))
                                  (let ((_%hd132416132472%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e132417132469%_)))
                                        (_%tl132415132474%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e132417132469%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl132415132474%_))
                                        (let ((_%e132420132477%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl132415132474%_))))
                                          (let ((_%hd132419132480%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e132420132477%_)))
                                                (_%tl132418132482%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e132420132477%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl132418132482%_))
                                                (let ((__tmp134634
                                                       (cons _%hd132419132480%_
                                                             _%expr132411132456%_))
                                                      (__tmp134633
                                                       (cons _%hd132416132472%_
                                                             _%hd132412132458%_)))
                                                  (declare (not safe))
                                                  (_%loop132407132451%_
                                                   _%lp-tl132410132466%_
                                                   __tmp134634
                                                   __tmp134633))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g132392132425%_
                                                   _%g132393132428%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g132392132425%_
                                           _%g132393132428%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g132392132425%_ _%g132393132428%_)))))
                        (let ((_%expr132413132485%_
                               (reverse _%expr132411132456%_))
                              (_%hd132414132487%_
                               (reverse _%hd132412132458%_)))
                          ((lambda (_%L132490%_
                                    _%L132491%_
                                    _%L132492%_
                                    _%L132493%_)
                             (let ((__tmp134638
                                    (lambda ()
                                      (let* ((_%g132513132529%_
                                              (lambda (_%g132514132526%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g132514132526%_))))
                                             (_%g132512132611%_
                                              (lambda (_%g132514132532%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g132514132532%_))
                                                    (let ((_g134639_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g132514132532%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g134640_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g134639_)
                             (##vector-length _g134639_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g134640_ 2)))
                      (error "Context expects 2 values" _g134640_)))
                (let ((_%target132516132534%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g134639_ 0)))
                      (_%tl132518132536%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g134639_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl132518132536%_))
                      (letrec ((_%loop132519132539%_
                                (lambda (_%hd132517132542%_
                                         _%expr132523132544%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd132517132542%_))
                                      (let ((_%e132520132547%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd132517132542%_))))
                                        (let ((_%lp-hd132521132550%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e132520132547%_)))
                                              (_%lp-tl132522132552%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e132520132547%_))))
                                          (let ((__tmp134641
                                                 (cons _%lp-hd132521132550%_
                                                       _%expr132523132544%_)))
                                            (declare (not safe))
                                            (_%loop132519132539%_
                                             _%lp-tl132522132552%_
                                             __tmp134641))))
                                      (let ((_%expr132524132555%_
                                             (reverse _%expr132523132544%_)))
                                        ((lambda (_%L132558%_)
                                           (let ()
                                             (let* ((_%g132572132579%_
                                                     (lambda (_%g132573132576%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g132573132576%_))))
                                                    (_%g132571132604%_
                                                     (lambda (_%g132573132582%_)
                                                       ((lambda (_%L132584%_)
                                                          (let ((__tmp134642
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L132493%_
                               (cons (begin
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-check-splice-targets
                                          _%L132558%_
                                          _%L132492%_))
                                       (let ((__tmp134643
                                              (lambda (_%g132593132597%_
                                                       _%g132594132599%_
                                                       _%g132595132601%_)
                                                (cons (cons _%g132594132599%_
                                                            (cons _%g132593132597%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%g132595132601%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr2
                                          __tmp134643
                                          '()
                                          _%L132558%_
                                          _%L132492%_)))
                                     _%L132584%_))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp134642 _%stx132390%_)))
                _%g132573132582%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp134644
                                                     (map (lambda (_%g132606132608%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self132389%_
                                                               _%g132606132608%_)))
                                                          _%L132490%_)))
                                               (declare (not safe))
                                               (_%g132571132604%_
                                                __tmp134644))))
                                         _%expr132524132555%_))))))
                        (let ()
                          (declare (not safe))
                          (_%loop132519132539%_ _%target132516132534%_ '())))
                      (let ()
                        (declare (not safe))
                        (_%g132513132529%_ _%g132514132532%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g132513132529%_
                                                       _%g132514132532%_)))))
                                             (__tmp134645
                                              (map (lambda (_%g132613132615%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self132389%_
                                                        _%g132613132615%_)))
                                                   (let ((__tmp134646
                                                          (lambda (_%g132617132620%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g132618132622%_)
                    (cons _%g132617132620%_ _%g132618132622%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      __tmp134646
                                                      '()
                                                      _%L132491%_)))))
                                        (declare (not safe))
                                        (_%g132512132611%_ __tmp134645))))
                                   (__tmp134635
                                    (let ((__tmp134636
                                           (let ((__tmp134637
                                                  (lambda (_%g132624132627%_
                                                           _%g132625132629%_)
                                                    (cons _%g132624132627%_
                                                          _%g132625132629%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp134637
                                              '()
                                              _%L132492%_))))
                                      (declare (not safe))
                                      (gxc#xform-let-locals __tmp134636))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp134638
                                gxc#current-compile-local-env
                                __tmp134635)))
                           _%tl132401132443%_
                           _%expr132413132485%_
                           _%hd132414132487%_
                           _%hd132399132433%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%loop132407132451%_
                                                     _%target132404132446%_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g132392132425%_
                                                   _%g132393132428%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g132392132425%_
                                         _%g132393132428%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g132392132425%_ _%g132393132428%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g132392132425%_ _%g132393132428%_))))))
          (declare (not safe))
          (_%g132391132632%_ _%stx132390%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings132293%_)
        (let _%loop132295%_ ((_%rest132297%_ _%bindings132293%_)
                             (_%locals132298%_
                              (let ()
                                (declare (not safe))
                                (gxc#current-compile-local-env))))
          (let* ((_%rest132299132307%_ _%rest132297%_)
                 (_%else132301132315%_ (lambda () _%locals132298%_))
                 (_%K132303132377%_
                  (lambda (_%rest132318%_ _%bind132319%_)
                    (let _%loop-bind132321%_ ((_%bind132323%_ _%bind132319%_)
                                              (_%locals132324%_
                                               _%locals132298%_))
                      (let* ((_%bind132325132336%_ _%bind132323%_)
                             (_%E132329132340%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%bind132325132336%_
                                         '([id . bind-rest])
                                         '((? identifier? id))
                                         '(_)))
                                '#!void)))
                        (let ((_%K132332132365%_
                               (lambda (_%bind-rest132362%_ _%id132363%_)
                                 (let ((__tmp134647
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#identifier-symbol
                                                 _%id132363%_))
                                              _%locals132324%_)))
                                   (declare (not safe))
                                   (_%loop-bind132321%_
                                    _%bind-rest132362%_
                                    __tmp134647))))
                              (_%K132331132354%_
                               (lambda (_%id132352%_)
                                 (let ((__tmp134648
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#identifier-symbol
                                                 _%id132352%_))
                                              _%locals132324%_)))
                                   (declare (not safe))
                                   (_%loop132295%_
                                    _%rest132318%_
                                    __tmp134648))))
                              (_%K132330132345%_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (_%loop132295%_
                                    _%rest132318%_
                                    _%locals132324%_)))))
                          (let ((_%try-match132327132359%_
                                 (lambda ()
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%bind132325132336%_))
                                       (let ((_%id132357%_
                                              _%bind132325132336%_))
                                         (declare (not safe))
                                         (_%K132331132354%_ _%id132357%_))
                                       (let ()
                                         (declare (not safe))
                                         (_%K132330132345%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%bind132325132336%_))
                                (let ((_%tl132334132370%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%bind132325132336%_)))
                                      (_%hd132333132368%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%bind132325132336%_))))
                                  (let ((_%id132373%_ _%hd132333132368%_)
                                        (_%bind-rest132375%_
                                         _%tl132334132370%_))
                                    (let ()
                                      (declare (not safe))
                                      (_%K132332132365%_
                                       _%bind-rest132375%_
                                       _%id132373%_))))
                                (let ()
                                  (declare (not safe))
                                  (_%try-match132327132359%_))))))))))
            (if (let () (declare (not safe)) (##pair? _%rest132299132307%_))
                (let ((_%hd132304132380%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest132299132307%_)))
                      (_%tl132305132382%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest132299132307%_))))
                  (let* ((_%bind132385%_ _%hd132304132380%_)
                         (_%rest132387%_ _%tl132305132382%_))
                    (declare (not safe))
                    (_%K132303132377%_ _%rest132387%_ _%bind132385%_)))
                (let () (declare (not safe)) (_%else132301132315%_)))))))
    (define gxc#xform-operands
      (lambda (_%self132245%_ _%stx132246%_)
        (let* ((_%g132248132259%_
                (lambda (_%g132249132256%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132249132256%_))))
               (_%g132247132290%_
                (lambda (_%g132249132262%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132249132262%_))
                      (let ((_%e132254132264%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132249132262%_))))
                        (let ((_%hd132253132267%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132254132264%_)))
                              (_%tl132252132269%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132254132264%_))))
                          ((lambda (_%L132272%_ _%L132273%_)
                             (let* ((_%rands132288%_
                                     (map (lambda (_%g132283132285%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self132245%_
                                               _%g132283132285%_)))
                                          _%L132272%_))
                                    (__tmp134649
                                     (cons _%L132273%_ _%rands132288%_)))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp134649
                                _%stx132246%_)))
                           _%tl132252132269%_
                           _%hd132253132267%_)))
                      (let ()
                        (declare (not safe))
                        (_%g132248132259%_ _%g132249132262%_))))))
          (declare (not safe))
          (_%g132247132290%_ _%stx132246%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self132175%_ _%stx132176%_)
        (let* ((_%g132178132195%_
                (lambda (_%g132179132192%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132179132192%_))))
               (_%g132177132242%_
                (lambda (_%g132179132198%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132179132198%_))
                      (let ((_%e132184132200%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132179132198%_))))
                        (let ((_%hd132183132203%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132184132200%_)))
                              (_%tl132182132205%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132184132200%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132182132205%_))
                              (let ((_%e132187132208%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132182132205%_))))
                                (let ((_%hd132186132211%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132187132208%_)))
                                      (_%tl132185132213%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132187132208%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl132185132213%_))
                                      (let ((_%e132190132216%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl132185132213%_))))
                                        (let ((_%hd132189132219%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e132190132216%_)))
                                              (_%tl132188132221%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e132190132216%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl132188132221%_))
                                              ((lambda (_%L132224%_
                                                        _%L132225%_)
                                                 (let* ((_%expr132240%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self132175%_
                                                            _%L132224%_)))
                                                        (__tmp134650
                                                         (cons '%#set!
                                                               (cons _%L132225%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%expr132240%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp134650
                                                    _%stx132176%_)))
                                               _%hd132189132219%_
                                               _%hd132186132211%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g132178132195%_
                                                 _%g132179132198%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g132178132195%_
                                         _%g132179132198%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g132178132195%_ _%g132179132198%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g132178132195%_ _%g132179132198%_))))))
          (declare (not safe))
          (_%g132177132242%_ _%stx132176%_))))))
