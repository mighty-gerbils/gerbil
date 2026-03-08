(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1773012986)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx195566%_)
        (let* ((_%self195568%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e195570%_
                (let ((__tmp195788 (gxc#stx-car-e _%stx195566%_)))
                  (declare (not safe))
                  (method-ref _%self195568%_ __tmp195788))))
          (if _%$e195570%_
              ((lambda (_%method195573%_)
                 (declare (not safe))
                 (let ((_%$e195576%_ (gx#stx-source _%stx195566%_)))
                   (if _%$e195576%_
                       ((lambda (_%source195579%_)
                          (call-with-parameters__1
                           (lambda ()
                             (_%method195573%_ _%self195568%_ _%stx195566%_))
                           gxc#current-compile-context
                           (cons (cons '@ (cons _%source195579%_ '()))
                                 (let ((_%$e195583%_
                                        (gxc#current-compile-context)))
                                   (if _%$e195583%_ _%$e195583%_ '())))))
                        _%$e195576%_)
                       (_%method195573%_ _%self195568%_ _%stx195566%_))))
               _%$e195570%_)
              (let ((__tmp195790 (gxc#stx-car-e _%stx195566%_))
                    (__tmp195789
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx195566%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self195568%_
                       __tmp195790
                       __tmp195789))))))
    (define gxc#compile-e__1
      (lambda (_%self195588%_ _%stx195589%_)
        (let ((_%$e195591%_
               (let ((__tmp195791 (gxc#stx-car-e _%stx195589%_)))
                 (declare (not safe))
                 (method-ref _%self195588%_ __tmp195791))))
          (if _%$e195591%_
              ((lambda (_%method195594%_)
                 (declare (not safe))
                 (let ((_%$e195597%_ (gx#stx-source _%stx195589%_)))
                   (if _%$e195597%_
                       ((lambda (_%source195600%_)
                          (call-with-parameters__1
                           (lambda ()
                             (_%method195594%_ _%self195588%_ _%stx195589%_))
                           gxc#current-compile-context
                           (cons (cons '@ (cons _%source195600%_ '()))
                                 (let ((_%$e195604%_
                                        (gxc#current-compile-context)))
                                   (if _%$e195604%_ _%$e195604%_ '())))))
                        _%$e195597%_)
                       (_%method195594%_ _%self195588%_ _%stx195589%_))))
               _%$e195591%_)
              (let ((__tmp195793 (gxc#stx-car-e _%stx195589%_))
                    (__tmp195792
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx195589%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self195588%_
                       __tmp195793
                       __tmp195792))))))
    (define gxc#compile-e
      (lambda _g195794_
        (let ((_g195795_ (let () (declare (not safe)) (##length _g195794_))))
          (cond ((let () (declare (not safe)) (##fx= _g195795_ 1))
                 (apply gxc#compile-e__0 _g195794_))
                ((let () (declare (not safe)) (##fx= _g195795_ 2))
                 (apply gxc#compile-e__1 _g195794_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g195794_))))))
    (define gxc#stx-car-e
      (lambda (_%stx195564%_)
        (let ((__tmp195796
               (car (let () (declare (not safe)) (gx#stx-e _%stx195564%_)))))
          (declare (not safe))
          (gx#stx-e __tmp195796))))
    (define gxc#void-method (lambda (_%self195561%_ _%stx195562%_) '#!void))
    (define gxc#false-method (lambda (_%self195558%_ _%stx195559%_) '#f))
    (define gxc#true-method (lambda (_%self195555%_ _%stx195556%_) '#t))
    (define gxc#identity-method
      (lambda (_%self195552%_ _%stx195553%_) _%stx195553%_))
    (define gxc#::void-expression::t
      (let ((__tmp195797 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp195797
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args195549%_
        (apply make-instance gxc#::void-expression::t _%$args195549%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp195798
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
        (__make-atomic-promise __tmp195798)))
    (define gxc#::void-special-form::t
      (let ((__tmp195799 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp195799
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args195545%_
        (apply make-instance gxc#::void-special-form::t _%$args195545%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp195800
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
        (__make-atomic-promise __tmp195800)))
    (define gxc#::void::t
      (let ((__tmp195801
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp195801 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args195541%_
        (apply make-instance gxc#::void::t _%$args195541%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp195802
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp195802)))
    (define gxc#::false-expression::t
      (let ((__tmp195803 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp195803
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args195537%_
        (apply make-instance gxc#::false-expression::t _%$args195537%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp195804
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
        (__make-atomic-promise __tmp195804)))
    (define gxc#::false-special-form::t
      (let ((__tmp195805 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp195805
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args195533%_
        (apply make-instance gxc#::false-special-form::t _%$args195533%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp195806
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
        (__make-atomic-promise __tmp195806)))
    (define gxc#::false::t
      (let ((__tmp195807
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp195807 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args195529%_
        (apply make-instance gxc#::false::t _%$args195529%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp195808
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp195808)))
    (define gxc#::identity-expression::t
      (let ((__tmp195809 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp195809
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args195525%_
        (apply make-instance gxc#::identity-expression::t _%$args195525%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp195810
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
        (__make-atomic-promise __tmp195810)))
    (define gxc#::identity-special-form::t
      (let ((__tmp195811 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp195811
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args195521%_
        (apply make-instance gxc#::identity-special-form::t _%$args195521%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp195812
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
        (__make-atomic-promise __tmp195812)))
    (define gxc#::identity::t
      (let ((__tmp195813
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp195813
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args195517%_
        (apply make-instance gxc#::identity::t _%$args195517%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp195814
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp195814)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp195815 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp195815
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args195513%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args195513%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp195816
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
        (__make-atomic-promise __tmp195816)))
    (define gxc#::basic-xform::t
      (let ((__tmp195817
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp195817
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args195509%_
        (apply make-instance gxc#::basic-xform::t _%$args195509%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp195818
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
        (__make-atomic-promise __tmp195818)))
    (define gxc#apply-begin%
      (lambda (_%self195465%_ _%stx195466%_)
        (let* ((_%g195468195478%_
                (lambda (_%g195469195475%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195469195475%_))))
               (_%g195467195505%_
                (lambda (_%g195469195481%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195469195481%_))
                      (let ((_%e195471195483%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195469195481%_))))
                        (let ((_%hd195472195486%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195471195483%_)))
                              (_%tl195473195488%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195471195483%_))))
                          ((lambda (_%g195470195491%_)
                             (for-each
                              (lambda (_%g195500195502%_)
                                (gxc#compile-e__1
                                 _%self195465%_
                                 _%g195500195502%_))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%g195470195491%_))))
                           _%tl195473195488%_)))
                      (_%g195468195478%_ _%g195469195481%_)))))
          (_%g195467195505%_ _%stx195466%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self195426%_ _%stx195427%_)
        (let* ((_%g195429195439%_
                (lambda (_%g195430195436%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195430195436%_))))
               (_%g195428195462%_
                (lambda (_%g195430195442%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195430195442%_))
                      (let ((_%e195432195444%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195430195442%_))))
                        (let ((_%hd195433195447%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195432195444%_)))
                              (_%tl195434195449%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195432195444%_))))
                          ((lambda (_%g195431195452%_)
                             (gxc#compile-e__1
                              _%self195426%_
                              (last _%g195431195452%_)))
                           _%tl195434195449%_)))
                      (_%g195429195439%_ _%g195430195442%_)))))
          (_%g195428195462%_ _%stx195427%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self195422%_ _%stx195423%_)
        (let ((__tmp195821
               (lambda () (gxc#apply-begin% _%self195422%_ _%stx195423%_)))
              (__tmp195819
               (let ((__tmp195820
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp195820 '1))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp195821
           gx#current-expander-phi
           __tmp195819))))
    (define gxc#apply-module%
      (lambda (_%self195361%_ _%stx195362%_)
        (let* ((_%g195364195378%_
                (lambda (_%g195365195375%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195365195375%_))))
               (_%g195363195419%_
                (lambda (_%g195365195381%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195365195381%_))
                      (let ((_%e195368195383%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195365195381%_))))
                        (let ((_%hd195369195386%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195368195383%_)))
                              (_%tl195370195388%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195368195383%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195370195388%_))
                              (let ((_%e195371195391%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195370195388%_))))
                                (let ((_%hd195372195394%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195371195391%_)))
                                      (_%tl195373195396%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195371195391%_))))
                                  ((lambda (_%g195366195399%_
                                            _%g195367195400%_)
                                     (let* ((_%ctx195413%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g195367195400%_)))
                                            (_%ctx-stx195415%_
                                             (##structure-ref
                                              _%ctx195413%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp195822
                                             (lambda ()
                                               (gxc#compile-e__1
                                                _%self195361%_
                                                _%ctx-stx195415%_))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp195822
                                        gx#current-expander-context
                                        _%ctx195413%_)))
                                   _%tl195373195396%_
                                   _%hd195372195394%_)))
                              (_%g195364195378%_ _%g195365195381%_))))
                      (_%g195364195378%_ _%g195365195381%_)))))
          (_%g195363195419%_ _%stx195362%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self195293%_ _%stx195294%_)
        (let* ((_%g195296195313%_
                (lambda (_%g195297195310%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195297195310%_))))
               (_%g195295195358%_
                (lambda (_%g195297195316%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195297195316%_))
                      (let ((_%e195300195318%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195297195316%_))))
                        (let ((_%hd195301195321%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195300195318%_)))
                              (_%tl195302195323%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195300195318%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195302195323%_))
                              (let ((_%e195303195326%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195302195323%_))))
                                (let ((_%hd195304195329%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195303195326%_)))
                                      (_%tl195305195331%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195303195326%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195305195331%_))
                                      (let ((_%e195306195334%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl195305195331%_))))
                                        (let ((_%hd195307195337%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195306195334%_)))
                                              (_%tl195308195339%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195306195334%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl195308195339%_))
                                              ((lambda (_%g195298195342%_
                                                        _%g195299195343%_)
                                                 (gxc#compile-e__1
                                                  _%self195293%_
                                                  _%g195298195342%_))
                                               _%hd195307195337%_
                                               _%hd195304195329%_)
                                              (_%g195296195313%_
                                               _%g195297195316%_))))
                                      (_%g195296195313%_ _%g195297195316%_))))
                              (_%g195296195313%_ _%g195297195316%_))))
                      (_%g195296195313%_ _%g195297195316%_)))))
          (_%g195295195358%_ _%stx195294%_))))
    (define gxc#apply-define-values%
      (lambda (_%self195225%_ _%stx195226%_)
        (let* ((_%g195228195245%_
                (lambda (_%g195229195242%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195229195242%_))))
               (_%g195227195290%_
                (lambda (_%g195229195248%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195229195248%_))
                      (let ((_%e195232195250%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195229195248%_))))
                        (let ((_%hd195233195253%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195232195250%_)))
                              (_%tl195234195255%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195232195250%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195234195255%_))
                              (let ((_%e195235195258%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195234195255%_))))
                                (let ((_%hd195236195261%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195235195258%_)))
                                      (_%tl195237195263%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195235195258%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195237195263%_))
                                      (let ((_%e195238195266%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl195237195263%_))))
                                        (let ((_%hd195239195269%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195238195266%_)))
                                              (_%tl195240195271%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195238195266%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl195240195271%_))
                                              ((lambda (_%g195230195274%_
                                                        _%g195231195275%_)
                                                 (gxc#compile-e__1
                                                  _%self195225%_
                                                  _%g195230195274%_))
                                               _%hd195239195269%_
                                               _%hd195236195261%_)
                                              (_%g195228195245%_
                                               _%g195229195248%_))))
                                      (_%g195228195245%_ _%g195229195248%_))))
                              (_%g195228195245%_ _%g195229195248%_))))
                      (_%g195228195245%_ _%g195229195248%_)))))
          (_%g195227195290%_ _%stx195226%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self195156%_ _%stx195157%_)
        (let* ((_%g195159195176%_
                (lambda (_%g195160195173%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195160195173%_))))
               (_%g195158195222%_
                (lambda (_%g195160195179%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195160195179%_))
                      (let ((_%e195163195181%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195160195179%_))))
                        (let ((_%hd195164195184%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195163195181%_)))
                              (_%tl195165195186%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195163195181%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195165195186%_))
                              (let ((_%e195166195189%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195165195186%_))))
                                (let ((_%hd195167195192%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195166195189%_)))
                                      (_%tl195168195194%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195166195189%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195168195194%_))
                                      (let ((_%e195169195197%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl195168195194%_))))
                                        (let ((_%hd195170195200%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195169195197%_)))
                                              (_%tl195171195202%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195169195197%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl195171195202%_))
                                              ((lambda (_%g195161195205%_
                                                        _%g195162195206%_)
                                                 (let ((__tmp195825
                                                        (lambda ()
                                                          (gxc#compile-e__1
                                                           _%self195156%_
                                                           _%g195161195205%_)))
                                                       (__tmp195823
                                                        (let ((__tmp195824
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp195824 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp195825
                                                    gx#current-expander-phi
                                                    __tmp195823)))
                                               _%hd195170195200%_
                                               _%hd195167195192%_)
                                              (_%g195159195176%_
                                               _%g195160195179%_))))
                                      (_%g195159195176%_ _%g195160195179%_))))
                              (_%g195159195176%_ _%g195160195179%_))))
                      (_%g195159195176%_ _%g195160195179%_)))))
          (_%g195158195222%_ _%stx195157%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self195088%_ _%stx195089%_)
        (let* ((_%g195091195108%_
                (lambda (_%g195092195105%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195092195105%_))))
               (_%g195090195153%_
                (lambda (_%g195092195111%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195092195111%_))
                      (let ((_%e195095195113%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195092195111%_))))
                        (let ((_%hd195096195116%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195095195113%_)))
                              (_%tl195097195118%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195095195113%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195097195118%_))
                              (let ((_%e195098195121%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195097195118%_))))
                                (let ((_%hd195099195124%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195098195121%_)))
                                      (_%tl195100195126%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195098195121%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195100195126%_))
                                      (let ((_%e195101195129%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl195100195126%_))))
                                        (let ((_%hd195102195132%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195101195129%_)))
                                              (_%tl195103195134%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195101195129%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl195103195134%_))
                                              ((lambda (_%g195093195137%_
                                                        _%g195094195138%_)
                                                 (gxc#compile-e__1
                                                  _%self195088%_
                                                  _%g195093195137%_))
                                               _%hd195102195132%_
                                               _%hd195099195124%_)
                                              (_%g195091195108%_
                                               _%g195092195111%_))))
                                      (_%g195091195108%_ _%g195092195111%_))))
                              (_%g195091195108%_ _%g195092195111%_))))
                      (_%g195091195108%_ _%g195092195111%_)))))
          (_%g195090195153%_ _%stx195089%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self194974%_ _%stx194975%_)
        (let* ((_%g194977195005%_
                (lambda (_%g194978195002%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194978195002%_))))
               (_%g194976195085%_
                (lambda (_%g194978195008%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194978195008%_))
                      (let ((_%e194981195010%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194978195008%_))))
                        (let ((_%hd194982195013%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194981195010%_)))
                              (_%tl194983195015%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194981195010%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl194983195015%_))
                              (let ((_g195826_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl194983195015%_
                                        '0))))
                                (begin
                                  (let ((_g195827_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g195826_)
                                               (##values-length _g195826_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g195827_ 2)))
                                        (error "Context expects 2 values"
                                               _g195827_)))
                                  (let ((_%target194984195018%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g195826_ 0)))
                                        (_%tl194986195020%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g195826_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl194986195020%_))
                                        (letrec ((_%loop194987195023%_
                                                  (lambda (_%hd194985195026%_
                                                           _%body194991195028%_
                                                           _%hd194992195029%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd194985195026%_))
                                                        (let ((_%e194988195031%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd194985195026%_))))
                  (let ((_%lp-hd194989195034%_
                         (let ()
                           (declare (not safe))
                           (##car _%e194988195031%_)))
                        (_%lp-tl194990195036%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e194988195031%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd194989195034%_))
                        (let ((_%e194995195039%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd194989195034%_))))
                          (let ((_%hd194996195042%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e194995195039%_)))
                                (_%tl194997195044%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e194995195039%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl194997195044%_))
                                (let ((_%e194998195047%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl194997195044%_))))
                                  (let ((_%hd194999195050%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e194998195047%_)))
                                        (_%tl195000195052%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e194998195047%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl195000195052%_))
                                        (_%loop194987195023%_
                                         _%lp-tl194990195036%_
                                         (cons _%hd194999195050%_
                                               _%body194991195028%_)
                                         (cons _%hd194996195042%_
                                               _%hd194992195029%_))
                                        (_%g194977195005%_
                                         _%g194978195008%_))))
                                (_%g194977195005%_ _%g194978195008%_))))
                        (_%g194977195005%_ _%g194978195008%_))))
                (let ((_%body194993195055%_ (reverse _%body194991195028%_))
                      (_%hd194994195056%_ (reverse _%hd194992195029%_)))
                  ((lambda (_%g194979195058%_ _%g194980195059%_)
                     (for-each
                      (lambda (_%g195073195075%_)
                        (gxc#compile-e__1 _%self194974%_ _%g195073195075%_))
                      (let ((__tmp195828
                             (lambda (_%g195077195080%_ _%g195078195082%_)
                               (cons _%g195077195080%_ _%g195078195082%_))))
                        (declare (not safe))
                        (foldr__0 __tmp195828 '() _%g194979195058%_))))
                   _%body194993195055%_
                   _%hd194994195056%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop194987195023%_
                                           _%target194984195018%_
                                           '()
                                           '()))
                                        (_%g194977195005%_
                                         _%g194978195008%_)))))
                              (_%g194977195005%_ _%g194978195008%_))))
                      (_%g194977195005%_ _%g194978195008%_)))))
          (_%g194976195085%_ _%stx194975%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self194831%_ _%stx194832%_)
        (let* ((_%g194834194869%_
                (lambda (_%g194835194866%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194835194866%_))))
               (_%g194833194971%_
                (lambda (_%g194835194872%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194835194872%_))
                      (let ((_%e194839194874%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194835194872%_))))
                        (let ((_%hd194840194877%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194839194874%_)))
                              (_%tl194841194879%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194839194874%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194841194879%_))
                              (let ((_%e194842194882%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194841194879%_))))
                                (let ((_%hd194843194885%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194842194882%_)))
                                      (_%tl194844194887%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194842194882%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd194843194885%_))
                                      (let ((_g195829_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd194843194885%_
                                                '0))))
                                        (begin
                                          (let ((_g195830_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g195829_)
                                                       (##values-length
                                                        _g195829_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g195830_ 2)))
                                                (error "Context expects 2 values"
                                                       _g195830_)))
                                          (let ((_%target194845194890%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g195829_ 0)))
                                                (_%tl194847194892%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g195829_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl194847194892%_))
                                                (letrec ((_%loop194848194895%_
                                                          (lambda (_%hd194846194898%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr194852194900%_
                           _%hd194853194901%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd194846194898%_))
                        (let ((_%e194849194903%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd194846194898%_))))
                          (let ((_%lp-hd194850194906%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e194849194903%_)))
                                (_%lp-tl194851194908%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e194849194903%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd194850194906%_))
                                (let ((_%e194856194911%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd194850194906%_))))
                                  (let ((_%hd194857194914%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e194856194911%_)))
                                        (_%tl194858194916%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e194856194911%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl194858194916%_))
                                        (let ((_%e194859194919%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl194858194916%_))))
                                          (let ((_%hd194860194922%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e194859194919%_)))
                                                (_%tl194861194924%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e194859194919%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl194861194924%_))
                                                (_%loop194848194895%_
                                                 _%lp-tl194851194908%_
                                                 (cons _%hd194860194922%_
                                                       _%expr194852194900%_)
                                                 (cons _%hd194857194914%_
                                                       _%hd194853194901%_))
                                                (_%g194834194869%_
                                                 _%g194835194872%_))))
                                        (_%g194834194869%_
                                         _%g194835194872%_))))
                                (_%g194834194869%_ _%g194835194872%_))))
                        (let ((_%expr194854194927%_
                               (reverse _%expr194852194900%_))
                              (_%hd194855194928%_
                               (reverse _%hd194853194901%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194844194887%_))
                              (let ((_%e194862194930%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194844194887%_))))
                                (let ((_%hd194863194933%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194862194930%_)))
                                      (_%tl194864194935%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194862194930%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl194864194935%_))
                                      ((lambda (_%g194836194938%_
                                                _%g194837194939%_
                                                _%g194838194940%_)
                                         (for-each
                                          (lambda (_%g194959194961%_)
                                            (gxc#compile-e__1
                                             _%self194831%_
                                             _%g194959194961%_))
                                          (let ((__tmp195832
                                                 (lambda (_%g194963194966%_
                                                          _%g194964194968%_)
                                                   (cons _%g194963194966%_
                                                         _%g194964194968%_)))
                                                (__tmp195831
                                                 (cons _%g194836194938%_ '())))
                                            (declare (not safe))
                                            (foldr__0
                                             __tmp195832
                                             __tmp195831
                                             _%g194837194939%_))))
                                       _%hd194863194933%_
                                       _%expr194854194927%_
                                       _%hd194855194928%_)
                                      (_%g194834194869%_ _%g194835194872%_))))
                              (_%g194834194869%_ _%g194835194872%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop194848194895%_
                                                   _%target194845194890%_
                                                   '()
                                                   '()))
                                                (_%g194834194869%_
                                                 _%g194835194872%_)))))
                                      (_%g194834194869%_ _%g194835194872%_))))
                              (_%g194834194869%_ _%g194835194872%_))))
                      (_%g194834194869%_ _%g194835194872%_)))))
          (_%g194833194971%_ _%stx194832%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self194776%_ _%stx194777%_)
        (let* ((_%g194779194793%_
                (lambda (_%g194780194790%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194780194790%_))))
               (_%g194778194828%_
                (lambda (_%g194780194796%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194780194796%_))
                      (let ((_%e194783194798%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194780194796%_))))
                        (let ((_%hd194784194801%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194783194798%_)))
                              (_%tl194785194803%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194783194798%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194785194803%_))
                              (let ((_%e194786194806%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194785194803%_))))
                                (let ((_%hd194787194809%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194786194806%_)))
                                      (_%tl194788194811%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194786194806%_))))
                                  ((lambda (_%g194781194814%_
                                            _%g194782194815%_)
                                     (gxc#compile-e__1
                                      _%self194776%_
                                      (last _%g194781194814%_)))
                                   _%tl194788194811%_
                                   _%hd194787194809%_)))
                              (_%g194779194793%_ _%g194780194796%_))))
                      (_%g194779194793%_ _%g194780194796%_)))))
          (_%g194778194828%_ _%stx194777%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self194708%_ _%stx194709%_)
        (let* ((_%g194711194728%_
                (lambda (_%g194712194725%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194712194725%_))))
               (_%g194710194773%_
                (lambda (_%g194712194731%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194712194731%_))
                      (let ((_%e194715194733%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194712194731%_))))
                        (let ((_%hd194716194736%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194715194733%_)))
                              (_%tl194717194738%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194715194733%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194717194738%_))
                              (let ((_%e194718194741%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194717194738%_))))
                                (let ((_%hd194719194744%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194718194741%_)))
                                      (_%tl194720194746%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194718194741%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194720194746%_))
                                      (let ((_%e194721194749%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl194720194746%_))))
                                        (let ((_%hd194722194752%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194721194749%_)))
                                              (_%tl194723194754%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194721194749%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl194723194754%_))
                                              ((lambda (_%g194713194757%_
                                                        _%g194714194758%_)
                                                 (gxc#compile-e__1
                                                  _%self194708%_
                                                  _%g194713194757%_))
                                               _%hd194722194752%_
                                               _%hd194719194744%_)
                                              (_%g194711194728%_
                                               _%g194712194731%_))))
                                      (_%g194711194728%_ _%g194712194731%_))))
                              (_%g194711194728%_ _%g194712194731%_))))
                      (_%g194711194728%_ _%g194712194731%_)))))
          (_%g194710194773%_ _%stx194709%_))))
    (define gxc#apply-operands
      (lambda (_%self194623%_ _%stx194624%_)
        (let* ((_%g194626194645%_
                (lambda (_%g194627194642%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194627194642%_))))
               (_%g194625194705%_
                (lambda (_%g194627194648%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194627194648%_))
                      (let ((_%e194629194650%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194627194648%_))))
                        (let ((_%hd194630194653%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194629194650%_)))
                              (_%tl194631194655%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194629194650%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl194631194655%_))
                              (let ((_g195833_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl194631194655%_
                                        '0))))
                                (begin
                                  (let ((_g195834_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g195833_)
                                               (##values-length _g195833_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g195834_ 2)))
                                        (error "Context expects 2 values"
                                               _g195834_)))
                                  (let ((_%target194632194658%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g195833_ 0)))
                                        (_%tl194634194660%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g195833_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl194634194660%_))
                                        (letrec ((_%loop194635194663%_
                                                  (lambda (_%hd194633194666%_
                                                           _%rands194639194668%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd194633194666%_))
                                                        (let ((_%e194636194670%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd194633194666%_))))
                  (let ((_%lp-hd194637194673%_
                         (let ()
                           (declare (not safe))
                           (##car _%e194636194670%_)))
                        (_%lp-tl194638194675%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e194636194670%_))))
                    (_%loop194635194663%_
                     _%lp-tl194638194675%_
                     (cons _%lp-hd194637194673%_ _%rands194639194668%_))))
                (let ((_%rands194640194678%_ (reverse _%rands194639194668%_)))
                  ((lambda (_%g194628194680%_)
                     (for-each
                      (lambda (_%g194693194695%_)
                        (gxc#compile-e__1 _%self194623%_ _%g194693194695%_))
                      (let ((__tmp195835
                             (lambda (_%g194697194700%_ _%g194698194702%_)
                               (cons _%g194697194700%_ _%g194698194702%_))))
                        (declare (not safe))
                        (foldr__0 __tmp195835 '() _%g194628194680%_))))
                   _%rands194640194678%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop194635194663%_
                                           _%target194632194658%_
                                           '()))
                                        (_%g194626194645%_
                                         _%g194627194648%_)))))
                              (_%g194626194645%_ _%g194627194648%_))))
                      (_%g194626194645%_ _%g194627194648%_)))))
          (_%g194625194705%_ _%stx194624%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx194620%_ _%src-stx194621%_)
        (let ((__tmp195836
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx194621%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx194620%_ __tmp195836))))
    (define gxc#xform-wrap-apply
      (lambda (_%stx194616%_ _%src-stx194617%_ _%ctx194618%_)
        (gxc#compile-e__1
         _%ctx194618%_
         (gxc#xform-wrap-source _%stx194616%_ _%src-stx194617%_))))
    (define gxc#xform-begin%
      (lambda (_%self194571%_ _%stx194572%_)
        (let* ((_%g194574194584%_
                (lambda (_%g194575194581%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194575194581%_))))
               (_%g194573194613%_
                (lambda (_%g194575194587%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194575194587%_))
                      (let ((_%e194577194589%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194575194587%_))))
                        (let ((_%hd194578194592%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194577194589%_)))
                              (_%tl194579194594%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194577194589%_))))
                          ((lambda (_%g194576194597%_)
                             (let ((_%forms194611%_
                                    (map (lambda (_%g194606194608%_)
                                           (gxc#compile-e__1
                                            _%self194571%_
                                            _%g194606194608%_))
                                         _%g194576194597%_)))
                               (gxc#xform-wrap-source
                                (cons '%#begin _%forms194611%_)
                                _%stx194572%_)))
                           _%tl194579194594%_)))
                      (_%g194574194584%_ _%g194575194587%_)))))
          (_%g194573194613%_ _%stx194572%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self194525%_ _%stx194526%_)
        (let* ((_%g194528194538%_
                (lambda (_%g194529194535%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194529194535%_))))
               (_%g194527194568%_
                (lambda (_%g194529194541%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194529194541%_))
                      (let ((_%e194531194543%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194529194541%_))))
                        (let ((_%hd194532194546%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194531194543%_)))
                              (_%tl194533194548%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194531194543%_))))
                          ((lambda (_%g194530194551%_)
                             (let ((__tmp195839
                                    (lambda ()
                                      (let ((_%forms194566%_
                                             (map (lambda (_%g194561194563%_)
                                                    (gxc#compile-e__1
                                                     _%self194525%_
                                                     _%g194561194563%_))
                                                  _%g194530194551%_)))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin-syntax _%forms194566%_)
                                         _%stx194526%_))))
                                   (__tmp195837
                                    (let ((__tmp195838
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp195838 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp195839
                                gx#current-expander-phi
                                __tmp195837)))
                           _%tl194533194548%_)))
                      (_%g194528194538%_ _%g194529194541%_)))))
          (_%g194527194568%_ _%stx194526%_))))
    (define gxc#xform-module%
      (lambda (_%self194462%_ _%stx194463%_)
        (let* ((_%g194465194479%_
                (lambda (_%g194466194476%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194466194476%_))))
               (_%g194464194522%_
                (lambda (_%g194466194482%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194466194482%_))
                      (let ((_%e194469194484%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194466194482%_))))
                        (let ((_%hd194470194487%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194469194484%_)))
                              (_%tl194471194489%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194469194484%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194471194489%_))
                              (let ((_%e194472194492%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194471194489%_))))
                                (let ((_%hd194473194495%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194472194492%_)))
                                      (_%tl194474194497%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194472194492%_))))
                                  ((lambda (_%g194467194500%_
                                            _%g194468194501%_)
                                     (let* ((_%ctx194514%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g194468194501%_)))
                                            (_%code194516%_
                                             (##structure-ref
                                              _%ctx194514%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code194519%_
                                             (let ((__tmp195840
                                                    (lambda ()
                                                      (gxc#compile-e__1
                                                       _%self194462%_
                                                       _%code194516%_))))
                                               (declare (not safe))
                                               (call-with-parameters__1
                                                __tmp195840
                                                gx#current-expander-context
                                                _%ctx194514%_))))
                                       (##structure-set!
                                        _%ctx194514%_
                                        _%code194519%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _%g194468194501%_
                                                    (cons _%code194519%_ '())))
                                        _%stx194463%_)))
                                   _%tl194474194497%_
                                   _%hd194473194495%_)))
                              (_%g194465194479%_ _%g194466194482%_))))
                      (_%g194465194479%_ _%g194466194482%_)))))
          (_%g194464194522%_ _%stx194463%_))))
    (define gxc#xform-define-values%
      (lambda (_%self194392%_ _%stx194393%_)
        (let* ((_%g194395194412%_
                (lambda (_%g194396194409%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194396194409%_))))
               (_%g194394194459%_
                (lambda (_%g194396194415%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194396194415%_))
                      (let ((_%e194399194417%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194396194415%_))))
                        (let ((_%hd194400194420%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194399194417%_)))
                              (_%tl194401194422%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194399194417%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194401194422%_))
                              (let ((_%e194402194425%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194401194422%_))))
                                (let ((_%hd194403194428%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194402194425%_)))
                                      (_%tl194404194430%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194402194425%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194404194430%_))
                                      (let ((_%e194405194433%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl194404194430%_))))
                                        (let ((_%hd194406194436%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194405194433%_)))
                                              (_%tl194407194438%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194405194433%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl194407194438%_))
                                              ((lambda (_%g194397194441%_
                                                        _%g194398194442%_)
                                                 (let ((_%expr194457%_
                                                        (gxc#compile-e__1
                                                         _%self194392%_
                                                         _%g194397194441%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons _%g194398194442%_
                                                                (cons _%expr194457%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx194393%_)))
                                               _%hd194406194436%_
                                               _%hd194403194428%_)
                                              (_%g194395194412%_
                                               _%g194396194415%_))))
                                      (_%g194395194412%_ _%g194396194415%_))))
                              (_%g194395194412%_ _%g194396194415%_))))
                      (_%g194395194412%_ _%g194396194415%_)))))
          (_%g194394194459%_ _%stx194393%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self194321%_ _%stx194322%_)
        (let* ((_%g194324194341%_
                (lambda (_%g194325194338%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194325194338%_))))
               (_%g194323194389%_
                (lambda (_%g194325194344%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194325194344%_))
                      (let ((_%e194328194346%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194325194344%_))))
                        (let ((_%hd194329194349%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194328194346%_)))
                              (_%tl194330194351%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194328194346%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194330194351%_))
                              (let ((_%e194331194354%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194330194351%_))))
                                (let ((_%hd194332194357%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194331194354%_)))
                                      (_%tl194333194359%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194331194354%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194333194359%_))
                                      (let ((_%e194334194362%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl194333194359%_))))
                                        (let ((_%hd194335194365%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194334194362%_)))
                                              (_%tl194336194367%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194334194362%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl194336194367%_))
                                              ((lambda (_%g194326194370%_
                                                        _%g194327194371%_)
                                                 (let ((__tmp195843
                                                        (lambda ()
                                                          (let ((_%expr194387%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#compile-e__1 _%self194321%_ _%g194326194370%_)))
                    (gxc#xform-wrap-source
                     (cons '%#define-syntax
                           (cons _%g194327194371%_ (cons _%expr194387%_ '())))
                     _%stx194322%_))))
               (__tmp195841
                (let ((__tmp195842
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp195842 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp195843
                                                    gx#current-expander-phi
                                                    __tmp195841)))
                                               _%hd194335194365%_
                                               _%hd194332194357%_)
                                              (_%g194324194341%_
                                               _%g194325194344%_))))
                                      (_%g194324194341%_ _%g194325194344%_))))
                              (_%g194324194341%_ _%g194325194344%_))))
                      (_%g194324194341%_ _%g194325194344%_)))))
          (_%g194323194389%_ _%stx194322%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self194251%_ _%stx194252%_)
        (let* ((_%g194254194271%_
                (lambda (_%g194255194268%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194255194268%_))))
               (_%g194253194318%_
                (lambda (_%g194255194274%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194255194274%_))
                      (let ((_%e194258194276%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194255194274%_))))
                        (let ((_%hd194259194279%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194258194276%_)))
                              (_%tl194260194281%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194258194276%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194260194281%_))
                              (let ((_%e194261194284%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194260194281%_))))
                                (let ((_%hd194262194287%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194261194284%_)))
                                      (_%tl194263194289%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194261194284%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194263194289%_))
                                      (let ((_%e194264194292%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl194263194289%_))))
                                        (let ((_%hd194265194295%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194264194292%_)))
                                              (_%tl194266194297%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194264194292%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl194266194297%_))
                                              ((lambda (_%g194256194300%_
                                                        _%g194257194301%_)
                                                 (let ((_%expr194316%_
                                                        (gxc#compile-e__1
                                                         _%self194251%_
                                                         _%g194256194300%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#begin-annotation
                                                          (cons _%g194257194301%_
                                                                (cons _%expr194316%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx194252%_)))
                                               _%hd194265194295%_
                                               _%hd194262194287%_)
                                              (_%g194254194271%_
                                               _%g194255194274%_))))
                                      (_%g194254194271%_ _%g194255194274%_))))
                              (_%g194254194271%_ _%g194255194274%_))))
                      (_%g194254194271%_ _%g194255194274%_)))))
          (_%g194253194318%_ _%stx194252%_))))
    (define gxc#xform-lambda%
      (lambda (_%self194189%_ _%stx194190%_)
        (let* ((_%g194192194206%_
                (lambda (_%g194193194203%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194193194203%_))))
               (_%g194191194248%_
                (lambda (_%g194193194209%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194193194209%_))
                      (let ((_%e194196194211%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194193194209%_))))
                        (let ((_%hd194197194214%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194196194211%_)))
                              (_%tl194198194216%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194196194211%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194198194216%_))
                              (let ((_%e194199194219%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194198194216%_))))
                                (let ((_%hd194200194222%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194199194219%_)))
                                      (_%tl194201194224%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194199194219%_))))
                                  ((lambda (_%g194194194227%_
                                            _%g194195194228%_)
                                     (let ((__tmp195845
                                            (lambda ()
                                              (let ((_%body194246%_
                                                     (map (lambda (_%g194241194243%_)
                                                            (gxc#compile-e__1
                                                             _%self194189%_
                                                             _%g194241194243%_))
                                                          _%g194194194227%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#lambda
                                                       (cons _%g194195194228%_
                                                             _%body194246%_))
                                                 _%stx194190%_))))
                                           (__tmp195844
                                            (gxc#xform-let-locals
                                             _%g194195194228%_)))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp195845
                                        gxc#current-compile-local-env
                                        __tmp195844)))
                                   _%tl194201194224%_
                                   _%hd194200194222%_)))
                              (_%g194192194206%_ _%g194193194209%_))))
                      (_%g194192194206%_ _%g194193194209%_)))))
          (_%g194191194248%_ _%stx194190%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self194097%_ _%stx194098%_)
        (letrec ((_%clause-e194100%_
                  (lambda (_%clause194141%_)
                    (let* ((_%g194143194154%_
                            (lambda (_%g194144194151%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g194144194151%_))))
                           (_%g194142194186%_
                            (lambda (_%g194144194157%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g194144194157%_))
                                  (let ((_%e194147194159%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g194144194157%_))))
                                    (let ((_%hd194148194162%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e194147194159%_)))
                                          (_%tl194149194164%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e194147194159%_))))
                                      ((lambda (_%g194145194167%_
                                                _%g194146194168%_)
                                         (let ((__tmp195847
                                                (lambda ()
                                                  (let ((_%body194184%_
                                                         (map (lambda (_%g194179194181%_)
                                                                (gxc#compile-e__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%self194097%_
                         _%g194179194181%_))
                      _%g194145194167%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%g194146194168%_
                                                          _%body194184%_))))
                                               (__tmp195846
                                                (gxc#xform-let-locals
                                                 _%g194146194168%_)))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp195847
                                            gxc#current-compile-local-env
                                            __tmp195846)))
                                       _%tl194149194164%_
                                       _%hd194148194162%_)))
                                  (_%g194143194154%_ _%g194144194157%_)))))
                      (_%g194142194186%_ _%clause194141%_)))))
          (let* ((_%g194102194112%_
                  (lambda (_%g194103194109%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g194103194109%_))))
                 (_%g194101194138%_
                  (lambda (_%g194103194115%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g194103194115%_))
                        (let ((_%e194105194117%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g194103194115%_))))
                          (let ((_%hd194106194120%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e194105194117%_)))
                                (_%tl194107194122%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e194105194117%_))))
                            ((lambda (_%g194104194125%_)
                               (let ((_%clauses194136%_
                                      (map _%clause-e194100%_
                                           _%g194104194125%_)))
                                 (gxc#xform-wrap-source
                                  (cons '%#case-lambda _%clauses194136%_)
                                  _%stx194098%_)))
                             _%tl194107194122%_)))
                        (_%g194102194112%_ _%g194103194115%_)))))
            (_%g194101194138%_ _%stx194098%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self193857%_ _%stx193858%_)
        (let* ((_%g193860193893%_
                (lambda (_%g193861193890%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193861193890%_))))
               (_%g193859194094%_
                (lambda (_%g193861193896%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193861193896%_))
                      (let ((_%e193866193898%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193861193896%_))))
                        (let ((_%hd193867193901%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193866193898%_)))
                              (_%tl193868193903%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193866193898%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193868193903%_))
                              (let ((_%e193869193906%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193868193903%_))))
                                (let ((_%hd193870193909%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193869193906%_)))
                                      (_%tl193871193911%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193869193906%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd193870193909%_))
                                      (let ((_g195848_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd193870193909%_
                                                '0))))
                                        (begin
                                          (let ((_g195849_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g195848_)
                                                       (##values-length
                                                        _g195848_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g195849_ 2)))
                                                (error "Context expects 2 values"
                                                       _g195849_)))
                                          (let ((_%target193872193914%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g195848_ 0)))
                                                (_%tl193874193916%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g195848_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl193874193916%_))
                                                (letrec ((_%loop193875193919%_
                                                          (lambda (_%hd193873193922%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr193879193924%_
                           _%hd193880193925%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd193873193922%_))
                        (let ((_%e193876193927%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd193873193922%_))))
                          (let ((_%lp-hd193877193930%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e193876193927%_)))
                                (_%lp-tl193878193932%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e193876193927%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd193877193930%_))
                                (let ((_%e193883193935%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd193877193930%_))))
                                  (let ((_%hd193884193938%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e193883193935%_)))
                                        (_%tl193885193940%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e193883193935%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl193885193940%_))
                                        (let ((_%e193886193943%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl193885193940%_))))
                                          (let ((_%hd193887193946%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e193886193943%_)))
                                                (_%tl193888193948%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e193886193943%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl193888193948%_))
                                                (_%loop193875193919%_
                                                 _%lp-tl193878193932%_
                                                 (cons _%hd193887193946%_
                                                       _%expr193879193924%_)
                                                 (cons _%hd193884193938%_
                                                       _%hd193880193925%_))
                                                (_%g193860193893%_
                                                 _%g193861193896%_))))
                                        (_%g193860193893%_
                                         _%g193861193896%_))))
                                (_%g193860193893%_ _%g193861193896%_))))
                        (let ((_%expr193881193951%_
                               (reverse _%expr193879193924%_))
                              (_%hd193882193952%_
                               (reverse _%hd193880193925%_)))
                          ((lambda (_%g193862193954%_
                                    _%g193863193955%_
                                    _%g193864193956%_
                                    _%g193865193957%_)
                             (let* ((_%g193976193992%_
                                     (lambda (_%g193977193989%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g193977193989%_))))
                                    (_%g193975194080%_
                                     (lambda (_%g193977193995%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g193977193995%_))
                                           (let ((_g195850_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g193977193995%_
                                                     '0))))
                                             (begin
                                               (let ((_g195851_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g195850_)
                                                            (##values-length
                                                             _g195850_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g195851_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g195851_)))
                                               (let ((_%target193979193997%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g195850_
                                                         0)))
                                                     (_%tl193981193999%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g195850_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl193981193999%_))
                                                     (letrec ((_%loop193982194002%_
                                                               (lambda (_%hd193980194005%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr193986194007%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd193980194005%_))
                             (let ((_%e193983194009%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd193980194005%_))))
                               (let ((_%lp-hd193984194012%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e193983194009%_)))
                                     (_%lp-tl193985194014%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e193983194009%_))))
                                 (_%loop193982194002%_
                                  _%lp-tl193985194014%_
                                  (cons _%lp-hd193984194012%_
                                        _%expr193986194007%_))))
                             (let ((_%expr193987194017%_
                                    (reverse _%expr193986194007%_)))
                               ((lambda (_%g193978194019%_)
                                  (let ((__tmp195854
                                         (lambda ()
                                           (let* ((_%g194033194040%_
                                                   (lambda (_%g194034194037%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g194034194037%_))))
                                                  (_%g194032194066%_
                                                   (lambda (_%g194034194043%_)
                                                     ((lambda (_%g194035194045%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%g193865193957%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%g193978194019%_
                                  _%g193864193956%_))
                               (let ((__tmp195855
                                      (lambda (_%g194055194059%_
                                               _%g194056194061%_
                                               _%g194057194063%_)
                                        (cons (cons _%g194056194061%_
                                                    (cons _%g194055194059%_
                                                          '()))
                                              _%g194057194063%_))))
                                 (declare (not safe))
                                 (foldr__1
                                  __tmp195855
                                  '()
                                  _%g193978194019%_
                                  _%g193864193956%_)))
                             _%g194035194045%_))
                 _%stx193858%_))
              _%g194034194043%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g194032194066%_
                                              (map (lambda (_%g194068194070%_)
                                                     (gxc#compile-e__1
                                                      _%self193857%_
                                                      _%g194068194070%_))
                                                   _%g193862193954%_)))))
                                        (__tmp195852
                                         (gxc#xform-let-locals
                                          (let ((__tmp195853
                                                 (lambda (_%g194072194075%_
                                                          _%g194073194077%_)
                                                   (cons _%g194072194075%_
                                                         _%g194073194077%_))))
                                            (declare (not safe))
                                            (foldr__0
                                             __tmp195853
                                             '()
                                             _%g193864193956%_)))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp195854
                                     gxc#current-compile-local-env
                                     __tmp195852)))
                                _%expr193987194017%_))))))
               (_%loop193982194002%_ _%target193979193997%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g193976193992%_
                                                      _%g193977193995%_)))))
                                           (_%g193976193992%_
                                            _%g193977193995%_)))))
                               (_%g193975194080%_
                                (map (lambda (_%g194082194084%_)
                                       (gxc#compile-e__1
                                        _%self193857%_
                                        _%g194082194084%_))
                                     (let ((__tmp195856
                                            (lambda (_%g194086194089%_
                                                     _%g194087194091%_)
                                              (cons _%g194086194089%_
                                                    _%g194087194091%_))))
                                       (declare (not safe))
                                       (foldr__0
                                        __tmp195856
                                        '()
                                        _%g193863193955%_))))))
                           _%tl193871193911%_
                           _%expr193881193951%_
                           _%hd193882193952%_
                           _%hd193867193901%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop193875193919%_
                                                   _%target193872193914%_
                                                   '()
                                                   '()))
                                                (_%g193860193893%_
                                                 _%g193861193896%_)))))
                                      (_%g193860193893%_ _%g193861193896%_))))
                              (_%g193860193893%_ _%g193861193896%_))))
                      (_%g193860193893%_ _%g193861193896%_)))))
          (_%g193859194094%_ _%stx193858%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self193617%_ _%stx193618%_)
        (let* ((_%g193620193653%_
                (lambda (_%g193621193650%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193621193650%_))))
               (_%g193619193854%_
                (lambda (_%g193621193656%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193621193656%_))
                      (let ((_%e193626193658%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193621193656%_))))
                        (let ((_%hd193627193661%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193626193658%_)))
                              (_%tl193628193663%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193626193658%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193628193663%_))
                              (let ((_%e193629193666%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193628193663%_))))
                                (let ((_%hd193630193669%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193629193666%_)))
                                      (_%tl193631193671%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193629193666%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd193630193669%_))
                                      (let ((_g195857_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd193630193669%_
                                                '0))))
                                        (begin
                                          (let ((_g195858_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g195857_)
                                                       (##values-length
                                                        _g195857_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g195858_ 2)))
                                                (error "Context expects 2 values"
                                                       _g195858_)))
                                          (let ((_%target193632193674%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g195857_ 0)))
                                                (_%tl193634193676%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g195857_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl193634193676%_))
                                                (letrec ((_%loop193635193679%_
                                                          (lambda (_%hd193633193682%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr193639193684%_
                           _%hd193640193685%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd193633193682%_))
                        (let ((_%e193636193687%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd193633193682%_))))
                          (let ((_%lp-hd193637193690%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e193636193687%_)))
                                (_%lp-tl193638193692%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e193636193687%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd193637193690%_))
                                (let ((_%e193643193695%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd193637193690%_))))
                                  (let ((_%hd193644193698%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e193643193695%_)))
                                        (_%tl193645193700%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e193643193695%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl193645193700%_))
                                        (let ((_%e193646193703%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl193645193700%_))))
                                          (let ((_%hd193647193706%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e193646193703%_)))
                                                (_%tl193648193708%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e193646193703%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl193648193708%_))
                                                (_%loop193635193679%_
                                                 _%lp-tl193638193692%_
                                                 (cons _%hd193647193706%_
                                                       _%expr193639193684%_)
                                                 (cons _%hd193644193698%_
                                                       _%hd193640193685%_))
                                                (_%g193620193653%_
                                                 _%g193621193656%_))))
                                        (_%g193620193653%_
                                         _%g193621193656%_))))
                                (_%g193620193653%_ _%g193621193656%_))))
                        (let ((_%expr193641193711%_
                               (reverse _%expr193639193684%_))
                              (_%hd193642193712%_
                               (reverse _%hd193640193685%_)))
                          ((lambda (_%g193622193714%_
                                    _%g193623193715%_
                                    _%g193624193716%_
                                    _%g193625193717%_)
                             (let ((__tmp195861
                                    (lambda ()
                                      (let* ((_%g193737193753%_
                                              (lambda (_%g193738193750%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g193738193750%_))))
                                             (_%g193736193833%_
                                              (lambda (_%g193738193756%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g193738193756%_))
                                                    (let ((_g195862_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g193738193756%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g195863_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g195862_)
                             (##values-length _g195862_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g195863_ 2)))
                      (error "Context expects 2 values" _g195863_)))
                (let ((_%target193740193758%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g195862_ 0)))
                      (_%tl193742193760%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g195862_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl193742193760%_))
                      (letrec ((_%loop193743193763%_
                                (lambda (_%hd193741193766%_
                                         _%expr193747193768%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd193741193766%_))
                                      (let ((_%e193744193770%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd193741193766%_))))
                                        (let ((_%lp-hd193745193773%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193744193770%_)))
                                              (_%lp-tl193746193775%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193744193770%_))))
                                          (_%loop193743193763%_
                                           _%lp-tl193746193775%_
                                           (cons _%lp-hd193745193773%_
                                                 _%expr193747193768%_))))
                                      (let ((_%expr193748193778%_
                                             (reverse _%expr193747193768%_)))
                                        ((lambda (_%g193739193780%_)
                                           (let* ((_%g193794193801%_
                                                   (lambda (_%g193795193798%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g193795193798%_))))
                                                  (_%g193793193826%_
                                                   (lambda (_%g193795193804%_)
                                                     ((lambda (_%g193796193806%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%g193625193717%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%g193739193780%_
                                  _%g193624193716%_))
                               (let ((__tmp195864
                                      (lambda (_%g193815193819%_
                                               _%g193816193821%_
                                               _%g193817193823%_)
                                        (cons (cons _%g193816193821%_
                                                    (cons _%g193815193819%_
                                                          '()))
                                              _%g193817193823%_))))
                                 (declare (not safe))
                                 (foldr__1
                                  __tmp195864
                                  '()
                                  _%g193739193780%_
                                  _%g193624193716%_)))
                             _%g193796193806%_))
                 _%stx193618%_))
              _%g193795193804%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g193793193826%_
                                              (map (lambda (_%g193828193830%_)
                                                     (gxc#compile-e__1
                                                      _%self193617%_
                                                      _%g193828193830%_))
                                                   _%g193622193714%_))))
                                         _%expr193748193778%_))))))
                        (_%loop193743193763%_ _%target193740193758%_ '()))
                      (_%g193737193753%_ _%g193738193756%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g193737193753%_
                                                     _%g193738193756%_)))))
                                        (_%g193736193833%_
                                         (map (lambda (_%g193835193837%_)
                                                (gxc#compile-e__1
                                                 _%self193617%_
                                                 _%g193835193837%_))
                                              (let ((__tmp195865
                                                     (lambda (_%g193839193842%_
                                                              _%g193840193844%_)
                                                       (cons _%g193839193842%_
                                                             _%g193840193844%_))))
                                                (declare (not safe))
                                                (foldr__0
                                                 __tmp195865
                                                 '()
                                                 _%g193623193715%_)))))))
                                   (__tmp195859
                                    (gxc#xform-let-locals
                                     (let ((__tmp195860
                                            (lambda (_%g193846193849%_
                                                     _%g193847193851%_)
                                              (cons _%g193846193849%_
                                                    _%g193847193851%_))))
                                       (declare (not safe))
                                       (foldr__0
                                        __tmp195860
                                        '()
                                        _%g193624193716%_)))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp195861
                                gxc#current-compile-local-env
                                __tmp195859)))
                           _%tl193631193671%_
                           _%expr193641193711%_
                           _%hd193642193712%_
                           _%hd193627193661%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop193635193679%_
                                                   _%target193632193674%_
                                                   '()
                                                   '()))
                                                (_%g193620193653%_
                                                 _%g193621193656%_)))))
                                      (_%g193620193653%_ _%g193621193656%_))))
                              (_%g193620193653%_ _%g193621193656%_))))
                      (_%g193620193653%_ _%g193621193656%_)))))
          (_%g193619193854%_ _%stx193618%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings193484%_)
        (letrec ((_%flatten193486%_
                  (lambda (_%maybe-lst193544%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%maybe-lst193544%_))
                        (cons _%maybe-lst193544%_ '())
                        (let _%loop193546%_ ((_%rest193548%_
                                              _%maybe-lst193544%_)
                                             (_%result193549%_ '()))
                          (let* ((_%__stx195753195754%_ _%rest193548%_)
                                 (_%g193553193565%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx195753195754%_)))))
                            (let ((_%__kont195755195756%_
                                   (lambda (_%g193555193603%_
                                            _%g193556193604%_)
                                     (_%loop193546%_
                                      _%g193555193603%_
                                      (let ((__tmp195866
                                             (_%flatten193486%_
                                              _%g193556193604%_)))
                                        (declare (not safe))
                                        (foldl__0
                                         cons
                                         _%result193549%_
                                         __tmp195866)))))
                                  (_%__kont195757195758%_
                                   (lambda (_%g193560193577%_)
                                     (cons _%g193560193577%_
                                           _%result193549%_)))
                                  (_%__kont195759195760%_
                                   (lambda () _%result193549%_)))
                              (let ((_%g193551193590%_
                                     (lambda ()
                                       (let ((_%g193560193577%_
                                              _%__stx195753195754%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%g193560193577%_))
                                             (_%__kont195757195758%_
                                              _%g193560193577%_)
                                             (_%__kont195759195760%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx195753195754%_))
                                    (let ((_%e193557193595%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx195753195754%_))))
                                      (let ((_%tl193559193600%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e193557193595%_)))
                                            (_%hd193558193598%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e193557193595%_))))
                                        (_%__kont195755195756%_
                                         _%tl193559193600%_
                                         _%hd193558193598%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g193551193590%_)))))))))))
          (let _%loop193488%_ ((_%rest193490%_
                                (_%flatten193486%_ _%bindings193484%_))
                               (_%locals193491%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-local-env))))
            (let* ((_%rest193492193503%_ _%rest193490%_)
                   (_%E193496193507%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching"
                               _%rest193492193503%_
                               '([(? identifier? id) . rest])
                               '((? identifier? id))
                               '(_)))
                      '#!void)))
              (let ((_%K193499193532%_
                     (lambda (_%rest193529%_ _%id193530%_)
                       (_%loop193488%_
                        _%rest193529%_
                        (cons (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _%id193530%_))
                              _%locals193491%_))))
                    (_%K193498193521%_
                     (lambda (_%id193519%_)
                       (cons (let ()
                               (declare (not safe))
                               (gxc#identifier-symbol _%id193519%_))
                             _%locals193491%_)))
                    (_%K193497193512%_ (lambda () _%locals193491%_)))
                (let ((_%try-match193494193526%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%rest193492193503%_))
                             (let ((_%id193524%_ _%rest193492193503%_))
                               (_%K193498193521%_ _%id193524%_))
                             (_%K193497193512%_)))))
                  (if (pair? _%rest193492193503%_)
                      (let ((_%tl193501193537%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest193492193503%_)))
                            (_%hd193500193535%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest193492193503%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd193500193535%_))
                            (let ((_%id193540%_ _%hd193500193535%_)
                                  (_%rest193542%_ _%tl193501193537%_))
                              (_%K193499193532%_ _%rest193542%_ _%id193540%_))
                            (_%K193497193512%_)))
                      (_%try-match193494193526%_)))))))))
    (define gxc#xform-operands
      (lambda (_%self193436%_ _%stx193437%_)
        (let* ((_%g193439193450%_
                (lambda (_%g193440193447%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193440193447%_))))
               (_%g193438193481%_
                (lambda (_%g193440193453%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193440193453%_))
                      (let ((_%e193443193455%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193440193453%_))))
                        (let ((_%hd193444193458%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193443193455%_)))
                              (_%tl193445193460%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193443193455%_))))
                          ((lambda (_%g193441193463%_ _%g193442193464%_)
                             (let ((_%rands193479%_
                                    (map (lambda (_%g193474193476%_)
                                           (gxc#compile-e__1
                                            _%self193436%_
                                            _%g193474193476%_))
                                         _%g193441193463%_)))
                               (gxc#xform-wrap-source
                                (cons _%g193442193464%_ _%rands193479%_)
                                _%stx193437%_)))
                           _%tl193445193460%_
                           _%hd193444193458%_)))
                      (_%g193439193450%_ _%g193440193453%_)))))
          (_%g193438193481%_ _%stx193437%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self193366%_ _%stx193367%_)
        (let* ((_%g193369193386%_
                (lambda (_%g193370193383%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193370193383%_))))
               (_%g193368193433%_
                (lambda (_%g193370193389%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193370193389%_))
                      (let ((_%e193373193391%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193370193389%_))))
                        (let ((_%hd193374193394%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193373193391%_)))
                              (_%tl193375193396%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193373193391%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193375193396%_))
                              (let ((_%e193376193399%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193375193396%_))))
                                (let ((_%hd193377193402%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193376193399%_)))
                                      (_%tl193378193404%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193376193399%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193378193404%_))
                                      (let ((_%e193379193407%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193378193404%_))))
                                        (let ((_%hd193380193410%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193379193407%_)))
                                              (_%tl193381193412%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193379193407%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193381193412%_))
                                              ((lambda (_%g193371193415%_
                                                        _%g193372193416%_)
                                                 (let ((_%expr193431%_
                                                        (gxc#compile-e__1
                                                         _%self193366%_
                                                         _%g193371193415%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _%g193372193416%_
                                                                (cons _%expr193431%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx193367%_)))
                                               _%hd193380193410%_
                                               _%hd193377193402%_)
                                              (_%g193369193386%_
                                               _%g193370193389%_))))
                                      (_%g193369193386%_ _%g193370193389%_))))
                              (_%g193369193386%_ _%g193370193389%_))))
                      (_%g193369193386%_ _%g193370193389%_)))))
          (_%g193368193433%_ _%stx193367%_))))))
