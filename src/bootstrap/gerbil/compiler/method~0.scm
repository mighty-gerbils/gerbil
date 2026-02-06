(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1770342300)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx161691%_)
        (let* ((_%self161693%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e161695%_
                (let ((__tmp161913 (gxc#stx-car-e _%stx161691%_)))
                  (declare (not safe))
                  (method-ref _%self161693%_ __tmp161913))))
          (if _%$e161695%_
              ((lambda (_%method161698%_)
                 (declare (not safe))
                 (let ((_%$e161701%_ (gx#stx-source _%stx161691%_)))
                   (if _%$e161701%_
                       ((lambda (_%source161704%_)
                          (call-with-parameters__1
                           (lambda ()
                             (_%method161698%_ _%self161693%_ _%stx161691%_))
                           gxc#current-compile-context
                           (cons (cons '@ (cons _%source161704%_ '()))
                                 (let ((_%$e161708%_
                                        (gxc#current-compile-context)))
                                   (if _%$e161708%_ _%$e161708%_ '())))))
                        _%$e161701%_)
                       (_%method161698%_ _%self161693%_ _%stx161691%_))))
               _%$e161695%_)
              (let ((__tmp161915 (gxc#stx-car-e _%stx161691%_))
                    (__tmp161914
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx161691%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self161693%_
                       __tmp161915
                       __tmp161914))))))
    (define gxc#compile-e__1
      (lambda (_%self161713%_ _%stx161714%_)
        (let ((_%$e161716%_
               (let ((__tmp161916 (gxc#stx-car-e _%stx161714%_)))
                 (declare (not safe))
                 (method-ref _%self161713%_ __tmp161916))))
          (if _%$e161716%_
              ((lambda (_%method161719%_)
                 (declare (not safe))
                 (let ((_%$e161722%_ (gx#stx-source _%stx161714%_)))
                   (if _%$e161722%_
                       ((lambda (_%source161725%_)
                          (call-with-parameters__1
                           (lambda ()
                             (_%method161719%_ _%self161713%_ _%stx161714%_))
                           gxc#current-compile-context
                           (cons (cons '@ (cons _%source161725%_ '()))
                                 (let ((_%$e161729%_
                                        (gxc#current-compile-context)))
                                   (if _%$e161729%_ _%$e161729%_ '())))))
                        _%$e161722%_)
                       (_%method161719%_ _%self161713%_ _%stx161714%_))))
               _%$e161716%_)
              (let ((__tmp161918 (gxc#stx-car-e _%stx161714%_))
                    (__tmp161917
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx161714%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self161713%_
                       __tmp161918
                       __tmp161917))))))
    (define gxc#compile-e
      (lambda _g161919_
        (let ((_g161920_ (let () (declare (not safe)) (##length _g161919_))))
          (cond ((let () (declare (not safe)) (##fx= _g161920_ 1))
                 (apply gxc#compile-e__0 _g161919_))
                ((let () (declare (not safe)) (##fx= _g161920_ 2))
                 (apply gxc#compile-e__1 _g161919_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g161919_))))))
    (define gxc#stx-car-e
      (lambda (_%stx161689%_)
        (let ((__tmp161921
               (car (let () (declare (not safe)) (gx#stx-e _%stx161689%_)))))
          (declare (not safe))
          (gx#stx-e __tmp161921))))
    (define gxc#void-method (lambda (_%self161686%_ _%stx161687%_) '#!void))
    (define gxc#false-method (lambda (_%self161683%_ _%stx161684%_) '#f))
    (define gxc#true-method (lambda (_%self161680%_ _%stx161681%_) '#t))
    (define gxc#identity-method
      (lambda (_%self161677%_ _%stx161678%_) _%stx161678%_))
    (define gxc#::void-expression::t
      (let ((__tmp161922 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp161922
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args161674%_
        (apply make-instance gxc#::void-expression::t _%$args161674%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp161923
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
        (__make-atomic-promise __tmp161923)))
    (define gxc#::void-special-form::t
      (let ((__tmp161924 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp161924
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args161670%_
        (apply make-instance gxc#::void-special-form::t _%$args161670%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp161925
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
        (__make-atomic-promise __tmp161925)))
    (define gxc#::void::t
      (let ((__tmp161926
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp161926 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args161666%_
        (apply make-instance gxc#::void::t _%$args161666%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp161927
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp161927)))
    (define gxc#::false-expression::t
      (let ((__tmp161928 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp161928
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args161662%_
        (apply make-instance gxc#::false-expression::t _%$args161662%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp161929
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
        (__make-atomic-promise __tmp161929)))
    (define gxc#::false-special-form::t
      (let ((__tmp161930 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp161930
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args161658%_
        (apply make-instance gxc#::false-special-form::t _%$args161658%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp161931
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
        (__make-atomic-promise __tmp161931)))
    (define gxc#::false::t
      (let ((__tmp161932
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp161932 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args161654%_
        (apply make-instance gxc#::false::t _%$args161654%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp161933
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp161933)))
    (define gxc#::identity-expression::t
      (let ((__tmp161934 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp161934
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args161650%_
        (apply make-instance gxc#::identity-expression::t _%$args161650%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp161935
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
        (__make-atomic-promise __tmp161935)))
    (define gxc#::identity-special-form::t
      (let ((__tmp161936 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp161936
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args161646%_
        (apply make-instance gxc#::identity-special-form::t _%$args161646%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp161937
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
        (__make-atomic-promise __tmp161937)))
    (define gxc#::identity::t
      (let ((__tmp161938
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp161938
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args161642%_
        (apply make-instance gxc#::identity::t _%$args161642%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp161939
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp161939)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp161940 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp161940
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args161638%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args161638%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp161941
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
        (__make-atomic-promise __tmp161941)))
    (define gxc#::basic-xform::t
      (let ((__tmp161942
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp161942
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args161634%_
        (apply make-instance gxc#::basic-xform::t _%$args161634%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp161943
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
        (__make-atomic-promise __tmp161943)))
    (define gxc#apply-begin%
      (lambda (_%self161590%_ _%stx161591%_)
        (let* ((_%g161593161603%_
                (lambda (_%g161594161600%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161594161600%_))))
               (_%g161592161630%_
                (lambda (_%g161594161606%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161594161606%_))
                      (let ((_%e161596161608%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161594161606%_))))
                        (let ((_%hd161597161611%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161596161608%_)))
                              (_%tl161598161613%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161596161608%_))))
                          ((lambda (_%g161595161616%_)
                             (for-each
                              (lambda (_%g161625161627%_)
                                (gxc#compile-e__1
                                 _%self161590%_
                                 _%g161625161627%_))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%g161595161616%_))))
                           _%tl161598161613%_)))
                      (_%g161593161603%_ _%g161594161606%_)))))
          (_%g161592161630%_ _%stx161591%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self161551%_ _%stx161552%_)
        (let* ((_%g161554161564%_
                (lambda (_%g161555161561%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161555161561%_))))
               (_%g161553161587%_
                (lambda (_%g161555161567%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161555161567%_))
                      (let ((_%e161557161569%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161555161567%_))))
                        (let ((_%hd161558161572%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161557161569%_)))
                              (_%tl161559161574%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161557161569%_))))
                          ((lambda (_%g161556161577%_)
                             (gxc#compile-e__1
                              _%self161551%_
                              (last _%g161556161577%_)))
                           _%tl161559161574%_)))
                      (_%g161554161564%_ _%g161555161567%_)))))
          (_%g161553161587%_ _%stx161552%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self161547%_ _%stx161548%_)
        (let ((__tmp161946
               (lambda () (gxc#apply-begin% _%self161547%_ _%stx161548%_)))
              (__tmp161944
               (let ((__tmp161945
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp161945 '1))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp161946
           gx#current-expander-phi
           __tmp161944))))
    (define gxc#apply-module%
      (lambda (_%self161486%_ _%stx161487%_)
        (let* ((_%g161489161503%_
                (lambda (_%g161490161500%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161490161500%_))))
               (_%g161488161544%_
                (lambda (_%g161490161506%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161490161506%_))
                      (let ((_%e161493161508%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161490161506%_))))
                        (let ((_%hd161494161511%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161493161508%_)))
                              (_%tl161495161513%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161493161508%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl161495161513%_))
                              (let ((_%e161496161516%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl161495161513%_))))
                                (let ((_%hd161497161519%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e161496161516%_)))
                                      (_%tl161498161521%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e161496161516%_))))
                                  ((lambda (_%g161491161524%_
                                            _%g161492161525%_)
                                     (let* ((_%ctx161538%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g161492161525%_)))
                                            (_%ctx-stx161540%_
                                             (##structure-ref
                                              _%ctx161538%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp161947
                                             (lambda ()
                                               (gxc#compile-e__1
                                                _%self161486%_
                                                _%ctx-stx161540%_))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp161947
                                        gx#current-expander-context
                                        _%ctx161538%_)))
                                   _%tl161498161521%_
                                   _%hd161497161519%_)))
                              (_%g161489161503%_ _%g161490161506%_))))
                      (_%g161489161503%_ _%g161490161506%_)))))
          (_%g161488161544%_ _%stx161487%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self161418%_ _%stx161419%_)
        (let* ((_%g161421161438%_
                (lambda (_%g161422161435%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161422161435%_))))
               (_%g161420161483%_
                (lambda (_%g161422161441%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161422161441%_))
                      (let ((_%e161425161443%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161422161441%_))))
                        (let ((_%hd161426161446%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161425161443%_)))
                              (_%tl161427161448%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161425161443%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl161427161448%_))
                              (let ((_%e161428161451%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl161427161448%_))))
                                (let ((_%hd161429161454%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e161428161451%_)))
                                      (_%tl161430161456%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e161428161451%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl161430161456%_))
                                      (let ((_%e161431161459%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl161430161456%_))))
                                        (let ((_%hd161432161462%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e161431161459%_)))
                                              (_%tl161433161464%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e161431161459%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl161433161464%_))
                                              ((lambda (_%g161423161467%_
                                                        _%g161424161468%_)
                                                 (gxc#compile-e__1
                                                  _%self161418%_
                                                  _%g161423161467%_))
                                               _%hd161432161462%_
                                               _%hd161429161454%_)
                                              (_%g161421161438%_
                                               _%g161422161441%_))))
                                      (_%g161421161438%_ _%g161422161441%_))))
                              (_%g161421161438%_ _%g161422161441%_))))
                      (_%g161421161438%_ _%g161422161441%_)))))
          (_%g161420161483%_ _%stx161419%_))))
    (define gxc#apply-define-values%
      (lambda (_%self161350%_ _%stx161351%_)
        (let* ((_%g161353161370%_
                (lambda (_%g161354161367%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161354161367%_))))
               (_%g161352161415%_
                (lambda (_%g161354161373%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161354161373%_))
                      (let ((_%e161357161375%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161354161373%_))))
                        (let ((_%hd161358161378%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161357161375%_)))
                              (_%tl161359161380%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161357161375%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl161359161380%_))
                              (let ((_%e161360161383%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl161359161380%_))))
                                (let ((_%hd161361161386%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e161360161383%_)))
                                      (_%tl161362161388%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e161360161383%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl161362161388%_))
                                      (let ((_%e161363161391%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl161362161388%_))))
                                        (let ((_%hd161364161394%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e161363161391%_)))
                                              (_%tl161365161396%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e161363161391%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl161365161396%_))
                                              ((lambda (_%g161355161399%_
                                                        _%g161356161400%_)
                                                 (gxc#compile-e__1
                                                  _%self161350%_
                                                  _%g161355161399%_))
                                               _%hd161364161394%_
                                               _%hd161361161386%_)
                                              (_%g161353161370%_
                                               _%g161354161373%_))))
                                      (_%g161353161370%_ _%g161354161373%_))))
                              (_%g161353161370%_ _%g161354161373%_))))
                      (_%g161353161370%_ _%g161354161373%_)))))
          (_%g161352161415%_ _%stx161351%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self161281%_ _%stx161282%_)
        (let* ((_%g161284161301%_
                (lambda (_%g161285161298%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161285161298%_))))
               (_%g161283161347%_
                (lambda (_%g161285161304%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161285161304%_))
                      (let ((_%e161288161306%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161285161304%_))))
                        (let ((_%hd161289161309%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161288161306%_)))
                              (_%tl161290161311%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161288161306%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl161290161311%_))
                              (let ((_%e161291161314%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl161290161311%_))))
                                (let ((_%hd161292161317%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e161291161314%_)))
                                      (_%tl161293161319%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e161291161314%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl161293161319%_))
                                      (let ((_%e161294161322%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl161293161319%_))))
                                        (let ((_%hd161295161325%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e161294161322%_)))
                                              (_%tl161296161327%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e161294161322%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl161296161327%_))
                                              ((lambda (_%g161286161330%_
                                                        _%g161287161331%_)
                                                 (let ((__tmp161950
                                                        (lambda ()
                                                          (gxc#compile-e__1
                                                           _%self161281%_
                                                           _%g161286161330%_)))
                                                       (__tmp161948
                                                        (let ((__tmp161949
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp161949 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp161950
                                                    gx#current-expander-phi
                                                    __tmp161948)))
                                               _%hd161295161325%_
                                               _%hd161292161317%_)
                                              (_%g161284161301%_
                                               _%g161285161304%_))))
                                      (_%g161284161301%_ _%g161285161304%_))))
                              (_%g161284161301%_ _%g161285161304%_))))
                      (_%g161284161301%_ _%g161285161304%_)))))
          (_%g161283161347%_ _%stx161282%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self161213%_ _%stx161214%_)
        (let* ((_%g161216161233%_
                (lambda (_%g161217161230%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161217161230%_))))
               (_%g161215161278%_
                (lambda (_%g161217161236%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161217161236%_))
                      (let ((_%e161220161238%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161217161236%_))))
                        (let ((_%hd161221161241%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161220161238%_)))
                              (_%tl161222161243%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161220161238%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl161222161243%_))
                              (let ((_%e161223161246%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl161222161243%_))))
                                (let ((_%hd161224161249%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e161223161246%_)))
                                      (_%tl161225161251%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e161223161246%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl161225161251%_))
                                      (let ((_%e161226161254%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl161225161251%_))))
                                        (let ((_%hd161227161257%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e161226161254%_)))
                                              (_%tl161228161259%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e161226161254%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl161228161259%_))
                                              ((lambda (_%g161218161262%_
                                                        _%g161219161263%_)
                                                 (gxc#compile-e__1
                                                  _%self161213%_
                                                  _%g161218161262%_))
                                               _%hd161227161257%_
                                               _%hd161224161249%_)
                                              (_%g161216161233%_
                                               _%g161217161236%_))))
                                      (_%g161216161233%_ _%g161217161236%_))))
                              (_%g161216161233%_ _%g161217161236%_))))
                      (_%g161216161233%_ _%g161217161236%_)))))
          (_%g161215161278%_ _%stx161214%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self161099%_ _%stx161100%_)
        (let* ((_%g161102161130%_
                (lambda (_%g161103161127%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161103161127%_))))
               (_%g161101161210%_
                (lambda (_%g161103161133%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161103161133%_))
                      (let ((_%e161106161135%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161103161133%_))))
                        (let ((_%hd161107161138%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161106161135%_)))
                              (_%tl161108161140%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161106161135%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl161108161140%_))
                              (let ((_g161951_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl161108161140%_
                                        '0))))
                                (begin
                                  (let ((_g161952_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g161951_)
                                               (##values-length _g161951_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g161952_ 2)))
                                        (error "Context expects 2 values"
                                               _g161952_)))
                                  (let ((_%target161109161143%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g161951_ 0)))
                                        (_%tl161111161145%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g161951_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl161111161145%_))
                                        (letrec ((_%loop161112161148%_
                                                  (lambda (_%hd161110161151%_
                                                           _%body161116161153%_
                                                           _%hd161117161154%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd161110161151%_))
                                                        (let ((_%e161113161156%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd161110161151%_))))
                  (let ((_%lp-hd161114161159%_
                         (let ()
                           (declare (not safe))
                           (##car _%e161113161156%_)))
                        (_%lp-tl161115161161%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e161113161156%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd161114161159%_))
                        (let ((_%e161120161164%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd161114161159%_))))
                          (let ((_%hd161121161167%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e161120161164%_)))
                                (_%tl161122161169%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e161120161164%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl161122161169%_))
                                (let ((_%e161123161172%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl161122161169%_))))
                                  (let ((_%hd161124161175%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e161123161172%_)))
                                        (_%tl161125161177%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e161123161172%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl161125161177%_))
                                        (_%loop161112161148%_
                                         _%lp-tl161115161161%_
                                         (cons _%hd161124161175%_
                                               _%body161116161153%_)
                                         (cons _%hd161121161167%_
                                               _%hd161117161154%_))
                                        (_%g161102161130%_
                                         _%g161103161133%_))))
                                (_%g161102161130%_ _%g161103161133%_))))
                        (_%g161102161130%_ _%g161103161133%_))))
                (let ((_%body161118161180%_ (reverse _%body161116161153%_))
                      (_%hd161119161181%_ (reverse _%hd161117161154%_)))
                  ((lambda (_%g161104161183%_ _%g161105161184%_)
                     (for-each
                      (lambda (_%g161198161200%_)
                        (gxc#compile-e__1 _%self161099%_ _%g161198161200%_))
                      (let ((__tmp161953
                             (lambda (_%g161202161205%_ _%g161203161207%_)
                               (cons _%g161202161205%_ _%g161203161207%_))))
                        (declare (not safe))
                        (__foldr1 __tmp161953 '() _%g161104161183%_))))
                   _%body161118161180%_
                   _%hd161119161181%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop161112161148%_
                                           _%target161109161143%_
                                           '()
                                           '()))
                                        (_%g161102161130%_
                                         _%g161103161133%_)))))
                              (_%g161102161130%_ _%g161103161133%_))))
                      (_%g161102161130%_ _%g161103161133%_)))))
          (_%g161101161210%_ _%stx161100%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self160956%_ _%stx160957%_)
        (let* ((_%g160959160994%_
                (lambda (_%g160960160991%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160960160991%_))))
               (_%g160958161096%_
                (lambda (_%g160960160997%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160960160997%_))
                      (let ((_%e160964160999%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160960160997%_))))
                        (let ((_%hd160965161002%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160964160999%_)))
                              (_%tl160966161004%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160964160999%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160966161004%_))
                              (let ((_%e160967161007%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160966161004%_))))
                                (let ((_%hd160968161010%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160967161007%_)))
                                      (_%tl160969161012%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160967161007%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd160968161010%_))
                                      (let ((_g161954_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd160968161010%_
                                                '0))))
                                        (begin
                                          (let ((_g161955_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g161954_)
                                                       (##values-length
                                                        _g161954_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g161955_ 2)))
                                                (error "Context expects 2 values"
                                                       _g161955_)))
                                          (let ((_%target160970161015%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g161954_ 0)))
                                                (_%tl160972161017%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g161954_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl160972161017%_))
                                                (letrec ((_%loop160973161020%_
                                                          (lambda (_%hd160971161023%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr160977161025%_
                           _%hd160978161026%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd160971161023%_))
                        (let ((_%e160974161028%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd160971161023%_))))
                          (let ((_%lp-hd160975161031%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e160974161028%_)))
                                (_%lp-tl160976161033%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e160974161028%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd160975161031%_))
                                (let ((_%e160981161036%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd160975161031%_))))
                                  (let ((_%hd160982161039%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e160981161036%_)))
                                        (_%tl160983161041%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e160981161036%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl160983161041%_))
                                        (let ((_%e160984161044%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl160983161041%_))))
                                          (let ((_%hd160985161047%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e160984161044%_)))
                                                (_%tl160986161049%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e160984161044%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl160986161049%_))
                                                (_%loop160973161020%_
                                                 _%lp-tl160976161033%_
                                                 (cons _%hd160985161047%_
                                                       _%expr160977161025%_)
                                                 (cons _%hd160982161039%_
                                                       _%hd160978161026%_))
                                                (_%g160959160994%_
                                                 _%g160960160997%_))))
                                        (_%g160959160994%_
                                         _%g160960160997%_))))
                                (_%g160959160994%_ _%g160960160997%_))))
                        (let ((_%expr160979161052%_
                               (reverse _%expr160977161025%_))
                              (_%hd160980161053%_
                               (reverse _%hd160978161026%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160969161012%_))
                              (let ((_%e160987161055%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160969161012%_))))
                                (let ((_%hd160988161058%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160987161055%_)))
                                      (_%tl160989161060%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160987161055%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl160989161060%_))
                                      ((lambda (_%g160961161063%_
                                                _%g160962161064%_
                                                _%g160963161065%_)
                                         (for-each
                                          (lambda (_%g161084161086%_)
                                            (gxc#compile-e__1
                                             _%self160956%_
                                             _%g161084161086%_))
                                          (let ((__tmp161957
                                                 (lambda (_%g161088161091%_
                                                          _%g161089161093%_)
                                                   (cons _%g161088161091%_
                                                         _%g161089161093%_)))
                                                (__tmp161956
                                                 (cons _%g160961161063%_ '())))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp161957
                                             __tmp161956
                                             _%g160962161064%_))))
                                       _%hd160988161058%_
                                       _%expr160979161052%_
                                       _%hd160980161053%_)
                                      (_%g160959160994%_ _%g160960160997%_))))
                              (_%g160959160994%_ _%g160960160997%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop160973161020%_
                                                   _%target160970161015%_
                                                   '()
                                                   '()))
                                                (_%g160959160994%_
                                                 _%g160960160997%_)))))
                                      (_%g160959160994%_ _%g160960160997%_))))
                              (_%g160959160994%_ _%g160960160997%_))))
                      (_%g160959160994%_ _%g160960160997%_)))))
          (_%g160958161096%_ _%stx160957%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self160901%_ _%stx160902%_)
        (let* ((_%g160904160918%_
                (lambda (_%g160905160915%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160905160915%_))))
               (_%g160903160953%_
                (lambda (_%g160905160921%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160905160921%_))
                      (let ((_%e160908160923%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160905160921%_))))
                        (let ((_%hd160909160926%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160908160923%_)))
                              (_%tl160910160928%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160908160923%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160910160928%_))
                              (let ((_%e160911160931%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160910160928%_))))
                                (let ((_%hd160912160934%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160911160931%_)))
                                      (_%tl160913160936%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160911160931%_))))
                                  ((lambda (_%g160906160939%_
                                            _%g160907160940%_)
                                     (gxc#compile-e__1
                                      _%self160901%_
                                      (last _%g160906160939%_)))
                                   _%tl160913160936%_
                                   _%hd160912160934%_)))
                              (_%g160904160918%_ _%g160905160921%_))))
                      (_%g160904160918%_ _%g160905160921%_)))))
          (_%g160903160953%_ _%stx160902%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self160833%_ _%stx160834%_)
        (let* ((_%g160836160853%_
                (lambda (_%g160837160850%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160837160850%_))))
               (_%g160835160898%_
                (lambda (_%g160837160856%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160837160856%_))
                      (let ((_%e160840160858%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160837160856%_))))
                        (let ((_%hd160841160861%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160840160858%_)))
                              (_%tl160842160863%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160840160858%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160842160863%_))
                              (let ((_%e160843160866%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160842160863%_))))
                                (let ((_%hd160844160869%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160843160866%_)))
                                      (_%tl160845160871%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160843160866%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl160845160871%_))
                                      (let ((_%e160846160874%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl160845160871%_))))
                                        (let ((_%hd160847160877%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e160846160874%_)))
                                              (_%tl160848160879%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e160846160874%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl160848160879%_))
                                              ((lambda (_%g160838160882%_
                                                        _%g160839160883%_)
                                                 (gxc#compile-e__1
                                                  _%self160833%_
                                                  _%g160838160882%_))
                                               _%hd160847160877%_
                                               _%hd160844160869%_)
                                              (_%g160836160853%_
                                               _%g160837160856%_))))
                                      (_%g160836160853%_ _%g160837160856%_))))
                              (_%g160836160853%_ _%g160837160856%_))))
                      (_%g160836160853%_ _%g160837160856%_)))))
          (_%g160835160898%_ _%stx160834%_))))
    (define gxc#apply-operands
      (lambda (_%self160748%_ _%stx160749%_)
        (let* ((_%g160751160770%_
                (lambda (_%g160752160767%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160752160767%_))))
               (_%g160750160830%_
                (lambda (_%g160752160773%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160752160773%_))
                      (let ((_%e160754160775%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160752160773%_))))
                        (let ((_%hd160755160778%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160754160775%_)))
                              (_%tl160756160780%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160754160775%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl160756160780%_))
                              (let ((_g161958_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl160756160780%_
                                        '0))))
                                (begin
                                  (let ((_g161959_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g161958_)
                                               (##values-length _g161958_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g161959_ 2)))
                                        (error "Context expects 2 values"
                                               _g161959_)))
                                  (let ((_%target160757160783%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g161958_ 0)))
                                        (_%tl160759160785%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g161958_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl160759160785%_))
                                        (letrec ((_%loop160760160788%_
                                                  (lambda (_%hd160758160791%_
                                                           _%rands160764160793%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd160758160791%_))
                                                        (let ((_%e160761160795%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd160758160791%_))))
                  (let ((_%lp-hd160762160798%_
                         (let ()
                           (declare (not safe))
                           (##car _%e160761160795%_)))
                        (_%lp-tl160763160800%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e160761160795%_))))
                    (_%loop160760160788%_
                     _%lp-tl160763160800%_
                     (cons _%lp-hd160762160798%_ _%rands160764160793%_))))
                (let ((_%rands160765160803%_ (reverse _%rands160764160793%_)))
                  ((lambda (_%g160753160805%_)
                     (for-each
                      (lambda (_%g160818160820%_)
                        (gxc#compile-e__1 _%self160748%_ _%g160818160820%_))
                      (let ((__tmp161960
                             (lambda (_%g160822160825%_ _%g160823160827%_)
                               (cons _%g160822160825%_ _%g160823160827%_))))
                        (declare (not safe))
                        (__foldr1 __tmp161960 '() _%g160753160805%_))))
                   _%rands160765160803%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop160760160788%_
                                           _%target160757160783%_
                                           '()))
                                        (_%g160751160770%_
                                         _%g160752160773%_)))))
                              (_%g160751160770%_ _%g160752160773%_))))
                      (_%g160751160770%_ _%g160752160773%_)))))
          (_%g160750160830%_ _%stx160749%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx160745%_ _%src-stx160746%_)
        (let ((__tmp161961
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx160746%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx160745%_ __tmp161961))))
    (define gxc#xform-wrap-apply
      (lambda (_%stx160741%_ _%src-stx160742%_ _%ctx160743%_)
        (gxc#compile-e__1
         _%ctx160743%_
         (gxc#xform-wrap-source _%stx160741%_ _%src-stx160742%_))))
    (define gxc#xform-begin%
      (lambda (_%self160696%_ _%stx160697%_)
        (let* ((_%g160699160709%_
                (lambda (_%g160700160706%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160700160706%_))))
               (_%g160698160738%_
                (lambda (_%g160700160712%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160700160712%_))
                      (let ((_%e160702160714%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160700160712%_))))
                        (let ((_%hd160703160717%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160702160714%_)))
                              (_%tl160704160719%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160702160714%_))))
                          ((lambda (_%g160701160722%_)
                             (let ((_%forms160736%_
                                    (map (lambda (_%g160731160733%_)
                                           (gxc#compile-e__1
                                            _%self160696%_
                                            _%g160731160733%_))
                                         _%g160701160722%_)))
                               (gxc#xform-wrap-source
                                (cons '%#begin _%forms160736%_)
                                _%stx160697%_)))
                           _%tl160704160719%_)))
                      (_%g160699160709%_ _%g160700160712%_)))))
          (_%g160698160738%_ _%stx160697%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self160650%_ _%stx160651%_)
        (let* ((_%g160653160663%_
                (lambda (_%g160654160660%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160654160660%_))))
               (_%g160652160693%_
                (lambda (_%g160654160666%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160654160666%_))
                      (let ((_%e160656160668%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160654160666%_))))
                        (let ((_%hd160657160671%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160656160668%_)))
                              (_%tl160658160673%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160656160668%_))))
                          ((lambda (_%g160655160676%_)
                             (let ((__tmp161964
                                    (lambda ()
                                      (let ((_%forms160691%_
                                             (map (lambda (_%g160686160688%_)
                                                    (gxc#compile-e__1
                                                     _%self160650%_
                                                     _%g160686160688%_))
                                                  _%g160655160676%_)))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin-syntax _%forms160691%_)
                                         _%stx160651%_))))
                                   (__tmp161962
                                    (let ((__tmp161963
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp161963 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp161964
                                gx#current-expander-phi
                                __tmp161962)))
                           _%tl160658160673%_)))
                      (_%g160653160663%_ _%g160654160666%_)))))
          (_%g160652160693%_ _%stx160651%_))))
    (define gxc#xform-module%
      (lambda (_%self160587%_ _%stx160588%_)
        (let* ((_%g160590160604%_
                (lambda (_%g160591160601%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160591160601%_))))
               (_%g160589160647%_
                (lambda (_%g160591160607%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160591160607%_))
                      (let ((_%e160594160609%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160591160607%_))))
                        (let ((_%hd160595160612%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160594160609%_)))
                              (_%tl160596160614%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160594160609%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160596160614%_))
                              (let ((_%e160597160617%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160596160614%_))))
                                (let ((_%hd160598160620%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160597160617%_)))
                                      (_%tl160599160622%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160597160617%_))))
                                  ((lambda (_%g160592160625%_
                                            _%g160593160626%_)
                                     (let* ((_%ctx160639%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g160593160626%_)))
                                            (_%code160641%_
                                             (##structure-ref
                                              _%ctx160639%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code160644%_
                                             (let ((__tmp161965
                                                    (lambda ()
                                                      (gxc#compile-e__1
                                                       _%self160587%_
                                                       _%code160641%_))))
                                               (declare (not safe))
                                               (call-with-parameters__1
                                                __tmp161965
                                                gx#current-expander-context
                                                _%ctx160639%_))))
                                       (##structure-set!
                                        _%ctx160639%_
                                        _%code160644%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _%g160593160626%_
                                                    (cons _%code160644%_ '())))
                                        _%stx160588%_)))
                                   _%tl160599160622%_
                                   _%hd160598160620%_)))
                              (_%g160590160604%_ _%g160591160607%_))))
                      (_%g160590160604%_ _%g160591160607%_)))))
          (_%g160589160647%_ _%stx160588%_))))
    (define gxc#xform-define-values%
      (lambda (_%self160517%_ _%stx160518%_)
        (let* ((_%g160520160537%_
                (lambda (_%g160521160534%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160521160534%_))))
               (_%g160519160584%_
                (lambda (_%g160521160540%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160521160540%_))
                      (let ((_%e160524160542%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160521160540%_))))
                        (let ((_%hd160525160545%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160524160542%_)))
                              (_%tl160526160547%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160524160542%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160526160547%_))
                              (let ((_%e160527160550%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160526160547%_))))
                                (let ((_%hd160528160553%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160527160550%_)))
                                      (_%tl160529160555%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160527160550%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl160529160555%_))
                                      (let ((_%e160530160558%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl160529160555%_))))
                                        (let ((_%hd160531160561%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e160530160558%_)))
                                              (_%tl160532160563%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e160530160558%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl160532160563%_))
                                              ((lambda (_%g160522160566%_
                                                        _%g160523160567%_)
                                                 (let ((_%expr160582%_
                                                        (gxc#compile-e__1
                                                         _%self160517%_
                                                         _%g160522160566%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons _%g160523160567%_
                                                                (cons _%expr160582%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx160518%_)))
                                               _%hd160531160561%_
                                               _%hd160528160553%_)
                                              (_%g160520160537%_
                                               _%g160521160540%_))))
                                      (_%g160520160537%_ _%g160521160540%_))))
                              (_%g160520160537%_ _%g160521160540%_))))
                      (_%g160520160537%_ _%g160521160540%_)))))
          (_%g160519160584%_ _%stx160518%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self160446%_ _%stx160447%_)
        (let* ((_%g160449160466%_
                (lambda (_%g160450160463%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160450160463%_))))
               (_%g160448160514%_
                (lambda (_%g160450160469%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160450160469%_))
                      (let ((_%e160453160471%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160450160469%_))))
                        (let ((_%hd160454160474%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160453160471%_)))
                              (_%tl160455160476%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160453160471%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160455160476%_))
                              (let ((_%e160456160479%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160455160476%_))))
                                (let ((_%hd160457160482%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160456160479%_)))
                                      (_%tl160458160484%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160456160479%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl160458160484%_))
                                      (let ((_%e160459160487%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl160458160484%_))))
                                        (let ((_%hd160460160490%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e160459160487%_)))
                                              (_%tl160461160492%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e160459160487%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl160461160492%_))
                                              ((lambda (_%g160451160495%_
                                                        _%g160452160496%_)
                                                 (let ((__tmp161968
                                                        (lambda ()
                                                          (let ((_%expr160512%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#compile-e__1 _%self160446%_ _%g160451160495%_)))
                    (gxc#xform-wrap-source
                     (cons '%#define-syntax
                           (cons _%g160452160496%_ (cons _%expr160512%_ '())))
                     _%stx160447%_))))
               (__tmp161966
                (let ((__tmp161967
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp161967 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp161968
                                                    gx#current-expander-phi
                                                    __tmp161966)))
                                               _%hd160460160490%_
                                               _%hd160457160482%_)
                                              (_%g160449160466%_
                                               _%g160450160469%_))))
                                      (_%g160449160466%_ _%g160450160469%_))))
                              (_%g160449160466%_ _%g160450160469%_))))
                      (_%g160449160466%_ _%g160450160469%_)))))
          (_%g160448160514%_ _%stx160447%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self160376%_ _%stx160377%_)
        (let* ((_%g160379160396%_
                (lambda (_%g160380160393%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160380160393%_))))
               (_%g160378160443%_
                (lambda (_%g160380160399%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160380160399%_))
                      (let ((_%e160383160401%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160380160399%_))))
                        (let ((_%hd160384160404%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160383160401%_)))
                              (_%tl160385160406%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160383160401%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160385160406%_))
                              (let ((_%e160386160409%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160385160406%_))))
                                (let ((_%hd160387160412%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160386160409%_)))
                                      (_%tl160388160414%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160386160409%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl160388160414%_))
                                      (let ((_%e160389160417%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl160388160414%_))))
                                        (let ((_%hd160390160420%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e160389160417%_)))
                                              (_%tl160391160422%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e160389160417%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl160391160422%_))
                                              ((lambda (_%g160381160425%_
                                                        _%g160382160426%_)
                                                 (let ((_%expr160441%_
                                                        (gxc#compile-e__1
                                                         _%self160376%_
                                                         _%g160381160425%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#begin-annotation
                                                          (cons _%g160382160426%_
                                                                (cons _%expr160441%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx160377%_)))
                                               _%hd160390160420%_
                                               _%hd160387160412%_)
                                              (_%g160379160396%_
                                               _%g160380160399%_))))
                                      (_%g160379160396%_ _%g160380160399%_))))
                              (_%g160379160396%_ _%g160380160399%_))))
                      (_%g160379160396%_ _%g160380160399%_)))))
          (_%g160378160443%_ _%stx160377%_))))
    (define gxc#xform-lambda%
      (lambda (_%self160314%_ _%stx160315%_)
        (let* ((_%g160317160331%_
                (lambda (_%g160318160328%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160318160328%_))))
               (_%g160316160373%_
                (lambda (_%g160318160334%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160318160334%_))
                      (let ((_%e160321160336%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160318160334%_))))
                        (let ((_%hd160322160339%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160321160336%_)))
                              (_%tl160323160341%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160321160336%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160323160341%_))
                              (let ((_%e160324160344%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160323160341%_))))
                                (let ((_%hd160325160347%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160324160344%_)))
                                      (_%tl160326160349%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160324160344%_))))
                                  ((lambda (_%g160319160352%_
                                            _%g160320160353%_)
                                     (let ((__tmp161970
                                            (lambda ()
                                              (let ((_%body160371%_
                                                     (map (lambda (_%g160366160368%_)
                                                            (gxc#compile-e__1
                                                             _%self160314%_
                                                             _%g160366160368%_))
                                                          _%g160319160352%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#lambda
                                                       (cons _%g160320160353%_
                                                             _%body160371%_))
                                                 _%stx160315%_))))
                                           (__tmp161969
                                            (gxc#xform-let-locals
                                             _%g160320160353%_)))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp161970
                                        gxc#current-compile-local-env
                                        __tmp161969)))
                                   _%tl160326160349%_
                                   _%hd160325160347%_)))
                              (_%g160317160331%_ _%g160318160334%_))))
                      (_%g160317160331%_ _%g160318160334%_)))))
          (_%g160316160373%_ _%stx160315%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self160222%_ _%stx160223%_)
        (letrec ((_%clause-e160225%_
                  (lambda (_%clause160266%_)
                    (let* ((_%g160268160279%_
                            (lambda (_%g160269160276%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g160269160276%_))))
                           (_%g160267160311%_
                            (lambda (_%g160269160282%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g160269160282%_))
                                  (let ((_%e160272160284%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g160269160282%_))))
                                    (let ((_%hd160273160287%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e160272160284%_)))
                                          (_%tl160274160289%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e160272160284%_))))
                                      ((lambda (_%g160270160292%_
                                                _%g160271160293%_)
                                         (let ((__tmp161972
                                                (lambda ()
                                                  (let ((_%body160309%_
                                                         (map (lambda (_%g160304160306%_)
                                                                (gxc#compile-e__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%self160222%_
                         _%g160304160306%_))
                      _%g160270160292%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%g160271160293%_
                                                          _%body160309%_))))
                                               (__tmp161971
                                                (gxc#xform-let-locals
                                                 _%g160271160293%_)))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp161972
                                            gxc#current-compile-local-env
                                            __tmp161971)))
                                       _%tl160274160289%_
                                       _%hd160273160287%_)))
                                  (_%g160268160279%_ _%g160269160282%_)))))
                      (_%g160267160311%_ _%clause160266%_)))))
          (let* ((_%g160227160237%_
                  (lambda (_%g160228160234%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g160228160234%_))))
                 (_%g160226160263%_
                  (lambda (_%g160228160240%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g160228160240%_))
                        (let ((_%e160230160242%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g160228160240%_))))
                          (let ((_%hd160231160245%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e160230160242%_)))
                                (_%tl160232160247%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e160230160242%_))))
                            ((lambda (_%g160229160250%_)
                               (let ((_%clauses160261%_
                                      (map _%clause-e160225%_
                                           _%g160229160250%_)))
                                 (gxc#xform-wrap-source
                                  (cons '%#case-lambda _%clauses160261%_)
                                  _%stx160223%_)))
                             _%tl160232160247%_)))
                        (_%g160227160237%_ _%g160228160240%_)))))
            (_%g160226160263%_ _%stx160223%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self159982%_ _%stx159983%_)
        (let* ((_%g159985160018%_
                (lambda (_%g159986160015%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g159986160015%_))))
               (_%g159984160219%_
                (lambda (_%g159986160021%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g159986160021%_))
                      (let ((_%e159991160023%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g159986160021%_))))
                        (let ((_%hd159992160026%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e159991160023%_)))
                              (_%tl159993160028%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e159991160023%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl159993160028%_))
                              (let ((_%e159994160031%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl159993160028%_))))
                                (let ((_%hd159995160034%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e159994160031%_)))
                                      (_%tl159996160036%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e159994160031%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd159995160034%_))
                                      (let ((_g161973_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd159995160034%_
                                                '0))))
                                        (begin
                                          (let ((_g161974_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g161973_)
                                                       (##values-length
                                                        _g161973_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g161974_ 2)))
                                                (error "Context expects 2 values"
                                                       _g161974_)))
                                          (let ((_%target159997160039%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g161973_ 0)))
                                                (_%tl159999160041%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g161973_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl159999160041%_))
                                                (letrec ((_%loop160000160044%_
                                                          (lambda (_%hd159998160047%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr160004160049%_
                           _%hd160005160050%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd159998160047%_))
                        (let ((_%e160001160052%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd159998160047%_))))
                          (let ((_%lp-hd160002160055%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e160001160052%_)))
                                (_%lp-tl160003160057%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e160001160052%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd160002160055%_))
                                (let ((_%e160008160060%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd160002160055%_))))
                                  (let ((_%hd160009160063%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e160008160060%_)))
                                        (_%tl160010160065%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e160008160060%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl160010160065%_))
                                        (let ((_%e160011160068%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl160010160065%_))))
                                          (let ((_%hd160012160071%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e160011160068%_)))
                                                (_%tl160013160073%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e160011160068%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl160013160073%_))
                                                (_%loop160000160044%_
                                                 _%lp-tl160003160057%_
                                                 (cons _%hd160012160071%_
                                                       _%expr160004160049%_)
                                                 (cons _%hd160009160063%_
                                                       _%hd160005160050%_))
                                                (_%g159985160018%_
                                                 _%g159986160021%_))))
                                        (_%g159985160018%_
                                         _%g159986160021%_))))
                                (_%g159985160018%_ _%g159986160021%_))))
                        (let ((_%expr160006160076%_
                               (reverse _%expr160004160049%_))
                              (_%hd160007160077%_
                               (reverse _%hd160005160050%_)))
                          ((lambda (_%g159987160079%_
                                    _%g159988160080%_
                                    _%g159989160081%_
                                    _%g159990160082%_)
                             (let* ((_%g160101160117%_
                                     (lambda (_%g160102160114%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g160102160114%_))))
                                    (_%g160100160205%_
                                     (lambda (_%g160102160120%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g160102160120%_))
                                           (let ((_g161975_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g160102160120%_
                                                     '0))))
                                             (begin
                                               (let ((_g161976_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g161975_)
                                                            (##values-length
                                                             _g161975_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g161976_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g161976_)))
                                               (let ((_%target160104160122%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g161975_
                                                         0)))
                                                     (_%tl160106160124%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g161975_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl160106160124%_))
                                                     (letrec ((_%loop160107160127%_
                                                               (lambda (_%hd160105160130%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr160111160132%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd160105160130%_))
                             (let ((_%e160108160134%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd160105160130%_))))
                               (let ((_%lp-hd160109160137%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e160108160134%_)))
                                     (_%lp-tl160110160139%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e160108160134%_))))
                                 (_%loop160107160127%_
                                  _%lp-tl160110160139%_
                                  (cons _%lp-hd160109160137%_
                                        _%expr160111160132%_))))
                             (let ((_%expr160112160142%_
                                    (reverse _%expr160111160132%_)))
                               ((lambda (_%g160103160144%_)
                                  (let ((__tmp161979
                                         (lambda ()
                                           (let* ((_%g160158160165%_
                                                   (lambda (_%g160159160162%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g160159160162%_))))
                                                  (_%g160157160191%_
                                                   (lambda (_%g160159160168%_)
                                                     ((lambda (_%g160160160170%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%g159990160082%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%g160103160144%_
                                  _%g159989160081%_))
                               (let ((__tmp161980
                                      (lambda (_%g160180160184%_
                                               _%g160181160186%_
                                               _%g160182160188%_)
                                        (cons (cons _%g160181160186%_
                                                    (cons _%g160180160184%_
                                                          '()))
                                              _%g160182160188%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp161980
                                  '()
                                  _%g160103160144%_
                                  _%g159989160081%_)))
                             _%g160160160170%_))
                 _%stx159983%_))
              _%g160159160168%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g160157160191%_
                                              (map (lambda (_%g160193160195%_)
                                                     (gxc#compile-e__1
                                                      _%self159982%_
                                                      _%g160193160195%_))
                                                   _%g159987160079%_)))))
                                        (__tmp161977
                                         (gxc#xform-let-locals
                                          (let ((__tmp161978
                                                 (lambda (_%g160197160200%_
                                                          _%g160198160202%_)
                                                   (cons _%g160197160200%_
                                                         _%g160198160202%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp161978
                                             '()
                                             _%g159989160081%_)))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp161979
                                     gxc#current-compile-local-env
                                     __tmp161977)))
                                _%expr160112160142%_))))))
               (_%loop160107160127%_ _%target160104160122%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g160101160117%_
                                                      _%g160102160120%_)))))
                                           (_%g160101160117%_
                                            _%g160102160120%_)))))
                               (_%g160100160205%_
                                (map (lambda (_%g160207160209%_)
                                       (gxc#compile-e__1
                                        _%self159982%_
                                        _%g160207160209%_))
                                     (let ((__tmp161981
                                            (lambda (_%g160211160214%_
                                                     _%g160212160216%_)
                                              (cons _%g160211160214%_
                                                    _%g160212160216%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp161981
                                        '()
                                        _%g159988160080%_))))))
                           _%tl159996160036%_
                           _%expr160006160076%_
                           _%hd160007160077%_
                           _%hd159992160026%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop160000160044%_
                                                   _%target159997160039%_
                                                   '()
                                                   '()))
                                                (_%g159985160018%_
                                                 _%g159986160021%_)))))
                                      (_%g159985160018%_ _%g159986160021%_))))
                              (_%g159985160018%_ _%g159986160021%_))))
                      (_%g159985160018%_ _%g159986160021%_)))))
          (_%g159984160219%_ _%stx159983%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self159742%_ _%stx159743%_)
        (let* ((_%g159745159778%_
                (lambda (_%g159746159775%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g159746159775%_))))
               (_%g159744159979%_
                (lambda (_%g159746159781%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g159746159781%_))
                      (let ((_%e159751159783%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g159746159781%_))))
                        (let ((_%hd159752159786%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e159751159783%_)))
                              (_%tl159753159788%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e159751159783%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl159753159788%_))
                              (let ((_%e159754159791%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl159753159788%_))))
                                (let ((_%hd159755159794%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e159754159791%_)))
                                      (_%tl159756159796%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e159754159791%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd159755159794%_))
                                      (let ((_g161982_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd159755159794%_
                                                '0))))
                                        (begin
                                          (let ((_g161983_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g161982_)
                                                       (##values-length
                                                        _g161982_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g161983_ 2)))
                                                (error "Context expects 2 values"
                                                       _g161983_)))
                                          (let ((_%target159757159799%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g161982_ 0)))
                                                (_%tl159759159801%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g161982_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl159759159801%_))
                                                (letrec ((_%loop159760159804%_
                                                          (lambda (_%hd159758159807%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr159764159809%_
                           _%hd159765159810%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd159758159807%_))
                        (let ((_%e159761159812%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd159758159807%_))))
                          (let ((_%lp-hd159762159815%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e159761159812%_)))
                                (_%lp-tl159763159817%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e159761159812%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd159762159815%_))
                                (let ((_%e159768159820%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd159762159815%_))))
                                  (let ((_%hd159769159823%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e159768159820%_)))
                                        (_%tl159770159825%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e159768159820%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl159770159825%_))
                                        (let ((_%e159771159828%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl159770159825%_))))
                                          (let ((_%hd159772159831%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e159771159828%_)))
                                                (_%tl159773159833%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e159771159828%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl159773159833%_))
                                                (_%loop159760159804%_
                                                 _%lp-tl159763159817%_
                                                 (cons _%hd159772159831%_
                                                       _%expr159764159809%_)
                                                 (cons _%hd159769159823%_
                                                       _%hd159765159810%_))
                                                (_%g159745159778%_
                                                 _%g159746159781%_))))
                                        (_%g159745159778%_
                                         _%g159746159781%_))))
                                (_%g159745159778%_ _%g159746159781%_))))
                        (let ((_%expr159766159836%_
                               (reverse _%expr159764159809%_))
                              (_%hd159767159837%_
                               (reverse _%hd159765159810%_)))
                          ((lambda (_%g159747159839%_
                                    _%g159748159840%_
                                    _%g159749159841%_
                                    _%g159750159842%_)
                             (let ((__tmp161986
                                    (lambda ()
                                      (let* ((_%g159862159878%_
                                              (lambda (_%g159863159875%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g159863159875%_))))
                                             (_%g159861159958%_
                                              (lambda (_%g159863159881%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g159863159881%_))
                                                    (let ((_g161987_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g159863159881%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g161988_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g161987_)
                             (##values-length _g161987_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g161988_ 2)))
                      (error "Context expects 2 values" _g161988_)))
                (let ((_%target159865159883%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g161987_ 0)))
                      (_%tl159867159885%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g161987_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl159867159885%_))
                      (letrec ((_%loop159868159888%_
                                (lambda (_%hd159866159891%_
                                         _%expr159872159893%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd159866159891%_))
                                      (let ((_%e159869159895%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd159866159891%_))))
                                        (let ((_%lp-hd159870159898%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e159869159895%_)))
                                              (_%lp-tl159871159900%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e159869159895%_))))
                                          (_%loop159868159888%_
                                           _%lp-tl159871159900%_
                                           (cons _%lp-hd159870159898%_
                                                 _%expr159872159893%_))))
                                      (let ((_%expr159873159903%_
                                             (reverse _%expr159872159893%_)))
                                        ((lambda (_%g159864159905%_)
                                           (let* ((_%g159919159926%_
                                                   (lambda (_%g159920159923%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g159920159923%_))))
                                                  (_%g159918159951%_
                                                   (lambda (_%g159920159929%_)
                                                     ((lambda (_%g159921159931%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%g159750159842%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%g159864159905%_
                                  _%g159749159841%_))
                               (let ((__tmp161989
                                      (lambda (_%g159940159944%_
                                               _%g159941159946%_
                                               _%g159942159948%_)
                                        (cons (cons _%g159941159946%_
                                                    (cons _%g159940159944%_
                                                          '()))
                                              _%g159942159948%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp161989
                                  '()
                                  _%g159864159905%_
                                  _%g159749159841%_)))
                             _%g159921159931%_))
                 _%stx159743%_))
              _%g159920159929%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g159918159951%_
                                              (map (lambda (_%g159953159955%_)
                                                     (gxc#compile-e__1
                                                      _%self159742%_
                                                      _%g159953159955%_))
                                                   _%g159747159839%_))))
                                         _%expr159873159903%_))))))
                        (_%loop159868159888%_ _%target159865159883%_ '()))
                      (_%g159862159878%_ _%g159863159881%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g159862159878%_
                                                     _%g159863159881%_)))))
                                        (_%g159861159958%_
                                         (map (lambda (_%g159960159962%_)
                                                (gxc#compile-e__1
                                                 _%self159742%_
                                                 _%g159960159962%_))
                                              (let ((__tmp161990
                                                     (lambda (_%g159964159967%_
                                                              _%g159965159969%_)
                                                       (cons _%g159964159967%_
                                                             _%g159965159969%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp161990
                                                 '()
                                                 _%g159748159840%_)))))))
                                   (__tmp161984
                                    (gxc#xform-let-locals
                                     (let ((__tmp161985
                                            (lambda (_%g159971159974%_
                                                     _%g159972159976%_)
                                              (cons _%g159971159974%_
                                                    _%g159972159976%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp161985
                                        '()
                                        _%g159749159841%_)))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp161986
                                gxc#current-compile-local-env
                                __tmp161984)))
                           _%tl159756159796%_
                           _%expr159766159836%_
                           _%hd159767159837%_
                           _%hd159752159786%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop159760159804%_
                                                   _%target159757159799%_
                                                   '()
                                                   '()))
                                                (_%g159745159778%_
                                                 _%g159746159781%_)))))
                                      (_%g159745159778%_ _%g159746159781%_))))
                              (_%g159745159778%_ _%g159746159781%_))))
                      (_%g159745159778%_ _%g159746159781%_)))))
          (_%g159744159979%_ _%stx159743%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings159609%_)
        (letrec ((_%flatten159611%_
                  (lambda (_%maybe-lst159669%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%maybe-lst159669%_))
                        (cons _%maybe-lst159669%_ '())
                        (let _%loop159671%_ ((_%rest159673%_
                                              _%maybe-lst159669%_)
                                             (_%result159674%_ '()))
                          (let* ((_%__stx161878161879%_ _%rest159673%_)
                                 (_%g159678159690%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx161878161879%_)))))
                            (let ((_%__kont161880161881%_
                                   (lambda (_%g159680159728%_
                                            _%g159681159729%_)
                                     (_%loop159671%_
                                      _%g159680159728%_
                                      (let ((__tmp161991
                                             (_%flatten159611%_
                                              _%g159681159729%_)))
                                        (declare (not safe))
                                        (__foldl1
                                         cons
                                         _%result159674%_
                                         __tmp161991)))))
                                  (_%__kont161882161883%_
                                   (lambda (_%g159685159702%_)
                                     (cons _%g159685159702%_
                                           _%result159674%_)))
                                  (_%__kont161884161885%_
                                   (lambda () _%result159674%_)))
                              (let ((_%g159676159715%_
                                     (lambda ()
                                       (let ((_%g159685159702%_
                                              _%__stx161878161879%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%g159685159702%_))
                                             (_%__kont161882161883%_
                                              _%g159685159702%_)
                                             (_%__kont161884161885%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx161878161879%_))
                                    (let ((_%e159682159720%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx161878161879%_))))
                                      (let ((_%tl159684159725%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e159682159720%_)))
                                            (_%hd159683159723%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e159682159720%_))))
                                        (_%__kont161880161881%_
                                         _%tl159684159725%_
                                         _%hd159683159723%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g159676159715%_)))))))))))
          (let _%loop159613%_ ((_%rest159615%_
                                (_%flatten159611%_ _%bindings159609%_))
                               (_%locals159616%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-local-env))))
            (let* ((_%rest159617159628%_ _%rest159615%_)
                   (_%E159621159632%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching"
                               _%rest159617159628%_
                               '([(? identifier? id) . rest])
                               '((? identifier? id))
                               '(_)))
                      '#!void)))
              (let ((_%K159624159657%_
                     (lambda (_%rest159654%_ _%id159655%_)
                       (_%loop159613%_
                        _%rest159654%_
                        (cons (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _%id159655%_))
                              _%locals159616%_))))
                    (_%K159623159646%_
                     (lambda (_%id159644%_)
                       (cons (let ()
                               (declare (not safe))
                               (gxc#identifier-symbol _%id159644%_))
                             _%locals159616%_)))
                    (_%K159622159637%_ (lambda () _%locals159616%_)))
                (let ((_%try-match159619159651%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%rest159617159628%_))
                             (let ((_%id159649%_ _%rest159617159628%_))
                               (_%K159623159646%_ _%id159649%_))
                             (_%K159622159637%_)))))
                  (if (pair? _%rest159617159628%_)
                      (let ((_%tl159626159662%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest159617159628%_)))
                            (_%hd159625159660%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest159617159628%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd159625159660%_))
                            (let ((_%id159665%_ _%hd159625159660%_)
                                  (_%rest159667%_ _%tl159626159662%_))
                              (_%K159624159657%_ _%rest159667%_ _%id159665%_))
                            (_%K159622159637%_)))
                      (_%try-match159619159651%_)))))))))
    (define gxc#xform-operands
      (lambda (_%self159561%_ _%stx159562%_)
        (let* ((_%g159564159575%_
                (lambda (_%g159565159572%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g159565159572%_))))
               (_%g159563159606%_
                (lambda (_%g159565159578%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g159565159578%_))
                      (let ((_%e159568159580%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g159565159578%_))))
                        (let ((_%hd159569159583%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e159568159580%_)))
                              (_%tl159570159585%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e159568159580%_))))
                          ((lambda (_%g159566159588%_ _%g159567159589%_)
                             (let ((_%rands159604%_
                                    (map (lambda (_%g159599159601%_)
                                           (gxc#compile-e__1
                                            _%self159561%_
                                            _%g159599159601%_))
                                         _%g159566159588%_)))
                               (gxc#xform-wrap-source
                                (cons _%g159567159589%_ _%rands159604%_)
                                _%stx159562%_)))
                           _%tl159570159585%_
                           _%hd159569159583%_)))
                      (_%g159564159575%_ _%g159565159578%_)))))
          (_%g159563159606%_ _%stx159562%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self159491%_ _%stx159492%_)
        (let* ((_%g159494159511%_
                (lambda (_%g159495159508%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g159495159508%_))))
               (_%g159493159558%_
                (lambda (_%g159495159514%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g159495159514%_))
                      (let ((_%e159498159516%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g159495159514%_))))
                        (let ((_%hd159499159519%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e159498159516%_)))
                              (_%tl159500159521%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e159498159516%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl159500159521%_))
                              (let ((_%e159501159524%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl159500159521%_))))
                                (let ((_%hd159502159527%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e159501159524%_)))
                                      (_%tl159503159529%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e159501159524%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl159503159529%_))
                                      (let ((_%e159504159532%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl159503159529%_))))
                                        (let ((_%hd159505159535%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e159504159532%_)))
                                              (_%tl159506159537%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e159504159532%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl159506159537%_))
                                              ((lambda (_%g159496159540%_
                                                        _%g159497159541%_)
                                                 (let ((_%expr159556%_
                                                        (gxc#compile-e__1
                                                         _%self159491%_
                                                         _%g159496159540%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _%g159497159541%_
                                                                (cons _%expr159556%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx159492%_)))
                                               _%hd159505159535%_
                                               _%hd159502159527%_)
                                              (_%g159494159511%_
                                               _%g159495159514%_))))
                                      (_%g159494159511%_ _%g159495159514%_))))
                              (_%g159494159511%_ _%g159495159514%_))))
                      (_%g159494159511%_ _%g159495159514%_)))))
          (_%g159493159558%_ _%stx159492%_))))))
