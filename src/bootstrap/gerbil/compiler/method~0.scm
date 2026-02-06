(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1770405374)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx191424%_)
        (let* ((_%self191426%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e191428%_
                (let ((__tmp191646 (gxc#stx-car-e _%stx191424%_)))
                  (declare (not safe))
                  (method-ref _%self191426%_ __tmp191646))))
          (if _%$e191428%_
              ((lambda (_%method191431%_)
                 (declare (not safe))
                 (let ((_%$e191434%_ (gx#stx-source _%stx191424%_)))
                   (if _%$e191434%_
                       ((lambda (_%source191437%_)
                          (call-with-parameters__1
                           (lambda ()
                             (_%method191431%_ _%self191426%_ _%stx191424%_))
                           gxc#current-compile-context
                           (cons (cons '@ (cons _%source191437%_ '()))
                                 (let ((_%$e191441%_
                                        (gxc#current-compile-context)))
                                   (if _%$e191441%_ _%$e191441%_ '())))))
                        _%$e191434%_)
                       (_%method191431%_ _%self191426%_ _%stx191424%_))))
               _%$e191428%_)
              (let ((__tmp191648 (gxc#stx-car-e _%stx191424%_))
                    (__tmp191647
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx191424%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self191426%_
                       __tmp191648
                       __tmp191647))))))
    (define gxc#compile-e__1
      (lambda (_%self191446%_ _%stx191447%_)
        (let ((_%$e191449%_
               (let ((__tmp191649 (gxc#stx-car-e _%stx191447%_)))
                 (declare (not safe))
                 (method-ref _%self191446%_ __tmp191649))))
          (if _%$e191449%_
              ((lambda (_%method191452%_)
                 (declare (not safe))
                 (let ((_%$e191455%_ (gx#stx-source _%stx191447%_)))
                   (if _%$e191455%_
                       ((lambda (_%source191458%_)
                          (call-with-parameters__1
                           (lambda ()
                             (_%method191452%_ _%self191446%_ _%stx191447%_))
                           gxc#current-compile-context
                           (cons (cons '@ (cons _%source191458%_ '()))
                                 (let ((_%$e191462%_
                                        (gxc#current-compile-context)))
                                   (if _%$e191462%_ _%$e191462%_ '())))))
                        _%$e191455%_)
                       (_%method191452%_ _%self191446%_ _%stx191447%_))))
               _%$e191449%_)
              (let ((__tmp191651 (gxc#stx-car-e _%stx191447%_))
                    (__tmp191650
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx191447%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self191446%_
                       __tmp191651
                       __tmp191650))))))
    (define gxc#compile-e
      (lambda _g191652_
        (let ((_g191653_ (let () (declare (not safe)) (##length _g191652_))))
          (cond ((let () (declare (not safe)) (##fx= _g191653_ 1))
                 (apply gxc#compile-e__0 _g191652_))
                ((let () (declare (not safe)) (##fx= _g191653_ 2))
                 (apply gxc#compile-e__1 _g191652_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g191652_))))))
    (define gxc#stx-car-e
      (lambda (_%stx191422%_)
        (let ((__tmp191654
               (car (let () (declare (not safe)) (gx#stx-e _%stx191422%_)))))
          (declare (not safe))
          (gx#stx-e __tmp191654))))
    (define gxc#void-method (lambda (_%self191419%_ _%stx191420%_) '#!void))
    (define gxc#false-method (lambda (_%self191416%_ _%stx191417%_) '#f))
    (define gxc#true-method (lambda (_%self191413%_ _%stx191414%_) '#t))
    (define gxc#identity-method
      (lambda (_%self191410%_ _%stx191411%_) _%stx191411%_))
    (define gxc#::void-expression::t
      (let ((__tmp191655 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp191655
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args191407%_
        (apply make-instance gxc#::void-expression::t _%$args191407%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp191656
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
        (__make-atomic-promise __tmp191656)))
    (define gxc#::void-special-form::t
      (let ((__tmp191657 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp191657
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args191403%_
        (apply make-instance gxc#::void-special-form::t _%$args191403%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp191658
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
        (__make-atomic-promise __tmp191658)))
    (define gxc#::void::t
      (let ((__tmp191659
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp191659 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args191399%_
        (apply make-instance gxc#::void::t _%$args191399%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp191660
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp191660)))
    (define gxc#::false-expression::t
      (let ((__tmp191661 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp191661
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args191395%_
        (apply make-instance gxc#::false-expression::t _%$args191395%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp191662
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
        (__make-atomic-promise __tmp191662)))
    (define gxc#::false-special-form::t
      (let ((__tmp191663 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp191663
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args191391%_
        (apply make-instance gxc#::false-special-form::t _%$args191391%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp191664
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
        (__make-atomic-promise __tmp191664)))
    (define gxc#::false::t
      (let ((__tmp191665
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp191665 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args191387%_
        (apply make-instance gxc#::false::t _%$args191387%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp191666
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp191666)))
    (define gxc#::identity-expression::t
      (let ((__tmp191667 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp191667
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args191383%_
        (apply make-instance gxc#::identity-expression::t _%$args191383%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp191668
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
        (__make-atomic-promise __tmp191668)))
    (define gxc#::identity-special-form::t
      (let ((__tmp191669 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp191669
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args191379%_
        (apply make-instance gxc#::identity-special-form::t _%$args191379%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp191670
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
        (__make-atomic-promise __tmp191670)))
    (define gxc#::identity::t
      (let ((__tmp191671
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp191671
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args191375%_
        (apply make-instance gxc#::identity::t _%$args191375%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp191672
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp191672)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp191673 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp191673
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args191371%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args191371%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp191674
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
        (__make-atomic-promise __tmp191674)))
    (define gxc#::basic-xform::t
      (let ((__tmp191675
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp191675
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args191367%_
        (apply make-instance gxc#::basic-xform::t _%$args191367%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp191676
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
        (__make-atomic-promise __tmp191676)))
    (define gxc#apply-begin%
      (lambda (_%self191323%_ _%stx191324%_)
        (let* ((_%g191326191336%_
                (lambda (_%g191327191333%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g191327191333%_))))
               (_%g191325191363%_
                (lambda (_%g191327191339%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g191327191339%_))
                      (let ((_%e191329191341%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g191327191339%_))))
                        (let ((_%hd191330191344%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191329191341%_)))
                              (_%tl191331191346%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191329191341%_))))
                          ((lambda (_%g191328191349%_)
                             (for-each
                              (lambda (_%g191358191360%_)
                                (gxc#compile-e__1
                                 _%self191323%_
                                 _%g191358191360%_))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%g191328191349%_))))
                           _%tl191331191346%_)))
                      (_%g191326191336%_ _%g191327191339%_)))))
          (_%g191325191363%_ _%stx191324%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self191284%_ _%stx191285%_)
        (let* ((_%g191287191297%_
                (lambda (_%g191288191294%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g191288191294%_))))
               (_%g191286191320%_
                (lambda (_%g191288191300%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g191288191300%_))
                      (let ((_%e191290191302%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g191288191300%_))))
                        (let ((_%hd191291191305%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191290191302%_)))
                              (_%tl191292191307%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191290191302%_))))
                          ((lambda (_%g191289191310%_)
                             (gxc#compile-e__1
                              _%self191284%_
                              (last _%g191289191310%_)))
                           _%tl191292191307%_)))
                      (_%g191287191297%_ _%g191288191300%_)))))
          (_%g191286191320%_ _%stx191285%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self191280%_ _%stx191281%_)
        (let ((__tmp191679
               (lambda () (gxc#apply-begin% _%self191280%_ _%stx191281%_)))
              (__tmp191677
               (let ((__tmp191678
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp191678 '1))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp191679
           gx#current-expander-phi
           __tmp191677))))
    (define gxc#apply-module%
      (lambda (_%self191219%_ _%stx191220%_)
        (let* ((_%g191222191236%_
                (lambda (_%g191223191233%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g191223191233%_))))
               (_%g191221191277%_
                (lambda (_%g191223191239%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g191223191239%_))
                      (let ((_%e191226191241%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g191223191239%_))))
                        (let ((_%hd191227191244%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191226191241%_)))
                              (_%tl191228191246%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191226191241%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl191228191246%_))
                              (let ((_%e191229191249%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl191228191246%_))))
                                (let ((_%hd191230191252%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e191229191249%_)))
                                      (_%tl191231191254%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e191229191249%_))))
                                  ((lambda (_%g191224191257%_
                                            _%g191225191258%_)
                                     (let* ((_%ctx191271%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g191225191258%_)))
                                            (_%ctx-stx191273%_
                                             (##structure-ref
                                              _%ctx191271%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp191680
                                             (lambda ()
                                               (gxc#compile-e__1
                                                _%self191219%_
                                                _%ctx-stx191273%_))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp191680
                                        gx#current-expander-context
                                        _%ctx191271%_)))
                                   _%tl191231191254%_
                                   _%hd191230191252%_)))
                              (_%g191222191236%_ _%g191223191239%_))))
                      (_%g191222191236%_ _%g191223191239%_)))))
          (_%g191221191277%_ _%stx191220%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self191151%_ _%stx191152%_)
        (let* ((_%g191154191171%_
                (lambda (_%g191155191168%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g191155191168%_))))
               (_%g191153191216%_
                (lambda (_%g191155191174%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g191155191174%_))
                      (let ((_%e191158191176%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g191155191174%_))))
                        (let ((_%hd191159191179%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191158191176%_)))
                              (_%tl191160191181%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191158191176%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl191160191181%_))
                              (let ((_%e191161191184%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl191160191181%_))))
                                (let ((_%hd191162191187%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e191161191184%_)))
                                      (_%tl191163191189%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e191161191184%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl191163191189%_))
                                      (let ((_%e191164191192%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl191163191189%_))))
                                        (let ((_%hd191165191195%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e191164191192%_)))
                                              (_%tl191166191197%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e191164191192%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl191166191197%_))
                                              ((lambda (_%g191156191200%_
                                                        _%g191157191201%_)
                                                 (gxc#compile-e__1
                                                  _%self191151%_
                                                  _%g191156191200%_))
                                               _%hd191165191195%_
                                               _%hd191162191187%_)
                                              (_%g191154191171%_
                                               _%g191155191174%_))))
                                      (_%g191154191171%_ _%g191155191174%_))))
                              (_%g191154191171%_ _%g191155191174%_))))
                      (_%g191154191171%_ _%g191155191174%_)))))
          (_%g191153191216%_ _%stx191152%_))))
    (define gxc#apply-define-values%
      (lambda (_%self191083%_ _%stx191084%_)
        (let* ((_%g191086191103%_
                (lambda (_%g191087191100%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g191087191100%_))))
               (_%g191085191148%_
                (lambda (_%g191087191106%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g191087191106%_))
                      (let ((_%e191090191108%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g191087191106%_))))
                        (let ((_%hd191091191111%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191090191108%_)))
                              (_%tl191092191113%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191090191108%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl191092191113%_))
                              (let ((_%e191093191116%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl191092191113%_))))
                                (let ((_%hd191094191119%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e191093191116%_)))
                                      (_%tl191095191121%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e191093191116%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl191095191121%_))
                                      (let ((_%e191096191124%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl191095191121%_))))
                                        (let ((_%hd191097191127%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e191096191124%_)))
                                              (_%tl191098191129%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e191096191124%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl191098191129%_))
                                              ((lambda (_%g191088191132%_
                                                        _%g191089191133%_)
                                                 (gxc#compile-e__1
                                                  _%self191083%_
                                                  _%g191088191132%_))
                                               _%hd191097191127%_
                                               _%hd191094191119%_)
                                              (_%g191086191103%_
                                               _%g191087191106%_))))
                                      (_%g191086191103%_ _%g191087191106%_))))
                              (_%g191086191103%_ _%g191087191106%_))))
                      (_%g191086191103%_ _%g191087191106%_)))))
          (_%g191085191148%_ _%stx191084%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self191014%_ _%stx191015%_)
        (let* ((_%g191017191034%_
                (lambda (_%g191018191031%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g191018191031%_))))
               (_%g191016191080%_
                (lambda (_%g191018191037%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g191018191037%_))
                      (let ((_%e191021191039%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g191018191037%_))))
                        (let ((_%hd191022191042%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191021191039%_)))
                              (_%tl191023191044%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191021191039%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl191023191044%_))
                              (let ((_%e191024191047%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl191023191044%_))))
                                (let ((_%hd191025191050%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e191024191047%_)))
                                      (_%tl191026191052%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e191024191047%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl191026191052%_))
                                      (let ((_%e191027191055%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl191026191052%_))))
                                        (let ((_%hd191028191058%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e191027191055%_)))
                                              (_%tl191029191060%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e191027191055%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl191029191060%_))
                                              ((lambda (_%g191019191063%_
                                                        _%g191020191064%_)
                                                 (let ((__tmp191683
                                                        (lambda ()
                                                          (gxc#compile-e__1
                                                           _%self191014%_
                                                           _%g191019191063%_)))
                                                       (__tmp191681
                                                        (let ((__tmp191682
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp191682 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp191683
                                                    gx#current-expander-phi
                                                    __tmp191681)))
                                               _%hd191028191058%_
                                               _%hd191025191050%_)
                                              (_%g191017191034%_
                                               _%g191018191037%_))))
                                      (_%g191017191034%_ _%g191018191037%_))))
                              (_%g191017191034%_ _%g191018191037%_))))
                      (_%g191017191034%_ _%g191018191037%_)))))
          (_%g191016191080%_ _%stx191015%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self190946%_ _%stx190947%_)
        (let* ((_%g190949190966%_
                (lambda (_%g190950190963%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g190950190963%_))))
               (_%g190948191011%_
                (lambda (_%g190950190969%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g190950190969%_))
                      (let ((_%e190953190971%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g190950190969%_))))
                        (let ((_%hd190954190974%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190953190971%_)))
                              (_%tl190955190976%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190953190971%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl190955190976%_))
                              (let ((_%e190956190979%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl190955190976%_))))
                                (let ((_%hd190957190982%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e190956190979%_)))
                                      (_%tl190958190984%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e190956190979%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl190958190984%_))
                                      (let ((_%e190959190987%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl190958190984%_))))
                                        (let ((_%hd190960190990%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e190959190987%_)))
                                              (_%tl190961190992%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e190959190987%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl190961190992%_))
                                              ((lambda (_%g190951190995%_
                                                        _%g190952190996%_)
                                                 (gxc#compile-e__1
                                                  _%self190946%_
                                                  _%g190951190995%_))
                                               _%hd190960190990%_
                                               _%hd190957190982%_)
                                              (_%g190949190966%_
                                               _%g190950190969%_))))
                                      (_%g190949190966%_ _%g190950190969%_))))
                              (_%g190949190966%_ _%g190950190969%_))))
                      (_%g190949190966%_ _%g190950190969%_)))))
          (_%g190948191011%_ _%stx190947%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self190832%_ _%stx190833%_)
        (let* ((_%g190835190863%_
                (lambda (_%g190836190860%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g190836190860%_))))
               (_%g190834190943%_
                (lambda (_%g190836190866%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g190836190866%_))
                      (let ((_%e190839190868%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g190836190866%_))))
                        (let ((_%hd190840190871%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190839190868%_)))
                              (_%tl190841190873%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190839190868%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl190841190873%_))
                              (let ((_g191684_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl190841190873%_
                                        '0))))
                                (begin
                                  (let ((_g191685_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g191684_)
                                               (##values-length _g191684_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g191685_ 2)))
                                        (error "Context expects 2 values"
                                               _g191685_)))
                                  (let ((_%target190842190876%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g191684_ 0)))
                                        (_%tl190844190878%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g191684_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl190844190878%_))
                                        (letrec ((_%loop190845190881%_
                                                  (lambda (_%hd190843190884%_
                                                           _%body190849190886%_
                                                           _%hd190850190887%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd190843190884%_))
                                                        (let ((_%e190846190889%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd190843190884%_))))
                  (let ((_%lp-hd190847190892%_
                         (let ()
                           (declare (not safe))
                           (##car _%e190846190889%_)))
                        (_%lp-tl190848190894%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e190846190889%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd190847190892%_))
                        (let ((_%e190853190897%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd190847190892%_))))
                          (let ((_%hd190854190900%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e190853190897%_)))
                                (_%tl190855190902%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e190853190897%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl190855190902%_))
                                (let ((_%e190856190905%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl190855190902%_))))
                                  (let ((_%hd190857190908%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e190856190905%_)))
                                        (_%tl190858190910%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e190856190905%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl190858190910%_))
                                        (_%loop190845190881%_
                                         _%lp-tl190848190894%_
                                         (cons _%hd190857190908%_
                                               _%body190849190886%_)
                                         (cons _%hd190854190900%_
                                               _%hd190850190887%_))
                                        (_%g190835190863%_
                                         _%g190836190866%_))))
                                (_%g190835190863%_ _%g190836190866%_))))
                        (_%g190835190863%_ _%g190836190866%_))))
                (let ((_%body190851190913%_ (reverse _%body190849190886%_))
                      (_%hd190852190914%_ (reverse _%hd190850190887%_)))
                  ((lambda (_%g190837190916%_ _%g190838190917%_)
                     (for-each
                      (lambda (_%g190931190933%_)
                        (gxc#compile-e__1 _%self190832%_ _%g190931190933%_))
                      (let ((__tmp191686
                             (lambda (_%g190935190938%_ _%g190936190940%_)
                               (cons _%g190935190938%_ _%g190936190940%_))))
                        (declare (not safe))
                        (foldr__0 __tmp191686 '() _%g190837190916%_))))
                   _%body190851190913%_
                   _%hd190852190914%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop190845190881%_
                                           _%target190842190876%_
                                           '()
                                           '()))
                                        (_%g190835190863%_
                                         _%g190836190866%_)))))
                              (_%g190835190863%_ _%g190836190866%_))))
                      (_%g190835190863%_ _%g190836190866%_)))))
          (_%g190834190943%_ _%stx190833%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self190689%_ _%stx190690%_)
        (let* ((_%g190692190727%_
                (lambda (_%g190693190724%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g190693190724%_))))
               (_%g190691190829%_
                (lambda (_%g190693190730%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g190693190730%_))
                      (let ((_%e190697190732%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g190693190730%_))))
                        (let ((_%hd190698190735%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190697190732%_)))
                              (_%tl190699190737%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190697190732%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl190699190737%_))
                              (let ((_%e190700190740%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl190699190737%_))))
                                (let ((_%hd190701190743%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e190700190740%_)))
                                      (_%tl190702190745%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e190700190740%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd190701190743%_))
                                      (let ((_g191687_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd190701190743%_
                                                '0))))
                                        (begin
                                          (let ((_g191688_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g191687_)
                                                       (##values-length
                                                        _g191687_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g191688_ 2)))
                                                (error "Context expects 2 values"
                                                       _g191688_)))
                                          (let ((_%target190703190748%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g191687_ 0)))
                                                (_%tl190705190750%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g191687_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl190705190750%_))
                                                (letrec ((_%loop190706190753%_
                                                          (lambda (_%hd190704190756%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr190710190758%_
                           _%hd190711190759%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd190704190756%_))
                        (let ((_%e190707190761%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd190704190756%_))))
                          (let ((_%lp-hd190708190764%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e190707190761%_)))
                                (_%lp-tl190709190766%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e190707190761%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd190708190764%_))
                                (let ((_%e190714190769%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd190708190764%_))))
                                  (let ((_%hd190715190772%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e190714190769%_)))
                                        (_%tl190716190774%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e190714190769%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl190716190774%_))
                                        (let ((_%e190717190777%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl190716190774%_))))
                                          (let ((_%hd190718190780%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e190717190777%_)))
                                                (_%tl190719190782%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e190717190777%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl190719190782%_))
                                                (_%loop190706190753%_
                                                 _%lp-tl190709190766%_
                                                 (cons _%hd190718190780%_
                                                       _%expr190710190758%_)
                                                 (cons _%hd190715190772%_
                                                       _%hd190711190759%_))
                                                (_%g190692190727%_
                                                 _%g190693190730%_))))
                                        (_%g190692190727%_
                                         _%g190693190730%_))))
                                (_%g190692190727%_ _%g190693190730%_))))
                        (let ((_%expr190712190785%_
                               (reverse _%expr190710190758%_))
                              (_%hd190713190786%_
                               (reverse _%hd190711190759%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl190702190745%_))
                              (let ((_%e190720190788%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl190702190745%_))))
                                (let ((_%hd190721190791%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e190720190788%_)))
                                      (_%tl190722190793%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e190720190788%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl190722190793%_))
                                      ((lambda (_%g190694190796%_
                                                _%g190695190797%_
                                                _%g190696190798%_)
                                         (for-each
                                          (lambda (_%g190817190819%_)
                                            (gxc#compile-e__1
                                             _%self190689%_
                                             _%g190817190819%_))
                                          (let ((__tmp191690
                                                 (lambda (_%g190821190824%_
                                                          _%g190822190826%_)
                                                   (cons _%g190821190824%_
                                                         _%g190822190826%_)))
                                                (__tmp191689
                                                 (cons _%g190694190796%_ '())))
                                            (declare (not safe))
                                            (foldr__0
                                             __tmp191690
                                             __tmp191689
                                             _%g190695190797%_))))
                                       _%hd190721190791%_
                                       _%expr190712190785%_
                                       _%hd190713190786%_)
                                      (_%g190692190727%_ _%g190693190730%_))))
                              (_%g190692190727%_ _%g190693190730%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop190706190753%_
                                                   _%target190703190748%_
                                                   '()
                                                   '()))
                                                (_%g190692190727%_
                                                 _%g190693190730%_)))))
                                      (_%g190692190727%_ _%g190693190730%_))))
                              (_%g190692190727%_ _%g190693190730%_))))
                      (_%g190692190727%_ _%g190693190730%_)))))
          (_%g190691190829%_ _%stx190690%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self190634%_ _%stx190635%_)
        (let* ((_%g190637190651%_
                (lambda (_%g190638190648%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g190638190648%_))))
               (_%g190636190686%_
                (lambda (_%g190638190654%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g190638190654%_))
                      (let ((_%e190641190656%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g190638190654%_))))
                        (let ((_%hd190642190659%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190641190656%_)))
                              (_%tl190643190661%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190641190656%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl190643190661%_))
                              (let ((_%e190644190664%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl190643190661%_))))
                                (let ((_%hd190645190667%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e190644190664%_)))
                                      (_%tl190646190669%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e190644190664%_))))
                                  ((lambda (_%g190639190672%_
                                            _%g190640190673%_)
                                     (gxc#compile-e__1
                                      _%self190634%_
                                      (last _%g190639190672%_)))
                                   _%tl190646190669%_
                                   _%hd190645190667%_)))
                              (_%g190637190651%_ _%g190638190654%_))))
                      (_%g190637190651%_ _%g190638190654%_)))))
          (_%g190636190686%_ _%stx190635%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self190566%_ _%stx190567%_)
        (let* ((_%g190569190586%_
                (lambda (_%g190570190583%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g190570190583%_))))
               (_%g190568190631%_
                (lambda (_%g190570190589%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g190570190589%_))
                      (let ((_%e190573190591%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g190570190589%_))))
                        (let ((_%hd190574190594%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190573190591%_)))
                              (_%tl190575190596%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190573190591%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl190575190596%_))
                              (let ((_%e190576190599%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl190575190596%_))))
                                (let ((_%hd190577190602%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e190576190599%_)))
                                      (_%tl190578190604%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e190576190599%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl190578190604%_))
                                      (let ((_%e190579190607%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl190578190604%_))))
                                        (let ((_%hd190580190610%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e190579190607%_)))
                                              (_%tl190581190612%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e190579190607%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl190581190612%_))
                                              ((lambda (_%g190571190615%_
                                                        _%g190572190616%_)
                                                 (gxc#compile-e__1
                                                  _%self190566%_
                                                  _%g190571190615%_))
                                               _%hd190580190610%_
                                               _%hd190577190602%_)
                                              (_%g190569190586%_
                                               _%g190570190589%_))))
                                      (_%g190569190586%_ _%g190570190589%_))))
                              (_%g190569190586%_ _%g190570190589%_))))
                      (_%g190569190586%_ _%g190570190589%_)))))
          (_%g190568190631%_ _%stx190567%_))))
    (define gxc#apply-operands
      (lambda (_%self190481%_ _%stx190482%_)
        (let* ((_%g190484190503%_
                (lambda (_%g190485190500%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g190485190500%_))))
               (_%g190483190563%_
                (lambda (_%g190485190506%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g190485190506%_))
                      (let ((_%e190487190508%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g190485190506%_))))
                        (let ((_%hd190488190511%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190487190508%_)))
                              (_%tl190489190513%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190487190508%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl190489190513%_))
                              (let ((_g191691_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl190489190513%_
                                        '0))))
                                (begin
                                  (let ((_g191692_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g191691_)
                                               (##values-length _g191691_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g191692_ 2)))
                                        (error "Context expects 2 values"
                                               _g191692_)))
                                  (let ((_%target190490190516%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g191691_ 0)))
                                        (_%tl190492190518%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g191691_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl190492190518%_))
                                        (letrec ((_%loop190493190521%_
                                                  (lambda (_%hd190491190524%_
                                                           _%rands190497190526%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd190491190524%_))
                                                        (let ((_%e190494190528%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd190491190524%_))))
                  (let ((_%lp-hd190495190531%_
                         (let ()
                           (declare (not safe))
                           (##car _%e190494190528%_)))
                        (_%lp-tl190496190533%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e190494190528%_))))
                    (_%loop190493190521%_
                     _%lp-tl190496190533%_
                     (cons _%lp-hd190495190531%_ _%rands190497190526%_))))
                (let ((_%rands190498190536%_ (reverse _%rands190497190526%_)))
                  ((lambda (_%g190486190538%_)
                     (for-each
                      (lambda (_%g190551190553%_)
                        (gxc#compile-e__1 _%self190481%_ _%g190551190553%_))
                      (let ((__tmp191693
                             (lambda (_%g190555190558%_ _%g190556190560%_)
                               (cons _%g190555190558%_ _%g190556190560%_))))
                        (declare (not safe))
                        (foldr__0 __tmp191693 '() _%g190486190538%_))))
                   _%rands190498190536%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop190493190521%_
                                           _%target190490190516%_
                                           '()))
                                        (_%g190484190503%_
                                         _%g190485190506%_)))))
                              (_%g190484190503%_ _%g190485190506%_))))
                      (_%g190484190503%_ _%g190485190506%_)))))
          (_%g190483190563%_ _%stx190482%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx190478%_ _%src-stx190479%_)
        (let ((__tmp191694
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx190479%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx190478%_ __tmp191694))))
    (define gxc#xform-wrap-apply
      (lambda (_%stx190474%_ _%src-stx190475%_ _%ctx190476%_)
        (gxc#compile-e__1
         _%ctx190476%_
         (gxc#xform-wrap-source _%stx190474%_ _%src-stx190475%_))))
    (define gxc#xform-begin%
      (lambda (_%self190429%_ _%stx190430%_)
        (let* ((_%g190432190442%_
                (lambda (_%g190433190439%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g190433190439%_))))
               (_%g190431190471%_
                (lambda (_%g190433190445%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g190433190445%_))
                      (let ((_%e190435190447%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g190433190445%_))))
                        (let ((_%hd190436190450%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190435190447%_)))
                              (_%tl190437190452%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190435190447%_))))
                          ((lambda (_%g190434190455%_)
                             (let ((_%forms190469%_
                                    (map (lambda (_%g190464190466%_)
                                           (gxc#compile-e__1
                                            _%self190429%_
                                            _%g190464190466%_))
                                         _%g190434190455%_)))
                               (gxc#xform-wrap-source
                                (cons '%#begin _%forms190469%_)
                                _%stx190430%_)))
                           _%tl190437190452%_)))
                      (_%g190432190442%_ _%g190433190445%_)))))
          (_%g190431190471%_ _%stx190430%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self190383%_ _%stx190384%_)
        (let* ((_%g190386190396%_
                (lambda (_%g190387190393%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g190387190393%_))))
               (_%g190385190426%_
                (lambda (_%g190387190399%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g190387190399%_))
                      (let ((_%e190389190401%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g190387190399%_))))
                        (let ((_%hd190390190404%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190389190401%_)))
                              (_%tl190391190406%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190389190401%_))))
                          ((lambda (_%g190388190409%_)
                             (let ((__tmp191697
                                    (lambda ()
                                      (let ((_%forms190424%_
                                             (map (lambda (_%g190419190421%_)
                                                    (gxc#compile-e__1
                                                     _%self190383%_
                                                     _%g190419190421%_))
                                                  _%g190388190409%_)))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin-syntax _%forms190424%_)
                                         _%stx190384%_))))
                                   (__tmp191695
                                    (let ((__tmp191696
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp191696 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp191697
                                gx#current-expander-phi
                                __tmp191695)))
                           _%tl190391190406%_)))
                      (_%g190386190396%_ _%g190387190399%_)))))
          (_%g190385190426%_ _%stx190384%_))))
    (define gxc#xform-module%
      (lambda (_%self190320%_ _%stx190321%_)
        (let* ((_%g190323190337%_
                (lambda (_%g190324190334%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g190324190334%_))))
               (_%g190322190380%_
                (lambda (_%g190324190340%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g190324190340%_))
                      (let ((_%e190327190342%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g190324190340%_))))
                        (let ((_%hd190328190345%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190327190342%_)))
                              (_%tl190329190347%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190327190342%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl190329190347%_))
                              (let ((_%e190330190350%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl190329190347%_))))
                                (let ((_%hd190331190353%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e190330190350%_)))
                                      (_%tl190332190355%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e190330190350%_))))
                                  ((lambda (_%g190325190358%_
                                            _%g190326190359%_)
                                     (let* ((_%ctx190372%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g190326190359%_)))
                                            (_%code190374%_
                                             (##structure-ref
                                              _%ctx190372%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code190377%_
                                             (let ((__tmp191698
                                                    (lambda ()
                                                      (gxc#compile-e__1
                                                       _%self190320%_
                                                       _%code190374%_))))
                                               (declare (not safe))
                                               (call-with-parameters__1
                                                __tmp191698
                                                gx#current-expander-context
                                                _%ctx190372%_))))
                                       (##structure-set!
                                        _%ctx190372%_
                                        _%code190377%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _%g190326190359%_
                                                    (cons _%code190377%_ '())))
                                        _%stx190321%_)))
                                   _%tl190332190355%_
                                   _%hd190331190353%_)))
                              (_%g190323190337%_ _%g190324190340%_))))
                      (_%g190323190337%_ _%g190324190340%_)))))
          (_%g190322190380%_ _%stx190321%_))))
    (define gxc#xform-define-values%
      (lambda (_%self190250%_ _%stx190251%_)
        (let* ((_%g190253190270%_
                (lambda (_%g190254190267%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g190254190267%_))))
               (_%g190252190317%_
                (lambda (_%g190254190273%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g190254190273%_))
                      (let ((_%e190257190275%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g190254190273%_))))
                        (let ((_%hd190258190278%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190257190275%_)))
                              (_%tl190259190280%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190257190275%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl190259190280%_))
                              (let ((_%e190260190283%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl190259190280%_))))
                                (let ((_%hd190261190286%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e190260190283%_)))
                                      (_%tl190262190288%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e190260190283%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl190262190288%_))
                                      (let ((_%e190263190291%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl190262190288%_))))
                                        (let ((_%hd190264190294%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e190263190291%_)))
                                              (_%tl190265190296%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e190263190291%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl190265190296%_))
                                              ((lambda (_%g190255190299%_
                                                        _%g190256190300%_)
                                                 (let ((_%expr190315%_
                                                        (gxc#compile-e__1
                                                         _%self190250%_
                                                         _%g190255190299%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons _%g190256190300%_
                                                                (cons _%expr190315%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx190251%_)))
                                               _%hd190264190294%_
                                               _%hd190261190286%_)
                                              (_%g190253190270%_
                                               _%g190254190273%_))))
                                      (_%g190253190270%_ _%g190254190273%_))))
                              (_%g190253190270%_ _%g190254190273%_))))
                      (_%g190253190270%_ _%g190254190273%_)))))
          (_%g190252190317%_ _%stx190251%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self190179%_ _%stx190180%_)
        (let* ((_%g190182190199%_
                (lambda (_%g190183190196%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g190183190196%_))))
               (_%g190181190247%_
                (lambda (_%g190183190202%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g190183190202%_))
                      (let ((_%e190186190204%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g190183190202%_))))
                        (let ((_%hd190187190207%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190186190204%_)))
                              (_%tl190188190209%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190186190204%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl190188190209%_))
                              (let ((_%e190189190212%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl190188190209%_))))
                                (let ((_%hd190190190215%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e190189190212%_)))
                                      (_%tl190191190217%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e190189190212%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl190191190217%_))
                                      (let ((_%e190192190220%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl190191190217%_))))
                                        (let ((_%hd190193190223%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e190192190220%_)))
                                              (_%tl190194190225%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e190192190220%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl190194190225%_))
                                              ((lambda (_%g190184190228%_
                                                        _%g190185190229%_)
                                                 (let ((__tmp191701
                                                        (lambda ()
                                                          (let ((_%expr190245%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#compile-e__1 _%self190179%_ _%g190184190228%_)))
                    (gxc#xform-wrap-source
                     (cons '%#define-syntax
                           (cons _%g190185190229%_ (cons _%expr190245%_ '())))
                     _%stx190180%_))))
               (__tmp191699
                (let ((__tmp191700
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp191700 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp191701
                                                    gx#current-expander-phi
                                                    __tmp191699)))
                                               _%hd190193190223%_
                                               _%hd190190190215%_)
                                              (_%g190182190199%_
                                               _%g190183190202%_))))
                                      (_%g190182190199%_ _%g190183190202%_))))
                              (_%g190182190199%_ _%g190183190202%_))))
                      (_%g190182190199%_ _%g190183190202%_)))))
          (_%g190181190247%_ _%stx190180%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self190109%_ _%stx190110%_)
        (let* ((_%g190112190129%_
                (lambda (_%g190113190126%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g190113190126%_))))
               (_%g190111190176%_
                (lambda (_%g190113190132%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g190113190132%_))
                      (let ((_%e190116190134%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g190113190132%_))))
                        (let ((_%hd190117190137%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190116190134%_)))
                              (_%tl190118190139%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190116190134%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl190118190139%_))
                              (let ((_%e190119190142%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl190118190139%_))))
                                (let ((_%hd190120190145%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e190119190142%_)))
                                      (_%tl190121190147%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e190119190142%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl190121190147%_))
                                      (let ((_%e190122190150%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl190121190147%_))))
                                        (let ((_%hd190123190153%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e190122190150%_)))
                                              (_%tl190124190155%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e190122190150%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl190124190155%_))
                                              ((lambda (_%g190114190158%_
                                                        _%g190115190159%_)
                                                 (let ((_%expr190174%_
                                                        (gxc#compile-e__1
                                                         _%self190109%_
                                                         _%g190114190158%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#begin-annotation
                                                          (cons _%g190115190159%_
                                                                (cons _%expr190174%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx190110%_)))
                                               _%hd190123190153%_
                                               _%hd190120190145%_)
                                              (_%g190112190129%_
                                               _%g190113190132%_))))
                                      (_%g190112190129%_ _%g190113190132%_))))
                              (_%g190112190129%_ _%g190113190132%_))))
                      (_%g190112190129%_ _%g190113190132%_)))))
          (_%g190111190176%_ _%stx190110%_))))
    (define gxc#xform-lambda%
      (lambda (_%self190047%_ _%stx190048%_)
        (let* ((_%g190050190064%_
                (lambda (_%g190051190061%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g190051190061%_))))
               (_%g190049190106%_
                (lambda (_%g190051190067%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g190051190067%_))
                      (let ((_%e190054190069%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g190051190067%_))))
                        (let ((_%hd190055190072%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190054190069%_)))
                              (_%tl190056190074%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190054190069%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl190056190074%_))
                              (let ((_%e190057190077%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl190056190074%_))))
                                (let ((_%hd190058190080%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e190057190077%_)))
                                      (_%tl190059190082%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e190057190077%_))))
                                  ((lambda (_%g190052190085%_
                                            _%g190053190086%_)
                                     (let ((__tmp191703
                                            (lambda ()
                                              (let ((_%body190104%_
                                                     (map (lambda (_%g190099190101%_)
                                                            (gxc#compile-e__1
                                                             _%self190047%_
                                                             _%g190099190101%_))
                                                          _%g190052190085%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#lambda
                                                       (cons _%g190053190086%_
                                                             _%body190104%_))
                                                 _%stx190048%_))))
                                           (__tmp191702
                                            (gxc#xform-let-locals
                                             _%g190053190086%_)))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp191703
                                        gxc#current-compile-local-env
                                        __tmp191702)))
                                   _%tl190059190082%_
                                   _%hd190058190080%_)))
                              (_%g190050190064%_ _%g190051190067%_))))
                      (_%g190050190064%_ _%g190051190067%_)))))
          (_%g190049190106%_ _%stx190048%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self189955%_ _%stx189956%_)
        (letrec ((_%clause-e189958%_
                  (lambda (_%clause189999%_)
                    (let* ((_%g190001190012%_
                            (lambda (_%g190002190009%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g190002190009%_))))
                           (_%g190000190044%_
                            (lambda (_%g190002190015%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g190002190015%_))
                                  (let ((_%e190005190017%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g190002190015%_))))
                                    (let ((_%hd190006190020%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e190005190017%_)))
                                          (_%tl190007190022%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e190005190017%_))))
                                      ((lambda (_%g190003190025%_
                                                _%g190004190026%_)
                                         (let ((__tmp191705
                                                (lambda ()
                                                  (let ((_%body190042%_
                                                         (map (lambda (_%g190037190039%_)
                                                                (gxc#compile-e__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%self189955%_
                         _%g190037190039%_))
                      _%g190003190025%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%g190004190026%_
                                                          _%body190042%_))))
                                               (__tmp191704
                                                (gxc#xform-let-locals
                                                 _%g190004190026%_)))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp191705
                                            gxc#current-compile-local-env
                                            __tmp191704)))
                                       _%tl190007190022%_
                                       _%hd190006190020%_)))
                                  (_%g190001190012%_ _%g190002190015%_)))))
                      (_%g190000190044%_ _%clause189999%_)))))
          (let* ((_%g189960189970%_
                  (lambda (_%g189961189967%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g189961189967%_))))
                 (_%g189959189996%_
                  (lambda (_%g189961189973%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g189961189973%_))
                        (let ((_%e189963189975%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g189961189973%_))))
                          (let ((_%hd189964189978%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e189963189975%_)))
                                (_%tl189965189980%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e189963189975%_))))
                            ((lambda (_%g189962189983%_)
                               (let ((_%clauses189994%_
                                      (map _%clause-e189958%_
                                           _%g189962189983%_)))
                                 (gxc#xform-wrap-source
                                  (cons '%#case-lambda _%clauses189994%_)
                                  _%stx189956%_)))
                             _%tl189965189980%_)))
                        (_%g189960189970%_ _%g189961189973%_)))))
            (_%g189959189996%_ _%stx189956%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self189715%_ _%stx189716%_)
        (let* ((_%g189718189751%_
                (lambda (_%g189719189748%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g189719189748%_))))
               (_%g189717189952%_
                (lambda (_%g189719189754%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g189719189754%_))
                      (let ((_%e189724189756%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g189719189754%_))))
                        (let ((_%hd189725189759%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e189724189756%_)))
                              (_%tl189726189761%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e189724189756%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl189726189761%_))
                              (let ((_%e189727189764%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl189726189761%_))))
                                (let ((_%hd189728189767%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e189727189764%_)))
                                      (_%tl189729189769%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e189727189764%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd189728189767%_))
                                      (let ((_g191706_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd189728189767%_
                                                '0))))
                                        (begin
                                          (let ((_g191707_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g191706_)
                                                       (##values-length
                                                        _g191706_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g191707_ 2)))
                                                (error "Context expects 2 values"
                                                       _g191707_)))
                                          (let ((_%target189730189772%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g191706_ 0)))
                                                (_%tl189732189774%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g191706_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl189732189774%_))
                                                (letrec ((_%loop189733189777%_
                                                          (lambda (_%hd189731189780%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr189737189782%_
                           _%hd189738189783%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd189731189780%_))
                        (let ((_%e189734189785%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd189731189780%_))))
                          (let ((_%lp-hd189735189788%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e189734189785%_)))
                                (_%lp-tl189736189790%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e189734189785%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd189735189788%_))
                                (let ((_%e189741189793%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd189735189788%_))))
                                  (let ((_%hd189742189796%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e189741189793%_)))
                                        (_%tl189743189798%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e189741189793%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl189743189798%_))
                                        (let ((_%e189744189801%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl189743189798%_))))
                                          (let ((_%hd189745189804%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e189744189801%_)))
                                                (_%tl189746189806%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e189744189801%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl189746189806%_))
                                                (_%loop189733189777%_
                                                 _%lp-tl189736189790%_
                                                 (cons _%hd189745189804%_
                                                       _%expr189737189782%_)
                                                 (cons _%hd189742189796%_
                                                       _%hd189738189783%_))
                                                (_%g189718189751%_
                                                 _%g189719189754%_))))
                                        (_%g189718189751%_
                                         _%g189719189754%_))))
                                (_%g189718189751%_ _%g189719189754%_))))
                        (let ((_%expr189739189809%_
                               (reverse _%expr189737189782%_))
                              (_%hd189740189810%_
                               (reverse _%hd189738189783%_)))
                          ((lambda (_%g189720189812%_
                                    _%g189721189813%_
                                    _%g189722189814%_
                                    _%g189723189815%_)
                             (let* ((_%g189834189850%_
                                     (lambda (_%g189835189847%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g189835189847%_))))
                                    (_%g189833189938%_
                                     (lambda (_%g189835189853%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g189835189853%_))
                                           (let ((_g191708_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g189835189853%_
                                                     '0))))
                                             (begin
                                               (let ((_g191709_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g191708_)
                                                            (##values-length
                                                             _g191708_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g191709_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g191709_)))
                                               (let ((_%target189837189855%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g191708_
                                                         0)))
                                                     (_%tl189839189857%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g191708_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl189839189857%_))
                                                     (letrec ((_%loop189840189860%_
                                                               (lambda (_%hd189838189863%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr189844189865%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd189838189863%_))
                             (let ((_%e189841189867%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd189838189863%_))))
                               (let ((_%lp-hd189842189870%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e189841189867%_)))
                                     (_%lp-tl189843189872%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e189841189867%_))))
                                 (_%loop189840189860%_
                                  _%lp-tl189843189872%_
                                  (cons _%lp-hd189842189870%_
                                        _%expr189844189865%_))))
                             (let ((_%expr189845189875%_
                                    (reverse _%expr189844189865%_)))
                               ((lambda (_%g189836189877%_)
                                  (let ((__tmp191712
                                         (lambda ()
                                           (let* ((_%g189891189898%_
                                                   (lambda (_%g189892189895%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g189892189895%_))))
                                                  (_%g189890189924%_
                                                   (lambda (_%g189892189901%_)
                                                     ((lambda (_%g189893189903%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%g189723189815%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%g189836189877%_
                                  _%g189722189814%_))
                               (let ((__tmp191713
                                      (lambda (_%g189913189917%_
                                               _%g189914189919%_
                                               _%g189915189921%_)
                                        (cons (cons _%g189914189919%_
                                                    (cons _%g189913189917%_
                                                          '()))
                                              _%g189915189921%_))))
                                 (declare (not safe))
                                 (foldr__1
                                  __tmp191713
                                  '()
                                  _%g189836189877%_
                                  _%g189722189814%_)))
                             _%g189893189903%_))
                 _%stx189716%_))
              _%g189892189901%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g189890189924%_
                                              (map (lambda (_%g189926189928%_)
                                                     (gxc#compile-e__1
                                                      _%self189715%_
                                                      _%g189926189928%_))
                                                   _%g189720189812%_)))))
                                        (__tmp191710
                                         (gxc#xform-let-locals
                                          (let ((__tmp191711
                                                 (lambda (_%g189930189933%_
                                                          _%g189931189935%_)
                                                   (cons _%g189930189933%_
                                                         _%g189931189935%_))))
                                            (declare (not safe))
                                            (foldr__0
                                             __tmp191711
                                             '()
                                             _%g189722189814%_)))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp191712
                                     gxc#current-compile-local-env
                                     __tmp191710)))
                                _%expr189845189875%_))))))
               (_%loop189840189860%_ _%target189837189855%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g189834189850%_
                                                      _%g189835189853%_)))))
                                           (_%g189834189850%_
                                            _%g189835189853%_)))))
                               (_%g189833189938%_
                                (map (lambda (_%g189940189942%_)
                                       (gxc#compile-e__1
                                        _%self189715%_
                                        _%g189940189942%_))
                                     (let ((__tmp191714
                                            (lambda (_%g189944189947%_
                                                     _%g189945189949%_)
                                              (cons _%g189944189947%_
                                                    _%g189945189949%_))))
                                       (declare (not safe))
                                       (foldr__0
                                        __tmp191714
                                        '()
                                        _%g189721189813%_))))))
                           _%tl189729189769%_
                           _%expr189739189809%_
                           _%hd189740189810%_
                           _%hd189725189759%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop189733189777%_
                                                   _%target189730189772%_
                                                   '()
                                                   '()))
                                                (_%g189718189751%_
                                                 _%g189719189754%_)))))
                                      (_%g189718189751%_ _%g189719189754%_))))
                              (_%g189718189751%_ _%g189719189754%_))))
                      (_%g189718189751%_ _%g189719189754%_)))))
          (_%g189717189952%_ _%stx189716%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self189475%_ _%stx189476%_)
        (let* ((_%g189478189511%_
                (lambda (_%g189479189508%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g189479189508%_))))
               (_%g189477189712%_
                (lambda (_%g189479189514%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g189479189514%_))
                      (let ((_%e189484189516%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g189479189514%_))))
                        (let ((_%hd189485189519%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e189484189516%_)))
                              (_%tl189486189521%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e189484189516%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl189486189521%_))
                              (let ((_%e189487189524%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl189486189521%_))))
                                (let ((_%hd189488189527%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e189487189524%_)))
                                      (_%tl189489189529%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e189487189524%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd189488189527%_))
                                      (let ((_g191715_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd189488189527%_
                                                '0))))
                                        (begin
                                          (let ((_g191716_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g191715_)
                                                       (##values-length
                                                        _g191715_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g191716_ 2)))
                                                (error "Context expects 2 values"
                                                       _g191716_)))
                                          (let ((_%target189490189532%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g191715_ 0)))
                                                (_%tl189492189534%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g191715_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl189492189534%_))
                                                (letrec ((_%loop189493189537%_
                                                          (lambda (_%hd189491189540%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr189497189542%_
                           _%hd189498189543%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd189491189540%_))
                        (let ((_%e189494189545%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd189491189540%_))))
                          (let ((_%lp-hd189495189548%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e189494189545%_)))
                                (_%lp-tl189496189550%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e189494189545%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd189495189548%_))
                                (let ((_%e189501189553%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd189495189548%_))))
                                  (let ((_%hd189502189556%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e189501189553%_)))
                                        (_%tl189503189558%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e189501189553%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl189503189558%_))
                                        (let ((_%e189504189561%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl189503189558%_))))
                                          (let ((_%hd189505189564%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e189504189561%_)))
                                                (_%tl189506189566%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e189504189561%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl189506189566%_))
                                                (_%loop189493189537%_
                                                 _%lp-tl189496189550%_
                                                 (cons _%hd189505189564%_
                                                       _%expr189497189542%_)
                                                 (cons _%hd189502189556%_
                                                       _%hd189498189543%_))
                                                (_%g189478189511%_
                                                 _%g189479189514%_))))
                                        (_%g189478189511%_
                                         _%g189479189514%_))))
                                (_%g189478189511%_ _%g189479189514%_))))
                        (let ((_%expr189499189569%_
                               (reverse _%expr189497189542%_))
                              (_%hd189500189570%_
                               (reverse _%hd189498189543%_)))
                          ((lambda (_%g189480189572%_
                                    _%g189481189573%_
                                    _%g189482189574%_
                                    _%g189483189575%_)
                             (let ((__tmp191719
                                    (lambda ()
                                      (let* ((_%g189595189611%_
                                              (lambda (_%g189596189608%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g189596189608%_))))
                                             (_%g189594189691%_
                                              (lambda (_%g189596189614%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g189596189614%_))
                                                    (let ((_g191720_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g189596189614%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g191721_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g191720_)
                             (##values-length _g191720_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g191721_ 2)))
                      (error "Context expects 2 values" _g191721_)))
                (let ((_%target189598189616%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g191720_ 0)))
                      (_%tl189600189618%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g191720_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl189600189618%_))
                      (letrec ((_%loop189601189621%_
                                (lambda (_%hd189599189624%_
                                         _%expr189605189626%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd189599189624%_))
                                      (let ((_%e189602189628%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd189599189624%_))))
                                        (let ((_%lp-hd189603189631%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e189602189628%_)))
                                              (_%lp-tl189604189633%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e189602189628%_))))
                                          (_%loop189601189621%_
                                           _%lp-tl189604189633%_
                                           (cons _%lp-hd189603189631%_
                                                 _%expr189605189626%_))))
                                      (let ((_%expr189606189636%_
                                             (reverse _%expr189605189626%_)))
                                        ((lambda (_%g189597189638%_)
                                           (let* ((_%g189652189659%_
                                                   (lambda (_%g189653189656%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g189653189656%_))))
                                                  (_%g189651189684%_
                                                   (lambda (_%g189653189662%_)
                                                     ((lambda (_%g189654189664%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%g189483189575%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%g189597189638%_
                                  _%g189482189574%_))
                               (let ((__tmp191722
                                      (lambda (_%g189673189677%_
                                               _%g189674189679%_
                                               _%g189675189681%_)
                                        (cons (cons _%g189674189679%_
                                                    (cons _%g189673189677%_
                                                          '()))
                                              _%g189675189681%_))))
                                 (declare (not safe))
                                 (foldr__1
                                  __tmp191722
                                  '()
                                  _%g189597189638%_
                                  _%g189482189574%_)))
                             _%g189654189664%_))
                 _%stx189476%_))
              _%g189653189662%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g189651189684%_
                                              (map (lambda (_%g189686189688%_)
                                                     (gxc#compile-e__1
                                                      _%self189475%_
                                                      _%g189686189688%_))
                                                   _%g189480189572%_))))
                                         _%expr189606189636%_))))))
                        (_%loop189601189621%_ _%target189598189616%_ '()))
                      (_%g189595189611%_ _%g189596189614%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g189595189611%_
                                                     _%g189596189614%_)))))
                                        (_%g189594189691%_
                                         (map (lambda (_%g189693189695%_)
                                                (gxc#compile-e__1
                                                 _%self189475%_
                                                 _%g189693189695%_))
                                              (let ((__tmp191723
                                                     (lambda (_%g189697189700%_
                                                              _%g189698189702%_)
                                                       (cons _%g189697189700%_
                                                             _%g189698189702%_))))
                                                (declare (not safe))
                                                (foldr__0
                                                 __tmp191723
                                                 '()
                                                 _%g189481189573%_)))))))
                                   (__tmp191717
                                    (gxc#xform-let-locals
                                     (let ((__tmp191718
                                            (lambda (_%g189704189707%_
                                                     _%g189705189709%_)
                                              (cons _%g189704189707%_
                                                    _%g189705189709%_))))
                                       (declare (not safe))
                                       (foldr__0
                                        __tmp191718
                                        '()
                                        _%g189482189574%_)))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp191719
                                gxc#current-compile-local-env
                                __tmp191717)))
                           _%tl189489189529%_
                           _%expr189499189569%_
                           _%hd189500189570%_
                           _%hd189485189519%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop189493189537%_
                                                   _%target189490189532%_
                                                   '()
                                                   '()))
                                                (_%g189478189511%_
                                                 _%g189479189514%_)))))
                                      (_%g189478189511%_ _%g189479189514%_))))
                              (_%g189478189511%_ _%g189479189514%_))))
                      (_%g189478189511%_ _%g189479189514%_)))))
          (_%g189477189712%_ _%stx189476%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings189342%_)
        (letrec ((_%flatten189344%_
                  (lambda (_%maybe-lst189402%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%maybe-lst189402%_))
                        (cons _%maybe-lst189402%_ '())
                        (let _%loop189404%_ ((_%rest189406%_
                                              _%maybe-lst189402%_)
                                             (_%result189407%_ '()))
                          (let* ((_%__stx191611191612%_ _%rest189406%_)
                                 (_%g189411189423%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx191611191612%_)))))
                            (let ((_%__kont191613191614%_
                                   (lambda (_%g189413189461%_
                                            _%g189414189462%_)
                                     (_%loop189404%_
                                      _%g189413189461%_
                                      (let ((__tmp191724
                                             (_%flatten189344%_
                                              _%g189414189462%_)))
                                        (declare (not safe))
                                        (foldl__0
                                         cons
                                         _%result189407%_
                                         __tmp191724)))))
                                  (_%__kont191615191616%_
                                   (lambda (_%g189418189435%_)
                                     (cons _%g189418189435%_
                                           _%result189407%_)))
                                  (_%__kont191617191618%_
                                   (lambda () _%result189407%_)))
                              (let ((_%g189409189448%_
                                     (lambda ()
                                       (let ((_%g189418189435%_
                                              _%__stx191611191612%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%g189418189435%_))
                                             (_%__kont191615191616%_
                                              _%g189418189435%_)
                                             (_%__kont191617191618%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx191611191612%_))
                                    (let ((_%e189415189453%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx191611191612%_))))
                                      (let ((_%tl189417189458%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e189415189453%_)))
                                            (_%hd189416189456%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e189415189453%_))))
                                        (_%__kont191613191614%_
                                         _%tl189417189458%_
                                         _%hd189416189456%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g189409189448%_)))))))))))
          (let _%loop189346%_ ((_%rest189348%_
                                (_%flatten189344%_ _%bindings189342%_))
                               (_%locals189349%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-local-env))))
            (let* ((_%rest189350189361%_ _%rest189348%_)
                   (_%E189354189365%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching"
                               _%rest189350189361%_
                               '([(? identifier? id) . rest])
                               '((? identifier? id))
                               '(_)))
                      '#!void)))
              (let ((_%K189357189390%_
                     (lambda (_%rest189387%_ _%id189388%_)
                       (_%loop189346%_
                        _%rest189387%_
                        (cons (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _%id189388%_))
                              _%locals189349%_))))
                    (_%K189356189379%_
                     (lambda (_%id189377%_)
                       (cons (let ()
                               (declare (not safe))
                               (gxc#identifier-symbol _%id189377%_))
                             _%locals189349%_)))
                    (_%K189355189370%_ (lambda () _%locals189349%_)))
                (let ((_%try-match189352189384%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%rest189350189361%_))
                             (let ((_%id189382%_ _%rest189350189361%_))
                               (_%K189356189379%_ _%id189382%_))
                             (_%K189355189370%_)))))
                  (if (pair? _%rest189350189361%_)
                      (let ((_%tl189359189395%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest189350189361%_)))
                            (_%hd189358189393%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest189350189361%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd189358189393%_))
                            (let ((_%id189398%_ _%hd189358189393%_)
                                  (_%rest189400%_ _%tl189359189395%_))
                              (_%K189357189390%_ _%rest189400%_ _%id189398%_))
                            (_%K189355189370%_)))
                      (_%try-match189352189384%_)))))))))
    (define gxc#xform-operands
      (lambda (_%self189294%_ _%stx189295%_)
        (let* ((_%g189297189308%_
                (lambda (_%g189298189305%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g189298189305%_))))
               (_%g189296189339%_
                (lambda (_%g189298189311%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g189298189311%_))
                      (let ((_%e189301189313%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g189298189311%_))))
                        (let ((_%hd189302189316%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e189301189313%_)))
                              (_%tl189303189318%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e189301189313%_))))
                          ((lambda (_%g189299189321%_ _%g189300189322%_)
                             (let ((_%rands189337%_
                                    (map (lambda (_%g189332189334%_)
                                           (gxc#compile-e__1
                                            _%self189294%_
                                            _%g189332189334%_))
                                         _%g189299189321%_)))
                               (gxc#xform-wrap-source
                                (cons _%g189300189322%_ _%rands189337%_)
                                _%stx189295%_)))
                           _%tl189303189318%_
                           _%hd189302189316%_)))
                      (_%g189297189308%_ _%g189298189311%_)))))
          (_%g189296189339%_ _%stx189295%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self189224%_ _%stx189225%_)
        (let* ((_%g189227189244%_
                (lambda (_%g189228189241%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g189228189241%_))))
               (_%g189226189291%_
                (lambda (_%g189228189247%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g189228189247%_))
                      (let ((_%e189231189249%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g189228189247%_))))
                        (let ((_%hd189232189252%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e189231189249%_)))
                              (_%tl189233189254%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e189231189249%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl189233189254%_))
                              (let ((_%e189234189257%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl189233189254%_))))
                                (let ((_%hd189235189260%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e189234189257%_)))
                                      (_%tl189236189262%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e189234189257%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl189236189262%_))
                                      (let ((_%e189237189265%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl189236189262%_))))
                                        (let ((_%hd189238189268%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e189237189265%_)))
                                              (_%tl189239189270%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e189237189265%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl189239189270%_))
                                              ((lambda (_%g189229189273%_
                                                        _%g189230189274%_)
                                                 (let ((_%expr189289%_
                                                        (gxc#compile-e__1
                                                         _%self189224%_
                                                         _%g189229189273%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _%g189230189274%_
                                                                (cons _%expr189289%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx189225%_)))
                                               _%hd189238189268%_
                                               _%hd189235189260%_)
                                              (_%g189227189244%_
                                               _%g189228189247%_))))
                                      (_%g189227189244%_ _%g189228189247%_))))
                              (_%g189227189244%_ _%g189228189247%_))))
                      (_%g189227189244%_ _%g189228189247%_)))))
          (_%g189226189291%_ _%stx189225%_))))))
