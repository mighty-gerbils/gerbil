(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1713631267)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx137535%_)
        (let* ((_%self137537%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e137539%_
                (let ((__tmp137735 (gxc#stx-car-e _%stx137535%_)))
                  (declare (not safe))
                  (method-ref _%self137537%_ __tmp137735))))
          (if _%$e137539%_
              ((lambda (_%method137542%_)
                 (declare (not safe))
                 (_%method137542%_ _%self137537%_ _%stx137535%_))
               _%$e137539%_)
              (let ((__tmp137737 (gxc#stx-car-e _%stx137535%_))
                    (__tmp137736
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx137535%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self137537%_
                       __tmp137737
                       __tmp137736))))))
    (define gxc#compile-e__1
      (lambda (_%self137546%_ _%stx137547%_)
        (let ((_%$e137549%_
               (let ((__tmp137738 (gxc#stx-car-e _%stx137547%_)))
                 (declare (not safe))
                 (method-ref _%self137546%_ __tmp137738))))
          (if _%$e137549%_
              ((lambda (_%method137552%_)
                 (declare (not safe))
                 (_%method137552%_ _%self137546%_ _%stx137547%_))
               _%$e137549%_)
              (let ((__tmp137740 (gxc#stx-car-e _%stx137547%_))
                    (__tmp137739
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx137547%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self137546%_
                       __tmp137740
                       __tmp137739))))))
    (define gxc#compile-e
      (lambda _g137742_
        (let ((_g137741_ (let () (declare (not safe)) (##length _g137742_))))
          (cond ((let () (declare (not safe)) (##fx= _g137741_ 1))
                 (apply gxc#compile-e__0 _g137742_))
                ((let () (declare (not safe)) (##fx= _g137741_ 2))
                 (apply gxc#compile-e__1 _g137742_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g137742_))))))
    (define gxc#stx-car-e
      (lambda (_%stx137533%_)
        (let ((__tmp137743
               (car (let () (declare (not safe)) (gx#stx-e _%stx137533%_)))))
          (declare (not safe))
          (gx#stx-e __tmp137743))))
    (define gxc#void-method (lambda (_%self137530%_ _%stx137531%_) '#!void))
    (define gxc#false-method (lambda (_%self137527%_ _%stx137528%_) '#f))
    (define gxc#true-method (lambda (_%self137524%_ _%stx137525%_) '#t))
    (define gxc#identity-method
      (lambda (_%self137521%_ _%stx137522%_) _%stx137522%_))
    (define gxc#::void-expression::t
      (let ((__tmp137744 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp137744
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args137518%_
        (apply make-instance gxc#::void-expression::t _%$args137518%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp137745
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
        (__make-promise __tmp137745)))
    (define gxc#::void-special-form::t
      (let ((__tmp137746 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp137746
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args137514%_
        (apply make-instance gxc#::void-special-form::t _%$args137514%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp137747
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
        (__make-promise __tmp137747)))
    (define gxc#::void::t
      (let ((__tmp137748
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp137748 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args137510%_
        (apply make-instance gxc#::void::t _%$args137510%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp137749
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp137749)))
    (define gxc#::false-expression::t
      (let ((__tmp137750 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp137750
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args137506%_
        (apply make-instance gxc#::false-expression::t _%$args137506%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp137751
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
        (__make-promise __tmp137751)))
    (define gxc#::false-special-form::t
      (let ((__tmp137752 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp137752
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args137502%_
        (apply make-instance gxc#::false-special-form::t _%$args137502%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp137753
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
        (__make-promise __tmp137753)))
    (define gxc#::false::t
      (let ((__tmp137754
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp137754 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args137498%_
        (apply make-instance gxc#::false::t _%$args137498%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp137755
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp137755)))
    (define gxc#::identity-expression::t
      (let ((__tmp137756 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp137756
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args137494%_
        (apply make-instance gxc#::identity-expression::t _%$args137494%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp137757
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
        (__make-promise __tmp137757)))
    (define gxc#::identity-special-form::t
      (let ((__tmp137758 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp137758
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args137490%_
        (apply make-instance gxc#::identity-special-form::t _%$args137490%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp137759
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
        (__make-promise __tmp137759)))
    (define gxc#::identity::t
      (let ((__tmp137760
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp137760
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args137486%_
        (apply make-instance gxc#::identity::t _%$args137486%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp137761
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp137761)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp137762 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp137762
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args137482%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args137482%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp137763
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
        (__make-promise __tmp137763)))
    (define gxc#::basic-xform::t
      (let ((__tmp137764
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp137764
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args137478%_
        (apply make-instance gxc#::basic-xform::t _%$args137478%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp137765
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
        (__make-promise __tmp137765)))
    (define gxc#apply-begin%
      (lambda (_%self137434%_ _%stx137435%_)
        (let* ((_%g137437137447%_
                (lambda (_%g137438137444%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137438137444%_))))
               (_%g137436137474%_
                (lambda (_%g137438137450%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137438137450%_))
                      (let ((_%e137440137452%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137438137450%_))))
                        (let ((_%hd137441137455%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137440137452%_)))
                              (_%tl137442137457%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137440137452%_))))
                          ((lambda (_%L137460%_)
                             (for-each
                              (lambda (_%g137469137471%_)
                                (gxc#compile-e__1
                                 _%self137434%_
                                 _%g137469137471%_))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L137460%_))))
                           _%tl137442137457%_)))
                      (_%g137437137447%_ _%g137438137450%_)))))
          (_%g137436137474%_ _%stx137435%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self137395%_ _%stx137396%_)
        (let* ((_%g137398137408%_
                (lambda (_%g137399137405%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137399137405%_))))
               (_%g137397137431%_
                (lambda (_%g137399137411%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137399137411%_))
                      (let ((_%e137401137413%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137399137411%_))))
                        (let ((_%hd137402137416%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137401137413%_)))
                              (_%tl137403137418%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137401137413%_))))
                          ((lambda (_%L137421%_)
                             (gxc#compile-e__1
                              _%self137395%_
                              (last _%L137421%_)))
                           _%tl137403137418%_)))
                      (_%g137398137408%_ _%g137399137411%_)))))
          (_%g137397137431%_ _%stx137396%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self137391%_ _%stx137392%_)
        (let ((__tmp137768
               (lambda () (gxc#apply-begin% _%self137391%_ _%stx137392%_)))
              (__tmp137766
               (let ((__tmp137767
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp137767 '1))))
          (declare (not safe))
          (__call-with-parameters
           __tmp137768
           gx#current-expander-phi
           __tmp137766))))
    (define gxc#apply-module%
      (lambda (_%self137330%_ _%stx137331%_)
        (let* ((_%g137333137347%_
                (lambda (_%g137334137344%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137334137344%_))))
               (_%g137332137388%_
                (lambda (_%g137334137350%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137334137350%_))
                      (let ((_%e137337137352%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137334137350%_))))
                        (let ((_%hd137338137355%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137337137352%_)))
                              (_%tl137339137357%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137337137352%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137339137357%_))
                              (let ((_%e137340137360%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137339137357%_))))
                                (let ((_%hd137341137363%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137340137360%_)))
                                      (_%tl137342137365%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137340137360%_))))
                                  ((lambda (_%L137368%_ _%L137369%_)
                                     (let* ((_%ctx137382%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L137369%_)))
                                            (_%ctx-stx137384%_
                                             (##structure-ref
                                              _%ctx137382%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp137769
                                             (lambda ()
                                               (gxc#compile-e__1
                                                _%self137330%_
                                                _%ctx-stx137384%_))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp137769
                                        gx#current-expander-context
                                        _%ctx137382%_)))
                                   _%tl137342137365%_
                                   _%hd137341137363%_)))
                              (_%g137333137347%_ _%g137334137350%_))))
                      (_%g137333137347%_ _%g137334137350%_)))))
          (_%g137332137388%_ _%stx137331%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self137262%_ _%stx137263%_)
        (let* ((_%g137265137282%_
                (lambda (_%g137266137279%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137266137279%_))))
               (_%g137264137327%_
                (lambda (_%g137266137285%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137266137285%_))
                      (let ((_%e137269137287%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137266137285%_))))
                        (let ((_%hd137270137290%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137269137287%_)))
                              (_%tl137271137292%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137269137287%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137271137292%_))
                              (let ((_%e137272137295%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137271137292%_))))
                                (let ((_%hd137273137298%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137272137295%_)))
                                      (_%tl137274137300%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137272137295%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137274137300%_))
                                      (let ((_%e137275137303%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137274137300%_))))
                                        (let ((_%hd137276137306%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137275137303%_)))
                                              (_%tl137277137308%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137275137303%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137277137308%_))
                                              ((lambda (_%L137311%_
                                                        _%L137312%_)
                                                 (gxc#compile-e__1
                                                  _%self137262%_
                                                  _%L137311%_))
                                               _%hd137276137306%_
                                               _%hd137273137298%_)
                                              (_%g137265137282%_
                                               _%g137266137285%_))))
                                      (_%g137265137282%_ _%g137266137285%_))))
                              (_%g137265137282%_ _%g137266137285%_))))
                      (_%g137265137282%_ _%g137266137285%_)))))
          (_%g137264137327%_ _%stx137263%_))))
    (define gxc#apply-define-values%
      (lambda (_%self137194%_ _%stx137195%_)
        (let* ((_%g137197137214%_
                (lambda (_%g137198137211%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137198137211%_))))
               (_%g137196137259%_
                (lambda (_%g137198137217%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137198137217%_))
                      (let ((_%e137201137219%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137198137217%_))))
                        (let ((_%hd137202137222%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137201137219%_)))
                              (_%tl137203137224%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137201137219%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137203137224%_))
                              (let ((_%e137204137227%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137203137224%_))))
                                (let ((_%hd137205137230%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137204137227%_)))
                                      (_%tl137206137232%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137204137227%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137206137232%_))
                                      (let ((_%e137207137235%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137206137232%_))))
                                        (let ((_%hd137208137238%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137207137235%_)))
                                              (_%tl137209137240%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137207137235%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137209137240%_))
                                              ((lambda (_%L137243%_
                                                        _%L137244%_)
                                                 (gxc#compile-e__1
                                                  _%self137194%_
                                                  _%L137243%_))
                                               _%hd137208137238%_
                                               _%hd137205137230%_)
                                              (_%g137197137214%_
                                               _%g137198137217%_))))
                                      (_%g137197137214%_ _%g137198137217%_))))
                              (_%g137197137214%_ _%g137198137217%_))))
                      (_%g137197137214%_ _%g137198137217%_)))))
          (_%g137196137259%_ _%stx137195%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self137125%_ _%stx137126%_)
        (let* ((_%g137128137145%_
                (lambda (_%g137129137142%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137129137142%_))))
               (_%g137127137191%_
                (lambda (_%g137129137148%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137129137148%_))
                      (let ((_%e137132137150%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137129137148%_))))
                        (let ((_%hd137133137153%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137132137150%_)))
                              (_%tl137134137155%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137132137150%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137134137155%_))
                              (let ((_%e137135137158%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137134137155%_))))
                                (let ((_%hd137136137161%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137135137158%_)))
                                      (_%tl137137137163%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137135137158%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137137137163%_))
                                      (let ((_%e137138137166%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137137137163%_))))
                                        (let ((_%hd137139137169%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137138137166%_)))
                                              (_%tl137140137171%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137138137166%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137140137171%_))
                                              ((lambda (_%L137174%_
                                                        _%L137175%_)
                                                 (let ((__tmp137772
                                                        (lambda ()
                                                          (gxc#compile-e__1
                                                           _%self137125%_
                                                           _%L137174%_)))
                                                       (__tmp137770
                                                        (let ((__tmp137771
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp137771 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp137772
                                                    gx#current-expander-phi
                                                    __tmp137770)))
                                               _%hd137139137169%_
                                               _%hd137136137161%_)
                                              (_%g137128137145%_
                                               _%g137129137148%_))))
                                      (_%g137128137145%_ _%g137129137148%_))))
                              (_%g137128137145%_ _%g137129137148%_))))
                      (_%g137128137145%_ _%g137129137148%_)))))
          (_%g137127137191%_ _%stx137126%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self137057%_ _%stx137058%_)
        (let* ((_%g137060137077%_
                (lambda (_%g137061137074%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137061137074%_))))
               (_%g137059137122%_
                (lambda (_%g137061137080%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137061137080%_))
                      (let ((_%e137064137082%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137061137080%_))))
                        (let ((_%hd137065137085%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137064137082%_)))
                              (_%tl137066137087%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137064137082%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137066137087%_))
                              (let ((_%e137067137090%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137066137087%_))))
                                (let ((_%hd137068137093%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137067137090%_)))
                                      (_%tl137069137095%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137067137090%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137069137095%_))
                                      (let ((_%e137070137098%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137069137095%_))))
                                        (let ((_%hd137071137101%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137070137098%_)))
                                              (_%tl137072137103%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137070137098%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137072137103%_))
                                              ((lambda (_%L137106%_
                                                        _%L137107%_)
                                                 (gxc#compile-e__1
                                                  _%self137057%_
                                                  _%L137106%_))
                                               _%hd137071137101%_
                                               _%hd137068137093%_)
                                              (_%g137060137077%_
                                               _%g137061137080%_))))
                                      (_%g137060137077%_ _%g137061137080%_))))
                              (_%g137060137077%_ _%g137061137080%_))))
                      (_%g137060137077%_ _%g137061137080%_)))))
          (_%g137059137122%_ _%stx137058%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self136939%_ _%stx136940%_)
        (let* ((_%g136942136970%_
                (lambda (_%g136943136967%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136943136967%_))))
               (_%g136941137054%_
                (lambda (_%g136943136973%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136943136973%_))
                      (let ((_%e136946136975%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136943136973%_))))
                        (let ((_%hd136947136978%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136946136975%_)))
                              (_%tl136948136980%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136946136975%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl136948136980%_))
                              (let ((_g137773_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl136948136980%_
                                        '0))))
                                (begin
                                  (let ((_g137774_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g137773_)
                                               (##vector-length _g137773_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g137774_ 2)))
                                        (error "Context expects 2 values"
                                               _g137774_)))
                                  (let ((_%target136949136983%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g137773_ 0)))
                                        (_%tl136951136985%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g137773_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl136951136985%_))
                                        (letrec ((_%loop136952136988%_
                                                  (lambda (_%hd136950136991%_
                                                           _%body136956136993%_
                                                           _%hd136957136995%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd136950136991%_))
                                                        (let ((_%e136953136998%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd136950136991%_))))
                  (let ((_%lp-hd136954137001%_
                         (let ()
                           (declare (not safe))
                           (##car _%e136953136998%_)))
                        (_%lp-tl136955137003%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e136953136998%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd136954137001%_))
                        (let ((_%e136960137006%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd136954137001%_))))
                          (let ((_%hd136961137009%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e136960137006%_)))
                                (_%tl136962137011%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e136960137006%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl136962137011%_))
                                (let ((_%e136963137014%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl136962137011%_))))
                                  (let ((_%hd136964137017%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e136963137014%_)))
                                        (_%tl136965137019%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e136963137014%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl136965137019%_))
                                        (_%loop136952136988%_
                                         _%lp-tl136955137003%_
                                         (cons _%hd136964137017%_
                                               _%body136956136993%_)
                                         (cons _%hd136961137009%_
                                               _%hd136957136995%_))
                                        (_%g136942136970%_
                                         _%g136943136973%_))))
                                (_%g136942136970%_ _%g136943136973%_))))
                        (_%g136942136970%_ _%g136943136973%_))))
                (let ((_%body136958137022%_ (reverse _%body136956136993%_))
                      (_%hd136959137024%_ (reverse _%hd136957136995%_)))
                  ((lambda (_%L137027%_ _%L137028%_)
                     (for-each
                      (lambda (_%g137042137044%_)
                        (gxc#compile-e__1 _%self136939%_ _%g137042137044%_))
                      (let ((__tmp137775
                             (lambda (_%g137046137049%_ _%g137047137051%_)
                               (cons _%g137046137049%_ _%g137047137051%_))))
                        (declare (not safe))
                        (__foldr1 __tmp137775 '() _%L137027%_))))
                   _%body136958137022%_
                   _%hd136959137024%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop136952136988%_
                                           _%target136949136983%_
                                           '()
                                           '()))
                                        (_%g136942136970%_
                                         _%g136943136973%_)))))
                              (_%g136942136970%_ _%g136943136973%_))))
                      (_%g136942136970%_ _%g136943136973%_)))))
          (_%g136941137054%_ _%stx136940%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self136792%_ _%stx136793%_)
        (let* ((_%g136795136830%_
                (lambda (_%g136796136827%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136796136827%_))))
               (_%g136794136936%_
                (lambda (_%g136796136833%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136796136833%_))
                      (let ((_%e136800136835%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136796136833%_))))
                        (let ((_%hd136801136838%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136800136835%_)))
                              (_%tl136802136840%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136800136835%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136802136840%_))
                              (let ((_%e136803136843%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136802136840%_))))
                                (let ((_%hd136804136846%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136803136843%_)))
                                      (_%tl136805136848%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136803136843%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd136804136846%_))
                                      (let ((_g137776_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd136804136846%_
                                                '0))))
                                        (begin
                                          (let ((_g137777_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g137776_)
                                                       (##vector-length
                                                        _g137776_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g137777_ 2)))
                                                (error "Context expects 2 values"
                                                       _g137777_)))
                                          (let ((_%target136806136851%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g137776_ 0)))
                                                (_%tl136808136853%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g137776_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl136808136853%_))
                                                (letrec ((_%loop136809136856%_
                                                          (lambda (_%hd136807136859%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr136813136861%_
                           _%hd136814136863%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd136807136859%_))
                        (let ((_%e136810136866%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd136807136859%_))))
                          (let ((_%lp-hd136811136869%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e136810136866%_)))
                                (_%lp-tl136812136871%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e136810136866%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd136811136869%_))
                                (let ((_%e136820136874%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd136811136869%_))))
                                  (let ((_%hd136821136877%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e136820136874%_)))
                                        (_%tl136822136879%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e136820136874%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl136822136879%_))
                                        (let ((_%e136823136882%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl136822136879%_))))
                                          (let ((_%hd136824136885%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e136823136882%_)))
                                                (_%tl136825136887%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e136823136882%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl136825136887%_))
                                                (_%loop136809136856%_
                                                 _%lp-tl136812136871%_
                                                 (cons _%hd136824136885%_
                                                       _%expr136813136861%_)
                                                 (cons _%hd136821136877%_
                                                       _%hd136814136863%_))
                                                (_%g136795136830%_
                                                 _%g136796136833%_))))
                                        (_%g136795136830%_
                                         _%g136796136833%_))))
                                (_%g136795136830%_ _%g136796136833%_))))
                        (let ((_%expr136815136890%_
                               (reverse _%expr136813136861%_))
                              (_%hd136816136892%_
                               (reverse _%hd136814136863%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136805136848%_))
                              (let ((_%e136817136895%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136805136848%_))))
                                (let ((_%hd136818136898%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136817136895%_)))
                                      (_%tl136819136900%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136817136895%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl136819136900%_))
                                      ((lambda (_%L136903%_
                                                _%L136904%_
                                                _%L136905%_)
                                         (for-each
                                          (lambda (_%g136924136926%_)
                                            (gxc#compile-e__1
                                             _%self136792%_
                                             _%g136924136926%_))
                                          (let ((__tmp137779
                                                 (lambda (_%g136928136931%_
                                                          _%g136929136933%_)
                                                   (cons _%g136928136931%_
                                                         _%g136929136933%_)))
                                                (__tmp137778
                                                 (cons _%L136903%_ '())))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp137779
                                             __tmp137778
                                             _%L136904%_))))
                                       _%hd136818136898%_
                                       _%expr136815136890%_
                                       _%hd136816136892%_)
                                      (_%g136795136830%_ _%g136796136833%_))))
                              (_%g136795136830%_ _%g136796136833%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop136809136856%_
                                                   _%target136806136851%_
                                                   '()
                                                   '()))
                                                (_%g136795136830%_
                                                 _%g136796136833%_)))))
                                      (_%g136795136830%_ _%g136796136833%_))))
                              (_%g136795136830%_ _%g136796136833%_))))
                      (_%g136795136830%_ _%g136796136833%_)))))
          (_%g136794136936%_ _%stx136793%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self136737%_ _%stx136738%_)
        (let* ((_%g136740136754%_
                (lambda (_%g136741136751%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136741136751%_))))
               (_%g136739136789%_
                (lambda (_%g136741136757%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136741136757%_))
                      (let ((_%e136744136759%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136741136757%_))))
                        (let ((_%hd136745136762%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136744136759%_)))
                              (_%tl136746136764%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136744136759%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136746136764%_))
                              (let ((_%e136747136767%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136746136764%_))))
                                (let ((_%hd136748136770%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136747136767%_)))
                                      (_%tl136749136772%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136747136767%_))))
                                  ((lambda (_%L136775%_ _%L136776%_)
                                     (gxc#compile-e__1
                                      _%self136737%_
                                      (last _%L136775%_)))
                                   _%tl136749136772%_
                                   _%hd136748136770%_)))
                              (_%g136740136754%_ _%g136741136757%_))))
                      (_%g136740136754%_ _%g136741136757%_)))))
          (_%g136739136789%_ _%stx136738%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self136669%_ _%stx136670%_)
        (let* ((_%g136672136689%_
                (lambda (_%g136673136686%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136673136686%_))))
               (_%g136671136734%_
                (lambda (_%g136673136692%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136673136692%_))
                      (let ((_%e136676136694%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136673136692%_))))
                        (let ((_%hd136677136697%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136676136694%_)))
                              (_%tl136678136699%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136676136694%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136678136699%_))
                              (let ((_%e136679136702%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136678136699%_))))
                                (let ((_%hd136680136705%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136679136702%_)))
                                      (_%tl136681136707%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136679136702%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136681136707%_))
                                      (let ((_%e136682136710%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136681136707%_))))
                                        (let ((_%hd136683136713%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136682136710%_)))
                                              (_%tl136684136715%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136682136710%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl136684136715%_))
                                              ((lambda (_%L136718%_
                                                        _%L136719%_)
                                                 (gxc#compile-e__1
                                                  _%self136669%_
                                                  _%L136718%_))
                                               _%hd136683136713%_
                                               _%hd136680136705%_)
                                              (_%g136672136689%_
                                               _%g136673136692%_))))
                                      (_%g136672136689%_ _%g136673136692%_))))
                              (_%g136672136689%_ _%g136673136692%_))))
                      (_%g136672136689%_ _%g136673136692%_)))))
          (_%g136671136734%_ _%stx136670%_))))
    (define gxc#apply-operands
      (lambda (_%self136582%_ _%stx136583%_)
        (let* ((_%g136585136604%_
                (lambda (_%g136586136601%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136586136601%_))))
               (_%g136584136666%_
                (lambda (_%g136586136607%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136586136607%_))
                      (let ((_%e136588136609%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136586136607%_))))
                        (let ((_%hd136589136612%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136588136609%_)))
                              (_%tl136590136614%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136588136609%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl136590136614%_))
                              (let ((_g137780_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl136590136614%_
                                        '0))))
                                (begin
                                  (let ((_g137781_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g137780_)
                                               (##vector-length _g137780_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g137781_ 2)))
                                        (error "Context expects 2 values"
                                               _g137781_)))
                                  (let ((_%target136591136617%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g137780_ 0)))
                                        (_%tl136593136619%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g137780_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl136593136619%_))
                                        (letrec ((_%loop136594136622%_
                                                  (lambda (_%hd136592136625%_
                                                           _%rands136598136627%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd136592136625%_))
                                                        (let ((_%e136595136630%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd136592136625%_))))
                  (let ((_%lp-hd136596136633%_
                         (let ()
                           (declare (not safe))
                           (##car _%e136595136630%_)))
                        (_%lp-tl136597136635%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e136595136630%_))))
                    (_%loop136594136622%_
                     _%lp-tl136597136635%_
                     (cons _%lp-hd136596136633%_ _%rands136598136627%_))))
                (let ((_%rands136599136638%_ (reverse _%rands136598136627%_)))
                  ((lambda (_%L136641%_)
                     (for-each
                      (lambda (_%g136654136656%_)
                        (gxc#compile-e__1 _%self136582%_ _%g136654136656%_))
                      (let ((__tmp137782
                             (lambda (_%g136658136661%_ _%g136659136663%_)
                               (cons _%g136658136661%_ _%g136659136663%_))))
                        (declare (not safe))
                        (__foldr1 __tmp137782 '() _%L136641%_))))
                   _%rands136599136638%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop136594136622%_
                                           _%target136591136617%_
                                           '()))
                                        (_%g136585136604%_
                                         _%g136586136607%_)))))
                              (_%g136585136604%_ _%g136586136607%_))))
                      (_%g136585136604%_ _%g136586136607%_)))))
          (_%g136584136666%_ _%stx136583%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx136579%_ _%src-stx136580%_)
        (let ((__tmp137783
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx136580%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx136579%_ __tmp137783))))
    (define gxc#xform-wrap-apply
      (lambda (_%stx136575%_ _%src-stx136576%_ _%ctx136577%_)
        (gxc#compile-e__1
         _%ctx136577%_
         (gxc#xform-wrap-source _%stx136575%_ _%src-stx136576%_))))
    (define gxc#xform-begin%
      (lambda (_%self136530%_ _%stx136531%_)
        (let* ((_%g136533136543%_
                (lambda (_%g136534136540%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136534136540%_))))
               (_%g136532136572%_
                (lambda (_%g136534136546%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136534136546%_))
                      (let ((_%e136536136548%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136534136546%_))))
                        (let ((_%hd136537136551%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136536136548%_)))
                              (_%tl136538136553%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136536136548%_))))
                          ((lambda (_%L136556%_)
                             (let ((_%forms136570%_
                                    (map (lambda (_%g136565136567%_)
                                           (gxc#compile-e__1
                                            _%self136530%_
                                            _%g136565136567%_))
                                         _%L136556%_)))
                               (gxc#xform-wrap-source
                                (cons '%#begin _%forms136570%_)
                                _%stx136531%_)))
                           _%tl136538136553%_)))
                      (_%g136533136543%_ _%g136534136546%_)))))
          (_%g136532136572%_ _%stx136531%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self136484%_ _%stx136485%_)
        (let* ((_%g136487136497%_
                (lambda (_%g136488136494%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136488136494%_))))
               (_%g136486136527%_
                (lambda (_%g136488136500%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136488136500%_))
                      (let ((_%e136490136502%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136488136500%_))))
                        (let ((_%hd136491136505%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136490136502%_)))
                              (_%tl136492136507%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136490136502%_))))
                          ((lambda (_%L136510%_)
                             (let ((__tmp137786
                                    (lambda ()
                                      (let ((_%forms136525%_
                                             (map (lambda (_%g136520136522%_)
                                                    (gxc#compile-e__1
                                                     _%self136484%_
                                                     _%g136520136522%_))
                                                  _%L136510%_)))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin-syntax _%forms136525%_)
                                         _%stx136485%_))))
                                   (__tmp137784
                                    (let ((__tmp137785
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp137785 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp137786
                                gx#current-expander-phi
                                __tmp137784)))
                           _%tl136492136507%_)))
                      (_%g136487136497%_ _%g136488136500%_)))))
          (_%g136486136527%_ _%stx136485%_))))
    (define gxc#xform-module%
      (lambda (_%self136421%_ _%stx136422%_)
        (let* ((_%g136424136438%_
                (lambda (_%g136425136435%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136425136435%_))))
               (_%g136423136481%_
                (lambda (_%g136425136441%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136425136441%_))
                      (let ((_%e136428136443%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136425136441%_))))
                        (let ((_%hd136429136446%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136428136443%_)))
                              (_%tl136430136448%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136428136443%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136430136448%_))
                              (let ((_%e136431136451%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136430136448%_))))
                                (let ((_%hd136432136454%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136431136451%_)))
                                      (_%tl136433136456%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136431136451%_))))
                                  ((lambda (_%L136459%_ _%L136460%_)
                                     (let* ((_%ctx136473%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L136460%_)))
                                            (_%code136475%_
                                             (##structure-ref
                                              _%ctx136473%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code136478%_
                                             (let ((__tmp137787
                                                    (lambda ()
                                                      (gxc#compile-e__1
                                                       _%self136421%_
                                                       _%code136475%_))))
                                               (declare (not safe))
                                               (__call-with-parameters
                                                __tmp137787
                                                gx#current-expander-context
                                                _%ctx136473%_))))
                                       (##structure-set!
                                        _%ctx136473%_
                                        _%code136478%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _%L136460%_
                                                    (cons _%code136478%_ '())))
                                        _%stx136422%_)))
                                   _%tl136433136456%_
                                   _%hd136432136454%_)))
                              (_%g136424136438%_ _%g136425136441%_))))
                      (_%g136424136438%_ _%g136425136441%_)))))
          (_%g136423136481%_ _%stx136422%_))))
    (define gxc#xform-define-values%
      (lambda (_%self136351%_ _%stx136352%_)
        (let* ((_%g136354136371%_
                (lambda (_%g136355136368%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136355136368%_))))
               (_%g136353136418%_
                (lambda (_%g136355136374%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136355136374%_))
                      (let ((_%e136358136376%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136355136374%_))))
                        (let ((_%hd136359136379%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136358136376%_)))
                              (_%tl136360136381%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136358136376%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136360136381%_))
                              (let ((_%e136361136384%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136360136381%_))))
                                (let ((_%hd136362136387%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136361136384%_)))
                                      (_%tl136363136389%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136361136384%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136363136389%_))
                                      (let ((_%e136364136392%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136363136389%_))))
                                        (let ((_%hd136365136395%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136364136392%_)))
                                              (_%tl136366136397%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136364136392%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl136366136397%_))
                                              ((lambda (_%L136400%_
                                                        _%L136401%_)
                                                 (let ((_%expr136416%_
                                                        (gxc#compile-e__1
                                                         _%self136351%_
                                                         _%L136400%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons _%L136401%_
                                                                (cons _%expr136416%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx136352%_)))
                                               _%hd136365136395%_
                                               _%hd136362136387%_)
                                              (_%g136354136371%_
                                               _%g136355136374%_))))
                                      (_%g136354136371%_ _%g136355136374%_))))
                              (_%g136354136371%_ _%g136355136374%_))))
                      (_%g136354136371%_ _%g136355136374%_)))))
          (_%g136353136418%_ _%stx136352%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self136280%_ _%stx136281%_)
        (let* ((_%g136283136300%_
                (lambda (_%g136284136297%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136284136297%_))))
               (_%g136282136348%_
                (lambda (_%g136284136303%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136284136303%_))
                      (let ((_%e136287136305%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136284136303%_))))
                        (let ((_%hd136288136308%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136287136305%_)))
                              (_%tl136289136310%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136287136305%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136289136310%_))
                              (let ((_%e136290136313%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136289136310%_))))
                                (let ((_%hd136291136316%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136290136313%_)))
                                      (_%tl136292136318%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136290136313%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136292136318%_))
                                      (let ((_%e136293136321%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136292136318%_))))
                                        (let ((_%hd136294136324%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136293136321%_)))
                                              (_%tl136295136326%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136293136321%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl136295136326%_))
                                              ((lambda (_%L136329%_
                                                        _%L136330%_)
                                                 (let ((__tmp137790
                                                        (lambda ()
                                                          (let ((_%expr136346%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#compile-e__1 _%self136280%_ _%L136329%_)))
                    (gxc#xform-wrap-source
                     (cons '%#define-syntax
                           (cons _%L136330%_ (cons _%expr136346%_ '())))
                     _%stx136281%_))))
               (__tmp137788
                (let ((__tmp137789
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp137789 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp137790
                                                    gx#current-expander-phi
                                                    __tmp137788)))
                                               _%hd136294136324%_
                                               _%hd136291136316%_)
                                              (_%g136283136300%_
                                               _%g136284136303%_))))
                                      (_%g136283136300%_ _%g136284136303%_))))
                              (_%g136283136300%_ _%g136284136303%_))))
                      (_%g136283136300%_ _%g136284136303%_)))))
          (_%g136282136348%_ _%stx136281%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self136210%_ _%stx136211%_)
        (let* ((_%g136213136230%_
                (lambda (_%g136214136227%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136214136227%_))))
               (_%g136212136277%_
                (lambda (_%g136214136233%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136214136233%_))
                      (let ((_%e136217136235%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136214136233%_))))
                        (let ((_%hd136218136238%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136217136235%_)))
                              (_%tl136219136240%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136217136235%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136219136240%_))
                              (let ((_%e136220136243%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136219136240%_))))
                                (let ((_%hd136221136246%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136220136243%_)))
                                      (_%tl136222136248%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136220136243%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136222136248%_))
                                      (let ((_%e136223136251%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136222136248%_))))
                                        (let ((_%hd136224136254%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136223136251%_)))
                                              (_%tl136225136256%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136223136251%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl136225136256%_))
                                              ((lambda (_%L136259%_
                                                        _%L136260%_)
                                                 (let ((_%expr136275%_
                                                        (gxc#compile-e__1
                                                         _%self136210%_
                                                         _%L136259%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#begin-annotation
                                                          (cons _%L136260%_
                                                                (cons _%expr136275%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx136211%_)))
                                               _%hd136224136254%_
                                               _%hd136221136246%_)
                                              (_%g136213136230%_
                                               _%g136214136233%_))))
                                      (_%g136213136230%_ _%g136214136233%_))))
                              (_%g136213136230%_ _%g136214136233%_))))
                      (_%g136213136230%_ _%g136214136233%_)))))
          (_%g136212136277%_ _%stx136211%_))))
    (define gxc#xform-lambda%
      (lambda (_%self136148%_ _%stx136149%_)
        (let* ((_%g136151136165%_
                (lambda (_%g136152136162%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136152136162%_))))
               (_%g136150136207%_
                (lambda (_%g136152136168%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136152136168%_))
                      (let ((_%e136155136170%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136152136168%_))))
                        (let ((_%hd136156136173%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136155136170%_)))
                              (_%tl136157136175%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136155136170%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136157136175%_))
                              (let ((_%e136158136178%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136157136175%_))))
                                (let ((_%hd136159136181%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136158136178%_)))
                                      (_%tl136160136183%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136158136178%_))))
                                  ((lambda (_%L136186%_ _%L136187%_)
                                     (let ((__tmp137792
                                            (lambda ()
                                              (let ((_%body136205%_
                                                     (map (lambda (_%g136200136202%_)
                                                            (gxc#compile-e__1
                                                             _%self136148%_
                                                             _%g136200136202%_))
                                                          _%L136186%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#lambda
                                                       (cons _%L136187%_
                                                             _%body136205%_))
                                                 _%stx136149%_))))
                                           (__tmp137791
                                            (gxc#xform-let-locals
                                             _%L136187%_)))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp137792
                                        gxc#current-compile-local-env
                                        __tmp137791)))
                                   _%tl136160136183%_
                                   _%hd136159136181%_)))
                              (_%g136151136165%_ _%g136152136168%_))))
                      (_%g136151136165%_ _%g136152136168%_)))))
          (_%g136150136207%_ _%stx136149%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self136056%_ _%stx136057%_)
        (letrec ((_%clause-e136059%_
                  (lambda (_%clause136100%_)
                    (let* ((_%g136102136113%_
                            (lambda (_%g136103136110%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g136103136110%_))))
                           (_%g136101136145%_
                            (lambda (_%g136103136116%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g136103136116%_))
                                  (let ((_%e136106136118%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g136103136116%_))))
                                    (let ((_%hd136107136121%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e136106136118%_)))
                                          (_%tl136108136123%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e136106136118%_))))
                                      ((lambda (_%L136126%_ _%L136127%_)
                                         (let ((__tmp137794
                                                (lambda ()
                                                  (let ((_%body136143%_
                                                         (map (lambda (_%g136138136140%_)
                                                                (gxc#compile-e__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%self136056%_
                         _%g136138136140%_))
                      _%L136126%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%L136127%_
                                                          _%body136143%_))))
                                               (__tmp137793
                                                (gxc#xform-let-locals
                                                 _%L136127%_)))
                                           (declare (not safe))
                                           (__call-with-parameters
                                            __tmp137794
                                            gxc#current-compile-local-env
                                            __tmp137793)))
                                       _%tl136108136123%_
                                       _%hd136107136121%_)))
                                  (_%g136102136113%_ _%g136103136116%_)))))
                      (_%g136101136145%_ _%clause136100%_)))))
          (let* ((_%g136061136071%_
                  (lambda (_%g136062136068%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g136062136068%_))))
                 (_%g136060136097%_
                  (lambda (_%g136062136074%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g136062136074%_))
                        (let ((_%e136064136076%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g136062136074%_))))
                          (let ((_%hd136065136079%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e136064136076%_)))
                                (_%tl136066136081%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e136064136076%_))))
                            ((lambda (_%L136084%_)
                               (let ((_%clauses136095%_
                                      (map _%clause-e136059%_ _%L136084%_)))
                                 (gxc#xform-wrap-source
                                  (cons '%#case-lambda _%clauses136095%_)
                                  _%stx136057%_)))
                             _%tl136066136081%_)))
                        (_%g136061136071%_ _%g136062136074%_)))))
            (_%g136060136097%_ _%stx136057%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self135810%_ _%stx135811%_)
        (let* ((_%g135813135846%_
                (lambda (_%g135814135843%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135814135843%_))))
               (_%g135812136053%_
                (lambda (_%g135814135849%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135814135849%_))
                      (let ((_%e135819135851%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135814135849%_))))
                        (let ((_%hd135820135854%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135819135851%_)))
                              (_%tl135821135856%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135819135851%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135821135856%_))
                              (let ((_%e135822135859%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135821135856%_))))
                                (let ((_%hd135823135862%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135822135859%_)))
                                      (_%tl135824135864%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135822135859%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd135823135862%_))
                                      (let ((_g137795_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd135823135862%_
                                                '0))))
                                        (begin
                                          (let ((_g137796_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g137795_)
                                                       (##vector-length
                                                        _g137795_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g137796_ 2)))
                                                (error "Context expects 2 values"
                                                       _g137796_)))
                                          (let ((_%target135825135867%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g137795_ 0)))
                                                (_%tl135827135869%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g137795_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl135827135869%_))
                                                (letrec ((_%loop135828135872%_
                                                          (lambda (_%hd135826135875%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr135832135877%_
                           _%hd135833135879%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd135826135875%_))
                        (let ((_%e135829135882%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd135826135875%_))))
                          (let ((_%lp-hd135830135885%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135829135882%_)))
                                (_%lp-tl135831135887%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135829135882%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd135830135885%_))
                                (let ((_%e135836135890%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd135830135885%_))))
                                  (let ((_%hd135837135893%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e135836135890%_)))
                                        (_%tl135838135895%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e135836135890%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl135838135895%_))
                                        (let ((_%e135839135898%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl135838135895%_))))
                                          (let ((_%hd135840135901%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e135839135898%_)))
                                                (_%tl135841135903%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e135839135898%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl135841135903%_))
                                                (_%loop135828135872%_
                                                 _%lp-tl135831135887%_
                                                 (cons _%hd135840135901%_
                                                       _%expr135832135877%_)
                                                 (cons _%hd135837135893%_
                                                       _%hd135833135879%_))
                                                (_%g135813135846%_
                                                 _%g135814135849%_))))
                                        (_%g135813135846%_
                                         _%g135814135849%_))))
                                (_%g135813135846%_ _%g135814135849%_))))
                        (let ((_%expr135834135906%_
                               (reverse _%expr135832135877%_))
                              (_%hd135835135908%_
                               (reverse _%hd135833135879%_)))
                          ((lambda (_%L135911%_
                                    _%L135912%_
                                    _%L135913%_
                                    _%L135914%_)
                             (let* ((_%g135933135949%_
                                     (lambda (_%g135934135946%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g135934135946%_))))
                                    (_%g135932136039%_
                                     (lambda (_%g135934135952%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g135934135952%_))
                                           (let ((_g137797_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g135934135952%_
                                                     '0))))
                                             (begin
                                               (let ((_g137798_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g137797_)
                                                            (##vector-length
                                                             _g137797_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g137798_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g137798_)))
                                               (let ((_%target135936135954%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g137797_
                                                         0)))
                                                     (_%tl135938135956%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g137797_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl135938135956%_))
                                                     (letrec ((_%loop135939135959%_
                                                               (lambda (_%hd135937135962%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr135943135964%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd135937135962%_))
                             (let ((_%e135940135967%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd135937135962%_))))
                               (let ((_%lp-hd135941135970%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e135940135967%_)))
                                     (_%lp-tl135942135972%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e135940135967%_))))
                                 (_%loop135939135959%_
                                  _%lp-tl135942135972%_
                                  (cons _%lp-hd135941135970%_
                                        _%expr135943135964%_))))
                             (let ((_%expr135944135975%_
                                    (reverse _%expr135943135964%_)))
                               ((lambda (_%L135978%_)
                                  (let ((__tmp137801
                                         (lambda ()
                                           (let* ((_%g135992135999%_
                                                   (lambda (_%g135993135996%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g135993135996%_))))
                                                  (_%g135991136025%_
                                                   (lambda (_%g135993136002%_)
                                                     ((lambda (_%L136004%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L135914%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L135978%_
                                  _%L135913%_))
                               (let ((__tmp137802
                                      (lambda (_%g136014136018%_
                                               _%g136015136020%_
                                               _%g136016136022%_)
                                        (cons (cons _%g136015136020%_
                                                    (cons _%g136014136018%_
                                                          '()))
                                              _%g136016136022%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp137802
                                  '()
                                  _%L135978%_
                                  _%L135913%_)))
                             _%L136004%_))
                 _%stx135811%_))
              _%g135993136002%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g135991136025%_
                                              (map (lambda (_%g136027136029%_)
                                                     (gxc#compile-e__1
                                                      _%self135810%_
                                                      _%g136027136029%_))
                                                   _%L135911%_)))))
                                        (__tmp137799
                                         (gxc#xform-let-locals
                                          (let ((__tmp137800
                                                 (lambda (_%g136031136034%_
                                                          _%g136032136036%_)
                                                   (cons _%g136031136034%_
                                                         _%g136032136036%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp137800
                                             '()
                                             _%L135913%_)))))
                                    (declare (not safe))
                                    (__call-with-parameters
                                     __tmp137801
                                     gxc#current-compile-local-env
                                     __tmp137799)))
                                _%expr135944135975%_))))))
               (_%loop135939135959%_ _%target135936135954%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g135933135949%_
                                                      _%g135934135952%_)))))
                                           (_%g135933135949%_
                                            _%g135934135952%_)))))
                               (_%g135932136039%_
                                (map (lambda (_%g136041136043%_)
                                       (gxc#compile-e__1
                                        _%self135810%_
                                        _%g136041136043%_))
                                     (let ((__tmp137803
                                            (lambda (_%g136045136048%_
                                                     _%g136046136050%_)
                                              (cons _%g136045136048%_
                                                    _%g136046136050%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp137803
                                        '()
                                        _%L135912%_))))))
                           _%tl135824135864%_
                           _%expr135834135906%_
                           _%hd135835135908%_
                           _%hd135820135854%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop135828135872%_
                                                   _%target135825135867%_
                                                   '()
                                                   '()))
                                                (_%g135813135846%_
                                                 _%g135814135849%_)))))
                                      (_%g135813135846%_ _%g135814135849%_))))
                              (_%g135813135846%_ _%g135814135849%_))))
                      (_%g135813135846%_ _%g135814135849%_)))))
          (_%g135812136053%_ _%stx135811%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self135564%_ _%stx135565%_)
        (let* ((_%g135567135600%_
                (lambda (_%g135568135597%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135568135597%_))))
               (_%g135566135807%_
                (lambda (_%g135568135603%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135568135603%_))
                      (let ((_%e135573135605%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135568135603%_))))
                        (let ((_%hd135574135608%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135573135605%_)))
                              (_%tl135575135610%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135573135605%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135575135610%_))
                              (let ((_%e135576135613%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135575135610%_))))
                                (let ((_%hd135577135616%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135576135613%_)))
                                      (_%tl135578135618%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135576135613%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd135577135616%_))
                                      (let ((_g137804_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd135577135616%_
                                                '0))))
                                        (begin
                                          (let ((_g137805_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g137804_)
                                                       (##vector-length
                                                        _g137804_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g137805_ 2)))
                                                (error "Context expects 2 values"
                                                       _g137805_)))
                                          (let ((_%target135579135621%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g137804_ 0)))
                                                (_%tl135581135623%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g137804_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl135581135623%_))
                                                (letrec ((_%loop135582135626%_
                                                          (lambda (_%hd135580135629%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr135586135631%_
                           _%hd135587135633%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd135580135629%_))
                        (let ((_%e135583135636%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd135580135629%_))))
                          (let ((_%lp-hd135584135639%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135583135636%_)))
                                (_%lp-tl135585135641%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135583135636%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd135584135639%_))
                                (let ((_%e135590135644%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd135584135639%_))))
                                  (let ((_%hd135591135647%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e135590135644%_)))
                                        (_%tl135592135649%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e135590135644%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl135592135649%_))
                                        (let ((_%e135593135652%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl135592135649%_))))
                                          (let ((_%hd135594135655%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e135593135652%_)))
                                                (_%tl135595135657%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e135593135652%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl135595135657%_))
                                                (_%loop135582135626%_
                                                 _%lp-tl135585135641%_
                                                 (cons _%hd135594135655%_
                                                       _%expr135586135631%_)
                                                 (cons _%hd135591135647%_
                                                       _%hd135587135633%_))
                                                (_%g135567135600%_
                                                 _%g135568135603%_))))
                                        (_%g135567135600%_
                                         _%g135568135603%_))))
                                (_%g135567135600%_ _%g135568135603%_))))
                        (let ((_%expr135588135660%_
                               (reverse _%expr135586135631%_))
                              (_%hd135589135662%_
                               (reverse _%hd135587135633%_)))
                          ((lambda (_%L135665%_
                                    _%L135666%_
                                    _%L135667%_
                                    _%L135668%_)
                             (let ((__tmp137808
                                    (lambda ()
                                      (let* ((_%g135688135704%_
                                              (lambda (_%g135689135701%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g135689135701%_))))
                                             (_%g135687135786%_
                                              (lambda (_%g135689135707%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g135689135707%_))
                                                    (let ((_g137809_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g135689135707%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g137810_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g137809_)
                             (##vector-length _g137809_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g137810_ 2)))
                      (error "Context expects 2 values" _g137810_)))
                (let ((_%target135691135709%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g137809_ 0)))
                      (_%tl135693135711%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g137809_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl135693135711%_))
                      (letrec ((_%loop135694135714%_
                                (lambda (_%hd135692135717%_
                                         _%expr135698135719%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd135692135717%_))
                                      (let ((_%e135695135722%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd135692135717%_))))
                                        (let ((_%lp-hd135696135725%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135695135722%_)))
                                              (_%lp-tl135697135727%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135695135722%_))))
                                          (_%loop135694135714%_
                                           _%lp-tl135697135727%_
                                           (cons _%lp-hd135696135725%_
                                                 _%expr135698135719%_))))
                                      (let ((_%expr135699135730%_
                                             (reverse _%expr135698135719%_)))
                                        ((lambda (_%L135733%_)
                                           (let* ((_%g135747135754%_
                                                   (lambda (_%g135748135751%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g135748135751%_))))
                                                  (_%g135746135779%_
                                                   (lambda (_%g135748135757%_)
                                                     ((lambda (_%L135759%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L135668%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L135733%_
                                  _%L135667%_))
                               (let ((__tmp137811
                                      (lambda (_%g135768135772%_
                                               _%g135769135774%_
                                               _%g135770135776%_)
                                        (cons (cons _%g135769135774%_
                                                    (cons _%g135768135772%_
                                                          '()))
                                              _%g135770135776%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp137811
                                  '()
                                  _%L135733%_
                                  _%L135667%_)))
                             _%L135759%_))
                 _%stx135565%_))
              _%g135748135757%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g135746135779%_
                                              (map (lambda (_%g135781135783%_)
                                                     (gxc#compile-e__1
                                                      _%self135564%_
                                                      _%g135781135783%_))
                                                   _%L135665%_))))
                                         _%expr135699135730%_))))))
                        (_%loop135694135714%_ _%target135691135709%_ '()))
                      (_%g135688135704%_ _%g135689135707%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g135688135704%_
                                                     _%g135689135707%_)))))
                                        (_%g135687135786%_
                                         (map (lambda (_%g135788135790%_)
                                                (gxc#compile-e__1
                                                 _%self135564%_
                                                 _%g135788135790%_))
                                              (let ((__tmp137812
                                                     (lambda (_%g135792135795%_
                                                              _%g135793135797%_)
                                                       (cons _%g135792135795%_
                                                             _%g135793135797%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp137812
                                                 '()
                                                 _%L135666%_)))))))
                                   (__tmp137806
                                    (gxc#xform-let-locals
                                     (let ((__tmp137807
                                            (lambda (_%g135799135802%_
                                                     _%g135800135804%_)
                                              (cons _%g135799135802%_
                                                    _%g135800135804%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp137807
                                        '()
                                        _%L135667%_)))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp137808
                                gxc#current-compile-local-env
                                __tmp137806)))
                           _%tl135578135618%_
                           _%expr135588135660%_
                           _%hd135589135662%_
                           _%hd135574135608%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop135582135626%_
                                                   _%target135579135621%_
                                                   '()
                                                   '()))
                                                (_%g135567135600%_
                                                 _%g135568135603%_)))))
                                      (_%g135567135600%_ _%g135568135603%_))))
                              (_%g135567135600%_ _%g135568135603%_))))
                      (_%g135567135600%_ _%g135568135603%_)))))
          (_%g135566135807%_ _%stx135565%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings135431%_)
        (letrec ((_%flatten135433%_
                  (lambda (_%maybe-lst135491%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%maybe-lst135491%_))
                        (cons _%maybe-lst135491%_ '())
                        (let _%loop135493%_ ((_%rest135495%_
                                              _%maybe-lst135491%_)
                                             (_%result135496%_ '()))
                          (let* ((_%__stx137700137701%_ _%rest135495%_)
                                 (_%g135500135512%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx137700137701%_)))))
                            (let ((_%__kont137702137703%_
                                   (lambda (_%L135550%_ _%L135551%_)
                                     (_%loop135493%_
                                      _%L135550%_
                                      (let ((__tmp137813
                                             (_%flatten135433%_ _%L135551%_)))
                                        (declare (not safe))
                                        (__foldl1
                                         cons
                                         _%result135496%_
                                         __tmp137813)))))
                                  (_%__kont137704137705%_
                                   (lambda (_%L135524%_)
                                     (cons _%L135524%_ _%result135496%_)))
                                  (_%__kont137706137707%_
                                   (lambda () _%result135496%_)))
                              (let ((_%g135498135537%_
                                     (lambda ()
                                       (let ((_%L135524%_
                                              _%__stx137700137701%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L135524%_))
                                             (_%__kont137704137705%_
                                              _%L135524%_)
                                             (_%__kont137706137707%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx137700137701%_))
                                    (let ((_%e135504135542%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx137700137701%_))))
                                      (let ((_%tl135506135547%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e135504135542%_)))
                                            (_%hd135505135545%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e135504135542%_))))
                                        (_%__kont137702137703%_
                                         _%tl135506135547%_
                                         _%hd135505135545%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g135498135537%_)))))))))))
          (let _%loop135435%_ ((_%rest135437%_
                                (_%flatten135433%_ _%bindings135431%_))
                               (_%locals135438%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-local-env))))
            (let* ((_%rest135439135450%_ _%rest135437%_)
                   (_%E135443135454%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching"
                               _%rest135439135450%_
                               '([(? identifier? id) . rest])
                               '((? identifier? id))
                               '(_)))
                      '#!void)))
              (let ((_%K135446135479%_
                     (lambda (_%rest135476%_ _%id135477%_)
                       (_%loop135435%_
                        _%rest135476%_
                        (cons (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _%id135477%_))
                              _%locals135438%_))))
                    (_%K135445135468%_
                     (lambda (_%id135466%_)
                       (cons (let ()
                               (declare (not safe))
                               (gxc#identifier-symbol _%id135466%_))
                             _%locals135438%_)))
                    (_%K135444135459%_ (lambda () _%locals135438%_)))
                (let ((_%try-match135441135473%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%rest135439135450%_))
                             (let ((_%id135471%_ _%rest135439135450%_))
                               (_%K135445135468%_ _%id135471%_))
                             (_%K135444135459%_)))))
                  (if (pair? _%rest135439135450%_)
                      (let ((_%tl135448135484%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest135439135450%_)))
                            (_%hd135447135482%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest135439135450%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd135447135482%_))
                            (let ((_%id135487%_ _%hd135447135482%_)
                                  (_%rest135489%_ _%tl135448135484%_))
                              (_%K135446135479%_ _%rest135489%_ _%id135487%_))
                            (_%K135444135459%_)))
                      (_%try-match135441135473%_)))))))))
    (define gxc#xform-operands
      (lambda (_%self135383%_ _%stx135384%_)
        (let* ((_%g135386135397%_
                (lambda (_%g135387135394%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135387135394%_))))
               (_%g135385135428%_
                (lambda (_%g135387135400%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135387135400%_))
                      (let ((_%e135390135402%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135387135400%_))))
                        (let ((_%hd135391135405%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135390135402%_)))
                              (_%tl135392135407%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135390135402%_))))
                          ((lambda (_%L135410%_ _%L135411%_)
                             (let ((_%rands135426%_
                                    (map (lambda (_%g135421135423%_)
                                           (gxc#compile-e__1
                                            _%self135383%_
                                            _%g135421135423%_))
                                         _%L135410%_)))
                               (gxc#xform-wrap-source
                                (cons _%L135411%_ _%rands135426%_)
                                _%stx135384%_)))
                           _%tl135392135407%_
                           _%hd135391135405%_)))
                      (_%g135386135397%_ _%g135387135400%_)))))
          (_%g135385135428%_ _%stx135384%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self135313%_ _%stx135314%_)
        (let* ((_%g135316135333%_
                (lambda (_%g135317135330%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135317135330%_))))
               (_%g135315135380%_
                (lambda (_%g135317135336%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135317135336%_))
                      (let ((_%e135320135338%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135317135336%_))))
                        (let ((_%hd135321135341%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135320135338%_)))
                              (_%tl135322135343%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135320135338%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135322135343%_))
                              (let ((_%e135323135346%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135322135343%_))))
                                (let ((_%hd135324135349%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135323135346%_)))
                                      (_%tl135325135351%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135323135346%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135325135351%_))
                                      (let ((_%e135326135354%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135325135351%_))))
                                        (let ((_%hd135327135357%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135326135354%_)))
                                              (_%tl135328135359%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135326135354%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135328135359%_))
                                              ((lambda (_%L135362%_
                                                        _%L135363%_)
                                                 (let ((_%expr135378%_
                                                        (gxc#compile-e__1
                                                         _%self135313%_
                                                         _%L135362%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _%L135363%_
                                                                (cons _%expr135378%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx135314%_)))
                                               _%hd135327135357%_
                                               _%hd135324135349%_)
                                              (_%g135316135333%_
                                               _%g135317135336%_))))
                                      (_%g135316135333%_ _%g135317135336%_))))
                              (_%g135316135333%_ _%g135317135336%_))))
                      (_%g135316135333%_ _%g135317135336%_)))))
          (_%g135315135380%_ _%stx135314%_))))))
