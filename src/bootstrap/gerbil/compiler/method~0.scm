(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1712246556)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx134381%_)
        (let* ((_%self134383%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e134385%_
                (let ((__tmp134563
                       (let ()
                         (declare (not safe))
                         (gxc#stx-car-e _%stx134381%_))))
                  (declare (not safe))
                  (method-ref _%self134383%_ __tmp134563))))
          (if _%$e134385%_
              ((lambda (_%method134388%_)
                 (declare (not safe))
                 (_%method134388%_ _%self134383%_ _%stx134381%_))
               _%$e134385%_)
              (let ((__tmp134565
                     (let ()
                       (declare (not safe))
                       (gxc#stx-car-e _%stx134381%_)))
                    (__tmp134564
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx134381%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self134383%_
                       __tmp134565
                       __tmp134564))))))
    (define gxc#compile-e__1
      (lambda (_%self134392%_ _%stx134393%_)
        (let ((_%$e134395%_
               (let ((__tmp134566
                      (let ()
                        (declare (not safe))
                        (gxc#stx-car-e _%stx134393%_))))
                 (declare (not safe))
                 (method-ref _%self134392%_ __tmp134566))))
          (if _%$e134395%_
              ((lambda (_%method134398%_)
                 (declare (not safe))
                 (_%method134398%_ _%self134392%_ _%stx134393%_))
               _%$e134395%_)
              (let ((__tmp134568
                     (let ()
                       (declare (not safe))
                       (gxc#stx-car-e _%stx134393%_)))
                    (__tmp134567
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx134393%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self134392%_
                       __tmp134568
                       __tmp134567))))))
    (define gxc#compile-e
      (lambda _g134570_
        (let ((_g134569_ (let () (declare (not safe)) (##length _g134570_))))
          (cond ((let () (declare (not safe)) (##fx= _g134569_ 1))
                 (apply (lambda (_%stx134381%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _%stx134381%_)))
                        _g134570_))
                ((let () (declare (not safe)) (##fx= _g134569_ 2))
                 (apply (lambda (_%self134392%_ _%stx134393%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__1 _%self134392%_ _%stx134393%_)))
                        _g134570_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g134570_))))))
    (define gxc#stx-car-e
      (lambda (_%stx134379%_)
        (let ((__tmp134571
               (car (let () (declare (not safe)) (gx#stx-e _%stx134379%_)))))
          (declare (not safe))
          (gx#stx-e __tmp134571))))
    (define gxc#void-method (lambda (_%self134376%_ _%stx134377%_) '#!void))
    (define gxc#false-method (lambda (_%self134373%_ _%stx134374%_) '#f))
    (define gxc#true-method (lambda (_%self134370%_ _%stx134371%_) '#t))
    (define gxc#identity-method
      (lambda (_%self134367%_ _%stx134368%_) _%stx134368%_))
    (define gxc#::void-expression::t
      (let ((__tmp134572 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp134572
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args134364%_
        (apply make-instance gxc#::void-expression::t _%$args134364%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp134573
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
        (__make-promise __tmp134573)))
    (define gxc#::void-special-form::t
      (let ((__tmp134574 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp134574
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args134360%_
        (apply make-instance gxc#::void-special-form::t _%$args134360%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp134575
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
        (__make-promise __tmp134575)))
    (define gxc#::void::t
      (let ((__tmp134576
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp134576 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args134356%_
        (apply make-instance gxc#::void::t _%$args134356%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp134577
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp134577)))
    (define gxc#::false-expression::t
      (let ((__tmp134578 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp134578
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args134352%_
        (apply make-instance gxc#::false-expression::t _%$args134352%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp134579
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
        (__make-promise __tmp134579)))
    (define gxc#::false-special-form::t
      (let ((__tmp134580 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp134580
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args134348%_
        (apply make-instance gxc#::false-special-form::t _%$args134348%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp134581
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
        (__make-promise __tmp134581)))
    (define gxc#::false::t
      (let ((__tmp134582
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp134582 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args134344%_
        (apply make-instance gxc#::false::t _%$args134344%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp134583
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp134583)))
    (define gxc#::identity-expression::t
      (let ((__tmp134584 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp134584
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args134340%_
        (apply make-instance gxc#::identity-expression::t _%$args134340%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp134585
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
        (__make-promise __tmp134585)))
    (define gxc#::identity-special-form::t
      (let ((__tmp134586 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp134586
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args134336%_
        (apply make-instance gxc#::identity-special-form::t _%$args134336%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp134587
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
        (__make-promise __tmp134587)))
    (define gxc#::identity::t
      (let ((__tmp134588
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp134588
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args134332%_
        (apply make-instance gxc#::identity::t _%$args134332%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp134589
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp134589)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp134590 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp134590
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args134328%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args134328%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp134591
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
        (__make-promise __tmp134591)))
    (define gxc#::basic-xform::t
      (let ((__tmp134592
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp134592
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args134324%_
        (apply make-instance gxc#::basic-xform::t _%$args134324%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp134593
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
        (__make-promise __tmp134593)))
    (define gxc#apply-begin%
      (lambda (_%self134280%_ _%stx134281%_)
        (let* ((_%g134283134293%_
                (lambda (_%g134284134290%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134284134290%_))))
               (_%g134282134320%_
                (lambda (_%g134284134296%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134284134296%_))
                      (let ((_%e134288134298%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134284134296%_))))
                        (let ((_%hd134287134301%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134288134298%_)))
                              (_%tl134286134303%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134288134298%_))))
                          ((lambda (_%L134306%_)
                             (for-each
                              (lambda (_%g134315134317%_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1
                                   _%self134280%_
                                   _%g134315134317%_)))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L134306%_))))
                           _%tl134286134303%_)))
                      (let ()
                        (declare (not safe))
                        (_%g134283134293%_ _%g134284134296%_))))))
          (declare (not safe))
          (_%g134282134320%_ _%stx134281%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self134241%_ _%stx134242%_)
        (let* ((_%g134244134254%_
                (lambda (_%g134245134251%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134245134251%_))))
               (_%g134243134277%_
                (lambda (_%g134245134257%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134245134257%_))
                      (let ((_%e134249134259%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134245134257%_))))
                        (let ((_%hd134248134262%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134249134259%_)))
                              (_%tl134247134264%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134249134259%_))))
                          ((lambda (_%L134267%_)
                             (let ((__tmp134594 (last _%L134267%_)))
                               (declare (not safe))
                               (gxc#compile-e__1 _%self134241%_ __tmp134594)))
                           _%tl134247134264%_)))
                      (let ()
                        (declare (not safe))
                        (_%g134244134254%_ _%g134245134257%_))))))
          (declare (not safe))
          (_%g134243134277%_ _%stx134242%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self134237%_ _%stx134238%_)
        (let ((__tmp134597
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#apply-begin% _%self134237%_ _%stx134238%_))))
              (__tmp134595
               (let ((__tmp134596
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp134596 '1))))
          (declare (not safe))
          (__call-with-parameters
           __tmp134597
           gx#current-expander-phi
           __tmp134595))))
    (define gxc#apply-module%
      (lambda (_%self134176%_ _%stx134177%_)
        (let* ((_%g134179134193%_
                (lambda (_%g134180134190%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134180134190%_))))
               (_%g134178134234%_
                (lambda (_%g134180134196%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134180134196%_))
                      (let ((_%e134185134198%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134180134196%_))))
                        (let ((_%hd134184134201%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134185134198%_)))
                              (_%tl134183134203%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134185134198%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134183134203%_))
                              (let ((_%e134188134206%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134183134203%_))))
                                (let ((_%hd134187134209%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134188134206%_)))
                                      (_%tl134186134211%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134188134206%_))))
                                  ((lambda (_%L134214%_ _%L134215%_)
                                     (let* ((_%ctx134228%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L134215%_)))
                                            (_%ctx-stx134230%_
                                             (##structure-ref
                                              _%ctx134228%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp134598
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self134176%_
                                                  _%ctx-stx134230%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp134598
                                        gx#current-expander-context
                                        _%ctx134228%_)))
                                   _%tl134186134211%_
                                   _%hd134187134209%_)))
                              (let ()
                                (declare (not safe))
                                (_%g134179134193%_ _%g134180134196%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g134179134193%_ _%g134180134196%_))))))
          (declare (not safe))
          (_%g134178134234%_ _%stx134177%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self134108%_ _%stx134109%_)
        (let* ((_%g134111134128%_
                (lambda (_%g134112134125%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134112134125%_))))
               (_%g134110134173%_
                (lambda (_%g134112134131%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134112134131%_))
                      (let ((_%e134117134133%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134112134131%_))))
                        (let ((_%hd134116134136%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134117134133%_)))
                              (_%tl134115134138%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134117134133%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134115134138%_))
                              (let ((_%e134120134141%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134115134138%_))))
                                (let ((_%hd134119134144%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134120134141%_)))
                                      (_%tl134118134146%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134120134141%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134118134146%_))
                                      (let ((_%e134123134149%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134118134146%_))))
                                        (let ((_%hd134122134152%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134123134149%_)))
                                              (_%tl134121134154%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134123134149%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl134121134154%_))
                                              ((lambda (_%L134157%_
                                                        _%L134158%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self134108%_
                                                    _%L134157%_)))
                                               _%hd134122134152%_
                                               _%hd134119134144%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g134111134128%_
                                                 _%g134112134131%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g134111134128%_
                                         _%g134112134131%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g134111134128%_ _%g134112134131%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g134111134128%_ _%g134112134131%_))))))
          (declare (not safe))
          (_%g134110134173%_ _%stx134109%_))))
    (define gxc#apply-define-values%
      (lambda (_%self134040%_ _%stx134041%_)
        (let* ((_%g134043134060%_
                (lambda (_%g134044134057%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134044134057%_))))
               (_%g134042134105%_
                (lambda (_%g134044134063%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134044134063%_))
                      (let ((_%e134049134065%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134044134063%_))))
                        (let ((_%hd134048134068%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134049134065%_)))
                              (_%tl134047134070%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134049134065%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134047134070%_))
                              (let ((_%e134052134073%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134047134070%_))))
                                (let ((_%hd134051134076%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134052134073%_)))
                                      (_%tl134050134078%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134052134073%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134050134078%_))
                                      (let ((_%e134055134081%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134050134078%_))))
                                        (let ((_%hd134054134084%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134055134081%_)))
                                              (_%tl134053134086%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134055134081%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl134053134086%_))
                                              ((lambda (_%L134089%_
                                                        _%L134090%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self134040%_
                                                    _%L134089%_)))
                                               _%hd134054134084%_
                                               _%hd134051134076%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g134043134060%_
                                                 _%g134044134063%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g134043134060%_
                                         _%g134044134063%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g134043134060%_ _%g134044134063%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g134043134060%_ _%g134044134063%_))))))
          (declare (not safe))
          (_%g134042134105%_ _%stx134041%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self133971%_ _%stx133972%_)
        (let* ((_%g133974133991%_
                (lambda (_%g133975133988%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133975133988%_))))
               (_%g133973134037%_
                (lambda (_%g133975133994%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133975133994%_))
                      (let ((_%e133980133996%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133975133994%_))))
                        (let ((_%hd133979133999%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133980133996%_)))
                              (_%tl133978134001%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133980133996%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133978134001%_))
                              (let ((_%e133983134004%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133978134001%_))))
                                (let ((_%hd133982134007%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133983134004%_)))
                                      (_%tl133981134009%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133983134004%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133981134009%_))
                                      (let ((_%e133986134012%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133981134009%_))))
                                        (let ((_%hd133985134015%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133986134012%_)))
                                              (_%tl133984134017%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133986134012%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133984134017%_))
                                              ((lambda (_%L134020%_
                                                        _%L134021%_)
                                                 (let ((__tmp134601
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self133971%_
                                                             _%L134020%_))))
                                                       (__tmp134599
                                                        (let ((__tmp134600
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp134600 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp134601
                                                    gx#current-expander-phi
                                                    __tmp134599)))
                                               _%hd133985134015%_
                                               _%hd133982134007%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g133974133991%_
                                                 _%g133975133994%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g133974133991%_
                                         _%g133975133994%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133974133991%_ _%g133975133994%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133974133991%_ _%g133975133994%_))))))
          (declare (not safe))
          (_%g133973134037%_ _%stx133972%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self133903%_ _%stx133904%_)
        (let* ((_%g133906133923%_
                (lambda (_%g133907133920%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133907133920%_))))
               (_%g133905133968%_
                (lambda (_%g133907133926%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133907133926%_))
                      (let ((_%e133912133928%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133907133926%_))))
                        (let ((_%hd133911133931%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133912133928%_)))
                              (_%tl133910133933%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133912133928%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133910133933%_))
                              (let ((_%e133915133936%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133910133933%_))))
                                (let ((_%hd133914133939%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133915133936%_)))
                                      (_%tl133913133941%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133915133936%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133913133941%_))
                                      (let ((_%e133918133944%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133913133941%_))))
                                        (let ((_%hd133917133947%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133918133944%_)))
                                              (_%tl133916133949%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133918133944%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133916133949%_))
                                              ((lambda (_%L133952%_
                                                        _%L133953%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self133903%_
                                                    _%L133952%_)))
                                               _%hd133917133947%_
                                               _%hd133914133939%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g133906133923%_
                                                 _%g133907133926%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g133906133923%_
                                         _%g133907133926%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133906133923%_ _%g133907133926%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133906133923%_ _%g133907133926%_))))))
          (declare (not safe))
          (_%g133905133968%_ _%stx133904%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self133785%_ _%stx133786%_)
        (let* ((_%g133788133816%_
                (lambda (_%g133789133813%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133789133813%_))))
               (_%g133787133900%_
                (lambda (_%g133789133819%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133789133819%_))
                      (let ((_%e133794133821%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133789133819%_))))
                        (let ((_%hd133793133824%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133794133821%_)))
                              (_%tl133792133826%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133794133821%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl133792133826%_))
                              (let ((_g134602_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl133792133826%_
                                        '0))))
                                (begin
                                  (let ((_g134603_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g134602_)
                                               (##vector-length _g134602_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g134603_ 2)))
                                        (error "Context expects 2 values"
                                               _g134603_)))
                                  (let ((_%target133795133829%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g134602_ 0)))
                                        (_%tl133797133831%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g134602_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl133797133831%_))
                                        (letrec ((_%loop133798133834%_
                                                  (lambda (_%hd133796133837%_
                                                           _%body133802133839%_
                                                           _%hd133803133841%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd133796133837%_))
                                                        (let ((_%e133799133844%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd133796133837%_))))
                  (let ((_%lp-hd133800133847%_
                         (let ()
                           (declare (not safe))
                           (##car _%e133799133844%_)))
                        (_%lp-tl133801133849%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e133799133844%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd133800133847%_))
                        (let ((_%e133808133852%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd133800133847%_))))
                          (let ((_%hd133807133855%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e133808133852%_)))
                                (_%tl133806133857%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e133808133852%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl133806133857%_))
                                (let ((_%e133811133860%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl133806133857%_))))
                                  (let ((_%hd133810133863%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e133811133860%_)))
                                        (_%tl133809133865%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e133811133860%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl133809133865%_))
                                        (let ((__tmp134605
                                               (cons _%hd133810133863%_
                                                     _%body133802133839%_))
                                              (__tmp134604
                                               (cons _%hd133807133855%_
                                                     _%hd133803133841%_)))
                                          (declare (not safe))
                                          (_%loop133798133834%_
                                           _%lp-tl133801133849%_
                                           __tmp134605
                                           __tmp134604))
                                        (let ()
                                          (declare (not safe))
                                          (_%g133788133816%_
                                           _%g133789133819%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g133788133816%_ _%g133789133819%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g133788133816%_ _%g133789133819%_)))))
                (let ((_%body133804133868%_ (reverse _%body133802133839%_))
                      (_%hd133805133870%_ (reverse _%hd133803133841%_)))
                  ((lambda (_%L133873%_ _%L133874%_)
                     (for-each
                      (lambda (_%g133888133890%_)
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _%self133785%_ _%g133888133890%_)))
                      (let ((__tmp134606
                             (lambda (_%g133892133895%_ _%g133893133897%_)
                               (cons _%g133892133895%_ _%g133893133897%_))))
                        (declare (not safe))
                        (__foldr1 __tmp134606 '() _%L133873%_))))
                   _%body133804133868%_
                   _%hd133805133870%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_%loop133798133834%_
                                             _%target133795133829%_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_%g133788133816%_
                                           _%g133789133819%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g133788133816%_ _%g133789133819%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133788133816%_ _%g133789133819%_))))))
          (declare (not safe))
          (_%g133787133900%_ _%stx133786%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self133638%_ _%stx133639%_)
        (let* ((_%g133641133676%_
                (lambda (_%g133642133673%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133642133673%_))))
               (_%g133640133782%_
                (lambda (_%g133642133679%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133642133679%_))
                      (let ((_%e133648133681%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133642133679%_))))
                        (let ((_%hd133647133684%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133648133681%_)))
                              (_%tl133646133686%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133648133681%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133646133686%_))
                              (let ((_%e133651133689%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133646133686%_))))
                                (let ((_%hd133650133692%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133651133689%_)))
                                      (_%tl133649133694%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133651133689%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd133650133692%_))
                                      (let ((_g134607_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd133650133692%_
                                                '0))))
                                        (begin
                                          (let ((_g134608_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g134607_)
                                                       (##vector-length
                                                        _g134607_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g134608_ 2)))
                                                (error "Context expects 2 values"
                                                       _g134608_)))
                                          (let ((_%target133652133697%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g134607_ 0)))
                                                (_%tl133654133699%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g134607_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl133654133699%_))
                                                (letrec ((_%loop133655133702%_
                                                          (lambda (_%hd133653133705%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr133659133707%_
                           _%hd133660133709%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd133653133705%_))
                        (let ((_%e133656133712%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd133653133705%_))))
                          (let ((_%lp-hd133657133715%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e133656133712%_)))
                                (_%lp-tl133658133717%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e133656133712%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd133657133715%_))
                                (let ((_%e133665133720%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd133657133715%_))))
                                  (let ((_%hd133664133723%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e133665133720%_)))
                                        (_%tl133663133725%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e133665133720%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl133663133725%_))
                                        (let ((_%e133668133728%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl133663133725%_))))
                                          (let ((_%hd133667133731%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e133668133728%_)))
                                                (_%tl133666133733%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e133668133728%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl133666133733%_))
                                                (let ((__tmp134610
                                                       (cons _%hd133667133731%_
                                                             _%expr133659133707%_))
                                                      (__tmp134609
                                                       (cons _%hd133664133723%_
                                                             _%hd133660133709%_)))
                                                  (declare (not safe))
                                                  (_%loop133655133702%_
                                                   _%lp-tl133658133717%_
                                                   __tmp134610
                                                   __tmp134609))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g133641133676%_
                                                   _%g133642133679%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g133641133676%_
                                           _%g133642133679%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g133641133676%_ _%g133642133679%_)))))
                        (let ((_%expr133661133736%_
                               (reverse _%expr133659133707%_))
                              (_%hd133662133738%_
                               (reverse _%hd133660133709%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133649133694%_))
                              (let ((_%e133671133741%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133649133694%_))))
                                (let ((_%hd133670133744%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133671133741%_)))
                                      (_%tl133669133746%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133671133741%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl133669133746%_))
                                      ((lambda (_%L133749%_
                                                _%L133750%_
                                                _%L133751%_)
                                         (for-each
                                          (lambda (_%g133770133772%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self133638%_
                                               _%g133770133772%_)))
                                          (let ((__tmp134612
                                                 (lambda (_%g133774133777%_
                                                          _%g133775133779%_)
                                                   (cons _%g133774133777%_
                                                         _%g133775133779%_)))
                                                (__tmp134611
                                                 (cons _%L133749%_ '())))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp134612
                                             __tmp134611
                                             _%L133750%_))))
                                       _%hd133670133744%_
                                       _%expr133661133736%_
                                       _%hd133662133738%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g133641133676%_
                                         _%g133642133679%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133641133676%_ _%g133642133679%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%loop133655133702%_
                                                     _%target133652133697%_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g133641133676%_
                                                   _%g133642133679%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g133641133676%_
                                         _%g133642133679%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133641133676%_ _%g133642133679%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133641133676%_ _%g133642133679%_))))))
          (declare (not safe))
          (_%g133640133782%_ _%stx133639%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self133583%_ _%stx133584%_)
        (let* ((_%g133586133600%_
                (lambda (_%g133587133597%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133587133597%_))))
               (_%g133585133635%_
                (lambda (_%g133587133603%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133587133603%_))
                      (let ((_%e133592133605%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133587133603%_))))
                        (let ((_%hd133591133608%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133592133605%_)))
                              (_%tl133590133610%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133592133605%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133590133610%_))
                              (let ((_%e133595133613%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133590133610%_))))
                                (let ((_%hd133594133616%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133595133613%_)))
                                      (_%tl133593133618%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133595133613%_))))
                                  ((lambda (_%L133621%_ _%L133622%_)
                                     (let ((__tmp134613 (last _%L133621%_)))
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self133583%_
                                        __tmp134613)))
                                   _%tl133593133618%_
                                   _%hd133594133616%_)))
                              (let ()
                                (declare (not safe))
                                (_%g133586133600%_ _%g133587133603%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133586133600%_ _%g133587133603%_))))))
          (declare (not safe))
          (_%g133585133635%_ _%stx133584%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self133515%_ _%stx133516%_)
        (let* ((_%g133518133535%_
                (lambda (_%g133519133532%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133519133532%_))))
               (_%g133517133580%_
                (lambda (_%g133519133538%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133519133538%_))
                      (let ((_%e133524133540%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133519133538%_))))
                        (let ((_%hd133523133543%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133524133540%_)))
                              (_%tl133522133545%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133524133540%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133522133545%_))
                              (let ((_%e133527133548%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133522133545%_))))
                                (let ((_%hd133526133551%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133527133548%_)))
                                      (_%tl133525133553%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133527133548%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133525133553%_))
                                      (let ((_%e133530133556%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133525133553%_))))
                                        (let ((_%hd133529133559%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133530133556%_)))
                                              (_%tl133528133561%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133530133556%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133528133561%_))
                                              ((lambda (_%L133564%_
                                                        _%L133565%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self133515%_
                                                    _%L133564%_)))
                                               _%hd133529133559%_
                                               _%hd133526133551%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g133518133535%_
                                                 _%g133519133538%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g133518133535%_
                                         _%g133519133538%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133518133535%_ _%g133519133538%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133518133535%_ _%g133519133538%_))))))
          (declare (not safe))
          (_%g133517133580%_ _%stx133516%_))))
    (define gxc#apply-operands
      (lambda (_%self133428%_ _%stx133429%_)
        (let* ((_%g133431133450%_
                (lambda (_%g133432133447%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133432133447%_))))
               (_%g133430133512%_
                (lambda (_%g133432133453%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133432133453%_))
                      (let ((_%e133436133455%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133432133453%_))))
                        (let ((_%hd133435133458%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133436133455%_)))
                              (_%tl133434133460%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133436133455%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl133434133460%_))
                              (let ((_g134614_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl133434133460%_
                                        '0))))
                                (begin
                                  (let ((_g134615_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g134614_)
                                               (##vector-length _g134614_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g134615_ 2)))
                                        (error "Context expects 2 values"
                                               _g134615_)))
                                  (let ((_%target133437133463%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g134614_ 0)))
                                        (_%tl133439133465%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g134614_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl133439133465%_))
                                        (letrec ((_%loop133440133468%_
                                                  (lambda (_%hd133438133471%_
                                                           _%rands133444133473%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd133438133471%_))
                                                        (let ((_%e133441133476%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd133438133471%_))))
                  (let ((_%lp-hd133442133479%_
                         (let ()
                           (declare (not safe))
                           (##car _%e133441133476%_)))
                        (_%lp-tl133443133481%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e133441133476%_))))
                    (let ((__tmp134616
                           (cons _%lp-hd133442133479%_ _%rands133444133473%_)))
                      (declare (not safe))
                      (_%loop133440133468%_
                       _%lp-tl133443133481%_
                       __tmp134616))))
                (let ((_%rands133445133484%_ (reverse _%rands133444133473%_)))
                  ((lambda (_%L133487%_)
                     (for-each
                      (lambda (_%g133500133502%_)
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _%self133428%_ _%g133500133502%_)))
                      (let ((__tmp134617
                             (lambda (_%g133504133507%_ _%g133505133509%_)
                               (cons _%g133504133507%_ _%g133505133509%_))))
                        (declare (not safe))
                        (__foldr1 __tmp134617 '() _%L133487%_))))
                   _%rands133445133484%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_%loop133440133468%_
                                             _%target133437133463%_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_%g133431133450%_
                                           _%g133432133453%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g133431133450%_ _%g133432133453%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133431133450%_ _%g133432133453%_))))))
          (declare (not safe))
          (_%g133430133512%_ _%stx133429%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx133425%_ _%src-stx133426%_)
        (let ((__tmp134618
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx133426%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx133425%_ __tmp134618))))
    (define gxc#xform-begin%
      (lambda (_%self133380%_ _%stx133381%_)
        (let* ((_%g133383133393%_
                (lambda (_%g133384133390%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133384133390%_))))
               (_%g133382133422%_
                (lambda (_%g133384133396%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133384133396%_))
                      (let ((_%e133388133398%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133384133396%_))))
                        (let ((_%hd133387133401%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133388133398%_)))
                              (_%tl133386133403%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133388133398%_))))
                          ((lambda (_%L133406%_)
                             (let* ((_%forms133420%_
                                     (map (lambda (_%g133415133417%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self133380%_
                                               _%g133415133417%_)))
                                          _%L133406%_))
                                    (__tmp134619
                                     (cons '%#begin _%forms133420%_)))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp134619
                                _%stx133381%_)))
                           _%tl133386133403%_)))
                      (let ()
                        (declare (not safe))
                        (_%g133383133393%_ _%g133384133396%_))))))
          (declare (not safe))
          (_%g133382133422%_ _%stx133381%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self133334%_ _%stx133335%_)
        (let* ((_%g133337133347%_
                (lambda (_%g133338133344%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133338133344%_))))
               (_%g133336133377%_
                (lambda (_%g133338133350%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133338133350%_))
                      (let ((_%e133342133352%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133338133350%_))))
                        (let ((_%hd133341133355%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133342133352%_)))
                              (_%tl133340133357%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133342133352%_))))
                          ((lambda (_%L133360%_)
                             (let ((__tmp134622
                                    (lambda ()
                                      (let* ((_%forms133375%_
                                              (map (lambda (_%g133370133372%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self133334%_
                                                        _%g133370133372%_)))
                                                   _%L133360%_))
                                             (__tmp134623
                                              (cons '%#begin-syntax
                                                    _%forms133375%_)))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp134623
                                         _%stx133335%_))))
                                   (__tmp134620
                                    (let ((__tmp134621
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp134621 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp134622
                                gx#current-expander-phi
                                __tmp134620)))
                           _%tl133340133357%_)))
                      (let ()
                        (declare (not safe))
                        (_%g133337133347%_ _%g133338133350%_))))))
          (declare (not safe))
          (_%g133336133377%_ _%stx133335%_))))
    (define gxc#xform-module%
      (lambda (_%self133271%_ _%stx133272%_)
        (let* ((_%g133274133288%_
                (lambda (_%g133275133285%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133275133285%_))))
               (_%g133273133331%_
                (lambda (_%g133275133291%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133275133291%_))
                      (let ((_%e133280133293%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133275133291%_))))
                        (let ((_%hd133279133296%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133280133293%_)))
                              (_%tl133278133298%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133280133293%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133278133298%_))
                              (let ((_%e133283133301%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133278133298%_))))
                                (let ((_%hd133282133304%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133283133301%_)))
                                      (_%tl133281133306%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133283133301%_))))
                                  ((lambda (_%L133309%_ _%L133310%_)
                                     (let* ((_%ctx133323%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L133310%_)))
                                            (_%code133325%_
                                             (##structure-ref
                                              _%ctx133323%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code133328%_
                                             (let ((__tmp134624
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _%self133271%_
                                                         _%code133325%_)))))
                                               (declare (not safe))
                                               (__call-with-parameters
                                                __tmp134624
                                                gx#current-expander-context
                                                _%ctx133323%_))))
                                       (##structure-set!
                                        _%ctx133323%_
                                        _%code133328%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp134625
                                              (cons '%#module
                                                    (cons _%L133310%_
                                                          (cons _%code133328%_
                                                                '())))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp134625
                                          _%stx133272%_))))
                                   _%tl133281133306%_
                                   _%hd133282133304%_)))
                              (let ()
                                (declare (not safe))
                                (_%g133274133288%_ _%g133275133291%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133274133288%_ _%g133275133291%_))))))
          (declare (not safe))
          (_%g133273133331%_ _%stx133272%_))))
    (define gxc#xform-define-values%
      (lambda (_%self133201%_ _%stx133202%_)
        (let* ((_%g133204133221%_
                (lambda (_%g133205133218%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133205133218%_))))
               (_%g133203133268%_
                (lambda (_%g133205133224%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133205133224%_))
                      (let ((_%e133210133226%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133205133224%_))))
                        (let ((_%hd133209133229%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133210133226%_)))
                              (_%tl133208133231%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133210133226%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133208133231%_))
                              (let ((_%e133213133234%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133208133231%_))))
                                (let ((_%hd133212133237%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133213133234%_)))
                                      (_%tl133211133239%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133213133234%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133211133239%_))
                                      (let ((_%e133216133242%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133211133239%_))))
                                        (let ((_%hd133215133245%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133216133242%_)))
                                              (_%tl133214133247%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133216133242%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133214133247%_))
                                              ((lambda (_%L133250%_
                                                        _%L133251%_)
                                                 (let* ((_%expr133266%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self133201%_
                                                            _%L133250%_)))
                                                        (__tmp134626
                                                         (cons '%#define-values
                                                               (cons _%L133251%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%expr133266%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp134626
                                                    _%stx133202%_)))
                                               _%hd133215133245%_
                                               _%hd133212133237%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g133204133221%_
                                                 _%g133205133224%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g133204133221%_
                                         _%g133205133224%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133204133221%_ _%g133205133224%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133204133221%_ _%g133205133224%_))))))
          (declare (not safe))
          (_%g133203133268%_ _%stx133202%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self133130%_ _%stx133131%_)
        (let* ((_%g133133133150%_
                (lambda (_%g133134133147%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133134133147%_))))
               (_%g133132133198%_
                (lambda (_%g133134133153%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133134133153%_))
                      (let ((_%e133139133155%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133134133153%_))))
                        (let ((_%hd133138133158%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133139133155%_)))
                              (_%tl133137133160%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133139133155%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133137133160%_))
                              (let ((_%e133142133163%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133137133160%_))))
                                (let ((_%hd133141133166%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133142133163%_)))
                                      (_%tl133140133168%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133142133163%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133140133168%_))
                                      (let ((_%e133145133171%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133140133168%_))))
                                        (let ((_%hd133144133174%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133145133171%_)))
                                              (_%tl133143133176%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133145133171%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133143133176%_))
                                              ((lambda (_%L133179%_
                                                        _%L133180%_)
                                                 (let ((__tmp134629
                                                        (lambda ()
                                                          (let* ((_%expr133196%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__1 _%self133130%_ _%L133179%_)))
                         (__tmp134630
                          (cons '%#define-syntax
                                (cons _%L133180%_ (cons _%expr133196%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp134630 _%stx133131%_))))
               (__tmp134627
                (let ((__tmp134628
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp134628 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp134629
                                                    gx#current-expander-phi
                                                    __tmp134627)))
                                               _%hd133144133174%_
                                               _%hd133141133166%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g133133133150%_
                                                 _%g133134133153%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g133133133150%_
                                         _%g133134133153%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133133133150%_ _%g133134133153%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133133133150%_ _%g133134133153%_))))))
          (declare (not safe))
          (_%g133132133198%_ _%stx133131%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self133060%_ _%stx133061%_)
        (let* ((_%g133063133080%_
                (lambda (_%g133064133077%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133064133077%_))))
               (_%g133062133127%_
                (lambda (_%g133064133083%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133064133083%_))
                      (let ((_%e133069133085%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133064133083%_))))
                        (let ((_%hd133068133088%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133069133085%_)))
                              (_%tl133067133090%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133069133085%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133067133090%_))
                              (let ((_%e133072133093%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133067133090%_))))
                                (let ((_%hd133071133096%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133072133093%_)))
                                      (_%tl133070133098%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133072133093%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl133070133098%_))
                                      (let ((_%e133075133101%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl133070133098%_))))
                                        (let ((_%hd133074133104%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133075133101%_)))
                                              (_%tl133073133106%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133075133101%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl133073133106%_))
                                              ((lambda (_%L133109%_
                                                        _%L133110%_)
                                                 (let* ((_%expr133125%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self133060%_
                                                            _%L133109%_)))
                                                        (__tmp134631
                                                         (cons '%#begin-annotation
                                                               (cons _%L133110%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%expr133125%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp134631
                                                    _%stx133061%_)))
                                               _%hd133074133104%_
                                               _%hd133071133096%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g133063133080%_
                                                 _%g133064133083%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g133063133080%_
                                         _%g133064133083%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g133063133080%_ _%g133064133083%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133063133080%_ _%g133064133083%_))))))
          (declare (not safe))
          (_%g133062133127%_ _%stx133061%_))))
    (define gxc#xform-lambda%
      (lambda (_%self132998%_ _%stx132999%_)
        (let* ((_%g133001133015%_
                (lambda (_%g133002133012%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g133002133012%_))))
               (_%g133000133057%_
                (lambda (_%g133002133018%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g133002133018%_))
                      (let ((_%e133007133020%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g133002133018%_))))
                        (let ((_%hd133006133023%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133007133020%_)))
                              (_%tl133005133025%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133007133020%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl133005133025%_))
                              (let ((_%e133010133028%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl133005133025%_))))
                                (let ((_%hd133009133031%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e133010133028%_)))
                                      (_%tl133008133033%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e133010133028%_))))
                                  ((lambda (_%L133036%_ _%L133037%_)
                                     (let ((__tmp134634
                                            (lambda ()
                                              (let* ((_%body133055%_
                                                      (map (lambda (_%g133050133052%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__1 _%self132998%_ _%g133050133052%_)))
                   _%L133036%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp134635
                                                      (cons '%#lambda
                                                            (cons _%L133037%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%body133055%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-source
                                                 __tmp134635
                                                 _%stx132999%_))))
                                           (__tmp134632
                                            (let ((__tmp134633
                                                   (cons _%L133037%_ '())))
                                              (declare (not safe))
                                              (gxc#xform-let-locals
                                               __tmp134633))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp134634
                                        gxc#current-compile-local-env
                                        __tmp134632)))
                                   _%tl133008133033%_
                                   _%hd133009133031%_)))
                              (let ()
                                (declare (not safe))
                                (_%g133001133015%_ _%g133002133018%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g133001133015%_ _%g133002133018%_))))))
          (declare (not safe))
          (_%g133000133057%_ _%stx132999%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self132906%_ _%stx132907%_)
        (letrec ((_%clause-e132909%_
                  (lambda (_%clause132950%_)
                    (let* ((_%g132952132963%_
                            (lambda (_%g132953132960%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g132953132960%_))))
                           (_%g132951132995%_
                            (lambda (_%g132953132966%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g132953132966%_))
                                  (let ((_%e132958132968%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g132953132966%_))))
                                    (let ((_%hd132957132971%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e132958132968%_)))
                                          (_%tl132956132973%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e132958132968%_))))
                                      ((lambda (_%L132976%_ _%L132977%_)
                                         (let ((__tmp134638
                                                (lambda ()
                                                  (let ((_%body132993%_
                                                         (map (lambda (_%g132988132990%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _%self132906%_ _%g132988132990%_)))
                      _%L132976%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%L132977%_
                                                          _%body132993%_))))
                                               (__tmp134636
                                                (let ((__tmp134637
                                                       (cons _%L132977%_ '())))
                                                  (declare (not safe))
                                                  (gxc#xform-let-locals
                                                   __tmp134637))))
                                           (declare (not safe))
                                           (__call-with-parameters
                                            __tmp134638
                                            gxc#current-compile-local-env
                                            __tmp134636)))
                                       _%tl132956132973%_
                                       _%hd132957132971%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g132952132963%_ _%g132953132966%_))))))
                      (declare (not safe))
                      (_%g132951132995%_ _%clause132950%_)))))
          (let* ((_%g132911132921%_
                  (lambda (_%g132912132918%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g132912132918%_))))
                 (_%g132910132947%_
                  (lambda (_%g132912132924%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g132912132924%_))
                        (let ((_%e132916132926%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g132912132924%_))))
                          (let ((_%hd132915132929%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e132916132926%_)))
                                (_%tl132914132931%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e132916132926%_))))
                            ((lambda (_%L132934%_)
                               (let* ((_%clauses132945%_
                                       (map _%clause-e132909%_ _%L132934%_))
                                      (__tmp134639
                                       (cons '%#case-lambda
                                             _%clauses132945%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp134639
                                  _%stx132907%_)))
                             _%tl132914132931%_)))
                        (let ()
                          (declare (not safe))
                          (_%g132911132921%_ _%g132912132924%_))))))
            (declare (not safe))
            (_%g132910132947%_ _%stx132907%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self132660%_ _%stx132661%_)
        (let* ((_%g132663132696%_
                (lambda (_%g132664132693%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132664132693%_))))
               (_%g132662132903%_
                (lambda (_%g132664132699%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132664132699%_))
                      (let ((_%e132671132701%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132664132699%_))))
                        (let ((_%hd132670132704%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132671132701%_)))
                              (_%tl132669132706%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132671132701%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132669132706%_))
                              (let ((_%e132674132709%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132669132706%_))))
                                (let ((_%hd132673132712%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132674132709%_)))
                                      (_%tl132672132714%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132674132709%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd132673132712%_))
                                      (let ((_g134640_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd132673132712%_
                                                '0))))
                                        (begin
                                          (let ((_g134641_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g134640_)
                                                       (##vector-length
                                                        _g134640_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g134641_ 2)))
                                                (error "Context expects 2 values"
                                                       _g134641_)))
                                          (let ((_%target132675132717%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g134640_ 0)))
                                                (_%tl132677132719%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g134640_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl132677132719%_))
                                                (letrec ((_%loop132678132722%_
                                                          (lambda (_%hd132676132725%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr132682132727%_
                           _%hd132683132729%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd132676132725%_))
                        (let ((_%e132679132732%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd132676132725%_))))
                          (let ((_%lp-hd132680132735%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e132679132732%_)))
                                (_%lp-tl132681132737%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e132679132732%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd132680132735%_))
                                (let ((_%e132688132740%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd132680132735%_))))
                                  (let ((_%hd132687132743%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e132688132740%_)))
                                        (_%tl132686132745%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e132688132740%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl132686132745%_))
                                        (let ((_%e132691132748%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl132686132745%_))))
                                          (let ((_%hd132690132751%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e132691132748%_)))
                                                (_%tl132689132753%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e132691132748%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl132689132753%_))
                                                (let ((__tmp134643
                                                       (cons _%hd132690132751%_
                                                             _%expr132682132727%_))
                                                      (__tmp134642
                                                       (cons _%hd132687132743%_
                                                             _%hd132683132729%_)))
                                                  (declare (not safe))
                                                  (_%loop132678132722%_
                                                   _%lp-tl132681132737%_
                                                   __tmp134643
                                                   __tmp134642))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g132663132696%_
                                                   _%g132664132699%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g132663132696%_
                                           _%g132664132699%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g132663132696%_ _%g132664132699%_)))))
                        (let ((_%expr132684132756%_
                               (reverse _%expr132682132727%_))
                              (_%hd132685132758%_
                               (reverse _%hd132683132729%_)))
                          ((lambda (_%L132761%_
                                    _%L132762%_
                                    _%L132763%_
                                    _%L132764%_)
                             (let* ((_%g132783132799%_
                                     (lambda (_%g132784132796%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g132784132796%_))))
                                    (_%g132782132889%_
                                     (lambda (_%g132784132802%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g132784132802%_))
                                           (let ((_g134644_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g132784132802%_
                                                     '0))))
                                             (begin
                                               (let ((_g134645_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g134644_)
                                                            (##vector-length
                                                             _g134644_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g134645_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g134645_)))
                                               (let ((_%target132786132804%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g134644_
                                                         0)))
                                                     (_%tl132788132806%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g134644_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl132788132806%_))
                                                     (letrec ((_%loop132789132809%_
                                                               (lambda (_%hd132787132812%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr132793132814%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd132787132812%_))
                             (let ((_%e132790132817%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd132787132812%_))))
                               (let ((_%lp-hd132791132820%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e132790132817%_)))
                                     (_%lp-tl132792132822%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e132790132817%_))))
                                 (let ((__tmp134646
                                        (cons _%lp-hd132791132820%_
                                              _%expr132793132814%_)))
                                   (declare (not safe))
                                   (_%loop132789132809%_
                                    _%lp-tl132792132822%_
                                    __tmp134646))))
                             (let ((_%expr132794132825%_
                                    (reverse _%expr132793132814%_)))
                               ((lambda (_%L132828%_)
                                  (let ((__tmp134650
                                         (lambda ()
                                           (let* ((_%g132842132849%_
                                                   (lambda (_%g132843132846%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g132843132846%_))))
                                                  (_%g132841132875%_
                                                   (lambda (_%g132843132852%_)
                                                     ((lambda (_%L132854%_)
                                                        (let ((__tmp134651
                                                               (cons _%L132764%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%L132828%_
                                        _%L132763%_))
                                     (let ((__tmp134652
                                            (lambda (_%g132864132868%_
                                                     _%g132865132870%_
                                                     _%g132866132872%_)
                                              (cons (cons _%g132865132870%_
                                                          (cons _%g132864132868%_
                                                                '()))
                                                    _%g132866132872%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp134652
                                        '()
                                        _%L132828%_
                                        _%L132763%_)))
                                   _%L132854%_))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp134651 _%stx132661%_)))
              _%g132843132852%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp134653
                                                   (map (lambda (_%g132877132879%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self132660%_
                                                             _%g132877132879%_)))
                                                        _%L132761%_)))
                                             (declare (not safe))
                                             (_%g132841132875%_ __tmp134653))))
                                        (__tmp134647
                                         (let ((__tmp134648
                                                (let ((__tmp134649
                                                       (lambda (_%g132881132884%_
                                                                _%g132882132886%_)
                                                         (cons _%g132881132884%_
                                                               _%g132882132886%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp134649
                                                   '()
                                                   _%L132763%_))))
                                           (declare (not safe))
                                           (gxc#xform-let-locals
                                            __tmp134648))))
                                    (declare (not safe))
                                    (__call-with-parameters
                                     __tmp134650
                                     gxc#current-compile-local-env
                                     __tmp134647)))
                                _%expr132794132825%_))))))
               (let ()
                 (declare (not safe))
                 (_%loop132789132809%_ _%target132786132804%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g132783132799%_
                                                        _%g132784132802%_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g132783132799%_
                                              _%g132784132802%_)))))
                                    (__tmp134654
                                     (map (lambda (_%g132891132893%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self132660%_
                                               _%g132891132893%_)))
                                          (let ((__tmp134655
                                                 (lambda (_%g132895132898%_
                                                          _%g132896132900%_)
                                                   (cons _%g132895132898%_
                                                         _%g132896132900%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp134655
                                             '()
                                             _%L132762%_)))))
                               (declare (not safe))
                               (_%g132782132889%_ __tmp134654)))
                           _%tl132672132714%_
                           _%expr132684132756%_
                           _%hd132685132758%_
                           _%hd132670132704%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%loop132678132722%_
                                                     _%target132675132717%_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g132663132696%_
                                                   _%g132664132699%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g132663132696%_
                                         _%g132664132699%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g132663132696%_ _%g132664132699%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g132663132696%_ _%g132664132699%_))))))
          (declare (not safe))
          (_%g132662132903%_ _%stx132661%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self132414%_ _%stx132415%_)
        (let* ((_%g132417132450%_
                (lambda (_%g132418132447%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132418132447%_))))
               (_%g132416132657%_
                (lambda (_%g132418132453%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132418132453%_))
                      (let ((_%e132425132455%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132418132453%_))))
                        (let ((_%hd132424132458%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132425132455%_)))
                              (_%tl132423132460%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132425132455%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132423132460%_))
                              (let ((_%e132428132463%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132423132460%_))))
                                (let ((_%hd132427132466%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132428132463%_)))
                                      (_%tl132426132468%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132428132463%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd132427132466%_))
                                      (let ((_g134656_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd132427132466%_
                                                '0))))
                                        (begin
                                          (let ((_g134657_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g134656_)
                                                       (##vector-length
                                                        _g134656_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g134657_ 2)))
                                                (error "Context expects 2 values"
                                                       _g134657_)))
                                          (let ((_%target132429132471%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g134656_ 0)))
                                                (_%tl132431132473%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g134656_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl132431132473%_))
                                                (letrec ((_%loop132432132476%_
                                                          (lambda (_%hd132430132479%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr132436132481%_
                           _%hd132437132483%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd132430132479%_))
                        (let ((_%e132433132486%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd132430132479%_))))
                          (let ((_%lp-hd132434132489%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e132433132486%_)))
                                (_%lp-tl132435132491%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e132433132486%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd132434132489%_))
                                (let ((_%e132442132494%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd132434132489%_))))
                                  (let ((_%hd132441132497%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e132442132494%_)))
                                        (_%tl132440132499%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e132442132494%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl132440132499%_))
                                        (let ((_%e132445132502%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl132440132499%_))))
                                          (let ((_%hd132444132505%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e132445132502%_)))
                                                (_%tl132443132507%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e132445132502%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl132443132507%_))
                                                (let ((__tmp134659
                                                       (cons _%hd132444132505%_
                                                             _%expr132436132481%_))
                                                      (__tmp134658
                                                       (cons _%hd132441132497%_
                                                             _%hd132437132483%_)))
                                                  (declare (not safe))
                                                  (_%loop132432132476%_
                                                   _%lp-tl132435132491%_
                                                   __tmp134659
                                                   __tmp134658))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g132417132450%_
                                                   _%g132418132453%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g132417132450%_
                                           _%g132418132453%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g132417132450%_ _%g132418132453%_)))))
                        (let ((_%expr132438132510%_
                               (reverse _%expr132436132481%_))
                              (_%hd132439132512%_
                               (reverse _%hd132437132483%_)))
                          ((lambda (_%L132515%_
                                    _%L132516%_
                                    _%L132517%_
                                    _%L132518%_)
                             (let ((__tmp134663
                                    (lambda ()
                                      (let* ((_%g132538132554%_
                                              (lambda (_%g132539132551%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g132539132551%_))))
                                             (_%g132537132636%_
                                              (lambda (_%g132539132557%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g132539132557%_))
                                                    (let ((_g134664_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g132539132557%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g134665_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g134664_)
                             (##vector-length _g134664_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g134665_ 2)))
                      (error "Context expects 2 values" _g134665_)))
                (let ((_%target132541132559%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g134664_ 0)))
                      (_%tl132543132561%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g134664_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl132543132561%_))
                      (letrec ((_%loop132544132564%_
                                (lambda (_%hd132542132567%_
                                         _%expr132548132569%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd132542132567%_))
                                      (let ((_%e132545132572%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd132542132567%_))))
                                        (let ((_%lp-hd132546132575%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e132545132572%_)))
                                              (_%lp-tl132547132577%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e132545132572%_))))
                                          (let ((__tmp134666
                                                 (cons _%lp-hd132546132575%_
                                                       _%expr132548132569%_)))
                                            (declare (not safe))
                                            (_%loop132544132564%_
                                             _%lp-tl132547132577%_
                                             __tmp134666))))
                                      (let ((_%expr132549132580%_
                                             (reverse _%expr132548132569%_)))
                                        ((lambda (_%L132583%_)
                                           (let ()
                                             (let* ((_%g132597132604%_
                                                     (lambda (_%g132598132601%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g132598132601%_))))
                                                    (_%g132596132629%_
                                                     (lambda (_%g132598132607%_)
                                                       ((lambda (_%L132609%_)
                                                          (let ((__tmp134667
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L132518%_
                               (cons (begin
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-check-splice-targets
                                          _%L132583%_
                                          _%L132517%_))
                                       (let ((__tmp134668
                                              (lambda (_%g132618132622%_
                                                       _%g132619132624%_
                                                       _%g132620132626%_)
                                                (cons (cons _%g132619132624%_
                                                            (cons _%g132618132622%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%g132620132626%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr2
                                          __tmp134668
                                          '()
                                          _%L132583%_
                                          _%L132517%_)))
                                     _%L132609%_))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp134667 _%stx132415%_)))
                _%g132598132607%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp134669
                                                     (map (lambda (_%g132631132633%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self132414%_
                                                               _%g132631132633%_)))
                                                          _%L132515%_)))
                                               (declare (not safe))
                                               (_%g132596132629%_
                                                __tmp134669))))
                                         _%expr132549132580%_))))))
                        (let ()
                          (declare (not safe))
                          (_%loop132544132564%_ _%target132541132559%_ '())))
                      (let ()
                        (declare (not safe))
                        (_%g132538132554%_ _%g132539132557%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g132538132554%_
                                                       _%g132539132557%_)))))
                                             (__tmp134670
                                              (map (lambda (_%g132638132640%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self132414%_
                                                        _%g132638132640%_)))
                                                   (let ((__tmp134671
                                                          (lambda (_%g132642132645%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g132643132647%_)
                    (cons _%g132642132645%_ _%g132643132647%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      __tmp134671
                                                      '()
                                                      _%L132516%_)))))
                                        (declare (not safe))
                                        (_%g132537132636%_ __tmp134670))))
                                   (__tmp134660
                                    (let ((__tmp134661
                                           (let ((__tmp134662
                                                  (lambda (_%g132649132652%_
                                                           _%g132650132654%_)
                                                    (cons _%g132649132652%_
                                                          _%g132650132654%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp134662
                                              '()
                                              _%L132517%_))))
                                      (declare (not safe))
                                      (gxc#xform-let-locals __tmp134661))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp134663
                                gxc#current-compile-local-env
                                __tmp134660)))
                           _%tl132426132468%_
                           _%expr132438132510%_
                           _%hd132439132512%_
                           _%hd132424132458%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%loop132432132476%_
                                                     _%target132429132471%_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g132417132450%_
                                                   _%g132418132453%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g132417132450%_
                                         _%g132418132453%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g132417132450%_ _%g132418132453%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g132417132450%_ _%g132418132453%_))))))
          (declare (not safe))
          (_%g132416132657%_ _%stx132415%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings132318%_)
        (let _%loop132320%_ ((_%rest132322%_ _%bindings132318%_)
                             (_%locals132323%_
                              (let ()
                                (declare (not safe))
                                (gxc#current-compile-local-env))))
          (let* ((_%rest132324132332%_ _%rest132322%_)
                 (_%else132326132340%_ (lambda () _%locals132323%_))
                 (_%K132328132402%_
                  (lambda (_%rest132343%_ _%bind132344%_)
                    (let _%loop-bind132346%_ ((_%bind132348%_ _%bind132344%_)
                                              (_%locals132349%_
                                               _%locals132323%_))
                      (let* ((_%bind132350132361%_ _%bind132348%_)
                             (_%E132354132365%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%bind132350132361%_
                                         '([id . bind-rest])
                                         '((? identifier? id))
                                         '(_)))
                                '#!void)))
                        (let ((_%K132357132390%_
                               (lambda (_%bind-rest132387%_ _%id132388%_)
                                 (let ((__tmp134672
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#identifier-symbol
                                                 _%id132388%_))
                                              _%locals132349%_)))
                                   (declare (not safe))
                                   (_%loop-bind132346%_
                                    _%bind-rest132387%_
                                    __tmp134672))))
                              (_%K132356132379%_
                               (lambda (_%id132377%_)
                                 (let ((__tmp134673
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#identifier-symbol
                                                 _%id132377%_))
                                              _%locals132349%_)))
                                   (declare (not safe))
                                   (_%loop132320%_
                                    _%rest132343%_
                                    __tmp134673))))
                              (_%K132355132370%_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (_%loop132320%_
                                    _%rest132343%_
                                    _%locals132349%_)))))
                          (let ((_%try-match132352132384%_
                                 (lambda ()
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%bind132350132361%_))
                                       (let ((_%id132382%_
                                              _%bind132350132361%_))
                                         (declare (not safe))
                                         (_%K132356132379%_ _%id132382%_))
                                       (let ()
                                         (declare (not safe))
                                         (_%K132355132370%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%bind132350132361%_))
                                (let ((_%tl132359132395%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%bind132350132361%_)))
                                      (_%hd132358132393%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%bind132350132361%_))))
                                  (let ((_%id132398%_ _%hd132358132393%_)
                                        (_%bind-rest132400%_
                                         _%tl132359132395%_))
                                    (let ()
                                      (declare (not safe))
                                      (_%K132357132390%_
                                       _%bind-rest132400%_
                                       _%id132398%_))))
                                (let ()
                                  (declare (not safe))
                                  (_%try-match132352132384%_))))))))))
            (if (let () (declare (not safe)) (##pair? _%rest132324132332%_))
                (let ((_%hd132329132405%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest132324132332%_)))
                      (_%tl132330132407%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest132324132332%_))))
                  (let* ((_%bind132410%_ _%hd132329132405%_)
                         (_%rest132412%_ _%tl132330132407%_))
                    (declare (not safe))
                    (_%K132328132402%_ _%rest132412%_ _%bind132410%_)))
                (let () (declare (not safe)) (_%else132326132340%_)))))))
    (define gxc#xform-operands
      (lambda (_%self132270%_ _%stx132271%_)
        (let* ((_%g132273132284%_
                (lambda (_%g132274132281%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132274132281%_))))
               (_%g132272132315%_
                (lambda (_%g132274132287%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132274132287%_))
                      (let ((_%e132279132289%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132274132287%_))))
                        (let ((_%hd132278132292%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132279132289%_)))
                              (_%tl132277132294%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132279132289%_))))
                          ((lambda (_%L132297%_ _%L132298%_)
                             (let* ((_%rands132313%_
                                     (map (lambda (_%g132308132310%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self132270%_
                                               _%g132308132310%_)))
                                          _%L132297%_))
                                    (__tmp134674
                                     (cons _%L132298%_ _%rands132313%_)))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp134674
                                _%stx132271%_)))
                           _%tl132277132294%_
                           _%hd132278132292%_)))
                      (let ()
                        (declare (not safe))
                        (_%g132273132284%_ _%g132274132287%_))))))
          (declare (not safe))
          (_%g132272132315%_ _%stx132271%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self132200%_ _%stx132201%_)
        (let* ((_%g132203132220%_
                (lambda (_%g132204132217%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132204132217%_))))
               (_%g132202132267%_
                (lambda (_%g132204132223%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132204132223%_))
                      (let ((_%e132209132225%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g132204132223%_))))
                        (let ((_%hd132208132228%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132209132225%_)))
                              (_%tl132207132230%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132209132225%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132207132230%_))
                              (let ((_%e132212132233%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl132207132230%_))))
                                (let ((_%hd132211132236%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132212132233%_)))
                                      (_%tl132210132238%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132212132233%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl132210132238%_))
                                      (let ((_%e132215132241%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl132210132238%_))))
                                        (let ((_%hd132214132244%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e132215132241%_)))
                                              (_%tl132213132246%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e132215132241%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl132213132246%_))
                                              ((lambda (_%L132249%_
                                                        _%L132250%_)
                                                 (let* ((_%expr132265%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self132200%_
                                                            _%L132249%_)))
                                                        (__tmp134675
                                                         (cons '%#set!
                                                               (cons _%L132250%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%expr132265%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp134675
                                                    _%stx132201%_)))
                                               _%hd132214132244%_
                                               _%hd132211132236%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g132203132220%_
                                                 _%g132204132223%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g132203132220%_
                                         _%g132204132223%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g132203132220%_ _%g132204132223%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g132203132220%_ _%g132204132223%_))))))
          (declare (not safe))
          (_%g132202132267%_ _%stx132201%_))))))
