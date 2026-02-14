(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1771092629)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx194487%_)
        (let* ((_%self194489%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e194491%_
                (let ((__tmp194709 (gxc#stx-car-e _%stx194487%_)))
                  (declare (not safe))
                  (method-ref _%self194489%_ __tmp194709))))
          (if _%$e194491%_
              ((lambda (_%method194494%_)
                 (declare (not safe))
                 (let ((_%$e194497%_ (gx#stx-source _%stx194487%_)))
                   (if _%$e194497%_
                       ((lambda (_%source194500%_)
                          (call-with-parameters__1
                           (lambda ()
                             (_%method194494%_ _%self194489%_ _%stx194487%_))
                           gxc#current-compile-context
                           (cons (cons '@ (cons _%source194500%_ '()))
                                 (let ((_%$e194504%_
                                        (gxc#current-compile-context)))
                                   (if _%$e194504%_ _%$e194504%_ '())))))
                        _%$e194497%_)
                       (_%method194494%_ _%self194489%_ _%stx194487%_))))
               _%$e194491%_)
              (let ((__tmp194711 (gxc#stx-car-e _%stx194487%_))
                    (__tmp194710
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx194487%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self194489%_
                       __tmp194711
                       __tmp194710))))))
    (define gxc#compile-e__1
      (lambda (_%self194509%_ _%stx194510%_)
        (let ((_%$e194512%_
               (let ((__tmp194712 (gxc#stx-car-e _%stx194510%_)))
                 (declare (not safe))
                 (method-ref _%self194509%_ __tmp194712))))
          (if _%$e194512%_
              ((lambda (_%method194515%_)
                 (declare (not safe))
                 (let ((_%$e194518%_ (gx#stx-source _%stx194510%_)))
                   (if _%$e194518%_
                       ((lambda (_%source194521%_)
                          (call-with-parameters__1
                           (lambda ()
                             (_%method194515%_ _%self194509%_ _%stx194510%_))
                           gxc#current-compile-context
                           (cons (cons '@ (cons _%source194521%_ '()))
                                 (let ((_%$e194525%_
                                        (gxc#current-compile-context)))
                                   (if _%$e194525%_ _%$e194525%_ '())))))
                        _%$e194518%_)
                       (_%method194515%_ _%self194509%_ _%stx194510%_))))
               _%$e194512%_)
              (let ((__tmp194714 (gxc#stx-car-e _%stx194510%_))
                    (__tmp194713
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx194510%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self194509%_
                       __tmp194714
                       __tmp194713))))))
    (define gxc#compile-e
      (lambda _g194715_
        (let ((_g194716_ (let () (declare (not safe)) (##length _g194715_))))
          (cond ((let () (declare (not safe)) (##fx= _g194716_ 1))
                 (apply gxc#compile-e__0 _g194715_))
                ((let () (declare (not safe)) (##fx= _g194716_ 2))
                 (apply gxc#compile-e__1 _g194715_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g194715_))))))
    (define gxc#stx-car-e
      (lambda (_%stx194485%_)
        (let ((__tmp194717
               (car (let () (declare (not safe)) (gx#stx-e _%stx194485%_)))))
          (declare (not safe))
          (gx#stx-e __tmp194717))))
    (define gxc#void-method (lambda (_%self194482%_ _%stx194483%_) '#!void))
    (define gxc#false-method (lambda (_%self194479%_ _%stx194480%_) '#f))
    (define gxc#true-method (lambda (_%self194476%_ _%stx194477%_) '#t))
    (define gxc#identity-method
      (lambda (_%self194473%_ _%stx194474%_) _%stx194474%_))
    (define gxc#::void-expression::t
      (let ((__tmp194718 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp194718
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args194470%_
        (apply make-instance gxc#::void-expression::t _%$args194470%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp194719
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
        (__make-atomic-promise __tmp194719)))
    (define gxc#::void-special-form::t
      (let ((__tmp194720 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp194720
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args194466%_
        (apply make-instance gxc#::void-special-form::t _%$args194466%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp194721
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
        (__make-atomic-promise __tmp194721)))
    (define gxc#::void::t
      (let ((__tmp194722
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp194722 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args194462%_
        (apply make-instance gxc#::void::t _%$args194462%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp194723
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp194723)))
    (define gxc#::false-expression::t
      (let ((__tmp194724 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp194724
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args194458%_
        (apply make-instance gxc#::false-expression::t _%$args194458%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp194725
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
        (__make-atomic-promise __tmp194725)))
    (define gxc#::false-special-form::t
      (let ((__tmp194726 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp194726
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args194454%_
        (apply make-instance gxc#::false-special-form::t _%$args194454%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp194727
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
        (__make-atomic-promise __tmp194727)))
    (define gxc#::false::t
      (let ((__tmp194728
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp194728 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args194450%_
        (apply make-instance gxc#::false::t _%$args194450%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp194729
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp194729)))
    (define gxc#::identity-expression::t
      (let ((__tmp194730 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp194730
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args194446%_
        (apply make-instance gxc#::identity-expression::t _%$args194446%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp194731
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
        (__make-atomic-promise __tmp194731)))
    (define gxc#::identity-special-form::t
      (let ((__tmp194732 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp194732
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args194442%_
        (apply make-instance gxc#::identity-special-form::t _%$args194442%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp194733
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
        (__make-atomic-promise __tmp194733)))
    (define gxc#::identity::t
      (let ((__tmp194734
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp194734
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args194438%_
        (apply make-instance gxc#::identity::t _%$args194438%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp194735
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp194735)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp194736 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp194736
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args194434%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args194434%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp194737
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
        (__make-atomic-promise __tmp194737)))
    (define gxc#::basic-xform::t
      (let ((__tmp194738
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp194738
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args194430%_
        (apply make-instance gxc#::basic-xform::t _%$args194430%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp194739
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
        (__make-atomic-promise __tmp194739)))
    (define gxc#apply-begin%
      (lambda (_%self194386%_ _%stx194387%_)
        (let* ((_%g194389194399%_
                (lambda (_%g194390194396%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194390194396%_))))
               (_%g194388194426%_
                (lambda (_%g194390194402%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194390194402%_))
                      (let ((_%e194392194404%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194390194402%_))))
                        (let ((_%hd194393194407%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194392194404%_)))
                              (_%tl194394194409%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194392194404%_))))
                          ((lambda (_%g194391194412%_)
                             (for-each
                              (lambda (_%g194421194423%_)
                                (gxc#compile-e__1
                                 _%self194386%_
                                 _%g194421194423%_))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%g194391194412%_))))
                           _%tl194394194409%_)))
                      (_%g194389194399%_ _%g194390194402%_)))))
          (_%g194388194426%_ _%stx194387%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self194347%_ _%stx194348%_)
        (let* ((_%g194350194360%_
                (lambda (_%g194351194357%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194351194357%_))))
               (_%g194349194383%_
                (lambda (_%g194351194363%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194351194363%_))
                      (let ((_%e194353194365%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194351194363%_))))
                        (let ((_%hd194354194368%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194353194365%_)))
                              (_%tl194355194370%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194353194365%_))))
                          ((lambda (_%g194352194373%_)
                             (gxc#compile-e__1
                              _%self194347%_
                              (last _%g194352194373%_)))
                           _%tl194355194370%_)))
                      (_%g194350194360%_ _%g194351194363%_)))))
          (_%g194349194383%_ _%stx194348%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self194343%_ _%stx194344%_)
        (let ((__tmp194742
               (lambda () (gxc#apply-begin% _%self194343%_ _%stx194344%_)))
              (__tmp194740
               (let ((__tmp194741
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp194741 '1))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp194742
           gx#current-expander-phi
           __tmp194740))))
    (define gxc#apply-module%
      (lambda (_%self194282%_ _%stx194283%_)
        (let* ((_%g194285194299%_
                (lambda (_%g194286194296%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194286194296%_))))
               (_%g194284194340%_
                (lambda (_%g194286194302%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194286194302%_))
                      (let ((_%e194289194304%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194286194302%_))))
                        (let ((_%hd194290194307%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194289194304%_)))
                              (_%tl194291194309%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194289194304%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194291194309%_))
                              (let ((_%e194292194312%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194291194309%_))))
                                (let ((_%hd194293194315%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194292194312%_)))
                                      (_%tl194294194317%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194292194312%_))))
                                  ((lambda (_%g194287194320%_
                                            _%g194288194321%_)
                                     (let* ((_%ctx194334%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g194288194321%_)))
                                            (_%ctx-stx194336%_
                                             (##structure-ref
                                              _%ctx194334%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp194743
                                             (lambda ()
                                               (gxc#compile-e__1
                                                _%self194282%_
                                                _%ctx-stx194336%_))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp194743
                                        gx#current-expander-context
                                        _%ctx194334%_)))
                                   _%tl194294194317%_
                                   _%hd194293194315%_)))
                              (_%g194285194299%_ _%g194286194302%_))))
                      (_%g194285194299%_ _%g194286194302%_)))))
          (_%g194284194340%_ _%stx194283%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self194214%_ _%stx194215%_)
        (let* ((_%g194217194234%_
                (lambda (_%g194218194231%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194218194231%_))))
               (_%g194216194279%_
                (lambda (_%g194218194237%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194218194237%_))
                      (let ((_%e194221194239%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194218194237%_))))
                        (let ((_%hd194222194242%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194221194239%_)))
                              (_%tl194223194244%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194221194239%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194223194244%_))
                              (let ((_%e194224194247%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194223194244%_))))
                                (let ((_%hd194225194250%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194224194247%_)))
                                      (_%tl194226194252%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194224194247%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194226194252%_))
                                      (let ((_%e194227194255%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl194226194252%_))))
                                        (let ((_%hd194228194258%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194227194255%_)))
                                              (_%tl194229194260%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194227194255%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl194229194260%_))
                                              ((lambda (_%g194219194263%_
                                                        _%g194220194264%_)
                                                 (gxc#compile-e__1
                                                  _%self194214%_
                                                  _%g194219194263%_))
                                               _%hd194228194258%_
                                               _%hd194225194250%_)
                                              (_%g194217194234%_
                                               _%g194218194237%_))))
                                      (_%g194217194234%_ _%g194218194237%_))))
                              (_%g194217194234%_ _%g194218194237%_))))
                      (_%g194217194234%_ _%g194218194237%_)))))
          (_%g194216194279%_ _%stx194215%_))))
    (define gxc#apply-define-values%
      (lambda (_%self194146%_ _%stx194147%_)
        (let* ((_%g194149194166%_
                (lambda (_%g194150194163%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194150194163%_))))
               (_%g194148194211%_
                (lambda (_%g194150194169%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194150194169%_))
                      (let ((_%e194153194171%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194150194169%_))))
                        (let ((_%hd194154194174%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194153194171%_)))
                              (_%tl194155194176%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194153194171%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194155194176%_))
                              (let ((_%e194156194179%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194155194176%_))))
                                (let ((_%hd194157194182%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194156194179%_)))
                                      (_%tl194158194184%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194156194179%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194158194184%_))
                                      (let ((_%e194159194187%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl194158194184%_))))
                                        (let ((_%hd194160194190%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194159194187%_)))
                                              (_%tl194161194192%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194159194187%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl194161194192%_))
                                              ((lambda (_%g194151194195%_
                                                        _%g194152194196%_)
                                                 (gxc#compile-e__1
                                                  _%self194146%_
                                                  _%g194151194195%_))
                                               _%hd194160194190%_
                                               _%hd194157194182%_)
                                              (_%g194149194166%_
                                               _%g194150194169%_))))
                                      (_%g194149194166%_ _%g194150194169%_))))
                              (_%g194149194166%_ _%g194150194169%_))))
                      (_%g194149194166%_ _%g194150194169%_)))))
          (_%g194148194211%_ _%stx194147%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self194077%_ _%stx194078%_)
        (let* ((_%g194080194097%_
                (lambda (_%g194081194094%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194081194094%_))))
               (_%g194079194143%_
                (lambda (_%g194081194100%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194081194100%_))
                      (let ((_%e194084194102%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194081194100%_))))
                        (let ((_%hd194085194105%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194084194102%_)))
                              (_%tl194086194107%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194084194102%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194086194107%_))
                              (let ((_%e194087194110%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194086194107%_))))
                                (let ((_%hd194088194113%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194087194110%_)))
                                      (_%tl194089194115%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194087194110%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194089194115%_))
                                      (let ((_%e194090194118%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl194089194115%_))))
                                        (let ((_%hd194091194121%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194090194118%_)))
                                              (_%tl194092194123%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194090194118%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl194092194123%_))
                                              ((lambda (_%g194082194126%_
                                                        _%g194083194127%_)
                                                 (let ((__tmp194746
                                                        (lambda ()
                                                          (gxc#compile-e__1
                                                           _%self194077%_
                                                           _%g194082194126%_)))
                                                       (__tmp194744
                                                        (let ((__tmp194745
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp194745 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp194746
                                                    gx#current-expander-phi
                                                    __tmp194744)))
                                               _%hd194091194121%_
                                               _%hd194088194113%_)
                                              (_%g194080194097%_
                                               _%g194081194100%_))))
                                      (_%g194080194097%_ _%g194081194100%_))))
                              (_%g194080194097%_ _%g194081194100%_))))
                      (_%g194080194097%_ _%g194081194100%_)))))
          (_%g194079194143%_ _%stx194078%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self194009%_ _%stx194010%_)
        (let* ((_%g194012194029%_
                (lambda (_%g194013194026%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194013194026%_))))
               (_%g194011194074%_
                (lambda (_%g194013194032%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194013194032%_))
                      (let ((_%e194016194034%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194013194032%_))))
                        (let ((_%hd194017194037%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194016194034%_)))
                              (_%tl194018194039%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194016194034%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194018194039%_))
                              (let ((_%e194019194042%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194018194039%_))))
                                (let ((_%hd194020194045%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194019194042%_)))
                                      (_%tl194021194047%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194019194042%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194021194047%_))
                                      (let ((_%e194022194050%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl194021194047%_))))
                                        (let ((_%hd194023194053%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194022194050%_)))
                                              (_%tl194024194055%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194022194050%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl194024194055%_))
                                              ((lambda (_%g194014194058%_
                                                        _%g194015194059%_)
                                                 (gxc#compile-e__1
                                                  _%self194009%_
                                                  _%g194014194058%_))
                                               _%hd194023194053%_
                                               _%hd194020194045%_)
                                              (_%g194012194029%_
                                               _%g194013194032%_))))
                                      (_%g194012194029%_ _%g194013194032%_))))
                              (_%g194012194029%_ _%g194013194032%_))))
                      (_%g194012194029%_ _%g194013194032%_)))))
          (_%g194011194074%_ _%stx194010%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self193895%_ _%stx193896%_)
        (let* ((_%g193898193926%_
                (lambda (_%g193899193923%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193899193923%_))))
               (_%g193897194006%_
                (lambda (_%g193899193929%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193899193929%_))
                      (let ((_%e193902193931%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193899193929%_))))
                        (let ((_%hd193903193934%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193902193931%_)))
                              (_%tl193904193936%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193902193931%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl193904193936%_))
                              (let ((_g194747_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl193904193936%_
                                        '0))))
                                (begin
                                  (let ((_g194748_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g194747_)
                                               (##values-length _g194747_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g194748_ 2)))
                                        (error "Context expects 2 values"
                                               _g194748_)))
                                  (let ((_%target193905193939%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g194747_ 0)))
                                        (_%tl193907193941%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g194747_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl193907193941%_))
                                        (letrec ((_%loop193908193944%_
                                                  (lambda (_%hd193906193947%_
                                                           _%body193912193949%_
                                                           _%hd193913193950%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd193906193947%_))
                                                        (let ((_%e193909193952%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd193906193947%_))))
                  (let ((_%lp-hd193910193955%_
                         (let ()
                           (declare (not safe))
                           (##car _%e193909193952%_)))
                        (_%lp-tl193911193957%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e193909193952%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd193910193955%_))
                        (let ((_%e193916193960%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd193910193955%_))))
                          (let ((_%hd193917193963%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e193916193960%_)))
                                (_%tl193918193965%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e193916193960%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl193918193965%_))
                                (let ((_%e193919193968%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl193918193965%_))))
                                  (let ((_%hd193920193971%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e193919193968%_)))
                                        (_%tl193921193973%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e193919193968%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl193921193973%_))
                                        (_%loop193908193944%_
                                         _%lp-tl193911193957%_
                                         (cons _%hd193920193971%_
                                               _%body193912193949%_)
                                         (cons _%hd193917193963%_
                                               _%hd193913193950%_))
                                        (_%g193898193926%_
                                         _%g193899193929%_))))
                                (_%g193898193926%_ _%g193899193929%_))))
                        (_%g193898193926%_ _%g193899193929%_))))
                (let ((_%body193914193976%_ (reverse _%body193912193949%_))
                      (_%hd193915193977%_ (reverse _%hd193913193950%_)))
                  ((lambda (_%g193900193979%_ _%g193901193980%_)
                     (for-each
                      (lambda (_%g193994193996%_)
                        (gxc#compile-e__1 _%self193895%_ _%g193994193996%_))
                      (let ((__tmp194749
                             (lambda (_%g193998194001%_ _%g193999194003%_)
                               (cons _%g193998194001%_ _%g193999194003%_))))
                        (declare (not safe))
                        (foldr__0 __tmp194749 '() _%g193900193979%_))))
                   _%body193914193976%_
                   _%hd193915193977%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop193908193944%_
                                           _%target193905193939%_
                                           '()
                                           '()))
                                        (_%g193898193926%_
                                         _%g193899193929%_)))))
                              (_%g193898193926%_ _%g193899193929%_))))
                      (_%g193898193926%_ _%g193899193929%_)))))
          (_%g193897194006%_ _%stx193896%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self193752%_ _%stx193753%_)
        (let* ((_%g193755193790%_
                (lambda (_%g193756193787%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193756193787%_))))
               (_%g193754193892%_
                (lambda (_%g193756193793%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193756193793%_))
                      (let ((_%e193760193795%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193756193793%_))))
                        (let ((_%hd193761193798%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193760193795%_)))
                              (_%tl193762193800%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193760193795%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193762193800%_))
                              (let ((_%e193763193803%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193762193800%_))))
                                (let ((_%hd193764193806%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193763193803%_)))
                                      (_%tl193765193808%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193763193803%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd193764193806%_))
                                      (let ((_g194750_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd193764193806%_
                                                '0))))
                                        (begin
                                          (let ((_g194751_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g194750_)
                                                       (##values-length
                                                        _g194750_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g194751_ 2)))
                                                (error "Context expects 2 values"
                                                       _g194751_)))
                                          (let ((_%target193766193811%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g194750_ 0)))
                                                (_%tl193768193813%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g194750_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl193768193813%_))
                                                (letrec ((_%loop193769193816%_
                                                          (lambda (_%hd193767193819%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr193773193821%_
                           _%hd193774193822%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd193767193819%_))
                        (let ((_%e193770193824%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd193767193819%_))))
                          (let ((_%lp-hd193771193827%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e193770193824%_)))
                                (_%lp-tl193772193829%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e193770193824%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd193771193827%_))
                                (let ((_%e193777193832%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd193771193827%_))))
                                  (let ((_%hd193778193835%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e193777193832%_)))
                                        (_%tl193779193837%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e193777193832%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl193779193837%_))
                                        (let ((_%e193780193840%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl193779193837%_))))
                                          (let ((_%hd193781193843%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e193780193840%_)))
                                                (_%tl193782193845%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e193780193840%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl193782193845%_))
                                                (_%loop193769193816%_
                                                 _%lp-tl193772193829%_
                                                 (cons _%hd193781193843%_
                                                       _%expr193773193821%_)
                                                 (cons _%hd193778193835%_
                                                       _%hd193774193822%_))
                                                (_%g193755193790%_
                                                 _%g193756193793%_))))
                                        (_%g193755193790%_
                                         _%g193756193793%_))))
                                (_%g193755193790%_ _%g193756193793%_))))
                        (let ((_%expr193775193848%_
                               (reverse _%expr193773193821%_))
                              (_%hd193776193849%_
                               (reverse _%hd193774193822%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193765193808%_))
                              (let ((_%e193783193851%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193765193808%_))))
                                (let ((_%hd193784193854%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193783193851%_)))
                                      (_%tl193785193856%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193783193851%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl193785193856%_))
                                      ((lambda (_%g193757193859%_
                                                _%g193758193860%_
                                                _%g193759193861%_)
                                         (for-each
                                          (lambda (_%g193880193882%_)
                                            (gxc#compile-e__1
                                             _%self193752%_
                                             _%g193880193882%_))
                                          (let ((__tmp194753
                                                 (lambda (_%g193884193887%_
                                                          _%g193885193889%_)
                                                   (cons _%g193884193887%_
                                                         _%g193885193889%_)))
                                                (__tmp194752
                                                 (cons _%g193757193859%_ '())))
                                            (declare (not safe))
                                            (foldr__0
                                             __tmp194753
                                             __tmp194752
                                             _%g193758193860%_))))
                                       _%hd193784193854%_
                                       _%expr193775193848%_
                                       _%hd193776193849%_)
                                      (_%g193755193790%_ _%g193756193793%_))))
                              (_%g193755193790%_ _%g193756193793%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop193769193816%_
                                                   _%target193766193811%_
                                                   '()
                                                   '()))
                                                (_%g193755193790%_
                                                 _%g193756193793%_)))))
                                      (_%g193755193790%_ _%g193756193793%_))))
                              (_%g193755193790%_ _%g193756193793%_))))
                      (_%g193755193790%_ _%g193756193793%_)))))
          (_%g193754193892%_ _%stx193753%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self193697%_ _%stx193698%_)
        (let* ((_%g193700193714%_
                (lambda (_%g193701193711%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193701193711%_))))
               (_%g193699193749%_
                (lambda (_%g193701193717%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193701193717%_))
                      (let ((_%e193704193719%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193701193717%_))))
                        (let ((_%hd193705193722%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193704193719%_)))
                              (_%tl193706193724%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193704193719%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193706193724%_))
                              (let ((_%e193707193727%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193706193724%_))))
                                (let ((_%hd193708193730%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193707193727%_)))
                                      (_%tl193709193732%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193707193727%_))))
                                  ((lambda (_%g193702193735%_
                                            _%g193703193736%_)
                                     (gxc#compile-e__1
                                      _%self193697%_
                                      (last _%g193702193735%_)))
                                   _%tl193709193732%_
                                   _%hd193708193730%_)))
                              (_%g193700193714%_ _%g193701193717%_))))
                      (_%g193700193714%_ _%g193701193717%_)))))
          (_%g193699193749%_ _%stx193698%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self193629%_ _%stx193630%_)
        (let* ((_%g193632193649%_
                (lambda (_%g193633193646%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193633193646%_))))
               (_%g193631193694%_
                (lambda (_%g193633193652%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193633193652%_))
                      (let ((_%e193636193654%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193633193652%_))))
                        (let ((_%hd193637193657%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193636193654%_)))
                              (_%tl193638193659%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193636193654%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193638193659%_))
                              (let ((_%e193639193662%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193638193659%_))))
                                (let ((_%hd193640193665%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193639193662%_)))
                                      (_%tl193641193667%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193639193662%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193641193667%_))
                                      (let ((_%e193642193670%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193641193667%_))))
                                        (let ((_%hd193643193673%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193642193670%_)))
                                              (_%tl193644193675%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193642193670%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193644193675%_))
                                              ((lambda (_%g193634193678%_
                                                        _%g193635193679%_)
                                                 (gxc#compile-e__1
                                                  _%self193629%_
                                                  _%g193634193678%_))
                                               _%hd193643193673%_
                                               _%hd193640193665%_)
                                              (_%g193632193649%_
                                               _%g193633193652%_))))
                                      (_%g193632193649%_ _%g193633193652%_))))
                              (_%g193632193649%_ _%g193633193652%_))))
                      (_%g193632193649%_ _%g193633193652%_)))))
          (_%g193631193694%_ _%stx193630%_))))
    (define gxc#apply-operands
      (lambda (_%self193544%_ _%stx193545%_)
        (let* ((_%g193547193566%_
                (lambda (_%g193548193563%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193548193563%_))))
               (_%g193546193626%_
                (lambda (_%g193548193569%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193548193569%_))
                      (let ((_%e193550193571%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193548193569%_))))
                        (let ((_%hd193551193574%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193550193571%_)))
                              (_%tl193552193576%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193550193571%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl193552193576%_))
                              (let ((_g194754_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl193552193576%_
                                        '0))))
                                (begin
                                  (let ((_g194755_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g194754_)
                                               (##values-length _g194754_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g194755_ 2)))
                                        (error "Context expects 2 values"
                                               _g194755_)))
                                  (let ((_%target193553193579%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g194754_ 0)))
                                        (_%tl193555193581%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g194754_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl193555193581%_))
                                        (letrec ((_%loop193556193584%_
                                                  (lambda (_%hd193554193587%_
                                                           _%rands193560193589%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd193554193587%_))
                                                        (let ((_%e193557193591%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd193554193587%_))))
                  (let ((_%lp-hd193558193594%_
                         (let ()
                           (declare (not safe))
                           (##car _%e193557193591%_)))
                        (_%lp-tl193559193596%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e193557193591%_))))
                    (_%loop193556193584%_
                     _%lp-tl193559193596%_
                     (cons _%lp-hd193558193594%_ _%rands193560193589%_))))
                (let ((_%rands193561193599%_ (reverse _%rands193560193589%_)))
                  ((lambda (_%g193549193601%_)
                     (for-each
                      (lambda (_%g193614193616%_)
                        (gxc#compile-e__1 _%self193544%_ _%g193614193616%_))
                      (let ((__tmp194756
                             (lambda (_%g193618193621%_ _%g193619193623%_)
                               (cons _%g193618193621%_ _%g193619193623%_))))
                        (declare (not safe))
                        (foldr__0 __tmp194756 '() _%g193549193601%_))))
                   _%rands193561193599%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop193556193584%_
                                           _%target193553193579%_
                                           '()))
                                        (_%g193547193566%_
                                         _%g193548193569%_)))))
                              (_%g193547193566%_ _%g193548193569%_))))
                      (_%g193547193566%_ _%g193548193569%_)))))
          (_%g193546193626%_ _%stx193545%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx193541%_ _%src-stx193542%_)
        (let ((__tmp194757
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx193542%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx193541%_ __tmp194757))))
    (define gxc#xform-wrap-apply
      (lambda (_%stx193537%_ _%src-stx193538%_ _%ctx193539%_)
        (gxc#compile-e__1
         _%ctx193539%_
         (gxc#xform-wrap-source _%stx193537%_ _%src-stx193538%_))))
    (define gxc#xform-begin%
      (lambda (_%self193492%_ _%stx193493%_)
        (let* ((_%g193495193505%_
                (lambda (_%g193496193502%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193496193502%_))))
               (_%g193494193534%_
                (lambda (_%g193496193508%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193496193508%_))
                      (let ((_%e193498193510%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193496193508%_))))
                        (let ((_%hd193499193513%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193498193510%_)))
                              (_%tl193500193515%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193498193510%_))))
                          ((lambda (_%g193497193518%_)
                             (let ((_%forms193532%_
                                    (map (lambda (_%g193527193529%_)
                                           (gxc#compile-e__1
                                            _%self193492%_
                                            _%g193527193529%_))
                                         _%g193497193518%_)))
                               (gxc#xform-wrap-source
                                (cons '%#begin _%forms193532%_)
                                _%stx193493%_)))
                           _%tl193500193515%_)))
                      (_%g193495193505%_ _%g193496193508%_)))))
          (_%g193494193534%_ _%stx193493%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self193446%_ _%stx193447%_)
        (let* ((_%g193449193459%_
                (lambda (_%g193450193456%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193450193456%_))))
               (_%g193448193489%_
                (lambda (_%g193450193462%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193450193462%_))
                      (let ((_%e193452193464%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193450193462%_))))
                        (let ((_%hd193453193467%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193452193464%_)))
                              (_%tl193454193469%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193452193464%_))))
                          ((lambda (_%g193451193472%_)
                             (let ((__tmp194760
                                    (lambda ()
                                      (let ((_%forms193487%_
                                             (map (lambda (_%g193482193484%_)
                                                    (gxc#compile-e__1
                                                     _%self193446%_
                                                     _%g193482193484%_))
                                                  _%g193451193472%_)))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin-syntax _%forms193487%_)
                                         _%stx193447%_))))
                                   (__tmp194758
                                    (let ((__tmp194759
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp194759 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp194760
                                gx#current-expander-phi
                                __tmp194758)))
                           _%tl193454193469%_)))
                      (_%g193449193459%_ _%g193450193462%_)))))
          (_%g193448193489%_ _%stx193447%_))))
    (define gxc#xform-module%
      (lambda (_%self193383%_ _%stx193384%_)
        (let* ((_%g193386193400%_
                (lambda (_%g193387193397%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193387193397%_))))
               (_%g193385193443%_
                (lambda (_%g193387193403%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193387193403%_))
                      (let ((_%e193390193405%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193387193403%_))))
                        (let ((_%hd193391193408%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193390193405%_)))
                              (_%tl193392193410%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193390193405%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193392193410%_))
                              (let ((_%e193393193413%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193392193410%_))))
                                (let ((_%hd193394193416%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193393193413%_)))
                                      (_%tl193395193418%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193393193413%_))))
                                  ((lambda (_%g193388193421%_
                                            _%g193389193422%_)
                                     (let* ((_%ctx193435%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g193389193422%_)))
                                            (_%code193437%_
                                             (##structure-ref
                                              _%ctx193435%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code193440%_
                                             (let ((__tmp194761
                                                    (lambda ()
                                                      (gxc#compile-e__1
                                                       _%self193383%_
                                                       _%code193437%_))))
                                               (declare (not safe))
                                               (call-with-parameters__1
                                                __tmp194761
                                                gx#current-expander-context
                                                _%ctx193435%_))))
                                       (##structure-set!
                                        _%ctx193435%_
                                        _%code193440%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _%g193389193422%_
                                                    (cons _%code193440%_ '())))
                                        _%stx193384%_)))
                                   _%tl193395193418%_
                                   _%hd193394193416%_)))
                              (_%g193386193400%_ _%g193387193403%_))))
                      (_%g193386193400%_ _%g193387193403%_)))))
          (_%g193385193443%_ _%stx193384%_))))
    (define gxc#xform-define-values%
      (lambda (_%self193313%_ _%stx193314%_)
        (let* ((_%g193316193333%_
                (lambda (_%g193317193330%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193317193330%_))))
               (_%g193315193380%_
                (lambda (_%g193317193336%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193317193336%_))
                      (let ((_%e193320193338%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193317193336%_))))
                        (let ((_%hd193321193341%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193320193338%_)))
                              (_%tl193322193343%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193320193338%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193322193343%_))
                              (let ((_%e193323193346%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193322193343%_))))
                                (let ((_%hd193324193349%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193323193346%_)))
                                      (_%tl193325193351%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193323193346%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193325193351%_))
                                      (let ((_%e193326193354%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193325193351%_))))
                                        (let ((_%hd193327193357%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193326193354%_)))
                                              (_%tl193328193359%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193326193354%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193328193359%_))
                                              ((lambda (_%g193318193362%_
                                                        _%g193319193363%_)
                                                 (let ((_%expr193378%_
                                                        (gxc#compile-e__1
                                                         _%self193313%_
                                                         _%g193318193362%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons _%g193319193363%_
                                                                (cons _%expr193378%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx193314%_)))
                                               _%hd193327193357%_
                                               _%hd193324193349%_)
                                              (_%g193316193333%_
                                               _%g193317193336%_))))
                                      (_%g193316193333%_ _%g193317193336%_))))
                              (_%g193316193333%_ _%g193317193336%_))))
                      (_%g193316193333%_ _%g193317193336%_)))))
          (_%g193315193380%_ _%stx193314%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self193242%_ _%stx193243%_)
        (let* ((_%g193245193262%_
                (lambda (_%g193246193259%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193246193259%_))))
               (_%g193244193310%_
                (lambda (_%g193246193265%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193246193265%_))
                      (let ((_%e193249193267%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193246193265%_))))
                        (let ((_%hd193250193270%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193249193267%_)))
                              (_%tl193251193272%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193249193267%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193251193272%_))
                              (let ((_%e193252193275%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193251193272%_))))
                                (let ((_%hd193253193278%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193252193275%_)))
                                      (_%tl193254193280%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193252193275%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193254193280%_))
                                      (let ((_%e193255193283%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193254193280%_))))
                                        (let ((_%hd193256193286%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193255193283%_)))
                                              (_%tl193257193288%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193255193283%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193257193288%_))
                                              ((lambda (_%g193247193291%_
                                                        _%g193248193292%_)
                                                 (let ((__tmp194764
                                                        (lambda ()
                                                          (let ((_%expr193308%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#compile-e__1 _%self193242%_ _%g193247193291%_)))
                    (gxc#xform-wrap-source
                     (cons '%#define-syntax
                           (cons _%g193248193292%_ (cons _%expr193308%_ '())))
                     _%stx193243%_))))
               (__tmp194762
                (let ((__tmp194763
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp194763 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp194764
                                                    gx#current-expander-phi
                                                    __tmp194762)))
                                               _%hd193256193286%_
                                               _%hd193253193278%_)
                                              (_%g193245193262%_
                                               _%g193246193265%_))))
                                      (_%g193245193262%_ _%g193246193265%_))))
                              (_%g193245193262%_ _%g193246193265%_))))
                      (_%g193245193262%_ _%g193246193265%_)))))
          (_%g193244193310%_ _%stx193243%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self193172%_ _%stx193173%_)
        (let* ((_%g193175193192%_
                (lambda (_%g193176193189%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193176193189%_))))
               (_%g193174193239%_
                (lambda (_%g193176193195%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193176193195%_))
                      (let ((_%e193179193197%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193176193195%_))))
                        (let ((_%hd193180193200%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193179193197%_)))
                              (_%tl193181193202%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193179193197%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193181193202%_))
                              (let ((_%e193182193205%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193181193202%_))))
                                (let ((_%hd193183193208%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193182193205%_)))
                                      (_%tl193184193210%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193182193205%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193184193210%_))
                                      (let ((_%e193185193213%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193184193210%_))))
                                        (let ((_%hd193186193216%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193185193213%_)))
                                              (_%tl193187193218%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193185193213%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193187193218%_))
                                              ((lambda (_%g193177193221%_
                                                        _%g193178193222%_)
                                                 (let ((_%expr193237%_
                                                        (gxc#compile-e__1
                                                         _%self193172%_
                                                         _%g193177193221%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#begin-annotation
                                                          (cons _%g193178193222%_
                                                                (cons _%expr193237%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx193173%_)))
                                               _%hd193186193216%_
                                               _%hd193183193208%_)
                                              (_%g193175193192%_
                                               _%g193176193195%_))))
                                      (_%g193175193192%_ _%g193176193195%_))))
                              (_%g193175193192%_ _%g193176193195%_))))
                      (_%g193175193192%_ _%g193176193195%_)))))
          (_%g193174193239%_ _%stx193173%_))))
    (define gxc#xform-lambda%
      (lambda (_%self193110%_ _%stx193111%_)
        (let* ((_%g193113193127%_
                (lambda (_%g193114193124%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193114193124%_))))
               (_%g193112193169%_
                (lambda (_%g193114193130%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193114193130%_))
                      (let ((_%e193117193132%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193114193130%_))))
                        (let ((_%hd193118193135%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193117193132%_)))
                              (_%tl193119193137%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193117193132%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193119193137%_))
                              (let ((_%e193120193140%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193119193137%_))))
                                (let ((_%hd193121193143%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193120193140%_)))
                                      (_%tl193122193145%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193120193140%_))))
                                  ((lambda (_%g193115193148%_
                                            _%g193116193149%_)
                                     (let ((__tmp194766
                                            (lambda ()
                                              (let ((_%body193167%_
                                                     (map (lambda (_%g193162193164%_)
                                                            (gxc#compile-e__1
                                                             _%self193110%_
                                                             _%g193162193164%_))
                                                          _%g193115193148%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#lambda
                                                       (cons _%g193116193149%_
                                                             _%body193167%_))
                                                 _%stx193111%_))))
                                           (__tmp194765
                                            (gxc#xform-let-locals
                                             _%g193116193149%_)))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp194766
                                        gxc#current-compile-local-env
                                        __tmp194765)))
                                   _%tl193122193145%_
                                   _%hd193121193143%_)))
                              (_%g193113193127%_ _%g193114193130%_))))
                      (_%g193113193127%_ _%g193114193130%_)))))
          (_%g193112193169%_ _%stx193111%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self193018%_ _%stx193019%_)
        (letrec ((_%clause-e193021%_
                  (lambda (_%clause193062%_)
                    (let* ((_%g193064193075%_
                            (lambda (_%g193065193072%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g193065193072%_))))
                           (_%g193063193107%_
                            (lambda (_%g193065193078%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g193065193078%_))
                                  (let ((_%e193068193080%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g193065193078%_))))
                                    (let ((_%hd193069193083%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193068193080%_)))
                                          (_%tl193070193085%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193068193080%_))))
                                      ((lambda (_%g193066193088%_
                                                _%g193067193089%_)
                                         (let ((__tmp194768
                                                (lambda ()
                                                  (let ((_%body193105%_
                                                         (map (lambda (_%g193100193102%_)
                                                                (gxc#compile-e__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%self193018%_
                         _%g193100193102%_))
                      _%g193066193088%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%g193067193089%_
                                                          _%body193105%_))))
                                               (__tmp194767
                                                (gxc#xform-let-locals
                                                 _%g193067193089%_)))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp194768
                                            gxc#current-compile-local-env
                                            __tmp194767)))
                                       _%tl193070193085%_
                                       _%hd193069193083%_)))
                                  (_%g193064193075%_ _%g193065193078%_)))))
                      (_%g193063193107%_ _%clause193062%_)))))
          (let* ((_%g193023193033%_
                  (lambda (_%g193024193030%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g193024193030%_))))
                 (_%g193022193059%_
                  (lambda (_%g193024193036%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g193024193036%_))
                        (let ((_%e193026193038%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g193024193036%_))))
                          (let ((_%hd193027193041%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e193026193038%_)))
                                (_%tl193028193043%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e193026193038%_))))
                            ((lambda (_%g193025193046%_)
                               (let ((_%clauses193057%_
                                      (map _%clause-e193021%_
                                           _%g193025193046%_)))
                                 (gxc#xform-wrap-source
                                  (cons '%#case-lambda _%clauses193057%_)
                                  _%stx193019%_)))
                             _%tl193028193043%_)))
                        (_%g193023193033%_ _%g193024193036%_)))))
            (_%g193022193059%_ _%stx193019%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self192778%_ _%stx192779%_)
        (let* ((_%g192781192814%_
                (lambda (_%g192782192811%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192782192811%_))))
               (_%g192780193015%_
                (lambda (_%g192782192817%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192782192817%_))
                      (let ((_%e192787192819%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192782192817%_))))
                        (let ((_%hd192788192822%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192787192819%_)))
                              (_%tl192789192824%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192787192819%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192789192824%_))
                              (let ((_%e192790192827%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192789192824%_))))
                                (let ((_%hd192791192830%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192790192827%_)))
                                      (_%tl192792192832%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192790192827%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd192791192830%_))
                                      (let ((_g194769_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd192791192830%_
                                                '0))))
                                        (begin
                                          (let ((_g194770_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g194769_)
                                                       (##values-length
                                                        _g194769_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g194770_ 2)))
                                                (error "Context expects 2 values"
                                                       _g194770_)))
                                          (let ((_%target192793192835%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g194769_ 0)))
                                                (_%tl192795192837%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g194769_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl192795192837%_))
                                                (letrec ((_%loop192796192840%_
                                                          (lambda (_%hd192794192843%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr192800192845%_
                           _%hd192801192846%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd192794192843%_))
                        (let ((_%e192797192848%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd192794192843%_))))
                          (let ((_%lp-hd192798192851%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e192797192848%_)))
                                (_%lp-tl192799192853%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e192797192848%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd192798192851%_))
                                (let ((_%e192804192856%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd192798192851%_))))
                                  (let ((_%hd192805192859%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e192804192856%_)))
                                        (_%tl192806192861%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e192804192856%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl192806192861%_))
                                        (let ((_%e192807192864%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl192806192861%_))))
                                          (let ((_%hd192808192867%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e192807192864%_)))
                                                (_%tl192809192869%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e192807192864%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl192809192869%_))
                                                (_%loop192796192840%_
                                                 _%lp-tl192799192853%_
                                                 (cons _%hd192808192867%_
                                                       _%expr192800192845%_)
                                                 (cons _%hd192805192859%_
                                                       _%hd192801192846%_))
                                                (_%g192781192814%_
                                                 _%g192782192817%_))))
                                        (_%g192781192814%_
                                         _%g192782192817%_))))
                                (_%g192781192814%_ _%g192782192817%_))))
                        (let ((_%expr192802192872%_
                               (reverse _%expr192800192845%_))
                              (_%hd192803192873%_
                               (reverse _%hd192801192846%_)))
                          ((lambda (_%g192783192875%_
                                    _%g192784192876%_
                                    _%g192785192877%_
                                    _%g192786192878%_)
                             (let* ((_%g192897192913%_
                                     (lambda (_%g192898192910%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g192898192910%_))))
                                    (_%g192896193001%_
                                     (lambda (_%g192898192916%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g192898192916%_))
                                           (let ((_g194771_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g192898192916%_
                                                     '0))))
                                             (begin
                                               (let ((_g194772_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g194771_)
                                                            (##values-length
                                                             _g194771_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g194772_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g194772_)))
                                               (let ((_%target192900192918%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g194771_
                                                         0)))
                                                     (_%tl192902192920%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g194771_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl192902192920%_))
                                                     (letrec ((_%loop192903192923%_
                                                               (lambda (_%hd192901192926%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr192907192928%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd192901192926%_))
                             (let ((_%e192904192930%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd192901192926%_))))
                               (let ((_%lp-hd192905192933%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e192904192930%_)))
                                     (_%lp-tl192906192935%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e192904192930%_))))
                                 (_%loop192903192923%_
                                  _%lp-tl192906192935%_
                                  (cons _%lp-hd192905192933%_
                                        _%expr192907192928%_))))
                             (let ((_%expr192908192938%_
                                    (reverse _%expr192907192928%_)))
                               ((lambda (_%g192899192940%_)
                                  (let ((__tmp194775
                                         (lambda ()
                                           (let* ((_%g192954192961%_
                                                   (lambda (_%g192955192958%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g192955192958%_))))
                                                  (_%g192953192987%_
                                                   (lambda (_%g192955192964%_)
                                                     ((lambda (_%g192956192966%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%g192786192878%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%g192899192940%_
                                  _%g192785192877%_))
                               (let ((__tmp194776
                                      (lambda (_%g192976192980%_
                                               _%g192977192982%_
                                               _%g192978192984%_)
                                        (cons (cons _%g192977192982%_
                                                    (cons _%g192976192980%_
                                                          '()))
                                              _%g192978192984%_))))
                                 (declare (not safe))
                                 (foldr__1
                                  __tmp194776
                                  '()
                                  _%g192899192940%_
                                  _%g192785192877%_)))
                             _%g192956192966%_))
                 _%stx192779%_))
              _%g192955192964%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g192953192987%_
                                              (map (lambda (_%g192989192991%_)
                                                     (gxc#compile-e__1
                                                      _%self192778%_
                                                      _%g192989192991%_))
                                                   _%g192783192875%_)))))
                                        (__tmp194773
                                         (gxc#xform-let-locals
                                          (let ((__tmp194774
                                                 (lambda (_%g192993192996%_
                                                          _%g192994192998%_)
                                                   (cons _%g192993192996%_
                                                         _%g192994192998%_))))
                                            (declare (not safe))
                                            (foldr__0
                                             __tmp194774
                                             '()
                                             _%g192785192877%_)))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp194775
                                     gxc#current-compile-local-env
                                     __tmp194773)))
                                _%expr192908192938%_))))))
               (_%loop192903192923%_ _%target192900192918%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g192897192913%_
                                                      _%g192898192916%_)))))
                                           (_%g192897192913%_
                                            _%g192898192916%_)))))
                               (_%g192896193001%_
                                (map (lambda (_%g193003193005%_)
                                       (gxc#compile-e__1
                                        _%self192778%_
                                        _%g193003193005%_))
                                     (let ((__tmp194777
                                            (lambda (_%g193007193010%_
                                                     _%g193008193012%_)
                                              (cons _%g193007193010%_
                                                    _%g193008193012%_))))
                                       (declare (not safe))
                                       (foldr__0
                                        __tmp194777
                                        '()
                                        _%g192784192876%_))))))
                           _%tl192792192832%_
                           _%expr192802192872%_
                           _%hd192803192873%_
                           _%hd192788192822%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop192796192840%_
                                                   _%target192793192835%_
                                                   '()
                                                   '()))
                                                (_%g192781192814%_
                                                 _%g192782192817%_)))))
                                      (_%g192781192814%_ _%g192782192817%_))))
                              (_%g192781192814%_ _%g192782192817%_))))
                      (_%g192781192814%_ _%g192782192817%_)))))
          (_%g192780193015%_ _%stx192779%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self192538%_ _%stx192539%_)
        (let* ((_%g192541192574%_
                (lambda (_%g192542192571%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192542192571%_))))
               (_%g192540192775%_
                (lambda (_%g192542192577%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192542192577%_))
                      (let ((_%e192547192579%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192542192577%_))))
                        (let ((_%hd192548192582%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192547192579%_)))
                              (_%tl192549192584%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192547192579%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192549192584%_))
                              (let ((_%e192550192587%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192549192584%_))))
                                (let ((_%hd192551192590%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192550192587%_)))
                                      (_%tl192552192592%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192550192587%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd192551192590%_))
                                      (let ((_g194778_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd192551192590%_
                                                '0))))
                                        (begin
                                          (let ((_g194779_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g194778_)
                                                       (##values-length
                                                        _g194778_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g194779_ 2)))
                                                (error "Context expects 2 values"
                                                       _g194779_)))
                                          (let ((_%target192553192595%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g194778_ 0)))
                                                (_%tl192555192597%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g194778_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl192555192597%_))
                                                (letrec ((_%loop192556192600%_
                                                          (lambda (_%hd192554192603%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr192560192605%_
                           _%hd192561192606%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd192554192603%_))
                        (let ((_%e192557192608%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd192554192603%_))))
                          (let ((_%lp-hd192558192611%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e192557192608%_)))
                                (_%lp-tl192559192613%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e192557192608%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd192558192611%_))
                                (let ((_%e192564192616%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd192558192611%_))))
                                  (let ((_%hd192565192619%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e192564192616%_)))
                                        (_%tl192566192621%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e192564192616%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl192566192621%_))
                                        (let ((_%e192567192624%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl192566192621%_))))
                                          (let ((_%hd192568192627%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e192567192624%_)))
                                                (_%tl192569192629%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e192567192624%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl192569192629%_))
                                                (_%loop192556192600%_
                                                 _%lp-tl192559192613%_
                                                 (cons _%hd192568192627%_
                                                       _%expr192560192605%_)
                                                 (cons _%hd192565192619%_
                                                       _%hd192561192606%_))
                                                (_%g192541192574%_
                                                 _%g192542192577%_))))
                                        (_%g192541192574%_
                                         _%g192542192577%_))))
                                (_%g192541192574%_ _%g192542192577%_))))
                        (let ((_%expr192562192632%_
                               (reverse _%expr192560192605%_))
                              (_%hd192563192633%_
                               (reverse _%hd192561192606%_)))
                          ((lambda (_%g192543192635%_
                                    _%g192544192636%_
                                    _%g192545192637%_
                                    _%g192546192638%_)
                             (let ((__tmp194782
                                    (lambda ()
                                      (let* ((_%g192658192674%_
                                              (lambda (_%g192659192671%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g192659192671%_))))
                                             (_%g192657192754%_
                                              (lambda (_%g192659192677%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g192659192677%_))
                                                    (let ((_g194783_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g192659192677%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g194784_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g194783_)
                             (##values-length _g194783_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g194784_ 2)))
                      (error "Context expects 2 values" _g194784_)))
                (let ((_%target192661192679%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g194783_ 0)))
                      (_%tl192663192681%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g194783_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl192663192681%_))
                      (letrec ((_%loop192664192684%_
                                (lambda (_%hd192662192687%_
                                         _%expr192668192689%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd192662192687%_))
                                      (let ((_%e192665192691%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd192662192687%_))))
                                        (let ((_%lp-hd192666192694%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192665192691%_)))
                                              (_%lp-tl192667192696%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192665192691%_))))
                                          (_%loop192664192684%_
                                           _%lp-tl192667192696%_
                                           (cons _%lp-hd192666192694%_
                                                 _%expr192668192689%_))))
                                      (let ((_%expr192669192699%_
                                             (reverse _%expr192668192689%_)))
                                        ((lambda (_%g192660192701%_)
                                           (let* ((_%g192715192722%_
                                                   (lambda (_%g192716192719%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g192716192719%_))))
                                                  (_%g192714192747%_
                                                   (lambda (_%g192716192725%_)
                                                     ((lambda (_%g192717192727%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%g192546192638%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%g192660192701%_
                                  _%g192545192637%_))
                               (let ((__tmp194785
                                      (lambda (_%g192736192740%_
                                               _%g192737192742%_
                                               _%g192738192744%_)
                                        (cons (cons _%g192737192742%_
                                                    (cons _%g192736192740%_
                                                          '()))
                                              _%g192738192744%_))))
                                 (declare (not safe))
                                 (foldr__1
                                  __tmp194785
                                  '()
                                  _%g192660192701%_
                                  _%g192545192637%_)))
                             _%g192717192727%_))
                 _%stx192539%_))
              _%g192716192725%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g192714192747%_
                                              (map (lambda (_%g192749192751%_)
                                                     (gxc#compile-e__1
                                                      _%self192538%_
                                                      _%g192749192751%_))
                                                   _%g192543192635%_))))
                                         _%expr192669192699%_))))))
                        (_%loop192664192684%_ _%target192661192679%_ '()))
                      (_%g192658192674%_ _%g192659192677%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g192658192674%_
                                                     _%g192659192677%_)))))
                                        (_%g192657192754%_
                                         (map (lambda (_%g192756192758%_)
                                                (gxc#compile-e__1
                                                 _%self192538%_
                                                 _%g192756192758%_))
                                              (let ((__tmp194786
                                                     (lambda (_%g192760192763%_
                                                              _%g192761192765%_)
                                                       (cons _%g192760192763%_
                                                             _%g192761192765%_))))
                                                (declare (not safe))
                                                (foldr__0
                                                 __tmp194786
                                                 '()
                                                 _%g192544192636%_)))))))
                                   (__tmp194780
                                    (gxc#xform-let-locals
                                     (let ((__tmp194781
                                            (lambda (_%g192767192770%_
                                                     _%g192768192772%_)
                                              (cons _%g192767192770%_
                                                    _%g192768192772%_))))
                                       (declare (not safe))
                                       (foldr__0
                                        __tmp194781
                                        '()
                                        _%g192545192637%_)))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp194782
                                gxc#current-compile-local-env
                                __tmp194780)))
                           _%tl192552192592%_
                           _%expr192562192632%_
                           _%hd192563192633%_
                           _%hd192548192582%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop192556192600%_
                                                   _%target192553192595%_
                                                   '()
                                                   '()))
                                                (_%g192541192574%_
                                                 _%g192542192577%_)))))
                                      (_%g192541192574%_ _%g192542192577%_))))
                              (_%g192541192574%_ _%g192542192577%_))))
                      (_%g192541192574%_ _%g192542192577%_)))))
          (_%g192540192775%_ _%stx192539%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings192405%_)
        (letrec ((_%flatten192407%_
                  (lambda (_%maybe-lst192465%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%maybe-lst192465%_))
                        (cons _%maybe-lst192465%_ '())
                        (let _%loop192467%_ ((_%rest192469%_
                                              _%maybe-lst192465%_)
                                             (_%result192470%_ '()))
                          (let* ((_%__stx194674194675%_ _%rest192469%_)
                                 (_%g192474192486%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx194674194675%_)))))
                            (let ((_%__kont194676194677%_
                                   (lambda (_%g192476192524%_
                                            _%g192477192525%_)
                                     (_%loop192467%_
                                      _%g192476192524%_
                                      (let ((__tmp194787
                                             (_%flatten192407%_
                                              _%g192477192525%_)))
                                        (declare (not safe))
                                        (foldl__0
                                         cons
                                         _%result192470%_
                                         __tmp194787)))))
                                  (_%__kont194678194679%_
                                   (lambda (_%g192481192498%_)
                                     (cons _%g192481192498%_
                                           _%result192470%_)))
                                  (_%__kont194680194681%_
                                   (lambda () _%result192470%_)))
                              (let ((_%g192472192511%_
                                     (lambda ()
                                       (let ((_%g192481192498%_
                                              _%__stx194674194675%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%g192481192498%_))
                                             (_%__kont194678194679%_
                                              _%g192481192498%_)
                                             (_%__kont194680194681%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx194674194675%_))
                                    (let ((_%e192478192516%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx194674194675%_))))
                                      (let ((_%tl192480192521%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e192478192516%_)))
                                            (_%hd192479192519%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e192478192516%_))))
                                        (_%__kont194676194677%_
                                         _%tl192480192521%_
                                         _%hd192479192519%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g192472192511%_)))))))))))
          (let _%loop192409%_ ((_%rest192411%_
                                (_%flatten192407%_ _%bindings192405%_))
                               (_%locals192412%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-local-env))))
            (let* ((_%rest192413192424%_ _%rest192411%_)
                   (_%E192417192428%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching"
                               _%rest192413192424%_
                               '([(? identifier? id) . rest])
                               '((? identifier? id))
                               '(_)))
                      '#!void)))
              (let ((_%K192420192453%_
                     (lambda (_%rest192450%_ _%id192451%_)
                       (_%loop192409%_
                        _%rest192450%_
                        (cons (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _%id192451%_))
                              _%locals192412%_))))
                    (_%K192419192442%_
                     (lambda (_%id192440%_)
                       (cons (let ()
                               (declare (not safe))
                               (gxc#identifier-symbol _%id192440%_))
                             _%locals192412%_)))
                    (_%K192418192433%_ (lambda () _%locals192412%_)))
                (let ((_%try-match192415192447%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%rest192413192424%_))
                             (let ((_%id192445%_ _%rest192413192424%_))
                               (_%K192419192442%_ _%id192445%_))
                             (_%K192418192433%_)))))
                  (if (pair? _%rest192413192424%_)
                      (let ((_%tl192422192458%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest192413192424%_)))
                            (_%hd192421192456%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest192413192424%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd192421192456%_))
                            (let ((_%id192461%_ _%hd192421192456%_)
                                  (_%rest192463%_ _%tl192422192458%_))
                              (_%K192420192453%_ _%rest192463%_ _%id192461%_))
                            (_%K192418192433%_)))
                      (_%try-match192415192447%_)))))))))
    (define gxc#xform-operands
      (lambda (_%self192357%_ _%stx192358%_)
        (let* ((_%g192360192371%_
                (lambda (_%g192361192368%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192361192368%_))))
               (_%g192359192402%_
                (lambda (_%g192361192374%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192361192374%_))
                      (let ((_%e192364192376%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192361192374%_))))
                        (let ((_%hd192365192379%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192364192376%_)))
                              (_%tl192366192381%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192364192376%_))))
                          ((lambda (_%g192362192384%_ _%g192363192385%_)
                             (let ((_%rands192400%_
                                    (map (lambda (_%g192395192397%_)
                                           (gxc#compile-e__1
                                            _%self192357%_
                                            _%g192395192397%_))
                                         _%g192362192384%_)))
                               (gxc#xform-wrap-source
                                (cons _%g192363192385%_ _%rands192400%_)
                                _%stx192358%_)))
                           _%tl192366192381%_
                           _%hd192365192379%_)))
                      (_%g192360192371%_ _%g192361192374%_)))))
          (_%g192359192402%_ _%stx192358%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self192287%_ _%stx192288%_)
        (let* ((_%g192290192307%_
                (lambda (_%g192291192304%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192291192304%_))))
               (_%g192289192354%_
                (lambda (_%g192291192310%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192291192310%_))
                      (let ((_%e192294192312%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192291192310%_))))
                        (let ((_%hd192295192315%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192294192312%_)))
                              (_%tl192296192317%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192294192312%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192296192317%_))
                              (let ((_%e192297192320%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192296192317%_))))
                                (let ((_%hd192298192323%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192297192320%_)))
                                      (_%tl192299192325%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192297192320%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl192299192325%_))
                                      (let ((_%e192300192328%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl192299192325%_))))
                                        (let ((_%hd192301192331%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192300192328%_)))
                                              (_%tl192302192333%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192300192328%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl192302192333%_))
                                              ((lambda (_%g192292192336%_
                                                        _%g192293192337%_)
                                                 (let ((_%expr192352%_
                                                        (gxc#compile-e__1
                                                         _%self192287%_
                                                         _%g192292192336%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _%g192293192337%_
                                                                (cons _%expr192352%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx192288%_)))
                                               _%hd192301192331%_
                                               _%hd192298192323%_)
                                              (_%g192290192307%_
                                               _%g192291192310%_))))
                                      (_%g192290192307%_ _%g192291192310%_))))
                              (_%g192290192307%_ _%g192291192310%_))))
                      (_%g192290192307%_ _%g192291192310%_)))))
          (_%g192289192354%_ _%stx192288%_))))))
