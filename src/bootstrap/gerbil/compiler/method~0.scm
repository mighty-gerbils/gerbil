(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1768863413)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx149697%_)
        (let* ((_%self149699%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e149701%_
                (let ((__tmp149919 (gxc#stx-car-e _%stx149697%_)))
                  (declare (not safe))
                  (method-ref _%self149699%_ __tmp149919))))
          (if _%$e149701%_
              ((lambda (_%method149704%_)
                 (declare (not safe))
                 (let ((_%$e149707%_ (gx#stx-source _%stx149697%_)))
                   (if _%$e149707%_
                       ((lambda (_%source149710%_)
                          (call-with-parameters__1
                           (lambda ()
                             (_%method149704%_ _%self149699%_ _%stx149697%_))
                           gxc#current-compile-context
                           (cons (cons '@ (cons _%source149710%_ '()))
                                 (let ((_%$e149714%_
                                        (gxc#current-compile-context)))
                                   (if _%$e149714%_ _%$e149714%_ '())))))
                        _%$e149707%_)
                       (_%method149704%_ _%self149699%_ _%stx149697%_))))
               _%$e149701%_)
              (let ((__tmp149921 (gxc#stx-car-e _%stx149697%_))
                    (__tmp149920
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx149697%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self149699%_
                       __tmp149921
                       __tmp149920))))))
    (define gxc#compile-e__1
      (lambda (_%self149719%_ _%stx149720%_)
        (let ((_%$e149722%_
               (let ((__tmp149922 (gxc#stx-car-e _%stx149720%_)))
                 (declare (not safe))
                 (method-ref _%self149719%_ __tmp149922))))
          (if _%$e149722%_
              ((lambda (_%method149725%_)
                 (declare (not safe))
                 (let ((_%$e149728%_ (gx#stx-source _%stx149720%_)))
                   (if _%$e149728%_
                       ((lambda (_%source149731%_)
                          (call-with-parameters__1
                           (lambda ()
                             (_%method149725%_ _%self149719%_ _%stx149720%_))
                           gxc#current-compile-context
                           (cons (cons '@ (cons _%source149731%_ '()))
                                 (let ((_%$e149735%_
                                        (gxc#current-compile-context)))
                                   (if _%$e149735%_ _%$e149735%_ '())))))
                        _%$e149728%_)
                       (_%method149725%_ _%self149719%_ _%stx149720%_))))
               _%$e149722%_)
              (let ((__tmp149924 (gxc#stx-car-e _%stx149720%_))
                    (__tmp149923
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx149720%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self149719%_
                       __tmp149924
                       __tmp149923))))))
    (define gxc#compile-e
      (lambda _g149925_
        (let ((_g149926_ (let () (declare (not safe)) (##length _g149925_))))
          (cond ((let () (declare (not safe)) (##fx= _g149926_ 1))
                 (apply gxc#compile-e__0 _g149925_))
                ((let () (declare (not safe)) (##fx= _g149926_ 2))
                 (apply gxc#compile-e__1 _g149925_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g149925_))))))
    (define gxc#stx-car-e
      (lambda (_%stx149695%_)
        (let ((__tmp149927
               (car (let () (declare (not safe)) (gx#stx-e _%stx149695%_)))))
          (declare (not safe))
          (gx#stx-e __tmp149927))))
    (define gxc#void-method (lambda (_%self149692%_ _%stx149693%_) '#!void))
    (define gxc#false-method (lambda (_%self149689%_ _%stx149690%_) '#f))
    (define gxc#true-method (lambda (_%self149686%_ _%stx149687%_) '#t))
    (define gxc#identity-method
      (lambda (_%self149683%_ _%stx149684%_) _%stx149684%_))
    (define gxc#::void-expression::t
      (let ((__tmp149928 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp149928
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args149680%_
        (apply make-instance gxc#::void-expression::t _%$args149680%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp149929
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
        (__make-atomic-promise __tmp149929)))
    (define gxc#::void-special-form::t
      (let ((__tmp149930 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp149930
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args149676%_
        (apply make-instance gxc#::void-special-form::t _%$args149676%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp149931
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
        (__make-atomic-promise __tmp149931)))
    (define gxc#::void::t
      (let ((__tmp149932
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp149932 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args149672%_
        (apply make-instance gxc#::void::t _%$args149672%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp149933
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp149933)))
    (define gxc#::false-expression::t
      (let ((__tmp149934 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp149934
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args149668%_
        (apply make-instance gxc#::false-expression::t _%$args149668%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp149935
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
        (__make-atomic-promise __tmp149935)))
    (define gxc#::false-special-form::t
      (let ((__tmp149936 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp149936
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args149664%_
        (apply make-instance gxc#::false-special-form::t _%$args149664%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp149937
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
        (__make-atomic-promise __tmp149937)))
    (define gxc#::false::t
      (let ((__tmp149938
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp149938 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args149660%_
        (apply make-instance gxc#::false::t _%$args149660%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp149939
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp149939)))
    (define gxc#::identity-expression::t
      (let ((__tmp149940 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp149940
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args149656%_
        (apply make-instance gxc#::identity-expression::t _%$args149656%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp149941
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
        (__make-atomic-promise __tmp149941)))
    (define gxc#::identity-special-form::t
      (let ((__tmp149942 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp149942
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args149652%_
        (apply make-instance gxc#::identity-special-form::t _%$args149652%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp149943
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
        (__make-atomic-promise __tmp149943)))
    (define gxc#::identity::t
      (let ((__tmp149944
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp149944
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args149648%_
        (apply make-instance gxc#::identity::t _%$args149648%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp149945
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp149945)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp149946 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp149946
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args149644%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args149644%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp149947
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
        (__make-atomic-promise __tmp149947)))
    (define gxc#::basic-xform::t
      (let ((__tmp149948
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp149948
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args149640%_
        (apply make-instance gxc#::basic-xform::t _%$args149640%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp149949
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
        (__make-atomic-promise __tmp149949)))
    (define gxc#apply-begin%
      (lambda (_%self149596%_ _%stx149597%_)
        (let* ((_%g149599149609%_
                (lambda (_%g149600149606%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149600149606%_))))
               (_%g149598149636%_
                (lambda (_%g149600149612%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149600149612%_))
                      (let ((_%e149602149614%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149600149612%_))))
                        (let ((_%hd149603149617%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149602149614%_)))
                              (_%tl149604149619%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149602149614%_))))
                          ((lambda (_%L149622%_)
                             (for-each
                              (lambda (_%g149631149633%_)
                                (gxc#compile-e__1
                                 _%self149596%_
                                 _%g149631149633%_))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L149622%_))))
                           _%tl149604149619%_)))
                      (_%g149599149609%_ _%g149600149612%_)))))
          (_%g149598149636%_ _%stx149597%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self149557%_ _%stx149558%_)
        (let* ((_%g149560149570%_
                (lambda (_%g149561149567%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149561149567%_))))
               (_%g149559149593%_
                (lambda (_%g149561149573%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149561149573%_))
                      (let ((_%e149563149575%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149561149573%_))))
                        (let ((_%hd149564149578%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149563149575%_)))
                              (_%tl149565149580%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149563149575%_))))
                          ((lambda (_%L149583%_)
                             (gxc#compile-e__1
                              _%self149557%_
                              (last _%L149583%_)))
                           _%tl149565149580%_)))
                      (_%g149560149570%_ _%g149561149573%_)))))
          (_%g149559149593%_ _%stx149558%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self149553%_ _%stx149554%_)
        (let ((__tmp149952
               (lambda () (gxc#apply-begin% _%self149553%_ _%stx149554%_)))
              (__tmp149950
               (let ((__tmp149951
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp149951 '1))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp149952
           gx#current-expander-phi
           __tmp149950))))
    (define gxc#apply-module%
      (lambda (_%self149492%_ _%stx149493%_)
        (let* ((_%g149495149509%_
                (lambda (_%g149496149506%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149496149506%_))))
               (_%g149494149550%_
                (lambda (_%g149496149512%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149496149512%_))
                      (let ((_%e149499149514%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149496149512%_))))
                        (let ((_%hd149500149517%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149499149514%_)))
                              (_%tl149501149519%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149499149514%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149501149519%_))
                              (let ((_%e149502149522%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149501149519%_))))
                                (let ((_%hd149503149525%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149502149522%_)))
                                      (_%tl149504149527%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149502149522%_))))
                                  ((lambda (_%L149530%_ _%L149531%_)
                                     (let* ((_%ctx149544%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L149531%_)))
                                            (_%ctx-stx149546%_
                                             (##structure-ref
                                              _%ctx149544%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp149953
                                             (lambda ()
                                               (gxc#compile-e__1
                                                _%self149492%_
                                                _%ctx-stx149546%_))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp149953
                                        gx#current-expander-context
                                        _%ctx149544%_)))
                                   _%tl149504149527%_
                                   _%hd149503149525%_)))
                              (_%g149495149509%_ _%g149496149512%_))))
                      (_%g149495149509%_ _%g149496149512%_)))))
          (_%g149494149550%_ _%stx149493%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self149424%_ _%stx149425%_)
        (let* ((_%g149427149444%_
                (lambda (_%g149428149441%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149428149441%_))))
               (_%g149426149489%_
                (lambda (_%g149428149447%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149428149447%_))
                      (let ((_%e149431149449%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149428149447%_))))
                        (let ((_%hd149432149452%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149431149449%_)))
                              (_%tl149433149454%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149431149449%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149433149454%_))
                              (let ((_%e149434149457%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149433149454%_))))
                                (let ((_%hd149435149460%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149434149457%_)))
                                      (_%tl149436149462%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149434149457%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149436149462%_))
                                      (let ((_%e149437149465%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149436149462%_))))
                                        (let ((_%hd149438149468%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149437149465%_)))
                                              (_%tl149439149470%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149437149465%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149439149470%_))
                                              ((lambda (_%L149473%_
                                                        _%L149474%_)
                                                 (gxc#compile-e__1
                                                  _%self149424%_
                                                  _%L149473%_))
                                               _%hd149438149468%_
                                               _%hd149435149460%_)
                                              (_%g149427149444%_
                                               _%g149428149447%_))))
                                      (_%g149427149444%_ _%g149428149447%_))))
                              (_%g149427149444%_ _%g149428149447%_))))
                      (_%g149427149444%_ _%g149428149447%_)))))
          (_%g149426149489%_ _%stx149425%_))))
    (define gxc#apply-define-values%
      (lambda (_%self149356%_ _%stx149357%_)
        (let* ((_%g149359149376%_
                (lambda (_%g149360149373%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149360149373%_))))
               (_%g149358149421%_
                (lambda (_%g149360149379%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149360149379%_))
                      (let ((_%e149363149381%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149360149379%_))))
                        (let ((_%hd149364149384%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149363149381%_)))
                              (_%tl149365149386%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149363149381%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149365149386%_))
                              (let ((_%e149366149389%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149365149386%_))))
                                (let ((_%hd149367149392%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149366149389%_)))
                                      (_%tl149368149394%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149366149389%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149368149394%_))
                                      (let ((_%e149369149397%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149368149394%_))))
                                        (let ((_%hd149370149400%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149369149397%_)))
                                              (_%tl149371149402%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149369149397%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149371149402%_))
                                              ((lambda (_%L149405%_
                                                        _%L149406%_)
                                                 (gxc#compile-e__1
                                                  _%self149356%_
                                                  _%L149405%_))
                                               _%hd149370149400%_
                                               _%hd149367149392%_)
                                              (_%g149359149376%_
                                               _%g149360149379%_))))
                                      (_%g149359149376%_ _%g149360149379%_))))
                              (_%g149359149376%_ _%g149360149379%_))))
                      (_%g149359149376%_ _%g149360149379%_)))))
          (_%g149358149421%_ _%stx149357%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self149287%_ _%stx149288%_)
        (let* ((_%g149290149307%_
                (lambda (_%g149291149304%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149291149304%_))))
               (_%g149289149353%_
                (lambda (_%g149291149310%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149291149310%_))
                      (let ((_%e149294149312%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149291149310%_))))
                        (let ((_%hd149295149315%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149294149312%_)))
                              (_%tl149296149317%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149294149312%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149296149317%_))
                              (let ((_%e149297149320%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149296149317%_))))
                                (let ((_%hd149298149323%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149297149320%_)))
                                      (_%tl149299149325%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149297149320%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149299149325%_))
                                      (let ((_%e149300149328%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149299149325%_))))
                                        (let ((_%hd149301149331%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149300149328%_)))
                                              (_%tl149302149333%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149300149328%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149302149333%_))
                                              ((lambda (_%L149336%_
                                                        _%L149337%_)
                                                 (let ((__tmp149956
                                                        (lambda ()
                                                          (gxc#compile-e__1
                                                           _%self149287%_
                                                           _%L149336%_)))
                                                       (__tmp149954
                                                        (let ((__tmp149955
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp149955 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp149956
                                                    gx#current-expander-phi
                                                    __tmp149954)))
                                               _%hd149301149331%_
                                               _%hd149298149323%_)
                                              (_%g149290149307%_
                                               _%g149291149310%_))))
                                      (_%g149290149307%_ _%g149291149310%_))))
                              (_%g149290149307%_ _%g149291149310%_))))
                      (_%g149290149307%_ _%g149291149310%_)))))
          (_%g149289149353%_ _%stx149288%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self149219%_ _%stx149220%_)
        (let* ((_%g149222149239%_
                (lambda (_%g149223149236%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149223149236%_))))
               (_%g149221149284%_
                (lambda (_%g149223149242%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149223149242%_))
                      (let ((_%e149226149244%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149223149242%_))))
                        (let ((_%hd149227149247%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149226149244%_)))
                              (_%tl149228149249%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149226149244%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149228149249%_))
                              (let ((_%e149229149252%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149228149249%_))))
                                (let ((_%hd149230149255%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149229149252%_)))
                                      (_%tl149231149257%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149229149252%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149231149257%_))
                                      (let ((_%e149232149260%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149231149257%_))))
                                        (let ((_%hd149233149263%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149232149260%_)))
                                              (_%tl149234149265%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149232149260%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149234149265%_))
                                              ((lambda (_%L149268%_
                                                        _%L149269%_)
                                                 (gxc#compile-e__1
                                                  _%self149219%_
                                                  _%L149268%_))
                                               _%hd149233149263%_
                                               _%hd149230149255%_)
                                              (_%g149222149239%_
                                               _%g149223149242%_))))
                                      (_%g149222149239%_ _%g149223149242%_))))
                              (_%g149222149239%_ _%g149223149242%_))))
                      (_%g149222149239%_ _%g149223149242%_)))))
          (_%g149221149284%_ _%stx149220%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self149101%_ _%stx149102%_)
        (let* ((_%g149104149132%_
                (lambda (_%g149105149129%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149105149129%_))))
               (_%g149103149216%_
                (lambda (_%g149105149135%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149105149135%_))
                      (let ((_%e149108149137%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149105149135%_))))
                        (let ((_%hd149109149140%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149108149137%_)))
                              (_%tl149110149142%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149108149137%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl149110149142%_))
                              (let ((_g149957_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl149110149142%_
                                        '0))))
                                (begin
                                  (let ((_g149958_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g149957_)
                                               (##values-length _g149957_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g149958_ 2)))
                                        (error "Context expects 2 values"
                                               _g149958_)))
                                  (let ((_%target149111149145%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g149957_ 0)))
                                        (_%tl149113149147%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g149957_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl149113149147%_))
                                        (letrec ((_%loop149114149150%_
                                                  (lambda (_%hd149112149153%_
                                                           _%body149118149155%_
                                                           _%hd149119149157%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd149112149153%_))
                                                        (let ((_%e149115149160%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd149112149153%_))))
                  (let ((_%lp-hd149116149163%_
                         (let ()
                           (declare (not safe))
                           (##car _%e149115149160%_)))
                        (_%lp-tl149117149165%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e149115149160%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd149116149163%_))
                        (let ((_%e149122149168%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd149116149163%_))))
                          (let ((_%hd149123149171%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e149122149168%_)))
                                (_%tl149124149173%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e149122149168%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl149124149173%_))
                                (let ((_%e149125149176%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl149124149173%_))))
                                  (let ((_%hd149126149179%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e149125149176%_)))
                                        (_%tl149127149181%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e149125149176%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl149127149181%_))
                                        (_%loop149114149150%_
                                         _%lp-tl149117149165%_
                                         (cons _%hd149126149179%_
                                               _%body149118149155%_)
                                         (cons _%hd149123149171%_
                                               _%hd149119149157%_))
                                        (_%g149104149132%_
                                         _%g149105149135%_))))
                                (_%g149104149132%_ _%g149105149135%_))))
                        (_%g149104149132%_ _%g149105149135%_))))
                (let ((_%body149120149184%_ (reverse _%body149118149155%_))
                      (_%hd149121149186%_ (reverse _%hd149119149157%_)))
                  ((lambda (_%L149189%_ _%L149190%_)
                     (for-each
                      (lambda (_%g149204149206%_)
                        (gxc#compile-e__1 _%self149101%_ _%g149204149206%_))
                      (let ((__tmp149959
                             (lambda (_%g149208149211%_ _%g149209149213%_)
                               (cons _%g149208149211%_ _%g149209149213%_))))
                        (declare (not safe))
                        (__foldr1 __tmp149959 '() _%L149189%_))))
                   _%body149120149184%_
                   _%hd149121149186%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop149114149150%_
                                           _%target149111149145%_
                                           '()
                                           '()))
                                        (_%g149104149132%_
                                         _%g149105149135%_)))))
                              (_%g149104149132%_ _%g149105149135%_))))
                      (_%g149104149132%_ _%g149105149135%_)))))
          (_%g149103149216%_ _%stx149102%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self148954%_ _%stx148955%_)
        (let* ((_%g148957148992%_
                (lambda (_%g148958148989%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148958148989%_))))
               (_%g148956149098%_
                (lambda (_%g148958148995%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148958148995%_))
                      (let ((_%e148962148997%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148958148995%_))))
                        (let ((_%hd148963149000%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148962148997%_)))
                              (_%tl148964149002%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148962148997%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148964149002%_))
                              (let ((_%e148965149005%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148964149002%_))))
                                (let ((_%hd148966149008%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148965149005%_)))
                                      (_%tl148967149010%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148965149005%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd148966149008%_))
                                      (let ((_g149960_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd148966149008%_
                                                '0))))
                                        (begin
                                          (let ((_g149961_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g149960_)
                                                       (##values-length
                                                        _g149960_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g149961_ 2)))
                                                (error "Context expects 2 values"
                                                       _g149961_)))
                                          (let ((_%target148968149013%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g149960_ 0)))
                                                (_%tl148970149015%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g149960_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl148970149015%_))
                                                (letrec ((_%loop148971149018%_
                                                          (lambda (_%hd148969149021%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr148975149023%_
                           _%hd148976149025%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd148969149021%_))
                        (let ((_%e148972149028%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd148969149021%_))))
                          (let ((_%lp-hd148973149031%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e148972149028%_)))
                                (_%lp-tl148974149033%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e148972149028%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd148973149031%_))
                                (let ((_%e148979149036%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd148973149031%_))))
                                  (let ((_%hd148980149039%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e148979149036%_)))
                                        (_%tl148981149041%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e148979149036%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl148981149041%_))
                                        (let ((_%e148982149044%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl148981149041%_))))
                                          (let ((_%hd148983149047%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e148982149044%_)))
                                                (_%tl148984149049%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e148982149044%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl148984149049%_))
                                                (_%loop148971149018%_
                                                 _%lp-tl148974149033%_
                                                 (cons _%hd148983149047%_
                                                       _%expr148975149023%_)
                                                 (cons _%hd148980149039%_
                                                       _%hd148976149025%_))
                                                (_%g148957148992%_
                                                 _%g148958148995%_))))
                                        (_%g148957148992%_
                                         _%g148958148995%_))))
                                (_%g148957148992%_ _%g148958148995%_))))
                        (let ((_%expr148977149052%_
                               (reverse _%expr148975149023%_))
                              (_%hd148978149054%_
                               (reverse _%hd148976149025%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148967149010%_))
                              (let ((_%e148985149057%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148967149010%_))))
                                (let ((_%hd148986149060%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148985149057%_)))
                                      (_%tl148987149062%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148985149057%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl148987149062%_))
                                      ((lambda (_%L149065%_
                                                _%L149066%_
                                                _%L149067%_)
                                         (for-each
                                          (lambda (_%g149086149088%_)
                                            (gxc#compile-e__1
                                             _%self148954%_
                                             _%g149086149088%_))
                                          (let ((__tmp149963
                                                 (lambda (_%g149090149093%_
                                                          _%g149091149095%_)
                                                   (cons _%g149090149093%_
                                                         _%g149091149095%_)))
                                                (__tmp149962
                                                 (cons _%L149065%_ '())))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp149963
                                             __tmp149962
                                             _%L149066%_))))
                                       _%hd148986149060%_
                                       _%expr148977149052%_
                                       _%hd148978149054%_)
                                      (_%g148957148992%_ _%g148958148995%_))))
                              (_%g148957148992%_ _%g148958148995%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop148971149018%_
                                                   _%target148968149013%_
                                                   '()
                                                   '()))
                                                (_%g148957148992%_
                                                 _%g148958148995%_)))))
                                      (_%g148957148992%_ _%g148958148995%_))))
                              (_%g148957148992%_ _%g148958148995%_))))
                      (_%g148957148992%_ _%g148958148995%_)))))
          (_%g148956149098%_ _%stx148955%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self148899%_ _%stx148900%_)
        (let* ((_%g148902148916%_
                (lambda (_%g148903148913%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148903148913%_))))
               (_%g148901148951%_
                (lambda (_%g148903148919%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148903148919%_))
                      (let ((_%e148906148921%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148903148919%_))))
                        (let ((_%hd148907148924%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148906148921%_)))
                              (_%tl148908148926%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148906148921%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148908148926%_))
                              (let ((_%e148909148929%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148908148926%_))))
                                (let ((_%hd148910148932%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148909148929%_)))
                                      (_%tl148911148934%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148909148929%_))))
                                  ((lambda (_%L148937%_ _%L148938%_)
                                     (gxc#compile-e__1
                                      _%self148899%_
                                      (last _%L148937%_)))
                                   _%tl148911148934%_
                                   _%hd148910148932%_)))
                              (_%g148902148916%_ _%g148903148919%_))))
                      (_%g148902148916%_ _%g148903148919%_)))))
          (_%g148901148951%_ _%stx148900%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self148831%_ _%stx148832%_)
        (let* ((_%g148834148851%_
                (lambda (_%g148835148848%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148835148848%_))))
               (_%g148833148896%_
                (lambda (_%g148835148854%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148835148854%_))
                      (let ((_%e148838148856%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148835148854%_))))
                        (let ((_%hd148839148859%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148838148856%_)))
                              (_%tl148840148861%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148838148856%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148840148861%_))
                              (let ((_%e148841148864%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148840148861%_))))
                                (let ((_%hd148842148867%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148841148864%_)))
                                      (_%tl148843148869%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148841148864%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl148843148869%_))
                                      (let ((_%e148844148872%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl148843148869%_))))
                                        (let ((_%hd148845148875%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e148844148872%_)))
                                              (_%tl148846148877%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e148844148872%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl148846148877%_))
                                              ((lambda (_%L148880%_
                                                        _%L148881%_)
                                                 (gxc#compile-e__1
                                                  _%self148831%_
                                                  _%L148880%_))
                                               _%hd148845148875%_
                                               _%hd148842148867%_)
                                              (_%g148834148851%_
                                               _%g148835148854%_))))
                                      (_%g148834148851%_ _%g148835148854%_))))
                              (_%g148834148851%_ _%g148835148854%_))))
                      (_%g148834148851%_ _%g148835148854%_)))))
          (_%g148833148896%_ _%stx148832%_))))
    (define gxc#apply-operands
      (lambda (_%self148744%_ _%stx148745%_)
        (let* ((_%g148747148766%_
                (lambda (_%g148748148763%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148748148763%_))))
               (_%g148746148828%_
                (lambda (_%g148748148769%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148748148769%_))
                      (let ((_%e148750148771%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148748148769%_))))
                        (let ((_%hd148751148774%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148750148771%_)))
                              (_%tl148752148776%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148750148771%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl148752148776%_))
                              (let ((_g149964_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl148752148776%_
                                        '0))))
                                (begin
                                  (let ((_g149965_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g149964_)
                                               (##values-length _g149964_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g149965_ 2)))
                                        (error "Context expects 2 values"
                                               _g149965_)))
                                  (let ((_%target148753148779%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g149964_ 0)))
                                        (_%tl148755148781%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g149964_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl148755148781%_))
                                        (letrec ((_%loop148756148784%_
                                                  (lambda (_%hd148754148787%_
                                                           _%rands148760148789%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd148754148787%_))
                                                        (let ((_%e148757148792%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd148754148787%_))))
                  (let ((_%lp-hd148758148795%_
                         (let ()
                           (declare (not safe))
                           (##car _%e148757148792%_)))
                        (_%lp-tl148759148797%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e148757148792%_))))
                    (_%loop148756148784%_
                     _%lp-tl148759148797%_
                     (cons _%lp-hd148758148795%_ _%rands148760148789%_))))
                (let ((_%rands148761148800%_ (reverse _%rands148760148789%_)))
                  ((lambda (_%L148803%_)
                     (for-each
                      (lambda (_%g148816148818%_)
                        (gxc#compile-e__1 _%self148744%_ _%g148816148818%_))
                      (let ((__tmp149966
                             (lambda (_%g148820148823%_ _%g148821148825%_)
                               (cons _%g148820148823%_ _%g148821148825%_))))
                        (declare (not safe))
                        (__foldr1 __tmp149966 '() _%L148803%_))))
                   _%rands148761148800%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop148756148784%_
                                           _%target148753148779%_
                                           '()))
                                        (_%g148747148766%_
                                         _%g148748148769%_)))))
                              (_%g148747148766%_ _%g148748148769%_))))
                      (_%g148747148766%_ _%g148748148769%_)))))
          (_%g148746148828%_ _%stx148745%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx148741%_ _%src-stx148742%_)
        (let ((__tmp149967
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx148742%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx148741%_ __tmp149967))))
    (define gxc#xform-wrap-apply
      (lambda (_%stx148737%_ _%src-stx148738%_ _%ctx148739%_)
        (gxc#compile-e__1
         _%ctx148739%_
         (gxc#xform-wrap-source _%stx148737%_ _%src-stx148738%_))))
    (define gxc#xform-begin%
      (lambda (_%self148692%_ _%stx148693%_)
        (let* ((_%g148695148705%_
                (lambda (_%g148696148702%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148696148702%_))))
               (_%g148694148734%_
                (lambda (_%g148696148708%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148696148708%_))
                      (let ((_%e148698148710%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148696148708%_))))
                        (let ((_%hd148699148713%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148698148710%_)))
                              (_%tl148700148715%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148698148710%_))))
                          ((lambda (_%L148718%_)
                             (let ((_%forms148732%_
                                    (map (lambda (_%g148727148729%_)
                                           (gxc#compile-e__1
                                            _%self148692%_
                                            _%g148727148729%_))
                                         _%L148718%_)))
                               (gxc#xform-wrap-source
                                (cons '%#begin _%forms148732%_)
                                _%stx148693%_)))
                           _%tl148700148715%_)))
                      (_%g148695148705%_ _%g148696148708%_)))))
          (_%g148694148734%_ _%stx148693%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self148646%_ _%stx148647%_)
        (let* ((_%g148649148659%_
                (lambda (_%g148650148656%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148650148656%_))))
               (_%g148648148689%_
                (lambda (_%g148650148662%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148650148662%_))
                      (let ((_%e148652148664%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148650148662%_))))
                        (let ((_%hd148653148667%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148652148664%_)))
                              (_%tl148654148669%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148652148664%_))))
                          ((lambda (_%L148672%_)
                             (let ((__tmp149970
                                    (lambda ()
                                      (let ((_%forms148687%_
                                             (map (lambda (_%g148682148684%_)
                                                    (gxc#compile-e__1
                                                     _%self148646%_
                                                     _%g148682148684%_))
                                                  _%L148672%_)))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin-syntax _%forms148687%_)
                                         _%stx148647%_))))
                                   (__tmp149968
                                    (let ((__tmp149969
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp149969 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp149970
                                gx#current-expander-phi
                                __tmp149968)))
                           _%tl148654148669%_)))
                      (_%g148649148659%_ _%g148650148662%_)))))
          (_%g148648148689%_ _%stx148647%_))))
    (define gxc#xform-module%
      (lambda (_%self148583%_ _%stx148584%_)
        (let* ((_%g148586148600%_
                (lambda (_%g148587148597%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148587148597%_))))
               (_%g148585148643%_
                (lambda (_%g148587148603%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148587148603%_))
                      (let ((_%e148590148605%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148587148603%_))))
                        (let ((_%hd148591148608%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148590148605%_)))
                              (_%tl148592148610%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148590148605%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148592148610%_))
                              (let ((_%e148593148613%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148592148610%_))))
                                (let ((_%hd148594148616%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148593148613%_)))
                                      (_%tl148595148618%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148593148613%_))))
                                  ((lambda (_%L148621%_ _%L148622%_)
                                     (let* ((_%ctx148635%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L148622%_)))
                                            (_%code148637%_
                                             (##structure-ref
                                              _%ctx148635%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code148640%_
                                             (let ((__tmp149971
                                                    (lambda ()
                                                      (gxc#compile-e__1
                                                       _%self148583%_
                                                       _%code148637%_))))
                                               (declare (not safe))
                                               (call-with-parameters__1
                                                __tmp149971
                                                gx#current-expander-context
                                                _%ctx148635%_))))
                                       (##structure-set!
                                        _%ctx148635%_
                                        _%code148640%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _%L148622%_
                                                    (cons _%code148640%_ '())))
                                        _%stx148584%_)))
                                   _%tl148595148618%_
                                   _%hd148594148616%_)))
                              (_%g148586148600%_ _%g148587148603%_))))
                      (_%g148586148600%_ _%g148587148603%_)))))
          (_%g148585148643%_ _%stx148584%_))))
    (define gxc#xform-define-values%
      (lambda (_%self148513%_ _%stx148514%_)
        (let* ((_%g148516148533%_
                (lambda (_%g148517148530%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148517148530%_))))
               (_%g148515148580%_
                (lambda (_%g148517148536%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148517148536%_))
                      (let ((_%e148520148538%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148517148536%_))))
                        (let ((_%hd148521148541%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148520148538%_)))
                              (_%tl148522148543%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148520148538%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148522148543%_))
                              (let ((_%e148523148546%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148522148543%_))))
                                (let ((_%hd148524148549%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148523148546%_)))
                                      (_%tl148525148551%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148523148546%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl148525148551%_))
                                      (let ((_%e148526148554%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl148525148551%_))))
                                        (let ((_%hd148527148557%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e148526148554%_)))
                                              (_%tl148528148559%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e148526148554%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl148528148559%_))
                                              ((lambda (_%L148562%_
                                                        _%L148563%_)
                                                 (let ((_%expr148578%_
                                                        (gxc#compile-e__1
                                                         _%self148513%_
                                                         _%L148562%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons _%L148563%_
                                                                (cons _%expr148578%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx148514%_)))
                                               _%hd148527148557%_
                                               _%hd148524148549%_)
                                              (_%g148516148533%_
                                               _%g148517148536%_))))
                                      (_%g148516148533%_ _%g148517148536%_))))
                              (_%g148516148533%_ _%g148517148536%_))))
                      (_%g148516148533%_ _%g148517148536%_)))))
          (_%g148515148580%_ _%stx148514%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self148442%_ _%stx148443%_)
        (let* ((_%g148445148462%_
                (lambda (_%g148446148459%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148446148459%_))))
               (_%g148444148510%_
                (lambda (_%g148446148465%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148446148465%_))
                      (let ((_%e148449148467%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148446148465%_))))
                        (let ((_%hd148450148470%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148449148467%_)))
                              (_%tl148451148472%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148449148467%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148451148472%_))
                              (let ((_%e148452148475%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148451148472%_))))
                                (let ((_%hd148453148478%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148452148475%_)))
                                      (_%tl148454148480%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148452148475%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl148454148480%_))
                                      (let ((_%e148455148483%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl148454148480%_))))
                                        (let ((_%hd148456148486%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e148455148483%_)))
                                              (_%tl148457148488%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e148455148483%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl148457148488%_))
                                              ((lambda (_%L148491%_
                                                        _%L148492%_)
                                                 (let ((__tmp149974
                                                        (lambda ()
                                                          (let ((_%expr148508%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#compile-e__1 _%self148442%_ _%L148491%_)))
                    (gxc#xform-wrap-source
                     (cons '%#define-syntax
                           (cons _%L148492%_ (cons _%expr148508%_ '())))
                     _%stx148443%_))))
               (__tmp149972
                (let ((__tmp149973
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp149973 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp149974
                                                    gx#current-expander-phi
                                                    __tmp149972)))
                                               _%hd148456148486%_
                                               _%hd148453148478%_)
                                              (_%g148445148462%_
                                               _%g148446148465%_))))
                                      (_%g148445148462%_ _%g148446148465%_))))
                              (_%g148445148462%_ _%g148446148465%_))))
                      (_%g148445148462%_ _%g148446148465%_)))))
          (_%g148444148510%_ _%stx148443%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self148372%_ _%stx148373%_)
        (let* ((_%g148375148392%_
                (lambda (_%g148376148389%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148376148389%_))))
               (_%g148374148439%_
                (lambda (_%g148376148395%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148376148395%_))
                      (let ((_%e148379148397%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148376148395%_))))
                        (let ((_%hd148380148400%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148379148397%_)))
                              (_%tl148381148402%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148379148397%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148381148402%_))
                              (let ((_%e148382148405%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148381148402%_))))
                                (let ((_%hd148383148408%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148382148405%_)))
                                      (_%tl148384148410%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148382148405%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl148384148410%_))
                                      (let ((_%e148385148413%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl148384148410%_))))
                                        (let ((_%hd148386148416%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e148385148413%_)))
                                              (_%tl148387148418%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e148385148413%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl148387148418%_))
                                              ((lambda (_%L148421%_
                                                        _%L148422%_)
                                                 (let ((_%expr148437%_
                                                        (gxc#compile-e__1
                                                         _%self148372%_
                                                         _%L148421%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#begin-annotation
                                                          (cons _%L148422%_
                                                                (cons _%expr148437%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx148373%_)))
                                               _%hd148386148416%_
                                               _%hd148383148408%_)
                                              (_%g148375148392%_
                                               _%g148376148395%_))))
                                      (_%g148375148392%_ _%g148376148395%_))))
                              (_%g148375148392%_ _%g148376148395%_))))
                      (_%g148375148392%_ _%g148376148395%_)))))
          (_%g148374148439%_ _%stx148373%_))))
    (define gxc#xform-lambda%
      (lambda (_%self148310%_ _%stx148311%_)
        (let* ((_%g148313148327%_
                (lambda (_%g148314148324%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148314148324%_))))
               (_%g148312148369%_
                (lambda (_%g148314148330%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148314148330%_))
                      (let ((_%e148317148332%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148314148330%_))))
                        (let ((_%hd148318148335%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148317148332%_)))
                              (_%tl148319148337%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148317148332%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148319148337%_))
                              (let ((_%e148320148340%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148319148337%_))))
                                (let ((_%hd148321148343%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148320148340%_)))
                                      (_%tl148322148345%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148320148340%_))))
                                  ((lambda (_%L148348%_ _%L148349%_)
                                     (let ((__tmp149976
                                            (lambda ()
                                              (let ((_%body148367%_
                                                     (map (lambda (_%g148362148364%_)
                                                            (gxc#compile-e__1
                                                             _%self148310%_
                                                             _%g148362148364%_))
                                                          _%L148348%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#lambda
                                                       (cons _%L148349%_
                                                             _%body148367%_))
                                                 _%stx148311%_))))
                                           (__tmp149975
                                            (gxc#xform-let-locals
                                             _%L148349%_)))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp149976
                                        gxc#current-compile-local-env
                                        __tmp149975)))
                                   _%tl148322148345%_
                                   _%hd148321148343%_)))
                              (_%g148313148327%_ _%g148314148330%_))))
                      (_%g148313148327%_ _%g148314148330%_)))))
          (_%g148312148369%_ _%stx148311%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self148218%_ _%stx148219%_)
        (letrec ((_%clause-e148221%_
                  (lambda (_%clause148262%_)
                    (let* ((_%g148264148275%_
                            (lambda (_%g148265148272%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g148265148272%_))))
                           (_%g148263148307%_
                            (lambda (_%g148265148278%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g148265148278%_))
                                  (let ((_%e148268148280%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g148265148278%_))))
                                    (let ((_%hd148269148283%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e148268148280%_)))
                                          (_%tl148270148285%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e148268148280%_))))
                                      ((lambda (_%L148288%_ _%L148289%_)
                                         (let ((__tmp149978
                                                (lambda ()
                                                  (let ((_%body148305%_
                                                         (map (lambda (_%g148300148302%_)
                                                                (gxc#compile-e__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%self148218%_
                         _%g148300148302%_))
                      _%L148288%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%L148289%_
                                                          _%body148305%_))))
                                               (__tmp149977
                                                (gxc#xform-let-locals
                                                 _%L148289%_)))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp149978
                                            gxc#current-compile-local-env
                                            __tmp149977)))
                                       _%tl148270148285%_
                                       _%hd148269148283%_)))
                                  (_%g148264148275%_ _%g148265148278%_)))))
                      (_%g148263148307%_ _%clause148262%_)))))
          (let* ((_%g148223148233%_
                  (lambda (_%g148224148230%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g148224148230%_))))
                 (_%g148222148259%_
                  (lambda (_%g148224148236%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g148224148236%_))
                        (let ((_%e148226148238%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g148224148236%_))))
                          (let ((_%hd148227148241%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e148226148238%_)))
                                (_%tl148228148243%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e148226148238%_))))
                            ((lambda (_%L148246%_)
                               (let ((_%clauses148257%_
                                      (map _%clause-e148221%_ _%L148246%_)))
                                 (gxc#xform-wrap-source
                                  (cons '%#case-lambda _%clauses148257%_)
                                  _%stx148219%_)))
                             _%tl148228148243%_)))
                        (_%g148223148233%_ _%g148224148236%_)))))
            (_%g148222148259%_ _%stx148219%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self147972%_ _%stx147973%_)
        (let* ((_%g147975148008%_
                (lambda (_%g147976148005%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147976148005%_))))
               (_%g147974148215%_
                (lambda (_%g147976148011%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147976148011%_))
                      (let ((_%e147981148013%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147976148011%_))))
                        (let ((_%hd147982148016%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147981148013%_)))
                              (_%tl147983148018%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147981148013%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl147983148018%_))
                              (let ((_%e147984148021%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl147983148018%_))))
                                (let ((_%hd147985148024%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e147984148021%_)))
                                      (_%tl147986148026%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e147984148021%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd147985148024%_))
                                      (let ((_g149979_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd147985148024%_
                                                '0))))
                                        (begin
                                          (let ((_g149980_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g149979_)
                                                       (##values-length
                                                        _g149979_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g149980_ 2)))
                                                (error "Context expects 2 values"
                                                       _g149980_)))
                                          (let ((_%target147987148029%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g149979_ 0)))
                                                (_%tl147989148031%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g149979_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl147989148031%_))
                                                (letrec ((_%loop147990148034%_
                                                          (lambda (_%hd147988148037%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr147994148039%_
                           _%hd147995148041%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd147988148037%_))
                        (let ((_%e147991148044%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd147988148037%_))))
                          (let ((_%lp-hd147992148047%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e147991148044%_)))
                                (_%lp-tl147993148049%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e147991148044%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd147992148047%_))
                                (let ((_%e147998148052%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd147992148047%_))))
                                  (let ((_%hd147999148055%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e147998148052%_)))
                                        (_%tl148000148057%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e147998148052%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl148000148057%_))
                                        (let ((_%e148001148060%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl148000148057%_))))
                                          (let ((_%hd148002148063%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e148001148060%_)))
                                                (_%tl148003148065%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e148001148060%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl148003148065%_))
                                                (_%loop147990148034%_
                                                 _%lp-tl147993148049%_
                                                 (cons _%hd148002148063%_
                                                       _%expr147994148039%_)
                                                 (cons _%hd147999148055%_
                                                       _%hd147995148041%_))
                                                (_%g147975148008%_
                                                 _%g147976148011%_))))
                                        (_%g147975148008%_
                                         _%g147976148011%_))))
                                (_%g147975148008%_ _%g147976148011%_))))
                        (let ((_%expr147996148068%_
                               (reverse _%expr147994148039%_))
                              (_%hd147997148070%_
                               (reverse _%hd147995148041%_)))
                          ((lambda (_%L148073%_
                                    _%L148074%_
                                    _%L148075%_
                                    _%L148076%_)
                             (let* ((_%g148095148111%_
                                     (lambda (_%g148096148108%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g148096148108%_))))
                                    (_%g148094148201%_
                                     (lambda (_%g148096148114%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g148096148114%_))
                                           (let ((_g149981_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g148096148114%_
                                                     '0))))
                                             (begin
                                               (let ((_g149982_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g149981_)
                                                            (##values-length
                                                             _g149981_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g149982_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g149982_)))
                                               (let ((_%target148098148116%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g149981_
                                                         0)))
                                                     (_%tl148100148118%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g149981_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl148100148118%_))
                                                     (letrec ((_%loop148101148121%_
                                                               (lambda (_%hd148099148124%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr148105148126%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd148099148124%_))
                             (let ((_%e148102148129%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd148099148124%_))))
                               (let ((_%lp-hd148103148132%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e148102148129%_)))
                                     (_%lp-tl148104148134%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e148102148129%_))))
                                 (_%loop148101148121%_
                                  _%lp-tl148104148134%_
                                  (cons _%lp-hd148103148132%_
                                        _%expr148105148126%_))))
                             (let ((_%expr148106148137%_
                                    (reverse _%expr148105148126%_)))
                               ((lambda (_%L148140%_)
                                  (let ((__tmp149985
                                         (lambda ()
                                           (let* ((_%g148154148161%_
                                                   (lambda (_%g148155148158%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g148155148158%_))))
                                                  (_%g148153148187%_
                                                   (lambda (_%g148155148164%_)
                                                     ((lambda (_%L148166%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L148076%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L148140%_
                                  _%L148075%_))
                               (let ((__tmp149986
                                      (lambda (_%g148176148180%_
                                               _%g148177148182%_
                                               _%g148178148184%_)
                                        (cons (cons _%g148177148182%_
                                                    (cons _%g148176148180%_
                                                          '()))
                                              _%g148178148184%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp149986
                                  '()
                                  _%L148140%_
                                  _%L148075%_)))
                             _%L148166%_))
                 _%stx147973%_))
              _%g148155148164%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g148153148187%_
                                              (map (lambda (_%g148189148191%_)
                                                     (gxc#compile-e__1
                                                      _%self147972%_
                                                      _%g148189148191%_))
                                                   _%L148073%_)))))
                                        (__tmp149983
                                         (gxc#xform-let-locals
                                          (let ((__tmp149984
                                                 (lambda (_%g148193148196%_
                                                          _%g148194148198%_)
                                                   (cons _%g148193148196%_
                                                         _%g148194148198%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp149984
                                             '()
                                             _%L148075%_)))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp149985
                                     gxc#current-compile-local-env
                                     __tmp149983)))
                                _%expr148106148137%_))))))
               (_%loop148101148121%_ _%target148098148116%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g148095148111%_
                                                      _%g148096148114%_)))))
                                           (_%g148095148111%_
                                            _%g148096148114%_)))))
                               (_%g148094148201%_
                                (map (lambda (_%g148203148205%_)
                                       (gxc#compile-e__1
                                        _%self147972%_
                                        _%g148203148205%_))
                                     (let ((__tmp149987
                                            (lambda (_%g148207148210%_
                                                     _%g148208148212%_)
                                              (cons _%g148207148210%_
                                                    _%g148208148212%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp149987
                                        '()
                                        _%L148074%_))))))
                           _%tl147986148026%_
                           _%expr147996148068%_
                           _%hd147997148070%_
                           _%hd147982148016%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop147990148034%_
                                                   _%target147987148029%_
                                                   '()
                                                   '()))
                                                (_%g147975148008%_
                                                 _%g147976148011%_)))))
                                      (_%g147975148008%_ _%g147976148011%_))))
                              (_%g147975148008%_ _%g147976148011%_))))
                      (_%g147975148008%_ _%g147976148011%_)))))
          (_%g147974148215%_ _%stx147973%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self147726%_ _%stx147727%_)
        (let* ((_%g147729147762%_
                (lambda (_%g147730147759%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147730147759%_))))
               (_%g147728147969%_
                (lambda (_%g147730147765%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147730147765%_))
                      (let ((_%e147735147767%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147730147765%_))))
                        (let ((_%hd147736147770%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147735147767%_)))
                              (_%tl147737147772%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147735147767%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl147737147772%_))
                              (let ((_%e147738147775%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl147737147772%_))))
                                (let ((_%hd147739147778%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e147738147775%_)))
                                      (_%tl147740147780%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e147738147775%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd147739147778%_))
                                      (let ((_g149988_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd147739147778%_
                                                '0))))
                                        (begin
                                          (let ((_g149989_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g149988_)
                                                       (##values-length
                                                        _g149988_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g149989_ 2)))
                                                (error "Context expects 2 values"
                                                       _g149989_)))
                                          (let ((_%target147741147783%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g149988_ 0)))
                                                (_%tl147743147785%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g149988_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl147743147785%_))
                                                (letrec ((_%loop147744147788%_
                                                          (lambda (_%hd147742147791%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr147748147793%_
                           _%hd147749147795%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd147742147791%_))
                        (let ((_%e147745147798%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd147742147791%_))))
                          (let ((_%lp-hd147746147801%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e147745147798%_)))
                                (_%lp-tl147747147803%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e147745147798%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd147746147801%_))
                                (let ((_%e147752147806%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd147746147801%_))))
                                  (let ((_%hd147753147809%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e147752147806%_)))
                                        (_%tl147754147811%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e147752147806%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl147754147811%_))
                                        (let ((_%e147755147814%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl147754147811%_))))
                                          (let ((_%hd147756147817%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e147755147814%_)))
                                                (_%tl147757147819%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e147755147814%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl147757147819%_))
                                                (_%loop147744147788%_
                                                 _%lp-tl147747147803%_
                                                 (cons _%hd147756147817%_
                                                       _%expr147748147793%_)
                                                 (cons _%hd147753147809%_
                                                       _%hd147749147795%_))
                                                (_%g147729147762%_
                                                 _%g147730147765%_))))
                                        (_%g147729147762%_
                                         _%g147730147765%_))))
                                (_%g147729147762%_ _%g147730147765%_))))
                        (let ((_%expr147750147822%_
                               (reverse _%expr147748147793%_))
                              (_%hd147751147824%_
                               (reverse _%hd147749147795%_)))
                          ((lambda (_%L147827%_
                                    _%L147828%_
                                    _%L147829%_
                                    _%L147830%_)
                             (let ((__tmp149992
                                    (lambda ()
                                      (let* ((_%g147850147866%_
                                              (lambda (_%g147851147863%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g147851147863%_))))
                                             (_%g147849147948%_
                                              (lambda (_%g147851147869%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g147851147869%_))
                                                    (let ((_g149993_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g147851147869%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g149994_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g149993_)
                             (##values-length _g149993_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g149994_ 2)))
                      (error "Context expects 2 values" _g149994_)))
                (let ((_%target147853147871%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g149993_ 0)))
                      (_%tl147855147873%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g149993_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl147855147873%_))
                      (letrec ((_%loop147856147876%_
                                (lambda (_%hd147854147879%_
                                         _%expr147860147881%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd147854147879%_))
                                      (let ((_%e147857147884%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd147854147879%_))))
                                        (let ((_%lp-hd147858147887%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e147857147884%_)))
                                              (_%lp-tl147859147889%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e147857147884%_))))
                                          (_%loop147856147876%_
                                           _%lp-tl147859147889%_
                                           (cons _%lp-hd147858147887%_
                                                 _%expr147860147881%_))))
                                      (let ((_%expr147861147892%_
                                             (reverse _%expr147860147881%_)))
                                        ((lambda (_%L147895%_)
                                           (let* ((_%g147909147916%_
                                                   (lambda (_%g147910147913%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g147910147913%_))))
                                                  (_%g147908147941%_
                                                   (lambda (_%g147910147919%_)
                                                     ((lambda (_%L147921%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L147830%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L147895%_
                                  _%L147829%_))
                               (let ((__tmp149995
                                      (lambda (_%g147930147934%_
                                               _%g147931147936%_
                                               _%g147932147938%_)
                                        (cons (cons _%g147931147936%_
                                                    (cons _%g147930147934%_
                                                          '()))
                                              _%g147932147938%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp149995
                                  '()
                                  _%L147895%_
                                  _%L147829%_)))
                             _%L147921%_))
                 _%stx147727%_))
              _%g147910147919%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g147908147941%_
                                              (map (lambda (_%g147943147945%_)
                                                     (gxc#compile-e__1
                                                      _%self147726%_
                                                      _%g147943147945%_))
                                                   _%L147827%_))))
                                         _%expr147861147892%_))))))
                        (_%loop147856147876%_ _%target147853147871%_ '()))
                      (_%g147850147866%_ _%g147851147869%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g147850147866%_
                                                     _%g147851147869%_)))))
                                        (_%g147849147948%_
                                         (map (lambda (_%g147950147952%_)
                                                (gxc#compile-e__1
                                                 _%self147726%_
                                                 _%g147950147952%_))
                                              (let ((__tmp149996
                                                     (lambda (_%g147954147957%_
                                                              _%g147955147959%_)
                                                       (cons _%g147954147957%_
                                                             _%g147955147959%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp149996
                                                 '()
                                                 _%L147828%_)))))))
                                   (__tmp149990
                                    (gxc#xform-let-locals
                                     (let ((__tmp149991
                                            (lambda (_%g147961147964%_
                                                     _%g147962147966%_)
                                              (cons _%g147961147964%_
                                                    _%g147962147966%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp149991
                                        '()
                                        _%L147829%_)))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp149992
                                gxc#current-compile-local-env
                                __tmp149990)))
                           _%tl147740147780%_
                           _%expr147750147822%_
                           _%hd147751147824%_
                           _%hd147736147770%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop147744147788%_
                                                   _%target147741147783%_
                                                   '()
                                                   '()))
                                                (_%g147729147762%_
                                                 _%g147730147765%_)))))
                                      (_%g147729147762%_ _%g147730147765%_))))
                              (_%g147729147762%_ _%g147730147765%_))))
                      (_%g147729147762%_ _%g147730147765%_)))))
          (_%g147728147969%_ _%stx147727%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings147593%_)
        (letrec ((_%flatten147595%_
                  (lambda (_%maybe-lst147653%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%maybe-lst147653%_))
                        (cons _%maybe-lst147653%_ '())
                        (let _%loop147655%_ ((_%rest147657%_
                                              _%maybe-lst147653%_)
                                             (_%result147658%_ '()))
                          (let* ((_%__stx149884149885%_ _%rest147657%_)
                                 (_%g147662147674%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx149884149885%_)))))
                            (let ((_%__kont149886149887%_
                                   (lambda (_%L147712%_ _%L147713%_)
                                     (_%loop147655%_
                                      _%L147712%_
                                      (let ((__tmp149997
                                             (_%flatten147595%_ _%L147713%_)))
                                        (declare (not safe))
                                        (__foldl1
                                         cons
                                         _%result147658%_
                                         __tmp149997)))))
                                  (_%__kont149888149889%_
                                   (lambda (_%L147686%_)
                                     (cons _%L147686%_ _%result147658%_)))
                                  (_%__kont149890149891%_
                                   (lambda () _%result147658%_)))
                              (let ((_%g147660147699%_
                                     (lambda ()
                                       (let ((_%L147686%_
                                              _%__stx149884149885%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L147686%_))
                                             (_%__kont149888149889%_
                                              _%L147686%_)
                                             (_%__kont149890149891%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx149884149885%_))
                                    (let ((_%e147666147704%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx149884149885%_))))
                                      (let ((_%tl147668147709%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e147666147704%_)))
                                            (_%hd147667147707%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e147666147704%_))))
                                        (_%__kont149886149887%_
                                         _%tl147668147709%_
                                         _%hd147667147707%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g147660147699%_)))))))))))
          (let _%loop147597%_ ((_%rest147599%_
                                (_%flatten147595%_ _%bindings147593%_))
                               (_%locals147600%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-local-env))))
            (let* ((_%rest147601147612%_ _%rest147599%_)
                   (_%E147605147616%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching"
                               _%rest147601147612%_
                               '([(? identifier? id) . rest])
                               '((? identifier? id))
                               '(_)))
                      '#!void)))
              (let ((_%K147608147641%_
                     (lambda (_%rest147638%_ _%id147639%_)
                       (_%loop147597%_
                        _%rest147638%_
                        (cons (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _%id147639%_))
                              _%locals147600%_))))
                    (_%K147607147630%_
                     (lambda (_%id147628%_)
                       (cons (let ()
                               (declare (not safe))
                               (gxc#identifier-symbol _%id147628%_))
                             _%locals147600%_)))
                    (_%K147606147621%_ (lambda () _%locals147600%_)))
                (let ((_%try-match147603147635%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%rest147601147612%_))
                             (let ((_%id147633%_ _%rest147601147612%_))
                               (_%K147607147630%_ _%id147633%_))
                             (_%K147606147621%_)))))
                  (if (pair? _%rest147601147612%_)
                      (let ((_%tl147610147646%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest147601147612%_)))
                            (_%hd147609147644%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest147601147612%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd147609147644%_))
                            (let ((_%id147649%_ _%hd147609147644%_)
                                  (_%rest147651%_ _%tl147610147646%_))
                              (_%K147608147641%_ _%rest147651%_ _%id147649%_))
                            (_%K147606147621%_)))
                      (_%try-match147603147635%_)))))))))
    (define gxc#xform-operands
      (lambda (_%self147545%_ _%stx147546%_)
        (let* ((_%g147548147559%_
                (lambda (_%g147549147556%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147549147556%_))))
               (_%g147547147590%_
                (lambda (_%g147549147562%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147549147562%_))
                      (let ((_%e147552147564%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147549147562%_))))
                        (let ((_%hd147553147567%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147552147564%_)))
                              (_%tl147554147569%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147552147564%_))))
                          ((lambda (_%L147572%_ _%L147573%_)
                             (let ((_%rands147588%_
                                    (map (lambda (_%g147583147585%_)
                                           (gxc#compile-e__1
                                            _%self147545%_
                                            _%g147583147585%_))
                                         _%L147572%_)))
                               (gxc#xform-wrap-source
                                (cons _%L147573%_ _%rands147588%_)
                                _%stx147546%_)))
                           _%tl147554147569%_
                           _%hd147553147567%_)))
                      (_%g147548147559%_ _%g147549147562%_)))))
          (_%g147547147590%_ _%stx147546%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self147475%_ _%stx147476%_)
        (let* ((_%g147478147495%_
                (lambda (_%g147479147492%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147479147492%_))))
               (_%g147477147542%_
                (lambda (_%g147479147498%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147479147498%_))
                      (let ((_%e147482147500%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147479147498%_))))
                        (let ((_%hd147483147503%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147482147500%_)))
                              (_%tl147484147505%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147482147500%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl147484147505%_))
                              (let ((_%e147485147508%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl147484147505%_))))
                                (let ((_%hd147486147511%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e147485147508%_)))
                                      (_%tl147487147513%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e147485147508%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl147487147513%_))
                                      (let ((_%e147488147516%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl147487147513%_))))
                                        (let ((_%hd147489147519%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e147488147516%_)))
                                              (_%tl147490147521%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e147488147516%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl147490147521%_))
                                              ((lambda (_%L147524%_
                                                        _%L147525%_)
                                                 (let ((_%expr147540%_
                                                        (gxc#compile-e__1
                                                         _%self147475%_
                                                         _%L147524%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _%L147525%_
                                                                (cons _%expr147540%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx147476%_)))
                                               _%hd147489147519%_
                                               _%hd147486147511%_)
                                              (_%g147478147495%_
                                               _%g147479147498%_))))
                                      (_%g147478147495%_ _%g147479147498%_))))
                              (_%g147478147495%_ _%g147479147498%_))))
                      (_%g147478147495%_ _%g147479147498%_)))))
          (_%g147477147542%_ _%stx147476%_))))))
