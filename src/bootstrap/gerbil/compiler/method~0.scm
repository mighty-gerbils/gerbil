(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1771093450)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx194491%_)
        (let* ((_%self194493%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e194495%_
                (let ((__tmp194713 (gxc#stx-car-e _%stx194491%_)))
                  (declare (not safe))
                  (method-ref _%self194493%_ __tmp194713))))
          (if _%$e194495%_
              ((lambda (_%method194498%_)
                 (declare (not safe))
                 (let ((_%$e194501%_ (gx#stx-source _%stx194491%_)))
                   (if _%$e194501%_
                       ((lambda (_%source194504%_)
                          (call-with-parameters__1
                           (lambda ()
                             (_%method194498%_ _%self194493%_ _%stx194491%_))
                           gxc#current-compile-context
                           (cons (cons '@ (cons _%source194504%_ '()))
                                 (let ((_%$e194508%_
                                        (gxc#current-compile-context)))
                                   (if _%$e194508%_ _%$e194508%_ '())))))
                        _%$e194501%_)
                       (_%method194498%_ _%self194493%_ _%stx194491%_))))
               _%$e194495%_)
              (let ((__tmp194715 (gxc#stx-car-e _%stx194491%_))
                    (__tmp194714
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx194491%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self194493%_
                       __tmp194715
                       __tmp194714))))))
    (define gxc#compile-e__1
      (lambda (_%self194513%_ _%stx194514%_)
        (let ((_%$e194516%_
               (let ((__tmp194716 (gxc#stx-car-e _%stx194514%_)))
                 (declare (not safe))
                 (method-ref _%self194513%_ __tmp194716))))
          (if _%$e194516%_
              ((lambda (_%method194519%_)
                 (declare (not safe))
                 (let ((_%$e194522%_ (gx#stx-source _%stx194514%_)))
                   (if _%$e194522%_
                       ((lambda (_%source194525%_)
                          (call-with-parameters__1
                           (lambda ()
                             (_%method194519%_ _%self194513%_ _%stx194514%_))
                           gxc#current-compile-context
                           (cons (cons '@ (cons _%source194525%_ '()))
                                 (let ((_%$e194529%_
                                        (gxc#current-compile-context)))
                                   (if _%$e194529%_ _%$e194529%_ '())))))
                        _%$e194522%_)
                       (_%method194519%_ _%self194513%_ _%stx194514%_))))
               _%$e194516%_)
              (let ((__tmp194718 (gxc#stx-car-e _%stx194514%_))
                    (__tmp194717
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx194514%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self194513%_
                       __tmp194718
                       __tmp194717))))))
    (define gxc#compile-e
      (lambda _g194719_
        (let ((_g194720_ (let () (declare (not safe)) (##length _g194719_))))
          (cond ((let () (declare (not safe)) (##fx= _g194720_ 1))
                 (apply gxc#compile-e__0 _g194719_))
                ((let () (declare (not safe)) (##fx= _g194720_ 2))
                 (apply gxc#compile-e__1 _g194719_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g194719_))))))
    (define gxc#stx-car-e
      (lambda (_%stx194489%_)
        (let ((__tmp194721
               (car (let () (declare (not safe)) (gx#stx-e _%stx194489%_)))))
          (declare (not safe))
          (gx#stx-e __tmp194721))))
    (define gxc#void-method (lambda (_%self194486%_ _%stx194487%_) '#!void))
    (define gxc#false-method (lambda (_%self194483%_ _%stx194484%_) '#f))
    (define gxc#true-method (lambda (_%self194480%_ _%stx194481%_) '#t))
    (define gxc#identity-method
      (lambda (_%self194477%_ _%stx194478%_) _%stx194478%_))
    (define gxc#::void-expression::t
      (let ((__tmp194722 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp194722
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args194474%_
        (apply make-instance gxc#::void-expression::t _%$args194474%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp194723
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
        (__make-atomic-promise __tmp194723)))
    (define gxc#::void-special-form::t
      (let ((__tmp194724 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp194724
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args194470%_
        (apply make-instance gxc#::void-special-form::t _%$args194470%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp194725
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
        (__make-atomic-promise __tmp194725)))
    (define gxc#::void::t
      (let ((__tmp194726
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp194726 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args194466%_
        (apply make-instance gxc#::void::t _%$args194466%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp194727
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp194727)))
    (define gxc#::false-expression::t
      (let ((__tmp194728 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp194728
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args194462%_
        (apply make-instance gxc#::false-expression::t _%$args194462%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp194729
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
        (__make-atomic-promise __tmp194729)))
    (define gxc#::false-special-form::t
      (let ((__tmp194730 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp194730
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args194458%_
        (apply make-instance gxc#::false-special-form::t _%$args194458%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp194731
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
        (__make-atomic-promise __tmp194731)))
    (define gxc#::false::t
      (let ((__tmp194732
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp194732 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args194454%_
        (apply make-instance gxc#::false::t _%$args194454%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp194733
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp194733)))
    (define gxc#::identity-expression::t
      (let ((__tmp194734 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp194734
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args194450%_
        (apply make-instance gxc#::identity-expression::t _%$args194450%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp194735
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
        (__make-atomic-promise __tmp194735)))
    (define gxc#::identity-special-form::t
      (let ((__tmp194736 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp194736
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args194446%_
        (apply make-instance gxc#::identity-special-form::t _%$args194446%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp194737
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
        (__make-atomic-promise __tmp194737)))
    (define gxc#::identity::t
      (let ((__tmp194738
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp194738
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args194442%_
        (apply make-instance gxc#::identity::t _%$args194442%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp194739
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp194739)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp194740 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp194740
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args194438%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args194438%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp194741
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
        (__make-atomic-promise __tmp194741)))
    (define gxc#::basic-xform::t
      (let ((__tmp194742
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp194742
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args194434%_
        (apply make-instance gxc#::basic-xform::t _%$args194434%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp194743
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
        (__make-atomic-promise __tmp194743)))
    (define gxc#apply-begin%
      (lambda (_%self194390%_ _%stx194391%_)
        (let* ((_%g194393194403%_
                (lambda (_%g194394194400%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194394194400%_))))
               (_%g194392194430%_
                (lambda (_%g194394194406%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194394194406%_))
                      (let ((_%e194396194408%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194394194406%_))))
                        (let ((_%hd194397194411%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194396194408%_)))
                              (_%tl194398194413%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194396194408%_))))
                          ((lambda (_%g194395194416%_)
                             (for-each
                              (lambda (_%g194425194427%_)
                                (gxc#compile-e__1
                                 _%self194390%_
                                 _%g194425194427%_))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%g194395194416%_))))
                           _%tl194398194413%_)))
                      (_%g194393194403%_ _%g194394194406%_)))))
          (_%g194392194430%_ _%stx194391%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self194351%_ _%stx194352%_)
        (let* ((_%g194354194364%_
                (lambda (_%g194355194361%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194355194361%_))))
               (_%g194353194387%_
                (lambda (_%g194355194367%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194355194367%_))
                      (let ((_%e194357194369%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194355194367%_))))
                        (let ((_%hd194358194372%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194357194369%_)))
                              (_%tl194359194374%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194357194369%_))))
                          ((lambda (_%g194356194377%_)
                             (gxc#compile-e__1
                              _%self194351%_
                              (last _%g194356194377%_)))
                           _%tl194359194374%_)))
                      (_%g194354194364%_ _%g194355194367%_)))))
          (_%g194353194387%_ _%stx194352%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self194347%_ _%stx194348%_)
        (let ((__tmp194746
               (lambda () (gxc#apply-begin% _%self194347%_ _%stx194348%_)))
              (__tmp194744
               (let ((__tmp194745
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp194745 '1))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp194746
           gx#current-expander-phi
           __tmp194744))))
    (define gxc#apply-module%
      (lambda (_%self194286%_ _%stx194287%_)
        (let* ((_%g194289194303%_
                (lambda (_%g194290194300%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194290194300%_))))
               (_%g194288194344%_
                (lambda (_%g194290194306%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194290194306%_))
                      (let ((_%e194293194308%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194290194306%_))))
                        (let ((_%hd194294194311%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194293194308%_)))
                              (_%tl194295194313%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194293194308%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194295194313%_))
                              (let ((_%e194296194316%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194295194313%_))))
                                (let ((_%hd194297194319%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194296194316%_)))
                                      (_%tl194298194321%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194296194316%_))))
                                  ((lambda (_%g194291194324%_
                                            _%g194292194325%_)
                                     (let* ((_%ctx194338%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g194292194325%_)))
                                            (_%ctx-stx194340%_
                                             (##structure-ref
                                              _%ctx194338%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp194747
                                             (lambda ()
                                               (gxc#compile-e__1
                                                _%self194286%_
                                                _%ctx-stx194340%_))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp194747
                                        gx#current-expander-context
                                        _%ctx194338%_)))
                                   _%tl194298194321%_
                                   _%hd194297194319%_)))
                              (_%g194289194303%_ _%g194290194306%_))))
                      (_%g194289194303%_ _%g194290194306%_)))))
          (_%g194288194344%_ _%stx194287%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self194218%_ _%stx194219%_)
        (let* ((_%g194221194238%_
                (lambda (_%g194222194235%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194222194235%_))))
               (_%g194220194283%_
                (lambda (_%g194222194241%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194222194241%_))
                      (let ((_%e194225194243%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194222194241%_))))
                        (let ((_%hd194226194246%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194225194243%_)))
                              (_%tl194227194248%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194225194243%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194227194248%_))
                              (let ((_%e194228194251%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194227194248%_))))
                                (let ((_%hd194229194254%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194228194251%_)))
                                      (_%tl194230194256%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194228194251%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194230194256%_))
                                      (let ((_%e194231194259%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl194230194256%_))))
                                        (let ((_%hd194232194262%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194231194259%_)))
                                              (_%tl194233194264%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194231194259%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl194233194264%_))
                                              ((lambda (_%g194223194267%_
                                                        _%g194224194268%_)
                                                 (gxc#compile-e__1
                                                  _%self194218%_
                                                  _%g194223194267%_))
                                               _%hd194232194262%_
                                               _%hd194229194254%_)
                                              (_%g194221194238%_
                                               _%g194222194241%_))))
                                      (_%g194221194238%_ _%g194222194241%_))))
                              (_%g194221194238%_ _%g194222194241%_))))
                      (_%g194221194238%_ _%g194222194241%_)))))
          (_%g194220194283%_ _%stx194219%_))))
    (define gxc#apply-define-values%
      (lambda (_%self194150%_ _%stx194151%_)
        (let* ((_%g194153194170%_
                (lambda (_%g194154194167%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194154194167%_))))
               (_%g194152194215%_
                (lambda (_%g194154194173%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194154194173%_))
                      (let ((_%e194157194175%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194154194173%_))))
                        (let ((_%hd194158194178%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194157194175%_)))
                              (_%tl194159194180%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194157194175%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194159194180%_))
                              (let ((_%e194160194183%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194159194180%_))))
                                (let ((_%hd194161194186%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194160194183%_)))
                                      (_%tl194162194188%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194160194183%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194162194188%_))
                                      (let ((_%e194163194191%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl194162194188%_))))
                                        (let ((_%hd194164194194%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194163194191%_)))
                                              (_%tl194165194196%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194163194191%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl194165194196%_))
                                              ((lambda (_%g194155194199%_
                                                        _%g194156194200%_)
                                                 (gxc#compile-e__1
                                                  _%self194150%_
                                                  _%g194155194199%_))
                                               _%hd194164194194%_
                                               _%hd194161194186%_)
                                              (_%g194153194170%_
                                               _%g194154194173%_))))
                                      (_%g194153194170%_ _%g194154194173%_))))
                              (_%g194153194170%_ _%g194154194173%_))))
                      (_%g194153194170%_ _%g194154194173%_)))))
          (_%g194152194215%_ _%stx194151%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self194081%_ _%stx194082%_)
        (let* ((_%g194084194101%_
                (lambda (_%g194085194098%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194085194098%_))))
               (_%g194083194147%_
                (lambda (_%g194085194104%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194085194104%_))
                      (let ((_%e194088194106%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194085194104%_))))
                        (let ((_%hd194089194109%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194088194106%_)))
                              (_%tl194090194111%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194088194106%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194090194111%_))
                              (let ((_%e194091194114%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194090194111%_))))
                                (let ((_%hd194092194117%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194091194114%_)))
                                      (_%tl194093194119%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194091194114%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194093194119%_))
                                      (let ((_%e194094194122%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl194093194119%_))))
                                        (let ((_%hd194095194125%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194094194122%_)))
                                              (_%tl194096194127%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194094194122%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl194096194127%_))
                                              ((lambda (_%g194086194130%_
                                                        _%g194087194131%_)
                                                 (let ((__tmp194750
                                                        (lambda ()
                                                          (gxc#compile-e__1
                                                           _%self194081%_
                                                           _%g194086194130%_)))
                                                       (__tmp194748
                                                        (let ((__tmp194749
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp194749 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp194750
                                                    gx#current-expander-phi
                                                    __tmp194748)))
                                               _%hd194095194125%_
                                               _%hd194092194117%_)
                                              (_%g194084194101%_
                                               _%g194085194104%_))))
                                      (_%g194084194101%_ _%g194085194104%_))))
                              (_%g194084194101%_ _%g194085194104%_))))
                      (_%g194084194101%_ _%g194085194104%_)))))
          (_%g194083194147%_ _%stx194082%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self194013%_ _%stx194014%_)
        (let* ((_%g194016194033%_
                (lambda (_%g194017194030%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194017194030%_))))
               (_%g194015194078%_
                (lambda (_%g194017194036%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194017194036%_))
                      (let ((_%e194020194038%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194017194036%_))))
                        (let ((_%hd194021194041%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194020194038%_)))
                              (_%tl194022194043%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194020194038%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194022194043%_))
                              (let ((_%e194023194046%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194022194043%_))))
                                (let ((_%hd194024194049%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194023194046%_)))
                                      (_%tl194025194051%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194023194046%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194025194051%_))
                                      (let ((_%e194026194054%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl194025194051%_))))
                                        (let ((_%hd194027194057%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194026194054%_)))
                                              (_%tl194028194059%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194026194054%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl194028194059%_))
                                              ((lambda (_%g194018194062%_
                                                        _%g194019194063%_)
                                                 (gxc#compile-e__1
                                                  _%self194013%_
                                                  _%g194018194062%_))
                                               _%hd194027194057%_
                                               _%hd194024194049%_)
                                              (_%g194016194033%_
                                               _%g194017194036%_))))
                                      (_%g194016194033%_ _%g194017194036%_))))
                              (_%g194016194033%_ _%g194017194036%_))))
                      (_%g194016194033%_ _%g194017194036%_)))))
          (_%g194015194078%_ _%stx194014%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self193899%_ _%stx193900%_)
        (let* ((_%g193902193930%_
                (lambda (_%g193903193927%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193903193927%_))))
               (_%g193901194010%_
                (lambda (_%g193903193933%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193903193933%_))
                      (let ((_%e193906193935%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193903193933%_))))
                        (let ((_%hd193907193938%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193906193935%_)))
                              (_%tl193908193940%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193906193935%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl193908193940%_))
                              (let ((_g194751_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl193908193940%_
                                        '0))))
                                (begin
                                  (let ((_g194752_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g194751_)
                                               (##values-length _g194751_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g194752_ 2)))
                                        (error "Context expects 2 values"
                                               _g194752_)))
                                  (let ((_%target193909193943%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g194751_ 0)))
                                        (_%tl193911193945%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g194751_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl193911193945%_))
                                        (letrec ((_%loop193912193948%_
                                                  (lambda (_%hd193910193951%_
                                                           _%body193916193953%_
                                                           _%hd193917193954%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd193910193951%_))
                                                        (let ((_%e193913193956%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd193910193951%_))))
                  (let ((_%lp-hd193914193959%_
                         (let ()
                           (declare (not safe))
                           (##car _%e193913193956%_)))
                        (_%lp-tl193915193961%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e193913193956%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd193914193959%_))
                        (let ((_%e193920193964%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd193914193959%_))))
                          (let ((_%hd193921193967%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e193920193964%_)))
                                (_%tl193922193969%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e193920193964%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl193922193969%_))
                                (let ((_%e193923193972%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl193922193969%_))))
                                  (let ((_%hd193924193975%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e193923193972%_)))
                                        (_%tl193925193977%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e193923193972%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl193925193977%_))
                                        (_%loop193912193948%_
                                         _%lp-tl193915193961%_
                                         (cons _%hd193924193975%_
                                               _%body193916193953%_)
                                         (cons _%hd193921193967%_
                                               _%hd193917193954%_))
                                        (_%g193902193930%_
                                         _%g193903193933%_))))
                                (_%g193902193930%_ _%g193903193933%_))))
                        (_%g193902193930%_ _%g193903193933%_))))
                (let ((_%body193918193980%_ (reverse _%body193916193953%_))
                      (_%hd193919193981%_ (reverse _%hd193917193954%_)))
                  ((lambda (_%g193904193983%_ _%g193905193984%_)
                     (for-each
                      (lambda (_%g193998194000%_)
                        (gxc#compile-e__1 _%self193899%_ _%g193998194000%_))
                      (let ((__tmp194753
                             (lambda (_%g194002194005%_ _%g194003194007%_)
                               (cons _%g194002194005%_ _%g194003194007%_))))
                        (declare (not safe))
                        (foldr__0 __tmp194753 '() _%g193904193983%_))))
                   _%body193918193980%_
                   _%hd193919193981%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop193912193948%_
                                           _%target193909193943%_
                                           '()
                                           '()))
                                        (_%g193902193930%_
                                         _%g193903193933%_)))))
                              (_%g193902193930%_ _%g193903193933%_))))
                      (_%g193902193930%_ _%g193903193933%_)))))
          (_%g193901194010%_ _%stx193900%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self193756%_ _%stx193757%_)
        (let* ((_%g193759193794%_
                (lambda (_%g193760193791%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193760193791%_))))
               (_%g193758193896%_
                (lambda (_%g193760193797%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193760193797%_))
                      (let ((_%e193764193799%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193760193797%_))))
                        (let ((_%hd193765193802%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193764193799%_)))
                              (_%tl193766193804%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193764193799%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193766193804%_))
                              (let ((_%e193767193807%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193766193804%_))))
                                (let ((_%hd193768193810%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193767193807%_)))
                                      (_%tl193769193812%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193767193807%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd193768193810%_))
                                      (let ((_g194754_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd193768193810%_
                                                '0))))
                                        (begin
                                          (let ((_g194755_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g194754_)
                                                       (##values-length
                                                        _g194754_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g194755_ 2)))
                                                (error "Context expects 2 values"
                                                       _g194755_)))
                                          (let ((_%target193770193815%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g194754_ 0)))
                                                (_%tl193772193817%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g194754_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl193772193817%_))
                                                (letrec ((_%loop193773193820%_
                                                          (lambda (_%hd193771193823%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr193777193825%_
                           _%hd193778193826%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd193771193823%_))
                        (let ((_%e193774193828%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd193771193823%_))))
                          (let ((_%lp-hd193775193831%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e193774193828%_)))
                                (_%lp-tl193776193833%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e193774193828%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd193775193831%_))
                                (let ((_%e193781193836%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd193775193831%_))))
                                  (let ((_%hd193782193839%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e193781193836%_)))
                                        (_%tl193783193841%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e193781193836%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl193783193841%_))
                                        (let ((_%e193784193844%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl193783193841%_))))
                                          (let ((_%hd193785193847%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e193784193844%_)))
                                                (_%tl193786193849%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e193784193844%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl193786193849%_))
                                                (_%loop193773193820%_
                                                 _%lp-tl193776193833%_
                                                 (cons _%hd193785193847%_
                                                       _%expr193777193825%_)
                                                 (cons _%hd193782193839%_
                                                       _%hd193778193826%_))
                                                (_%g193759193794%_
                                                 _%g193760193797%_))))
                                        (_%g193759193794%_
                                         _%g193760193797%_))))
                                (_%g193759193794%_ _%g193760193797%_))))
                        (let ((_%expr193779193852%_
                               (reverse _%expr193777193825%_))
                              (_%hd193780193853%_
                               (reverse _%hd193778193826%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193769193812%_))
                              (let ((_%e193787193855%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193769193812%_))))
                                (let ((_%hd193788193858%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193787193855%_)))
                                      (_%tl193789193860%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193787193855%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl193789193860%_))
                                      ((lambda (_%g193761193863%_
                                                _%g193762193864%_
                                                _%g193763193865%_)
                                         (for-each
                                          (lambda (_%g193884193886%_)
                                            (gxc#compile-e__1
                                             _%self193756%_
                                             _%g193884193886%_))
                                          (let ((__tmp194757
                                                 (lambda (_%g193888193891%_
                                                          _%g193889193893%_)
                                                   (cons _%g193888193891%_
                                                         _%g193889193893%_)))
                                                (__tmp194756
                                                 (cons _%g193761193863%_ '())))
                                            (declare (not safe))
                                            (foldr__0
                                             __tmp194757
                                             __tmp194756
                                             _%g193762193864%_))))
                                       _%hd193788193858%_
                                       _%expr193779193852%_
                                       _%hd193780193853%_)
                                      (_%g193759193794%_ _%g193760193797%_))))
                              (_%g193759193794%_ _%g193760193797%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop193773193820%_
                                                   _%target193770193815%_
                                                   '()
                                                   '()))
                                                (_%g193759193794%_
                                                 _%g193760193797%_)))))
                                      (_%g193759193794%_ _%g193760193797%_))))
                              (_%g193759193794%_ _%g193760193797%_))))
                      (_%g193759193794%_ _%g193760193797%_)))))
          (_%g193758193896%_ _%stx193757%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self193701%_ _%stx193702%_)
        (let* ((_%g193704193718%_
                (lambda (_%g193705193715%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193705193715%_))))
               (_%g193703193753%_
                (lambda (_%g193705193721%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193705193721%_))
                      (let ((_%e193708193723%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193705193721%_))))
                        (let ((_%hd193709193726%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193708193723%_)))
                              (_%tl193710193728%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193708193723%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193710193728%_))
                              (let ((_%e193711193731%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193710193728%_))))
                                (let ((_%hd193712193734%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193711193731%_)))
                                      (_%tl193713193736%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193711193731%_))))
                                  ((lambda (_%g193706193739%_
                                            _%g193707193740%_)
                                     (gxc#compile-e__1
                                      _%self193701%_
                                      (last _%g193706193739%_)))
                                   _%tl193713193736%_
                                   _%hd193712193734%_)))
                              (_%g193704193718%_ _%g193705193721%_))))
                      (_%g193704193718%_ _%g193705193721%_)))))
          (_%g193703193753%_ _%stx193702%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self193633%_ _%stx193634%_)
        (let* ((_%g193636193653%_
                (lambda (_%g193637193650%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193637193650%_))))
               (_%g193635193698%_
                (lambda (_%g193637193656%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193637193656%_))
                      (let ((_%e193640193658%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193637193656%_))))
                        (let ((_%hd193641193661%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193640193658%_)))
                              (_%tl193642193663%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193640193658%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193642193663%_))
                              (let ((_%e193643193666%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193642193663%_))))
                                (let ((_%hd193644193669%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193643193666%_)))
                                      (_%tl193645193671%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193643193666%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193645193671%_))
                                      (let ((_%e193646193674%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193645193671%_))))
                                        (let ((_%hd193647193677%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193646193674%_)))
                                              (_%tl193648193679%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193646193674%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193648193679%_))
                                              ((lambda (_%g193638193682%_
                                                        _%g193639193683%_)
                                                 (gxc#compile-e__1
                                                  _%self193633%_
                                                  _%g193638193682%_))
                                               _%hd193647193677%_
                                               _%hd193644193669%_)
                                              (_%g193636193653%_
                                               _%g193637193656%_))))
                                      (_%g193636193653%_ _%g193637193656%_))))
                              (_%g193636193653%_ _%g193637193656%_))))
                      (_%g193636193653%_ _%g193637193656%_)))))
          (_%g193635193698%_ _%stx193634%_))))
    (define gxc#apply-operands
      (lambda (_%self193548%_ _%stx193549%_)
        (let* ((_%g193551193570%_
                (lambda (_%g193552193567%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193552193567%_))))
               (_%g193550193630%_
                (lambda (_%g193552193573%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193552193573%_))
                      (let ((_%e193554193575%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193552193573%_))))
                        (let ((_%hd193555193578%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193554193575%_)))
                              (_%tl193556193580%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193554193575%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl193556193580%_))
                              (let ((_g194758_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl193556193580%_
                                        '0))))
                                (begin
                                  (let ((_g194759_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g194758_)
                                               (##values-length _g194758_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g194759_ 2)))
                                        (error "Context expects 2 values"
                                               _g194759_)))
                                  (let ((_%target193557193583%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g194758_ 0)))
                                        (_%tl193559193585%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g194758_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl193559193585%_))
                                        (letrec ((_%loop193560193588%_
                                                  (lambda (_%hd193558193591%_
                                                           _%rands193564193593%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd193558193591%_))
                                                        (let ((_%e193561193595%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd193558193591%_))))
                  (let ((_%lp-hd193562193598%_
                         (let ()
                           (declare (not safe))
                           (##car _%e193561193595%_)))
                        (_%lp-tl193563193600%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e193561193595%_))))
                    (_%loop193560193588%_
                     _%lp-tl193563193600%_
                     (cons _%lp-hd193562193598%_ _%rands193564193593%_))))
                (let ((_%rands193565193603%_ (reverse _%rands193564193593%_)))
                  ((lambda (_%g193553193605%_)
                     (for-each
                      (lambda (_%g193618193620%_)
                        (gxc#compile-e__1 _%self193548%_ _%g193618193620%_))
                      (let ((__tmp194760
                             (lambda (_%g193622193625%_ _%g193623193627%_)
                               (cons _%g193622193625%_ _%g193623193627%_))))
                        (declare (not safe))
                        (foldr__0 __tmp194760 '() _%g193553193605%_))))
                   _%rands193565193603%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop193560193588%_
                                           _%target193557193583%_
                                           '()))
                                        (_%g193551193570%_
                                         _%g193552193573%_)))))
                              (_%g193551193570%_ _%g193552193573%_))))
                      (_%g193551193570%_ _%g193552193573%_)))))
          (_%g193550193630%_ _%stx193549%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx193545%_ _%src-stx193546%_)
        (let ((__tmp194761
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx193546%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx193545%_ __tmp194761))))
    (define gxc#xform-wrap-apply
      (lambda (_%stx193541%_ _%src-stx193542%_ _%ctx193543%_)
        (gxc#compile-e__1
         _%ctx193543%_
         (gxc#xform-wrap-source _%stx193541%_ _%src-stx193542%_))))
    (define gxc#xform-begin%
      (lambda (_%self193496%_ _%stx193497%_)
        (let* ((_%g193499193509%_
                (lambda (_%g193500193506%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193500193506%_))))
               (_%g193498193538%_
                (lambda (_%g193500193512%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193500193512%_))
                      (let ((_%e193502193514%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193500193512%_))))
                        (let ((_%hd193503193517%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193502193514%_)))
                              (_%tl193504193519%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193502193514%_))))
                          ((lambda (_%g193501193522%_)
                             (let ((_%forms193536%_
                                    (map (lambda (_%g193531193533%_)
                                           (gxc#compile-e__1
                                            _%self193496%_
                                            _%g193531193533%_))
                                         _%g193501193522%_)))
                               (gxc#xform-wrap-source
                                (cons '%#begin _%forms193536%_)
                                _%stx193497%_)))
                           _%tl193504193519%_)))
                      (_%g193499193509%_ _%g193500193512%_)))))
          (_%g193498193538%_ _%stx193497%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self193450%_ _%stx193451%_)
        (let* ((_%g193453193463%_
                (lambda (_%g193454193460%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193454193460%_))))
               (_%g193452193493%_
                (lambda (_%g193454193466%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193454193466%_))
                      (let ((_%e193456193468%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193454193466%_))))
                        (let ((_%hd193457193471%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193456193468%_)))
                              (_%tl193458193473%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193456193468%_))))
                          ((lambda (_%g193455193476%_)
                             (let ((__tmp194764
                                    (lambda ()
                                      (let ((_%forms193491%_
                                             (map (lambda (_%g193486193488%_)
                                                    (gxc#compile-e__1
                                                     _%self193450%_
                                                     _%g193486193488%_))
                                                  _%g193455193476%_)))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin-syntax _%forms193491%_)
                                         _%stx193451%_))))
                                   (__tmp194762
                                    (let ((__tmp194763
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp194763 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp194764
                                gx#current-expander-phi
                                __tmp194762)))
                           _%tl193458193473%_)))
                      (_%g193453193463%_ _%g193454193466%_)))))
          (_%g193452193493%_ _%stx193451%_))))
    (define gxc#xform-module%
      (lambda (_%self193387%_ _%stx193388%_)
        (let* ((_%g193390193404%_
                (lambda (_%g193391193401%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193391193401%_))))
               (_%g193389193447%_
                (lambda (_%g193391193407%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193391193407%_))
                      (let ((_%e193394193409%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193391193407%_))))
                        (let ((_%hd193395193412%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193394193409%_)))
                              (_%tl193396193414%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193394193409%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193396193414%_))
                              (let ((_%e193397193417%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193396193414%_))))
                                (let ((_%hd193398193420%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193397193417%_)))
                                      (_%tl193399193422%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193397193417%_))))
                                  ((lambda (_%g193392193425%_
                                            _%g193393193426%_)
                                     (let* ((_%ctx193439%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g193393193426%_)))
                                            (_%code193441%_
                                             (##structure-ref
                                              _%ctx193439%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code193444%_
                                             (let ((__tmp194765
                                                    (lambda ()
                                                      (gxc#compile-e__1
                                                       _%self193387%_
                                                       _%code193441%_))))
                                               (declare (not safe))
                                               (call-with-parameters__1
                                                __tmp194765
                                                gx#current-expander-context
                                                _%ctx193439%_))))
                                       (##structure-set!
                                        _%ctx193439%_
                                        _%code193444%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _%g193393193426%_
                                                    (cons _%code193444%_ '())))
                                        _%stx193388%_)))
                                   _%tl193399193422%_
                                   _%hd193398193420%_)))
                              (_%g193390193404%_ _%g193391193407%_))))
                      (_%g193390193404%_ _%g193391193407%_)))))
          (_%g193389193447%_ _%stx193388%_))))
    (define gxc#xform-define-values%
      (lambda (_%self193317%_ _%stx193318%_)
        (let* ((_%g193320193337%_
                (lambda (_%g193321193334%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193321193334%_))))
               (_%g193319193384%_
                (lambda (_%g193321193340%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193321193340%_))
                      (let ((_%e193324193342%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193321193340%_))))
                        (let ((_%hd193325193345%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193324193342%_)))
                              (_%tl193326193347%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193324193342%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193326193347%_))
                              (let ((_%e193327193350%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193326193347%_))))
                                (let ((_%hd193328193353%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193327193350%_)))
                                      (_%tl193329193355%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193327193350%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193329193355%_))
                                      (let ((_%e193330193358%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193329193355%_))))
                                        (let ((_%hd193331193361%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193330193358%_)))
                                              (_%tl193332193363%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193330193358%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193332193363%_))
                                              ((lambda (_%g193322193366%_
                                                        _%g193323193367%_)
                                                 (let ((_%expr193382%_
                                                        (gxc#compile-e__1
                                                         _%self193317%_
                                                         _%g193322193366%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons _%g193323193367%_
                                                                (cons _%expr193382%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx193318%_)))
                                               _%hd193331193361%_
                                               _%hd193328193353%_)
                                              (_%g193320193337%_
                                               _%g193321193340%_))))
                                      (_%g193320193337%_ _%g193321193340%_))))
                              (_%g193320193337%_ _%g193321193340%_))))
                      (_%g193320193337%_ _%g193321193340%_)))))
          (_%g193319193384%_ _%stx193318%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self193246%_ _%stx193247%_)
        (let* ((_%g193249193266%_
                (lambda (_%g193250193263%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193250193263%_))))
               (_%g193248193314%_
                (lambda (_%g193250193269%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193250193269%_))
                      (let ((_%e193253193271%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193250193269%_))))
                        (let ((_%hd193254193274%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193253193271%_)))
                              (_%tl193255193276%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193253193271%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193255193276%_))
                              (let ((_%e193256193279%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193255193276%_))))
                                (let ((_%hd193257193282%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193256193279%_)))
                                      (_%tl193258193284%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193256193279%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193258193284%_))
                                      (let ((_%e193259193287%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193258193284%_))))
                                        (let ((_%hd193260193290%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193259193287%_)))
                                              (_%tl193261193292%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193259193287%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193261193292%_))
                                              ((lambda (_%g193251193295%_
                                                        _%g193252193296%_)
                                                 (let ((__tmp194768
                                                        (lambda ()
                                                          (let ((_%expr193312%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#compile-e__1 _%self193246%_ _%g193251193295%_)))
                    (gxc#xform-wrap-source
                     (cons '%#define-syntax
                           (cons _%g193252193296%_ (cons _%expr193312%_ '())))
                     _%stx193247%_))))
               (__tmp194766
                (let ((__tmp194767
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp194767 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp194768
                                                    gx#current-expander-phi
                                                    __tmp194766)))
                                               _%hd193260193290%_
                                               _%hd193257193282%_)
                                              (_%g193249193266%_
                                               _%g193250193269%_))))
                                      (_%g193249193266%_ _%g193250193269%_))))
                              (_%g193249193266%_ _%g193250193269%_))))
                      (_%g193249193266%_ _%g193250193269%_)))))
          (_%g193248193314%_ _%stx193247%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self193176%_ _%stx193177%_)
        (let* ((_%g193179193196%_
                (lambda (_%g193180193193%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193180193193%_))))
               (_%g193178193243%_
                (lambda (_%g193180193199%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193180193199%_))
                      (let ((_%e193183193201%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193180193199%_))))
                        (let ((_%hd193184193204%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193183193201%_)))
                              (_%tl193185193206%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193183193201%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193185193206%_))
                              (let ((_%e193186193209%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193185193206%_))))
                                (let ((_%hd193187193212%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193186193209%_)))
                                      (_%tl193188193214%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193186193209%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193188193214%_))
                                      (let ((_%e193189193217%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193188193214%_))))
                                        (let ((_%hd193190193220%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193189193217%_)))
                                              (_%tl193191193222%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193189193217%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193191193222%_))
                                              ((lambda (_%g193181193225%_
                                                        _%g193182193226%_)
                                                 (let ((_%expr193241%_
                                                        (gxc#compile-e__1
                                                         _%self193176%_
                                                         _%g193181193225%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#begin-annotation
                                                          (cons _%g193182193226%_
                                                                (cons _%expr193241%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx193177%_)))
                                               _%hd193190193220%_
                                               _%hd193187193212%_)
                                              (_%g193179193196%_
                                               _%g193180193199%_))))
                                      (_%g193179193196%_ _%g193180193199%_))))
                              (_%g193179193196%_ _%g193180193199%_))))
                      (_%g193179193196%_ _%g193180193199%_)))))
          (_%g193178193243%_ _%stx193177%_))))
    (define gxc#xform-lambda%
      (lambda (_%self193114%_ _%stx193115%_)
        (let* ((_%g193117193131%_
                (lambda (_%g193118193128%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193118193128%_))))
               (_%g193116193173%_
                (lambda (_%g193118193134%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193118193134%_))
                      (let ((_%e193121193136%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193118193134%_))))
                        (let ((_%hd193122193139%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193121193136%_)))
                              (_%tl193123193141%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193121193136%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193123193141%_))
                              (let ((_%e193124193144%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193123193141%_))))
                                (let ((_%hd193125193147%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193124193144%_)))
                                      (_%tl193126193149%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193124193144%_))))
                                  ((lambda (_%g193119193152%_
                                            _%g193120193153%_)
                                     (let ((__tmp194770
                                            (lambda ()
                                              (let ((_%body193171%_
                                                     (map (lambda (_%g193166193168%_)
                                                            (gxc#compile-e__1
                                                             _%self193114%_
                                                             _%g193166193168%_))
                                                          _%g193119193152%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#lambda
                                                       (cons _%g193120193153%_
                                                             _%body193171%_))
                                                 _%stx193115%_))))
                                           (__tmp194769
                                            (gxc#xform-let-locals
                                             _%g193120193153%_)))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp194770
                                        gxc#current-compile-local-env
                                        __tmp194769)))
                                   _%tl193126193149%_
                                   _%hd193125193147%_)))
                              (_%g193117193131%_ _%g193118193134%_))))
                      (_%g193117193131%_ _%g193118193134%_)))))
          (_%g193116193173%_ _%stx193115%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self193022%_ _%stx193023%_)
        (letrec ((_%clause-e193025%_
                  (lambda (_%clause193066%_)
                    (let* ((_%g193068193079%_
                            (lambda (_%g193069193076%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g193069193076%_))))
                           (_%g193067193111%_
                            (lambda (_%g193069193082%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g193069193082%_))
                                  (let ((_%e193072193084%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g193069193082%_))))
                                    (let ((_%hd193073193087%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193072193084%_)))
                                          (_%tl193074193089%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193072193084%_))))
                                      ((lambda (_%g193070193092%_
                                                _%g193071193093%_)
                                         (let ((__tmp194772
                                                (lambda ()
                                                  (let ((_%body193109%_
                                                         (map (lambda (_%g193104193106%_)
                                                                (gxc#compile-e__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%self193022%_
                         _%g193104193106%_))
                      _%g193070193092%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%g193071193093%_
                                                          _%body193109%_))))
                                               (__tmp194771
                                                (gxc#xform-let-locals
                                                 _%g193071193093%_)))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp194772
                                            gxc#current-compile-local-env
                                            __tmp194771)))
                                       _%tl193074193089%_
                                       _%hd193073193087%_)))
                                  (_%g193068193079%_ _%g193069193082%_)))))
                      (_%g193067193111%_ _%clause193066%_)))))
          (let* ((_%g193027193037%_
                  (lambda (_%g193028193034%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g193028193034%_))))
                 (_%g193026193063%_
                  (lambda (_%g193028193040%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g193028193040%_))
                        (let ((_%e193030193042%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g193028193040%_))))
                          (let ((_%hd193031193045%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e193030193042%_)))
                                (_%tl193032193047%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e193030193042%_))))
                            ((lambda (_%g193029193050%_)
                               (let ((_%clauses193061%_
                                      (map _%clause-e193025%_
                                           _%g193029193050%_)))
                                 (gxc#xform-wrap-source
                                  (cons '%#case-lambda _%clauses193061%_)
                                  _%stx193023%_)))
                             _%tl193032193047%_)))
                        (_%g193027193037%_ _%g193028193040%_)))))
            (_%g193026193063%_ _%stx193023%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self192782%_ _%stx192783%_)
        (let* ((_%g192785192818%_
                (lambda (_%g192786192815%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192786192815%_))))
               (_%g192784193019%_
                (lambda (_%g192786192821%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192786192821%_))
                      (let ((_%e192791192823%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192786192821%_))))
                        (let ((_%hd192792192826%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192791192823%_)))
                              (_%tl192793192828%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192791192823%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192793192828%_))
                              (let ((_%e192794192831%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192793192828%_))))
                                (let ((_%hd192795192834%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192794192831%_)))
                                      (_%tl192796192836%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192794192831%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd192795192834%_))
                                      (let ((_g194773_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd192795192834%_
                                                '0))))
                                        (begin
                                          (let ((_g194774_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g194773_)
                                                       (##values-length
                                                        _g194773_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g194774_ 2)))
                                                (error "Context expects 2 values"
                                                       _g194774_)))
                                          (let ((_%target192797192839%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g194773_ 0)))
                                                (_%tl192799192841%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g194773_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl192799192841%_))
                                                (letrec ((_%loop192800192844%_
                                                          (lambda (_%hd192798192847%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr192804192849%_
                           _%hd192805192850%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd192798192847%_))
                        (let ((_%e192801192852%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd192798192847%_))))
                          (let ((_%lp-hd192802192855%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e192801192852%_)))
                                (_%lp-tl192803192857%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e192801192852%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd192802192855%_))
                                (let ((_%e192808192860%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd192802192855%_))))
                                  (let ((_%hd192809192863%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e192808192860%_)))
                                        (_%tl192810192865%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e192808192860%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl192810192865%_))
                                        (let ((_%e192811192868%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl192810192865%_))))
                                          (let ((_%hd192812192871%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e192811192868%_)))
                                                (_%tl192813192873%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e192811192868%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl192813192873%_))
                                                (_%loop192800192844%_
                                                 _%lp-tl192803192857%_
                                                 (cons _%hd192812192871%_
                                                       _%expr192804192849%_)
                                                 (cons _%hd192809192863%_
                                                       _%hd192805192850%_))
                                                (_%g192785192818%_
                                                 _%g192786192821%_))))
                                        (_%g192785192818%_
                                         _%g192786192821%_))))
                                (_%g192785192818%_ _%g192786192821%_))))
                        (let ((_%expr192806192876%_
                               (reverse _%expr192804192849%_))
                              (_%hd192807192877%_
                               (reverse _%hd192805192850%_)))
                          ((lambda (_%g192787192879%_
                                    _%g192788192880%_
                                    _%g192789192881%_
                                    _%g192790192882%_)
                             (let* ((_%g192901192917%_
                                     (lambda (_%g192902192914%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g192902192914%_))))
                                    (_%g192900193005%_
                                     (lambda (_%g192902192920%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g192902192920%_))
                                           (let ((_g194775_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g192902192920%_
                                                     '0))))
                                             (begin
                                               (let ((_g194776_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g194775_)
                                                            (##values-length
                                                             _g194775_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g194776_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g194776_)))
                                               (let ((_%target192904192922%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g194775_
                                                         0)))
                                                     (_%tl192906192924%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g194775_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl192906192924%_))
                                                     (letrec ((_%loop192907192927%_
                                                               (lambda (_%hd192905192930%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr192911192932%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd192905192930%_))
                             (let ((_%e192908192934%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd192905192930%_))))
                               (let ((_%lp-hd192909192937%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e192908192934%_)))
                                     (_%lp-tl192910192939%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e192908192934%_))))
                                 (_%loop192907192927%_
                                  _%lp-tl192910192939%_
                                  (cons _%lp-hd192909192937%_
                                        _%expr192911192932%_))))
                             (let ((_%expr192912192942%_
                                    (reverse _%expr192911192932%_)))
                               ((lambda (_%g192903192944%_)
                                  (let ((__tmp194779
                                         (lambda ()
                                           (let* ((_%g192958192965%_
                                                   (lambda (_%g192959192962%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g192959192962%_))))
                                                  (_%g192957192991%_
                                                   (lambda (_%g192959192968%_)
                                                     ((lambda (_%g192960192970%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%g192790192882%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%g192903192944%_
                                  _%g192789192881%_))
                               (let ((__tmp194780
                                      (lambda (_%g192980192984%_
                                               _%g192981192986%_
                                               _%g192982192988%_)
                                        (cons (cons _%g192981192986%_
                                                    (cons _%g192980192984%_
                                                          '()))
                                              _%g192982192988%_))))
                                 (declare (not safe))
                                 (foldr__1
                                  __tmp194780
                                  '()
                                  _%g192903192944%_
                                  _%g192789192881%_)))
                             _%g192960192970%_))
                 _%stx192783%_))
              _%g192959192968%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g192957192991%_
                                              (map (lambda (_%g192993192995%_)
                                                     (gxc#compile-e__1
                                                      _%self192782%_
                                                      _%g192993192995%_))
                                                   _%g192787192879%_)))))
                                        (__tmp194777
                                         (gxc#xform-let-locals
                                          (let ((__tmp194778
                                                 (lambda (_%g192997193000%_
                                                          _%g192998193002%_)
                                                   (cons _%g192997193000%_
                                                         _%g192998193002%_))))
                                            (declare (not safe))
                                            (foldr__0
                                             __tmp194778
                                             '()
                                             _%g192789192881%_)))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp194779
                                     gxc#current-compile-local-env
                                     __tmp194777)))
                                _%expr192912192942%_))))))
               (_%loop192907192927%_ _%target192904192922%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g192901192917%_
                                                      _%g192902192920%_)))))
                                           (_%g192901192917%_
                                            _%g192902192920%_)))))
                               (_%g192900193005%_
                                (map (lambda (_%g193007193009%_)
                                       (gxc#compile-e__1
                                        _%self192782%_
                                        _%g193007193009%_))
                                     (let ((__tmp194781
                                            (lambda (_%g193011193014%_
                                                     _%g193012193016%_)
                                              (cons _%g193011193014%_
                                                    _%g193012193016%_))))
                                       (declare (not safe))
                                       (foldr__0
                                        __tmp194781
                                        '()
                                        _%g192788192880%_))))))
                           _%tl192796192836%_
                           _%expr192806192876%_
                           _%hd192807192877%_
                           _%hd192792192826%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop192800192844%_
                                                   _%target192797192839%_
                                                   '()
                                                   '()))
                                                (_%g192785192818%_
                                                 _%g192786192821%_)))))
                                      (_%g192785192818%_ _%g192786192821%_))))
                              (_%g192785192818%_ _%g192786192821%_))))
                      (_%g192785192818%_ _%g192786192821%_)))))
          (_%g192784193019%_ _%stx192783%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self192542%_ _%stx192543%_)
        (let* ((_%g192545192578%_
                (lambda (_%g192546192575%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192546192575%_))))
               (_%g192544192779%_
                (lambda (_%g192546192581%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192546192581%_))
                      (let ((_%e192551192583%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192546192581%_))))
                        (let ((_%hd192552192586%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192551192583%_)))
                              (_%tl192553192588%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192551192583%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192553192588%_))
                              (let ((_%e192554192591%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192553192588%_))))
                                (let ((_%hd192555192594%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192554192591%_)))
                                      (_%tl192556192596%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192554192591%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd192555192594%_))
                                      (let ((_g194782_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd192555192594%_
                                                '0))))
                                        (begin
                                          (let ((_g194783_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g194782_)
                                                       (##values-length
                                                        _g194782_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g194783_ 2)))
                                                (error "Context expects 2 values"
                                                       _g194783_)))
                                          (let ((_%target192557192599%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g194782_ 0)))
                                                (_%tl192559192601%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g194782_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl192559192601%_))
                                                (letrec ((_%loop192560192604%_
                                                          (lambda (_%hd192558192607%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr192564192609%_
                           _%hd192565192610%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd192558192607%_))
                        (let ((_%e192561192612%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd192558192607%_))))
                          (let ((_%lp-hd192562192615%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e192561192612%_)))
                                (_%lp-tl192563192617%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e192561192612%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd192562192615%_))
                                (let ((_%e192568192620%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd192562192615%_))))
                                  (let ((_%hd192569192623%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e192568192620%_)))
                                        (_%tl192570192625%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e192568192620%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl192570192625%_))
                                        (let ((_%e192571192628%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl192570192625%_))))
                                          (let ((_%hd192572192631%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e192571192628%_)))
                                                (_%tl192573192633%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e192571192628%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl192573192633%_))
                                                (_%loop192560192604%_
                                                 _%lp-tl192563192617%_
                                                 (cons _%hd192572192631%_
                                                       _%expr192564192609%_)
                                                 (cons _%hd192569192623%_
                                                       _%hd192565192610%_))
                                                (_%g192545192578%_
                                                 _%g192546192581%_))))
                                        (_%g192545192578%_
                                         _%g192546192581%_))))
                                (_%g192545192578%_ _%g192546192581%_))))
                        (let ((_%expr192566192636%_
                               (reverse _%expr192564192609%_))
                              (_%hd192567192637%_
                               (reverse _%hd192565192610%_)))
                          ((lambda (_%g192547192639%_
                                    _%g192548192640%_
                                    _%g192549192641%_
                                    _%g192550192642%_)
                             (let ((__tmp194786
                                    (lambda ()
                                      (let* ((_%g192662192678%_
                                              (lambda (_%g192663192675%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g192663192675%_))))
                                             (_%g192661192758%_
                                              (lambda (_%g192663192681%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g192663192681%_))
                                                    (let ((_g194787_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g192663192681%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g194788_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g194787_)
                             (##values-length _g194787_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g194788_ 2)))
                      (error "Context expects 2 values" _g194788_)))
                (let ((_%target192665192683%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g194787_ 0)))
                      (_%tl192667192685%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g194787_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl192667192685%_))
                      (letrec ((_%loop192668192688%_
                                (lambda (_%hd192666192691%_
                                         _%expr192672192693%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd192666192691%_))
                                      (let ((_%e192669192695%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd192666192691%_))))
                                        (let ((_%lp-hd192670192698%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192669192695%_)))
                                              (_%lp-tl192671192700%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192669192695%_))))
                                          (_%loop192668192688%_
                                           _%lp-tl192671192700%_
                                           (cons _%lp-hd192670192698%_
                                                 _%expr192672192693%_))))
                                      (let ((_%expr192673192703%_
                                             (reverse _%expr192672192693%_)))
                                        ((lambda (_%g192664192705%_)
                                           (let* ((_%g192719192726%_
                                                   (lambda (_%g192720192723%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g192720192723%_))))
                                                  (_%g192718192751%_
                                                   (lambda (_%g192720192729%_)
                                                     ((lambda (_%g192721192731%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%g192550192642%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%g192664192705%_
                                  _%g192549192641%_))
                               (let ((__tmp194789
                                      (lambda (_%g192740192744%_
                                               _%g192741192746%_
                                               _%g192742192748%_)
                                        (cons (cons _%g192741192746%_
                                                    (cons _%g192740192744%_
                                                          '()))
                                              _%g192742192748%_))))
                                 (declare (not safe))
                                 (foldr__1
                                  __tmp194789
                                  '()
                                  _%g192664192705%_
                                  _%g192549192641%_)))
                             _%g192721192731%_))
                 _%stx192543%_))
              _%g192720192729%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g192718192751%_
                                              (map (lambda (_%g192753192755%_)
                                                     (gxc#compile-e__1
                                                      _%self192542%_
                                                      _%g192753192755%_))
                                                   _%g192547192639%_))))
                                         _%expr192673192703%_))))))
                        (_%loop192668192688%_ _%target192665192683%_ '()))
                      (_%g192662192678%_ _%g192663192681%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g192662192678%_
                                                     _%g192663192681%_)))))
                                        (_%g192661192758%_
                                         (map (lambda (_%g192760192762%_)
                                                (gxc#compile-e__1
                                                 _%self192542%_
                                                 _%g192760192762%_))
                                              (let ((__tmp194790
                                                     (lambda (_%g192764192767%_
                                                              _%g192765192769%_)
                                                       (cons _%g192764192767%_
                                                             _%g192765192769%_))))
                                                (declare (not safe))
                                                (foldr__0
                                                 __tmp194790
                                                 '()
                                                 _%g192548192640%_)))))))
                                   (__tmp194784
                                    (gxc#xform-let-locals
                                     (let ((__tmp194785
                                            (lambda (_%g192771192774%_
                                                     _%g192772192776%_)
                                              (cons _%g192771192774%_
                                                    _%g192772192776%_))))
                                       (declare (not safe))
                                       (foldr__0
                                        __tmp194785
                                        '()
                                        _%g192549192641%_)))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp194786
                                gxc#current-compile-local-env
                                __tmp194784)))
                           _%tl192556192596%_
                           _%expr192566192636%_
                           _%hd192567192637%_
                           _%hd192552192586%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop192560192604%_
                                                   _%target192557192599%_
                                                   '()
                                                   '()))
                                                (_%g192545192578%_
                                                 _%g192546192581%_)))))
                                      (_%g192545192578%_ _%g192546192581%_))))
                              (_%g192545192578%_ _%g192546192581%_))))
                      (_%g192545192578%_ _%g192546192581%_)))))
          (_%g192544192779%_ _%stx192543%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings192409%_)
        (letrec ((_%flatten192411%_
                  (lambda (_%maybe-lst192469%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%maybe-lst192469%_))
                        (cons _%maybe-lst192469%_ '())
                        (let _%loop192471%_ ((_%rest192473%_
                                              _%maybe-lst192469%_)
                                             (_%result192474%_ '()))
                          (let* ((_%__stx194678194679%_ _%rest192473%_)
                                 (_%g192478192490%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx194678194679%_)))))
                            (let ((_%__kont194680194681%_
                                   (lambda (_%g192480192528%_
                                            _%g192481192529%_)
                                     (_%loop192471%_
                                      _%g192480192528%_
                                      (let ((__tmp194791
                                             (_%flatten192411%_
                                              _%g192481192529%_)))
                                        (declare (not safe))
                                        (foldl__0
                                         cons
                                         _%result192474%_
                                         __tmp194791)))))
                                  (_%__kont194682194683%_
                                   (lambda (_%g192485192502%_)
                                     (cons _%g192485192502%_
                                           _%result192474%_)))
                                  (_%__kont194684194685%_
                                   (lambda () _%result192474%_)))
                              (let ((_%g192476192515%_
                                     (lambda ()
                                       (let ((_%g192485192502%_
                                              _%__stx194678194679%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%g192485192502%_))
                                             (_%__kont194682194683%_
                                              _%g192485192502%_)
                                             (_%__kont194684194685%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx194678194679%_))
                                    (let ((_%e192482192520%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx194678194679%_))))
                                      (let ((_%tl192484192525%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e192482192520%_)))
                                            (_%hd192483192523%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e192482192520%_))))
                                        (_%__kont194680194681%_
                                         _%tl192484192525%_
                                         _%hd192483192523%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g192476192515%_)))))))))))
          (let _%loop192413%_ ((_%rest192415%_
                                (_%flatten192411%_ _%bindings192409%_))
                               (_%locals192416%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-local-env))))
            (let* ((_%rest192417192428%_ _%rest192415%_)
                   (_%E192421192432%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching"
                               _%rest192417192428%_
                               '([(? identifier? id) . rest])
                               '((? identifier? id))
                               '(_)))
                      '#!void)))
              (let ((_%K192424192457%_
                     (lambda (_%rest192454%_ _%id192455%_)
                       (_%loop192413%_
                        _%rest192454%_
                        (cons (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _%id192455%_))
                              _%locals192416%_))))
                    (_%K192423192446%_
                     (lambda (_%id192444%_)
                       (cons (let ()
                               (declare (not safe))
                               (gxc#identifier-symbol _%id192444%_))
                             _%locals192416%_)))
                    (_%K192422192437%_ (lambda () _%locals192416%_)))
                (let ((_%try-match192419192451%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%rest192417192428%_))
                             (let ((_%id192449%_ _%rest192417192428%_))
                               (_%K192423192446%_ _%id192449%_))
                             (_%K192422192437%_)))))
                  (if (pair? _%rest192417192428%_)
                      (let ((_%tl192426192462%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest192417192428%_)))
                            (_%hd192425192460%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest192417192428%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd192425192460%_))
                            (let ((_%id192465%_ _%hd192425192460%_)
                                  (_%rest192467%_ _%tl192426192462%_))
                              (_%K192424192457%_ _%rest192467%_ _%id192465%_))
                            (_%K192422192437%_)))
                      (_%try-match192419192451%_)))))))))
    (define gxc#xform-operands
      (lambda (_%self192361%_ _%stx192362%_)
        (let* ((_%g192364192375%_
                (lambda (_%g192365192372%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192365192372%_))))
               (_%g192363192406%_
                (lambda (_%g192365192378%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192365192378%_))
                      (let ((_%e192368192380%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192365192378%_))))
                        (let ((_%hd192369192383%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192368192380%_)))
                              (_%tl192370192385%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192368192380%_))))
                          ((lambda (_%g192366192388%_ _%g192367192389%_)
                             (let ((_%rands192404%_
                                    (map (lambda (_%g192399192401%_)
                                           (gxc#compile-e__1
                                            _%self192361%_
                                            _%g192399192401%_))
                                         _%g192366192388%_)))
                               (gxc#xform-wrap-source
                                (cons _%g192367192389%_ _%rands192404%_)
                                _%stx192362%_)))
                           _%tl192370192385%_
                           _%hd192369192383%_)))
                      (_%g192364192375%_ _%g192365192378%_)))))
          (_%g192363192406%_ _%stx192362%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self192291%_ _%stx192292%_)
        (let* ((_%g192294192311%_
                (lambda (_%g192295192308%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192295192308%_))))
               (_%g192293192358%_
                (lambda (_%g192295192314%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192295192314%_))
                      (let ((_%e192298192316%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192295192314%_))))
                        (let ((_%hd192299192319%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192298192316%_)))
                              (_%tl192300192321%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192298192316%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192300192321%_))
                              (let ((_%e192301192324%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192300192321%_))))
                                (let ((_%hd192302192327%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192301192324%_)))
                                      (_%tl192303192329%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192301192324%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl192303192329%_))
                                      (let ((_%e192304192332%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl192303192329%_))))
                                        (let ((_%hd192305192335%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192304192332%_)))
                                              (_%tl192306192337%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192304192332%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl192306192337%_))
                                              ((lambda (_%g192296192340%_
                                                        _%g192297192341%_)
                                                 (let ((_%expr192356%_
                                                        (gxc#compile-e__1
                                                         _%self192291%_
                                                         _%g192296192340%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _%g192297192341%_
                                                                (cons _%expr192356%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx192292%_)))
                                               _%hd192305192335%_
                                               _%hd192302192327%_)
                                              (_%g192294192311%_
                                               _%g192295192314%_))))
                                      (_%g192294192311%_ _%g192295192314%_))))
                              (_%g192294192311%_ _%g192295192314%_))))
                      (_%g192294192311%_ _%g192295192314%_)))))
          (_%g192293192358%_ _%stx192292%_))))))
