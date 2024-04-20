(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1713454411)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx136403%_)
        (let* ((_%self136405%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e136407%_
                (let ((__tmp136603 (gxc#stx-car-e _%stx136403%_)))
                  (declare (not safe))
                  (method-ref _%self136405%_ __tmp136603))))
          (if _%$e136407%_
              ((lambda (_%method136410%_)
                 (declare (not safe))
                 (_%method136410%_ _%self136405%_ _%stx136403%_))
               _%$e136407%_)
              (let ((__tmp136605 (gxc#stx-car-e _%stx136403%_))
                    (__tmp136604
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx136403%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self136405%_
                       __tmp136605
                       __tmp136604))))))
    (define gxc#compile-e__1
      (lambda (_%self136414%_ _%stx136415%_)
        (let ((_%$e136417%_
               (let ((__tmp136606 (gxc#stx-car-e _%stx136415%_)))
                 (declare (not safe))
                 (method-ref _%self136414%_ __tmp136606))))
          (if _%$e136417%_
              ((lambda (_%method136420%_)
                 (declare (not safe))
                 (_%method136420%_ _%self136414%_ _%stx136415%_))
               _%$e136417%_)
              (let ((__tmp136608 (gxc#stx-car-e _%stx136415%_))
                    (__tmp136607
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx136415%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self136414%_
                       __tmp136608
                       __tmp136607))))))
    (define gxc#compile-e
      (lambda _g136610_
        (let ((_g136609_ (let () (declare (not safe)) (##length _g136610_))))
          (cond ((let () (declare (not safe)) (##fx= _g136609_ 1))
                 (apply gxc#compile-e__0 _g136610_))
                ((let () (declare (not safe)) (##fx= _g136609_ 2))
                 (apply gxc#compile-e__1 _g136610_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g136610_))))))
    (define gxc#stx-car-e
      (lambda (_%stx136401%_)
        (let ((__tmp136611
               (car (let () (declare (not safe)) (gx#stx-e _%stx136401%_)))))
          (declare (not safe))
          (gx#stx-e __tmp136611))))
    (define gxc#void-method (lambda (_%self136398%_ _%stx136399%_) '#!void))
    (define gxc#false-method (lambda (_%self136395%_ _%stx136396%_) '#f))
    (define gxc#true-method (lambda (_%self136392%_ _%stx136393%_) '#t))
    (define gxc#identity-method
      (lambda (_%self136389%_ _%stx136390%_) _%stx136390%_))
    (define gxc#::void-expression::t
      (let ((__tmp136612 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp136612
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args136386%_
        (apply make-instance gxc#::void-expression::t _%$args136386%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp136613
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
        (__make-promise __tmp136613)))
    (define gxc#::void-special-form::t
      (let ((__tmp136614 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp136614
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args136382%_
        (apply make-instance gxc#::void-special-form::t _%$args136382%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp136615
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
        (__make-promise __tmp136615)))
    (define gxc#::void::t
      (let ((__tmp136616
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp136616 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args136378%_
        (apply make-instance gxc#::void::t _%$args136378%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp136617
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp136617)))
    (define gxc#::false-expression::t
      (let ((__tmp136618 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp136618
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args136374%_
        (apply make-instance gxc#::false-expression::t _%$args136374%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp136619
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
        (__make-promise __tmp136619)))
    (define gxc#::false-special-form::t
      (let ((__tmp136620 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp136620
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args136370%_
        (apply make-instance gxc#::false-special-form::t _%$args136370%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp136621
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
        (__make-promise __tmp136621)))
    (define gxc#::false::t
      (let ((__tmp136622
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp136622 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args136366%_
        (apply make-instance gxc#::false::t _%$args136366%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp136623
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp136623)))
    (define gxc#::identity-expression::t
      (let ((__tmp136624 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp136624
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args136362%_
        (apply make-instance gxc#::identity-expression::t _%$args136362%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp136625
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
        (__make-promise __tmp136625)))
    (define gxc#::identity-special-form::t
      (let ((__tmp136626 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp136626
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args136358%_
        (apply make-instance gxc#::identity-special-form::t _%$args136358%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp136627
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
        (__make-promise __tmp136627)))
    (define gxc#::identity::t
      (let ((__tmp136628
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp136628
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args136354%_
        (apply make-instance gxc#::identity::t _%$args136354%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp136629
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-promise __tmp136629)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp136630 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp136630
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args136350%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args136350%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp136631
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
        (__make-promise __tmp136631)))
    (define gxc#::basic-xform::t
      (let ((__tmp136632
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp136632
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args136346%_
        (apply make-instance gxc#::basic-xform::t _%$args136346%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp136633
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
        (__make-promise __tmp136633)))
    (define gxc#apply-begin%
      (lambda (_%self136302%_ _%stx136303%_)
        (let* ((_%g136305136315%_
                (lambda (_%g136306136312%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136306136312%_))))
               (_%g136304136342%_
                (lambda (_%g136306136318%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136306136318%_))
                      (let ((_%e136308136320%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136306136318%_))))
                        (let ((_%hd136309136323%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136308136320%_)))
                              (_%tl136310136325%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136308136320%_))))
                          ((lambda (_%L136328%_)
                             (for-each
                              (lambda (_%g136337136339%_)
                                (gxc#compile-e__1
                                 _%self136302%_
                                 _%g136337136339%_))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L136328%_))))
                           _%tl136310136325%_)))
                      (_%g136305136315%_ _%g136306136318%_)))))
          (_%g136304136342%_ _%stx136303%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self136263%_ _%stx136264%_)
        (let* ((_%g136266136276%_
                (lambda (_%g136267136273%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136267136273%_))))
               (_%g136265136299%_
                (lambda (_%g136267136279%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136267136279%_))
                      (let ((_%e136269136281%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136267136279%_))))
                        (let ((_%hd136270136284%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136269136281%_)))
                              (_%tl136271136286%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136269136281%_))))
                          ((lambda (_%L136289%_)
                             (gxc#compile-e__1
                              _%self136263%_
                              (last _%L136289%_)))
                           _%tl136271136286%_)))
                      (_%g136266136276%_ _%g136267136279%_)))))
          (_%g136265136299%_ _%stx136264%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self136259%_ _%stx136260%_)
        (let ((__tmp136636
               (lambda () (gxc#apply-begin% _%self136259%_ _%stx136260%_)))
              (__tmp136634
               (let ((__tmp136635
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp136635 '1))))
          (declare (not safe))
          (__call-with-parameters
           __tmp136636
           gx#current-expander-phi
           __tmp136634))))
    (define gxc#apply-module%
      (lambda (_%self136198%_ _%stx136199%_)
        (let* ((_%g136201136215%_
                (lambda (_%g136202136212%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136202136212%_))))
               (_%g136200136256%_
                (lambda (_%g136202136218%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136202136218%_))
                      (let ((_%e136205136220%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136202136218%_))))
                        (let ((_%hd136206136223%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136205136220%_)))
                              (_%tl136207136225%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136205136220%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136207136225%_))
                              (let ((_%e136208136228%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136207136225%_))))
                                (let ((_%hd136209136231%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136208136228%_)))
                                      (_%tl136210136233%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136208136228%_))))
                                  ((lambda (_%L136236%_ _%L136237%_)
                                     (let* ((_%ctx136250%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L136237%_)))
                                            (_%ctx-stx136252%_
                                             (##structure-ref
                                              _%ctx136250%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp136637
                                             (lambda ()
                                               (gxc#compile-e__1
                                                _%self136198%_
                                                _%ctx-stx136252%_))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp136637
                                        gx#current-expander-context
                                        _%ctx136250%_)))
                                   _%tl136210136233%_
                                   _%hd136209136231%_)))
                              (_%g136201136215%_ _%g136202136218%_))))
                      (_%g136201136215%_ _%g136202136218%_)))))
          (_%g136200136256%_ _%stx136199%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self136130%_ _%stx136131%_)
        (let* ((_%g136133136150%_
                (lambda (_%g136134136147%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136134136147%_))))
               (_%g136132136195%_
                (lambda (_%g136134136153%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136134136153%_))
                      (let ((_%e136137136155%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136134136153%_))))
                        (let ((_%hd136138136158%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136137136155%_)))
                              (_%tl136139136160%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136137136155%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136139136160%_))
                              (let ((_%e136140136163%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136139136160%_))))
                                (let ((_%hd136141136166%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136140136163%_)))
                                      (_%tl136142136168%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136140136163%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136142136168%_))
                                      (let ((_%e136143136171%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136142136168%_))))
                                        (let ((_%hd136144136174%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136143136171%_)))
                                              (_%tl136145136176%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136143136171%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl136145136176%_))
                                              ((lambda (_%L136179%_
                                                        _%L136180%_)
                                                 (gxc#compile-e__1
                                                  _%self136130%_
                                                  _%L136179%_))
                                               _%hd136144136174%_
                                               _%hd136141136166%_)
                                              (_%g136133136150%_
                                               _%g136134136153%_))))
                                      (_%g136133136150%_ _%g136134136153%_))))
                              (_%g136133136150%_ _%g136134136153%_))))
                      (_%g136133136150%_ _%g136134136153%_)))))
          (_%g136132136195%_ _%stx136131%_))))
    (define gxc#apply-define-values%
      (lambda (_%self136062%_ _%stx136063%_)
        (let* ((_%g136065136082%_
                (lambda (_%g136066136079%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136066136079%_))))
               (_%g136064136127%_
                (lambda (_%g136066136085%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136066136085%_))
                      (let ((_%e136069136087%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136066136085%_))))
                        (let ((_%hd136070136090%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136069136087%_)))
                              (_%tl136071136092%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136069136087%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136071136092%_))
                              (let ((_%e136072136095%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136071136092%_))))
                                (let ((_%hd136073136098%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136072136095%_)))
                                      (_%tl136074136100%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136072136095%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136074136100%_))
                                      (let ((_%e136075136103%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136074136100%_))))
                                        (let ((_%hd136076136106%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136075136103%_)))
                                              (_%tl136077136108%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136075136103%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl136077136108%_))
                                              ((lambda (_%L136111%_
                                                        _%L136112%_)
                                                 (gxc#compile-e__1
                                                  _%self136062%_
                                                  _%L136111%_))
                                               _%hd136076136106%_
                                               _%hd136073136098%_)
                                              (_%g136065136082%_
                                               _%g136066136085%_))))
                                      (_%g136065136082%_ _%g136066136085%_))))
                              (_%g136065136082%_ _%g136066136085%_))))
                      (_%g136065136082%_ _%g136066136085%_)))))
          (_%g136064136127%_ _%stx136063%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self135993%_ _%stx135994%_)
        (let* ((_%g135996136013%_
                (lambda (_%g135997136010%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135997136010%_))))
               (_%g135995136059%_
                (lambda (_%g135997136016%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135997136016%_))
                      (let ((_%e136000136018%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135997136016%_))))
                        (let ((_%hd136001136021%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136000136018%_)))
                              (_%tl136002136023%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136000136018%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136002136023%_))
                              (let ((_%e136003136026%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136002136023%_))))
                                (let ((_%hd136004136029%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136003136026%_)))
                                      (_%tl136005136031%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136003136026%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136005136031%_))
                                      (let ((_%e136006136034%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136005136031%_))))
                                        (let ((_%hd136007136037%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136006136034%_)))
                                              (_%tl136008136039%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136006136034%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl136008136039%_))
                                              ((lambda (_%L136042%_
                                                        _%L136043%_)
                                                 (let ((__tmp136640
                                                        (lambda ()
                                                          (gxc#compile-e__1
                                                           _%self135993%_
                                                           _%L136042%_)))
                                                       (__tmp136638
                                                        (let ((__tmp136639
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp136639 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp136640
                                                    gx#current-expander-phi
                                                    __tmp136638)))
                                               _%hd136007136037%_
                                               _%hd136004136029%_)
                                              (_%g135996136013%_
                                               _%g135997136016%_))))
                                      (_%g135996136013%_ _%g135997136016%_))))
                              (_%g135996136013%_ _%g135997136016%_))))
                      (_%g135996136013%_ _%g135997136016%_)))))
          (_%g135995136059%_ _%stx135994%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self135925%_ _%stx135926%_)
        (let* ((_%g135928135945%_
                (lambda (_%g135929135942%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135929135942%_))))
               (_%g135927135990%_
                (lambda (_%g135929135948%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135929135948%_))
                      (let ((_%e135932135950%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135929135948%_))))
                        (let ((_%hd135933135953%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135932135950%_)))
                              (_%tl135934135955%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135932135950%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135934135955%_))
                              (let ((_%e135935135958%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135934135955%_))))
                                (let ((_%hd135936135961%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135935135958%_)))
                                      (_%tl135937135963%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135935135958%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135937135963%_))
                                      (let ((_%e135938135966%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135937135963%_))))
                                        (let ((_%hd135939135969%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135938135966%_)))
                                              (_%tl135940135971%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135938135966%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135940135971%_))
                                              ((lambda (_%L135974%_
                                                        _%L135975%_)
                                                 (gxc#compile-e__1
                                                  _%self135925%_
                                                  _%L135974%_))
                                               _%hd135939135969%_
                                               _%hd135936135961%_)
                                              (_%g135928135945%_
                                               _%g135929135948%_))))
                                      (_%g135928135945%_ _%g135929135948%_))))
                              (_%g135928135945%_ _%g135929135948%_))))
                      (_%g135928135945%_ _%g135929135948%_)))))
          (_%g135927135990%_ _%stx135926%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self135807%_ _%stx135808%_)
        (let* ((_%g135810135838%_
                (lambda (_%g135811135835%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135811135835%_))))
               (_%g135809135922%_
                (lambda (_%g135811135841%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135811135841%_))
                      (let ((_%e135814135843%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135811135841%_))))
                        (let ((_%hd135815135846%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135814135843%_)))
                              (_%tl135816135848%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135814135843%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl135816135848%_))
                              (let ((_g136641_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl135816135848%_
                                        '0))))
                                (begin
                                  (let ((_g136642_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g136641_)
                                               (##vector-length _g136641_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g136642_ 2)))
                                        (error "Context expects 2 values"
                                               _g136642_)))
                                  (let ((_%target135817135851%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g136641_ 0)))
                                        (_%tl135819135853%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g136641_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl135819135853%_))
                                        (letrec ((_%loop135820135856%_
                                                  (lambda (_%hd135818135859%_
                                                           _%body135824135861%_
                                                           _%hd135825135863%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd135818135859%_))
                                                        (let ((_%e135821135866%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd135818135859%_))))
                  (let ((_%lp-hd135822135869%_
                         (let ()
                           (declare (not safe))
                           (##car _%e135821135866%_)))
                        (_%lp-tl135823135871%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e135821135866%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd135822135869%_))
                        (let ((_%e135828135874%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd135822135869%_))))
                          (let ((_%hd135829135877%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135828135874%_)))
                                (_%tl135830135879%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135828135874%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl135830135879%_))
                                (let ((_%e135831135882%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl135830135879%_))))
                                  (let ((_%hd135832135885%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e135831135882%_)))
                                        (_%tl135833135887%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e135831135882%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl135833135887%_))
                                        (_%loop135820135856%_
                                         _%lp-tl135823135871%_
                                         (cons _%hd135832135885%_
                                               _%body135824135861%_)
                                         (cons _%hd135829135877%_
                                               _%hd135825135863%_))
                                        (_%g135810135838%_
                                         _%g135811135841%_))))
                                (_%g135810135838%_ _%g135811135841%_))))
                        (_%g135810135838%_ _%g135811135841%_))))
                (let ((_%body135826135890%_ (reverse _%body135824135861%_))
                      (_%hd135827135892%_ (reverse _%hd135825135863%_)))
                  ((lambda (_%L135895%_ _%L135896%_)
                     (for-each
                      (lambda (_%g135910135912%_)
                        (gxc#compile-e__1 _%self135807%_ _%g135910135912%_))
                      (let ((__tmp136643
                             (lambda (_%g135914135917%_ _%g135915135919%_)
                               (cons _%g135914135917%_ _%g135915135919%_))))
                        (declare (not safe))
                        (__foldr1 __tmp136643 '() _%L135895%_))))
                   _%body135826135890%_
                   _%hd135827135892%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop135820135856%_
                                           _%target135817135851%_
                                           '()
                                           '()))
                                        (_%g135810135838%_
                                         _%g135811135841%_)))))
                              (_%g135810135838%_ _%g135811135841%_))))
                      (_%g135810135838%_ _%g135811135841%_)))))
          (_%g135809135922%_ _%stx135808%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self135660%_ _%stx135661%_)
        (let* ((_%g135663135698%_
                (lambda (_%g135664135695%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135664135695%_))))
               (_%g135662135804%_
                (lambda (_%g135664135701%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135664135701%_))
                      (let ((_%e135668135703%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135664135701%_))))
                        (let ((_%hd135669135706%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135668135703%_)))
                              (_%tl135670135708%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135668135703%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135670135708%_))
                              (let ((_%e135671135711%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135670135708%_))))
                                (let ((_%hd135672135714%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135671135711%_)))
                                      (_%tl135673135716%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135671135711%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd135672135714%_))
                                      (let ((_g136644_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd135672135714%_
                                                '0))))
                                        (begin
                                          (let ((_g136645_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g136644_)
                                                       (##vector-length
                                                        _g136644_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g136645_ 2)))
                                                (error "Context expects 2 values"
                                                       _g136645_)))
                                          (let ((_%target135674135719%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g136644_ 0)))
                                                (_%tl135676135721%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g136644_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl135676135721%_))
                                                (letrec ((_%loop135677135724%_
                                                          (lambda (_%hd135675135727%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr135681135729%_
                           _%hd135682135731%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd135675135727%_))
                        (let ((_%e135678135734%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd135675135727%_))))
                          (let ((_%lp-hd135679135737%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135678135734%_)))
                                (_%lp-tl135680135739%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135678135734%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd135679135737%_))
                                (let ((_%e135688135742%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd135679135737%_))))
                                  (let ((_%hd135689135745%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e135688135742%_)))
                                        (_%tl135690135747%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e135688135742%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl135690135747%_))
                                        (let ((_%e135691135750%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl135690135747%_))))
                                          (let ((_%hd135692135753%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e135691135750%_)))
                                                (_%tl135693135755%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e135691135750%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl135693135755%_))
                                                (_%loop135677135724%_
                                                 _%lp-tl135680135739%_
                                                 (cons _%hd135692135753%_
                                                       _%expr135681135729%_)
                                                 (cons _%hd135689135745%_
                                                       _%hd135682135731%_))
                                                (_%g135663135698%_
                                                 _%g135664135701%_))))
                                        (_%g135663135698%_
                                         _%g135664135701%_))))
                                (_%g135663135698%_ _%g135664135701%_))))
                        (let ((_%expr135683135758%_
                               (reverse _%expr135681135729%_))
                              (_%hd135684135760%_
                               (reverse _%hd135682135731%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135673135716%_))
                              (let ((_%e135685135763%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135673135716%_))))
                                (let ((_%hd135686135766%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135685135763%_)))
                                      (_%tl135687135768%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135685135763%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl135687135768%_))
                                      ((lambda (_%L135771%_
                                                _%L135772%_
                                                _%L135773%_)
                                         (for-each
                                          (lambda (_%g135792135794%_)
                                            (gxc#compile-e__1
                                             _%self135660%_
                                             _%g135792135794%_))
                                          (let ((__tmp136647
                                                 (lambda (_%g135796135799%_
                                                          _%g135797135801%_)
                                                   (cons _%g135796135799%_
                                                         _%g135797135801%_)))
                                                (__tmp136646
                                                 (cons _%L135771%_ '())))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp136647
                                             __tmp136646
                                             _%L135772%_))))
                                       _%hd135686135766%_
                                       _%expr135683135758%_
                                       _%hd135684135760%_)
                                      (_%g135663135698%_ _%g135664135701%_))))
                              (_%g135663135698%_ _%g135664135701%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop135677135724%_
                                                   _%target135674135719%_
                                                   '()
                                                   '()))
                                                (_%g135663135698%_
                                                 _%g135664135701%_)))))
                                      (_%g135663135698%_ _%g135664135701%_))))
                              (_%g135663135698%_ _%g135664135701%_))))
                      (_%g135663135698%_ _%g135664135701%_)))))
          (_%g135662135804%_ _%stx135661%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self135605%_ _%stx135606%_)
        (let* ((_%g135608135622%_
                (lambda (_%g135609135619%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135609135619%_))))
               (_%g135607135657%_
                (lambda (_%g135609135625%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135609135625%_))
                      (let ((_%e135612135627%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135609135625%_))))
                        (let ((_%hd135613135630%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135612135627%_)))
                              (_%tl135614135632%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135612135627%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135614135632%_))
                              (let ((_%e135615135635%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135614135632%_))))
                                (let ((_%hd135616135638%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135615135635%_)))
                                      (_%tl135617135640%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135615135635%_))))
                                  ((lambda (_%L135643%_ _%L135644%_)
                                     (gxc#compile-e__1
                                      _%self135605%_
                                      (last _%L135643%_)))
                                   _%tl135617135640%_
                                   _%hd135616135638%_)))
                              (_%g135608135622%_ _%g135609135625%_))))
                      (_%g135608135622%_ _%g135609135625%_)))))
          (_%g135607135657%_ _%stx135606%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self135537%_ _%stx135538%_)
        (let* ((_%g135540135557%_
                (lambda (_%g135541135554%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135541135554%_))))
               (_%g135539135602%_
                (lambda (_%g135541135560%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135541135560%_))
                      (let ((_%e135544135562%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135541135560%_))))
                        (let ((_%hd135545135565%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135544135562%_)))
                              (_%tl135546135567%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135544135562%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135546135567%_))
                              (let ((_%e135547135570%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135546135567%_))))
                                (let ((_%hd135548135573%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135547135570%_)))
                                      (_%tl135549135575%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135547135570%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135549135575%_))
                                      (let ((_%e135550135578%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135549135575%_))))
                                        (let ((_%hd135551135581%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135550135578%_)))
                                              (_%tl135552135583%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135550135578%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135552135583%_))
                                              ((lambda (_%L135586%_
                                                        _%L135587%_)
                                                 (gxc#compile-e__1
                                                  _%self135537%_
                                                  _%L135586%_))
                                               _%hd135551135581%_
                                               _%hd135548135573%_)
                                              (_%g135540135557%_
                                               _%g135541135560%_))))
                                      (_%g135540135557%_ _%g135541135560%_))))
                              (_%g135540135557%_ _%g135541135560%_))))
                      (_%g135540135557%_ _%g135541135560%_)))))
          (_%g135539135602%_ _%stx135538%_))))
    (define gxc#apply-operands
      (lambda (_%self135450%_ _%stx135451%_)
        (let* ((_%g135453135472%_
                (lambda (_%g135454135469%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135454135469%_))))
               (_%g135452135534%_
                (lambda (_%g135454135475%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135454135475%_))
                      (let ((_%e135456135477%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135454135475%_))))
                        (let ((_%hd135457135480%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135456135477%_)))
                              (_%tl135458135482%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135456135477%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl135458135482%_))
                              (let ((_g136648_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl135458135482%_
                                        '0))))
                                (begin
                                  (let ((_g136649_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g136648_)
                                               (##vector-length _g136648_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g136649_ 2)))
                                        (error "Context expects 2 values"
                                               _g136649_)))
                                  (let ((_%target135459135485%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g136648_ 0)))
                                        (_%tl135461135487%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g136648_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl135461135487%_))
                                        (letrec ((_%loop135462135490%_
                                                  (lambda (_%hd135460135493%_
                                                           _%rands135466135495%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd135460135493%_))
                                                        (let ((_%e135463135498%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd135460135493%_))))
                  (let ((_%lp-hd135464135501%_
                         (let ()
                           (declare (not safe))
                           (##car _%e135463135498%_)))
                        (_%lp-tl135465135503%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e135463135498%_))))
                    (_%loop135462135490%_
                     _%lp-tl135465135503%_
                     (cons _%lp-hd135464135501%_ _%rands135466135495%_))))
                (let ((_%rands135467135506%_ (reverse _%rands135466135495%_)))
                  ((lambda (_%L135509%_)
                     (for-each
                      (lambda (_%g135522135524%_)
                        (gxc#compile-e__1 _%self135450%_ _%g135522135524%_))
                      (let ((__tmp136650
                             (lambda (_%g135526135529%_ _%g135527135531%_)
                               (cons _%g135526135529%_ _%g135527135531%_))))
                        (declare (not safe))
                        (__foldr1 __tmp136650 '() _%L135509%_))))
                   _%rands135467135506%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop135462135490%_
                                           _%target135459135485%_
                                           '()))
                                        (_%g135453135472%_
                                         _%g135454135475%_)))))
                              (_%g135453135472%_ _%g135454135475%_))))
                      (_%g135453135472%_ _%g135454135475%_)))))
          (_%g135452135534%_ _%stx135451%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx135447%_ _%src-stx135448%_)
        (let ((__tmp136651
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx135448%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx135447%_ __tmp136651))))
    (define gxc#xform-wrap-apply
      (lambda (_%stx135443%_ _%src-stx135444%_ _%ctx135445%_)
        (gxc#compile-e__1
         _%ctx135445%_
         (gxc#xform-wrap-source _%stx135443%_ _%src-stx135444%_))))
    (define gxc#xform-begin%
      (lambda (_%self135398%_ _%stx135399%_)
        (let* ((_%g135401135411%_
                (lambda (_%g135402135408%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135402135408%_))))
               (_%g135400135440%_
                (lambda (_%g135402135414%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135402135414%_))
                      (let ((_%e135404135416%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135402135414%_))))
                        (let ((_%hd135405135419%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135404135416%_)))
                              (_%tl135406135421%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135404135416%_))))
                          ((lambda (_%L135424%_)
                             (let ((_%forms135438%_
                                    (map (lambda (_%g135433135435%_)
                                           (gxc#compile-e__1
                                            _%self135398%_
                                            _%g135433135435%_))
                                         _%L135424%_)))
                               (gxc#xform-wrap-source
                                (cons '%#begin _%forms135438%_)
                                _%stx135399%_)))
                           _%tl135406135421%_)))
                      (_%g135401135411%_ _%g135402135414%_)))))
          (_%g135400135440%_ _%stx135399%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self135352%_ _%stx135353%_)
        (let* ((_%g135355135365%_
                (lambda (_%g135356135362%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135356135362%_))))
               (_%g135354135395%_
                (lambda (_%g135356135368%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135356135368%_))
                      (let ((_%e135358135370%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135356135368%_))))
                        (let ((_%hd135359135373%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135358135370%_)))
                              (_%tl135360135375%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135358135370%_))))
                          ((lambda (_%L135378%_)
                             (let ((__tmp136654
                                    (lambda ()
                                      (let ((_%forms135393%_
                                             (map (lambda (_%g135388135390%_)
                                                    (gxc#compile-e__1
                                                     _%self135352%_
                                                     _%g135388135390%_))
                                                  _%L135378%_)))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin-syntax _%forms135393%_)
                                         _%stx135353%_))))
                                   (__tmp136652
                                    (let ((__tmp136653
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp136653 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp136654
                                gx#current-expander-phi
                                __tmp136652)))
                           _%tl135360135375%_)))
                      (_%g135355135365%_ _%g135356135368%_)))))
          (_%g135354135395%_ _%stx135353%_))))
    (define gxc#xform-module%
      (lambda (_%self135289%_ _%stx135290%_)
        (let* ((_%g135292135306%_
                (lambda (_%g135293135303%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135293135303%_))))
               (_%g135291135349%_
                (lambda (_%g135293135309%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135293135309%_))
                      (let ((_%e135296135311%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135293135309%_))))
                        (let ((_%hd135297135314%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135296135311%_)))
                              (_%tl135298135316%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135296135311%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135298135316%_))
                              (let ((_%e135299135319%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135298135316%_))))
                                (let ((_%hd135300135322%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135299135319%_)))
                                      (_%tl135301135324%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135299135319%_))))
                                  ((lambda (_%L135327%_ _%L135328%_)
                                     (let* ((_%ctx135341%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L135328%_)))
                                            (_%code135343%_
                                             (##structure-ref
                                              _%ctx135341%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code135346%_
                                             (let ((__tmp136655
                                                    (lambda ()
                                                      (gxc#compile-e__1
                                                       _%self135289%_
                                                       _%code135343%_))))
                                               (declare (not safe))
                                               (__call-with-parameters
                                                __tmp136655
                                                gx#current-expander-context
                                                _%ctx135341%_))))
                                       (##structure-set!
                                        _%ctx135341%_
                                        _%code135346%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _%L135328%_
                                                    (cons _%code135346%_ '())))
                                        _%stx135290%_)))
                                   _%tl135301135324%_
                                   _%hd135300135322%_)))
                              (_%g135292135306%_ _%g135293135309%_))))
                      (_%g135292135306%_ _%g135293135309%_)))))
          (_%g135291135349%_ _%stx135290%_))))
    (define gxc#xform-define-values%
      (lambda (_%self135219%_ _%stx135220%_)
        (let* ((_%g135222135239%_
                (lambda (_%g135223135236%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135223135236%_))))
               (_%g135221135286%_
                (lambda (_%g135223135242%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135223135242%_))
                      (let ((_%e135226135244%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135223135242%_))))
                        (let ((_%hd135227135247%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135226135244%_)))
                              (_%tl135228135249%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135226135244%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135228135249%_))
                              (let ((_%e135229135252%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135228135249%_))))
                                (let ((_%hd135230135255%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135229135252%_)))
                                      (_%tl135231135257%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135229135252%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135231135257%_))
                                      (let ((_%e135232135260%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135231135257%_))))
                                        (let ((_%hd135233135263%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135232135260%_)))
                                              (_%tl135234135265%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135232135260%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135234135265%_))
                                              ((lambda (_%L135268%_
                                                        _%L135269%_)
                                                 (let ((_%expr135284%_
                                                        (gxc#compile-e__1
                                                         _%self135219%_
                                                         _%L135268%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons _%L135269%_
                                                                (cons _%expr135284%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx135220%_)))
                                               _%hd135233135263%_
                                               _%hd135230135255%_)
                                              (_%g135222135239%_
                                               _%g135223135242%_))))
                                      (_%g135222135239%_ _%g135223135242%_))))
                              (_%g135222135239%_ _%g135223135242%_))))
                      (_%g135222135239%_ _%g135223135242%_)))))
          (_%g135221135286%_ _%stx135220%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self135148%_ _%stx135149%_)
        (let* ((_%g135151135168%_
                (lambda (_%g135152135165%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135152135165%_))))
               (_%g135150135216%_
                (lambda (_%g135152135171%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135152135171%_))
                      (let ((_%e135155135173%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135152135171%_))))
                        (let ((_%hd135156135176%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135155135173%_)))
                              (_%tl135157135178%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135155135173%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135157135178%_))
                              (let ((_%e135158135181%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135157135178%_))))
                                (let ((_%hd135159135184%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135158135181%_)))
                                      (_%tl135160135186%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135158135181%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135160135186%_))
                                      (let ((_%e135161135189%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135160135186%_))))
                                        (let ((_%hd135162135192%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135161135189%_)))
                                              (_%tl135163135194%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135161135189%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135163135194%_))
                                              ((lambda (_%L135197%_
                                                        _%L135198%_)
                                                 (let ((__tmp136658
                                                        (lambda ()
                                                          (let ((_%expr135214%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#compile-e__1 _%self135148%_ _%L135197%_)))
                    (gxc#xform-wrap-source
                     (cons '%#define-syntax
                           (cons _%L135198%_ (cons _%expr135214%_ '())))
                     _%stx135149%_))))
               (__tmp136656
                (let ((__tmp136657
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp136657 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp136658
                                                    gx#current-expander-phi
                                                    __tmp136656)))
                                               _%hd135162135192%_
                                               _%hd135159135184%_)
                                              (_%g135151135168%_
                                               _%g135152135171%_))))
                                      (_%g135151135168%_ _%g135152135171%_))))
                              (_%g135151135168%_ _%g135152135171%_))))
                      (_%g135151135168%_ _%g135152135171%_)))))
          (_%g135150135216%_ _%stx135149%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self135078%_ _%stx135079%_)
        (let* ((_%g135081135098%_
                (lambda (_%g135082135095%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135082135095%_))))
               (_%g135080135145%_
                (lambda (_%g135082135101%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135082135101%_))
                      (let ((_%e135085135103%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135082135101%_))))
                        (let ((_%hd135086135106%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135085135103%_)))
                              (_%tl135087135108%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135085135103%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135087135108%_))
                              (let ((_%e135088135111%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135087135108%_))))
                                (let ((_%hd135089135114%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135088135111%_)))
                                      (_%tl135090135116%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135088135111%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135090135116%_))
                                      (let ((_%e135091135119%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135090135116%_))))
                                        (let ((_%hd135092135122%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135091135119%_)))
                                              (_%tl135093135124%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135091135119%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135093135124%_))
                                              ((lambda (_%L135127%_
                                                        _%L135128%_)
                                                 (let ((_%expr135143%_
                                                        (gxc#compile-e__1
                                                         _%self135078%_
                                                         _%L135127%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#begin-annotation
                                                          (cons _%L135128%_
                                                                (cons _%expr135143%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx135079%_)))
                                               _%hd135092135122%_
                                               _%hd135089135114%_)
                                              (_%g135081135098%_
                                               _%g135082135101%_))))
                                      (_%g135081135098%_ _%g135082135101%_))))
                              (_%g135081135098%_ _%g135082135101%_))))
                      (_%g135081135098%_ _%g135082135101%_)))))
          (_%g135080135145%_ _%stx135079%_))))
    (define gxc#xform-lambda%
      (lambda (_%self135016%_ _%stx135017%_)
        (let* ((_%g135019135033%_
                (lambda (_%g135020135030%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135020135030%_))))
               (_%g135018135075%_
                (lambda (_%g135020135036%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135020135036%_))
                      (let ((_%e135023135038%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135020135036%_))))
                        (let ((_%hd135024135041%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135023135038%_)))
                              (_%tl135025135043%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135023135038%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135025135043%_))
                              (let ((_%e135026135046%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135025135043%_))))
                                (let ((_%hd135027135049%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135026135046%_)))
                                      (_%tl135028135051%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135026135046%_))))
                                  ((lambda (_%L135054%_ _%L135055%_)
                                     (let ((__tmp136660
                                            (lambda ()
                                              (let ((_%body135073%_
                                                     (map (lambda (_%g135068135070%_)
                                                            (gxc#compile-e__1
                                                             _%self135016%_
                                                             _%g135068135070%_))
                                                          _%L135054%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#lambda
                                                       (cons _%L135055%_
                                                             _%body135073%_))
                                                 _%stx135017%_))))
                                           (__tmp136659
                                            (gxc#xform-let-locals
                                             _%L135055%_)))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp136660
                                        gxc#current-compile-local-env
                                        __tmp136659)))
                                   _%tl135028135051%_
                                   _%hd135027135049%_)))
                              (_%g135019135033%_ _%g135020135036%_))))
                      (_%g135019135033%_ _%g135020135036%_)))))
          (_%g135018135075%_ _%stx135017%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self134924%_ _%stx134925%_)
        (letrec ((_%clause-e134927%_
                  (lambda (_%clause134968%_)
                    (let* ((_%g134970134981%_
                            (lambda (_%g134971134978%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g134971134978%_))))
                           (_%g134969135013%_
                            (lambda (_%g134971134984%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g134971134984%_))
                                  (let ((_%e134974134986%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g134971134984%_))))
                                    (let ((_%hd134975134989%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e134974134986%_)))
                                          (_%tl134976134991%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e134974134986%_))))
                                      ((lambda (_%L134994%_ _%L134995%_)
                                         (let ((__tmp136662
                                                (lambda ()
                                                  (let ((_%body135011%_
                                                         (map (lambda (_%g135006135008%_)
                                                                (gxc#compile-e__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%self134924%_
                         _%g135006135008%_))
                      _%L134994%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%L134995%_
                                                          _%body135011%_))))
                                               (__tmp136661
                                                (gxc#xform-let-locals
                                                 _%L134995%_)))
                                           (declare (not safe))
                                           (__call-with-parameters
                                            __tmp136662
                                            gxc#current-compile-local-env
                                            __tmp136661)))
                                       _%tl134976134991%_
                                       _%hd134975134989%_)))
                                  (_%g134970134981%_ _%g134971134984%_)))))
                      (_%g134969135013%_ _%clause134968%_)))))
          (let* ((_%g134929134939%_
                  (lambda (_%g134930134936%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g134930134936%_))))
                 (_%g134928134965%_
                  (lambda (_%g134930134942%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g134930134942%_))
                        (let ((_%e134932134944%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g134930134942%_))))
                          (let ((_%hd134933134947%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e134932134944%_)))
                                (_%tl134934134949%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e134932134944%_))))
                            ((lambda (_%L134952%_)
                               (let ((_%clauses134963%_
                                      (map _%clause-e134927%_ _%L134952%_)))
                                 (gxc#xform-wrap-source
                                  (cons '%#case-lambda _%clauses134963%_)
                                  _%stx134925%_)))
                             _%tl134934134949%_)))
                        (_%g134929134939%_ _%g134930134942%_)))))
            (_%g134928134965%_ _%stx134925%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self134678%_ _%stx134679%_)
        (let* ((_%g134681134714%_
                (lambda (_%g134682134711%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134682134711%_))))
               (_%g134680134921%_
                (lambda (_%g134682134717%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134682134717%_))
                      (let ((_%e134687134719%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134682134717%_))))
                        (let ((_%hd134688134722%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134687134719%_)))
                              (_%tl134689134724%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134687134719%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134689134724%_))
                              (let ((_%e134690134727%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134689134724%_))))
                                (let ((_%hd134691134730%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134690134727%_)))
                                      (_%tl134692134732%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134690134727%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd134691134730%_))
                                      (let ((_g136663_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd134691134730%_
                                                '0))))
                                        (begin
                                          (let ((_g136664_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g136663_)
                                                       (##vector-length
                                                        _g136663_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g136664_ 2)))
                                                (error "Context expects 2 values"
                                                       _g136664_)))
                                          (let ((_%target134693134735%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g136663_ 0)))
                                                (_%tl134695134737%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g136663_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl134695134737%_))
                                                (letrec ((_%loop134696134740%_
                                                          (lambda (_%hd134694134743%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr134700134745%_
                           _%hd134701134747%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd134694134743%_))
                        (let ((_%e134697134750%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd134694134743%_))))
                          (let ((_%lp-hd134698134753%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e134697134750%_)))
                                (_%lp-tl134699134755%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e134697134750%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd134698134753%_))
                                (let ((_%e134704134758%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd134698134753%_))))
                                  (let ((_%hd134705134761%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e134704134758%_)))
                                        (_%tl134706134763%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e134704134758%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl134706134763%_))
                                        (let ((_%e134707134766%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl134706134763%_))))
                                          (let ((_%hd134708134769%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e134707134766%_)))
                                                (_%tl134709134771%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e134707134766%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl134709134771%_))
                                                (_%loop134696134740%_
                                                 _%lp-tl134699134755%_
                                                 (cons _%hd134708134769%_
                                                       _%expr134700134745%_)
                                                 (cons _%hd134705134761%_
                                                       _%hd134701134747%_))
                                                (_%g134681134714%_
                                                 _%g134682134717%_))))
                                        (_%g134681134714%_
                                         _%g134682134717%_))))
                                (_%g134681134714%_ _%g134682134717%_))))
                        (let ((_%expr134702134774%_
                               (reverse _%expr134700134745%_))
                              (_%hd134703134776%_
                               (reverse _%hd134701134747%_)))
                          ((lambda (_%L134779%_
                                    _%L134780%_
                                    _%L134781%_
                                    _%L134782%_)
                             (let* ((_%g134801134817%_
                                     (lambda (_%g134802134814%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g134802134814%_))))
                                    (_%g134800134907%_
                                     (lambda (_%g134802134820%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g134802134820%_))
                                           (let ((_g136665_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g134802134820%_
                                                     '0))))
                                             (begin
                                               (let ((_g136666_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g136665_)
                                                            (##vector-length
                                                             _g136665_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g136666_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g136666_)))
                                               (let ((_%target134804134822%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g136665_
                                                         0)))
                                                     (_%tl134806134824%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g136665_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl134806134824%_))
                                                     (letrec ((_%loop134807134827%_
                                                               (lambda (_%hd134805134830%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr134811134832%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd134805134830%_))
                             (let ((_%e134808134835%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd134805134830%_))))
                               (let ((_%lp-hd134809134838%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e134808134835%_)))
                                     (_%lp-tl134810134840%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e134808134835%_))))
                                 (_%loop134807134827%_
                                  _%lp-tl134810134840%_
                                  (cons _%lp-hd134809134838%_
                                        _%expr134811134832%_))))
                             (let ((_%expr134812134843%_
                                    (reverse _%expr134811134832%_)))
                               ((lambda (_%L134846%_)
                                  (let ((__tmp136669
                                         (lambda ()
                                           (let* ((_%g134860134867%_
                                                   (lambda (_%g134861134864%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g134861134864%_))))
                                                  (_%g134859134893%_
                                                   (lambda (_%g134861134870%_)
                                                     ((lambda (_%L134872%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L134782%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L134846%_
                                  _%L134781%_))
                               (let ((__tmp136670
                                      (lambda (_%g134882134886%_
                                               _%g134883134888%_
                                               _%g134884134890%_)
                                        (cons (cons _%g134883134888%_
                                                    (cons _%g134882134886%_
                                                          '()))
                                              _%g134884134890%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp136670
                                  '()
                                  _%L134846%_
                                  _%L134781%_)))
                             _%L134872%_))
                 _%stx134679%_))
              _%g134861134870%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g134859134893%_
                                              (map (lambda (_%g134895134897%_)
                                                     (gxc#compile-e__1
                                                      _%self134678%_
                                                      _%g134895134897%_))
                                                   _%L134779%_)))))
                                        (__tmp136667
                                         (gxc#xform-let-locals
                                          (let ((__tmp136668
                                                 (lambda (_%g134899134902%_
                                                          _%g134900134904%_)
                                                   (cons _%g134899134902%_
                                                         _%g134900134904%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp136668
                                             '()
                                             _%L134781%_)))))
                                    (declare (not safe))
                                    (__call-with-parameters
                                     __tmp136669
                                     gxc#current-compile-local-env
                                     __tmp136667)))
                                _%expr134812134843%_))))))
               (_%loop134807134827%_ _%target134804134822%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g134801134817%_
                                                      _%g134802134820%_)))))
                                           (_%g134801134817%_
                                            _%g134802134820%_)))))
                               (_%g134800134907%_
                                (map (lambda (_%g134909134911%_)
                                       (gxc#compile-e__1
                                        _%self134678%_
                                        _%g134909134911%_))
                                     (let ((__tmp136671
                                            (lambda (_%g134913134916%_
                                                     _%g134914134918%_)
                                              (cons _%g134913134916%_
                                                    _%g134914134918%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp136671
                                        '()
                                        _%L134780%_))))))
                           _%tl134692134732%_
                           _%expr134702134774%_
                           _%hd134703134776%_
                           _%hd134688134722%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop134696134740%_
                                                   _%target134693134735%_
                                                   '()
                                                   '()))
                                                (_%g134681134714%_
                                                 _%g134682134717%_)))))
                                      (_%g134681134714%_ _%g134682134717%_))))
                              (_%g134681134714%_ _%g134682134717%_))))
                      (_%g134681134714%_ _%g134682134717%_)))))
          (_%g134680134921%_ _%stx134679%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self134432%_ _%stx134433%_)
        (let* ((_%g134435134468%_
                (lambda (_%g134436134465%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134436134465%_))))
               (_%g134434134675%_
                (lambda (_%g134436134471%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134436134471%_))
                      (let ((_%e134441134473%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134436134471%_))))
                        (let ((_%hd134442134476%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134441134473%_)))
                              (_%tl134443134478%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134441134473%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134443134478%_))
                              (let ((_%e134444134481%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134443134478%_))))
                                (let ((_%hd134445134484%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134444134481%_)))
                                      (_%tl134446134486%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134444134481%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd134445134484%_))
                                      (let ((_g136672_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd134445134484%_
                                                '0))))
                                        (begin
                                          (let ((_g136673_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g136672_)
                                                       (##vector-length
                                                        _g136672_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g136673_ 2)))
                                                (error "Context expects 2 values"
                                                       _g136673_)))
                                          (let ((_%target134447134489%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g136672_ 0)))
                                                (_%tl134449134491%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g136672_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl134449134491%_))
                                                (letrec ((_%loop134450134494%_
                                                          (lambda (_%hd134448134497%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr134454134499%_
                           _%hd134455134501%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd134448134497%_))
                        (let ((_%e134451134504%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd134448134497%_))))
                          (let ((_%lp-hd134452134507%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e134451134504%_)))
                                (_%lp-tl134453134509%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e134451134504%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd134452134507%_))
                                (let ((_%e134458134512%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd134452134507%_))))
                                  (let ((_%hd134459134515%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e134458134512%_)))
                                        (_%tl134460134517%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e134458134512%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl134460134517%_))
                                        (let ((_%e134461134520%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl134460134517%_))))
                                          (let ((_%hd134462134523%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e134461134520%_)))
                                                (_%tl134463134525%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e134461134520%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl134463134525%_))
                                                (_%loop134450134494%_
                                                 _%lp-tl134453134509%_
                                                 (cons _%hd134462134523%_
                                                       _%expr134454134499%_)
                                                 (cons _%hd134459134515%_
                                                       _%hd134455134501%_))
                                                (_%g134435134468%_
                                                 _%g134436134471%_))))
                                        (_%g134435134468%_
                                         _%g134436134471%_))))
                                (_%g134435134468%_ _%g134436134471%_))))
                        (let ((_%expr134456134528%_
                               (reverse _%expr134454134499%_))
                              (_%hd134457134530%_
                               (reverse _%hd134455134501%_)))
                          ((lambda (_%L134533%_
                                    _%L134534%_
                                    _%L134535%_
                                    _%L134536%_)
                             (let ((__tmp136676
                                    (lambda ()
                                      (let* ((_%g134556134572%_
                                              (lambda (_%g134557134569%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g134557134569%_))))
                                             (_%g134555134654%_
                                              (lambda (_%g134557134575%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g134557134575%_))
                                                    (let ((_g136677_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g134557134575%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g136678_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g136677_)
                             (##vector-length _g136677_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g136678_ 2)))
                      (error "Context expects 2 values" _g136678_)))
                (let ((_%target134559134577%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g136677_ 0)))
                      (_%tl134561134579%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g136677_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl134561134579%_))
                      (letrec ((_%loop134562134582%_
                                (lambda (_%hd134560134585%_
                                         _%expr134566134587%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd134560134585%_))
                                      (let ((_%e134563134590%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd134560134585%_))))
                                        (let ((_%lp-hd134564134593%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134563134590%_)))
                                              (_%lp-tl134565134595%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134563134590%_))))
                                          (_%loop134562134582%_
                                           _%lp-tl134565134595%_
                                           (cons _%lp-hd134564134593%_
                                                 _%expr134566134587%_))))
                                      (let ((_%expr134567134598%_
                                             (reverse _%expr134566134587%_)))
                                        ((lambda (_%L134601%_)
                                           (let* ((_%g134615134622%_
                                                   (lambda (_%g134616134619%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g134616134619%_))))
                                                  (_%g134614134647%_
                                                   (lambda (_%g134616134625%_)
                                                     ((lambda (_%L134627%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L134536%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L134601%_
                                  _%L134535%_))
                               (let ((__tmp136679
                                      (lambda (_%g134636134640%_
                                               _%g134637134642%_
                                               _%g134638134644%_)
                                        (cons (cons _%g134637134642%_
                                                    (cons _%g134636134640%_
                                                          '()))
                                              _%g134638134644%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp136679
                                  '()
                                  _%L134601%_
                                  _%L134535%_)))
                             _%L134627%_))
                 _%stx134433%_))
              _%g134616134625%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g134614134647%_
                                              (map (lambda (_%g134649134651%_)
                                                     (gxc#compile-e__1
                                                      _%self134432%_
                                                      _%g134649134651%_))
                                                   _%L134533%_))))
                                         _%expr134567134598%_))))))
                        (_%loop134562134582%_ _%target134559134577%_ '()))
                      (_%g134556134572%_ _%g134557134575%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g134556134572%_
                                                     _%g134557134575%_)))))
                                        (_%g134555134654%_
                                         (map (lambda (_%g134656134658%_)
                                                (gxc#compile-e__1
                                                 _%self134432%_
                                                 _%g134656134658%_))
                                              (let ((__tmp136680
                                                     (lambda (_%g134660134663%_
                                                              _%g134661134665%_)
                                                       (cons _%g134660134663%_
                                                             _%g134661134665%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp136680
                                                 '()
                                                 _%L134534%_)))))))
                                   (__tmp136674
                                    (gxc#xform-let-locals
                                     (let ((__tmp136675
                                            (lambda (_%g134667134670%_
                                                     _%g134668134672%_)
                                              (cons _%g134667134670%_
                                                    _%g134668134672%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp136675
                                        '()
                                        _%L134535%_)))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp136676
                                gxc#current-compile-local-env
                                __tmp136674)))
                           _%tl134446134486%_
                           _%expr134456134528%_
                           _%hd134457134530%_
                           _%hd134442134476%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop134450134494%_
                                                   _%target134447134489%_
                                                   '()
                                                   '()))
                                                (_%g134435134468%_
                                                 _%g134436134471%_)))))
                                      (_%g134435134468%_ _%g134436134471%_))))
                              (_%g134435134468%_ _%g134436134471%_))))
                      (_%g134435134468%_ _%g134436134471%_)))))
          (_%g134434134675%_ _%stx134433%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings134299%_)
        (letrec ((_%flatten134301%_
                  (lambda (_%maybe-lst134359%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%maybe-lst134359%_))
                        (cons _%maybe-lst134359%_ '())
                        (let _%loop134361%_ ((_%rest134363%_
                                              _%maybe-lst134359%_)
                                             (_%result134364%_ '()))
                          (let* ((_%__stx136568136569%_ _%rest134363%_)
                                 (_%g134368134380%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx136568136569%_)))))
                            (let ((_%__kont136570136571%_
                                   (lambda (_%L134418%_ _%L134419%_)
                                     (_%loop134361%_
                                      _%L134418%_
                                      (let ((__tmp136681
                                             (_%flatten134301%_ _%L134419%_)))
                                        (declare (not safe))
                                        (__foldl1
                                         cons
                                         _%result134364%_
                                         __tmp136681)))))
                                  (_%__kont136572136573%_
                                   (lambda (_%L134392%_)
                                     (cons _%L134392%_ _%result134364%_)))
                                  (_%__kont136574136575%_
                                   (lambda () _%result134364%_)))
                              (let ((_%g134366134405%_
                                     (lambda ()
                                       (let ((_%L134392%_
                                              _%__stx136568136569%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L134392%_))
                                             (_%__kont136572136573%_
                                              _%L134392%_)
                                             (_%__kont136574136575%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx136568136569%_))
                                    (let ((_%e134372134410%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx136568136569%_))))
                                      (let ((_%tl134374134415%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e134372134410%_)))
                                            (_%hd134373134413%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e134372134410%_))))
                                        (_%__kont136570136571%_
                                         _%tl134374134415%_
                                         _%hd134373134413%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g134366134405%_)))))))))))
          (let _%loop134303%_ ((_%rest134305%_
                                (_%flatten134301%_ _%bindings134299%_))
                               (_%locals134306%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-local-env))))
            (let* ((_%rest134307134318%_ _%rest134305%_)
                   (_%E134311134322%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching"
                               _%rest134307134318%_
                               '([(? identifier? id) . rest])
                               '((? identifier? id))
                               '(_)))
                      '#!void)))
              (let ((_%K134314134347%_
                     (lambda (_%rest134344%_ _%id134345%_)
                       (_%loop134303%_
                        _%rest134344%_
                        (cons (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _%id134345%_))
                              _%locals134306%_))))
                    (_%K134313134336%_
                     (lambda (_%id134334%_)
                       (cons (let ()
                               (declare (not safe))
                               (gxc#identifier-symbol _%id134334%_))
                             _%locals134306%_)))
                    (_%K134312134327%_ (lambda () _%locals134306%_)))
                (let ((_%try-match134309134341%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%rest134307134318%_))
                             (let ((_%id134339%_ _%rest134307134318%_))
                               (_%K134313134336%_ _%id134339%_))
                             (_%K134312134327%_)))))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%rest134307134318%_))
                      (let ((_%tl134316134352%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest134307134318%_)))
                            (_%hd134315134350%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest134307134318%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd134315134350%_))
                            (let ((_%id134355%_ _%hd134315134350%_)
                                  (_%rest134357%_ _%tl134316134352%_))
                              (_%K134314134347%_ _%rest134357%_ _%id134355%_))
                            (_%K134312134327%_)))
                      (_%try-match134309134341%_)))))))))
    (define gxc#xform-operands
      (lambda (_%self134251%_ _%stx134252%_)
        (let* ((_%g134254134265%_
                (lambda (_%g134255134262%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134255134262%_))))
               (_%g134253134296%_
                (lambda (_%g134255134268%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134255134268%_))
                      (let ((_%e134258134270%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134255134268%_))))
                        (let ((_%hd134259134273%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134258134270%_)))
                              (_%tl134260134275%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134258134270%_))))
                          ((lambda (_%L134278%_ _%L134279%_)
                             (let ((_%rands134294%_
                                    (map (lambda (_%g134289134291%_)
                                           (gxc#compile-e__1
                                            _%self134251%_
                                            _%g134289134291%_))
                                         _%L134278%_)))
                               (gxc#xform-wrap-source
                                (cons _%L134279%_ _%rands134294%_)
                                _%stx134252%_)))
                           _%tl134260134275%_
                           _%hd134259134273%_)))
                      (_%g134254134265%_ _%g134255134268%_)))))
          (_%g134253134296%_ _%stx134252%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self134181%_ _%stx134182%_)
        (let* ((_%g134184134201%_
                (lambda (_%g134185134198%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134185134198%_))))
               (_%g134183134248%_
                (lambda (_%g134185134204%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134185134204%_))
                      (let ((_%e134188134206%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134185134204%_))))
                        (let ((_%hd134189134209%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134188134206%_)))
                              (_%tl134190134211%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134188134206%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134190134211%_))
                              (let ((_%e134191134214%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134190134211%_))))
                                (let ((_%hd134192134217%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134191134214%_)))
                                      (_%tl134193134219%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134191134214%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134193134219%_))
                                      (let ((_%e134194134222%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134193134219%_))))
                                        (let ((_%hd134195134225%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134194134222%_)))
                                              (_%tl134196134227%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134194134222%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl134196134227%_))
                                              ((lambda (_%L134230%_
                                                        _%L134231%_)
                                                 (let ((_%expr134246%_
                                                        (gxc#compile-e__1
                                                         _%self134181%_
                                                         _%L134230%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _%L134231%_
                                                                (cons _%expr134246%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx134182%_)))
                                               _%hd134195134225%_
                                               _%hd134192134217%_)
                                              (_%g134184134201%_
                                               _%g134185134204%_))))
                                      (_%g134184134201%_ _%g134185134204%_))))
                              (_%g134184134201%_ _%g134185134204%_))))
                      (_%g134184134201%_ _%g134185134204%_)))))
          (_%g134183134248%_ _%stx134182%_))))))
