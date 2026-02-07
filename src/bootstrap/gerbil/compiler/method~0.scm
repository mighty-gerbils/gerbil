(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1770505719)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx191432%_)
        (let* ((_%self191434%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e191436%_
                (let ((__tmp191654 (gxc#stx-car-e _%stx191432%_)))
                  (declare (not safe))
                  (method-ref _%self191434%_ __tmp191654))))
          (if _%$e191436%_
              ((lambda (_%method191439%_)
                 (declare (not safe))
                 (let ((_%$e191442%_ (gx#stx-source _%stx191432%_)))
                   (if _%$e191442%_
                       ((lambda (_%source191445%_)
                          (call-with-parameters__1
                           (lambda ()
                             (_%method191439%_ _%self191434%_ _%stx191432%_))
                           gxc#current-compile-context
                           (cons (cons '@ (cons _%source191445%_ '()))
                                 (let ((_%$e191449%_
                                        (gxc#current-compile-context)))
                                   (if _%$e191449%_ _%$e191449%_ '())))))
                        _%$e191442%_)
                       (_%method191439%_ _%self191434%_ _%stx191432%_))))
               _%$e191436%_)
              (let ((__tmp191656 (gxc#stx-car-e _%stx191432%_))
                    (__tmp191655
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx191432%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self191434%_
                       __tmp191656
                       __tmp191655))))))
    (define gxc#compile-e__1
      (lambda (_%self191454%_ _%stx191455%_)
        (let ((_%$e191457%_
               (let ((__tmp191657 (gxc#stx-car-e _%stx191455%_)))
                 (declare (not safe))
                 (method-ref _%self191454%_ __tmp191657))))
          (if _%$e191457%_
              ((lambda (_%method191460%_)
                 (declare (not safe))
                 (let ((_%$e191463%_ (gx#stx-source _%stx191455%_)))
                   (if _%$e191463%_
                       ((lambda (_%source191466%_)
                          (call-with-parameters__1
                           (lambda ()
                             (_%method191460%_ _%self191454%_ _%stx191455%_))
                           gxc#current-compile-context
                           (cons (cons '@ (cons _%source191466%_ '()))
                                 (let ((_%$e191470%_
                                        (gxc#current-compile-context)))
                                   (if _%$e191470%_ _%$e191470%_ '())))))
                        _%$e191463%_)
                       (_%method191460%_ _%self191454%_ _%stx191455%_))))
               _%$e191457%_)
              (let ((__tmp191659 (gxc#stx-car-e _%stx191455%_))
                    (__tmp191658
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx191455%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self191454%_
                       __tmp191659
                       __tmp191658))))))
    (define gxc#compile-e
      (lambda _g191660_
        (let ((_g191661_ (let () (declare (not safe)) (##length _g191660_))))
          (cond ((let () (declare (not safe)) (##fx= _g191661_ 1))
                 (apply gxc#compile-e__0 _g191660_))
                ((let () (declare (not safe)) (##fx= _g191661_ 2))
                 (apply gxc#compile-e__1 _g191660_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g191660_))))))
    (define gxc#stx-car-e
      (lambda (_%stx191430%_)
        (let ((__tmp191662
               (car (let () (declare (not safe)) (gx#stx-e _%stx191430%_)))))
          (declare (not safe))
          (gx#stx-e __tmp191662))))
    (define gxc#void-method (lambda (_%self191427%_ _%stx191428%_) '#!void))
    (define gxc#false-method (lambda (_%self191424%_ _%stx191425%_) '#f))
    (define gxc#true-method (lambda (_%self191421%_ _%stx191422%_) '#t))
    (define gxc#identity-method
      (lambda (_%self191418%_ _%stx191419%_) _%stx191419%_))
    (define gxc#::void-expression::t
      (let ((__tmp191663 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp191663
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args191415%_
        (apply make-instance gxc#::void-expression::t _%$args191415%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp191664
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
        (__make-atomic-promise __tmp191664)))
    (define gxc#::void-special-form::t
      (let ((__tmp191665 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp191665
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args191411%_
        (apply make-instance gxc#::void-special-form::t _%$args191411%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp191666
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
        (__make-atomic-promise __tmp191666)))
    (define gxc#::void::t
      (let ((__tmp191667
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp191667 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args191407%_
        (apply make-instance gxc#::void::t _%$args191407%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp191668
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp191668)))
    (define gxc#::false-expression::t
      (let ((__tmp191669 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp191669
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args191403%_
        (apply make-instance gxc#::false-expression::t _%$args191403%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp191670
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
        (__make-atomic-promise __tmp191670)))
    (define gxc#::false-special-form::t
      (let ((__tmp191671 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp191671
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args191399%_
        (apply make-instance gxc#::false-special-form::t _%$args191399%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp191672
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
        (__make-atomic-promise __tmp191672)))
    (define gxc#::false::t
      (let ((__tmp191673
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp191673 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args191395%_
        (apply make-instance gxc#::false::t _%$args191395%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp191674
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp191674)))
    (define gxc#::identity-expression::t
      (let ((__tmp191675 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp191675
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args191391%_
        (apply make-instance gxc#::identity-expression::t _%$args191391%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp191676
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
        (__make-atomic-promise __tmp191676)))
    (define gxc#::identity-special-form::t
      (let ((__tmp191677 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp191677
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args191387%_
        (apply make-instance gxc#::identity-special-form::t _%$args191387%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp191678
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
        (__make-atomic-promise __tmp191678)))
    (define gxc#::identity::t
      (let ((__tmp191679
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp191679
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args191383%_
        (apply make-instance gxc#::identity::t _%$args191383%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp191680
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp191680)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp191681 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp191681
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args191379%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args191379%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp191682
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
        (__make-atomic-promise __tmp191682)))
    (define gxc#::basic-xform::t
      (let ((__tmp191683
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp191683
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args191375%_
        (apply make-instance gxc#::basic-xform::t _%$args191375%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp191684
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
        (__make-atomic-promise __tmp191684)))
    (define gxc#apply-begin%
      (lambda (_%self191331%_ _%stx191332%_)
        (let* ((_%g191334191344%_
                (lambda (_%g191335191341%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g191335191341%_))))
               (_%g191333191371%_
                (lambda (_%g191335191347%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g191335191347%_))
                      (let ((_%e191337191349%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g191335191347%_))))
                        (let ((_%hd191338191352%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191337191349%_)))
                              (_%tl191339191354%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191337191349%_))))
                          ((lambda (_%g191336191357%_)
                             (for-each
                              (lambda (_%g191366191368%_)
                                (gxc#compile-e__1
                                 _%self191331%_
                                 _%g191366191368%_))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%g191336191357%_))))
                           _%tl191339191354%_)))
                      (_%g191334191344%_ _%g191335191347%_)))))
          (_%g191333191371%_ _%stx191332%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self191292%_ _%stx191293%_)
        (let* ((_%g191295191305%_
                (lambda (_%g191296191302%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g191296191302%_))))
               (_%g191294191328%_
                (lambda (_%g191296191308%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g191296191308%_))
                      (let ((_%e191298191310%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g191296191308%_))))
                        (let ((_%hd191299191313%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191298191310%_)))
                              (_%tl191300191315%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191298191310%_))))
                          ((lambda (_%g191297191318%_)
                             (gxc#compile-e__1
                              _%self191292%_
                              (last _%g191297191318%_)))
                           _%tl191300191315%_)))
                      (_%g191295191305%_ _%g191296191308%_)))))
          (_%g191294191328%_ _%stx191293%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self191288%_ _%stx191289%_)
        (let ((__tmp191687
               (lambda () (gxc#apply-begin% _%self191288%_ _%stx191289%_)))
              (__tmp191685
               (let ((__tmp191686
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp191686 '1))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp191687
           gx#current-expander-phi
           __tmp191685))))
    (define gxc#apply-module%
      (lambda (_%self191227%_ _%stx191228%_)
        (let* ((_%g191230191244%_
                (lambda (_%g191231191241%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g191231191241%_))))
               (_%g191229191285%_
                (lambda (_%g191231191247%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g191231191247%_))
                      (let ((_%e191234191249%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g191231191247%_))))
                        (let ((_%hd191235191252%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191234191249%_)))
                              (_%tl191236191254%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191234191249%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl191236191254%_))
                              (let ((_%e191237191257%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl191236191254%_))))
                                (let ((_%hd191238191260%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e191237191257%_)))
                                      (_%tl191239191262%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e191237191257%_))))
                                  ((lambda (_%g191232191265%_
                                            _%g191233191266%_)
                                     (let* ((_%ctx191279%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g191233191266%_)))
                                            (_%ctx-stx191281%_
                                             (##structure-ref
                                              _%ctx191279%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp191688
                                             (lambda ()
                                               (gxc#compile-e__1
                                                _%self191227%_
                                                _%ctx-stx191281%_))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp191688
                                        gx#current-expander-context
                                        _%ctx191279%_)))
                                   _%tl191239191262%_
                                   _%hd191238191260%_)))
                              (_%g191230191244%_ _%g191231191247%_))))
                      (_%g191230191244%_ _%g191231191247%_)))))
          (_%g191229191285%_ _%stx191228%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self191159%_ _%stx191160%_)
        (let* ((_%g191162191179%_
                (lambda (_%g191163191176%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g191163191176%_))))
               (_%g191161191224%_
                (lambda (_%g191163191182%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g191163191182%_))
                      (let ((_%e191166191184%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g191163191182%_))))
                        (let ((_%hd191167191187%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191166191184%_)))
                              (_%tl191168191189%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191166191184%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl191168191189%_))
                              (let ((_%e191169191192%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl191168191189%_))))
                                (let ((_%hd191170191195%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e191169191192%_)))
                                      (_%tl191171191197%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e191169191192%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl191171191197%_))
                                      (let ((_%e191172191200%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl191171191197%_))))
                                        (let ((_%hd191173191203%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e191172191200%_)))
                                              (_%tl191174191205%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e191172191200%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl191174191205%_))
                                              ((lambda (_%g191164191208%_
                                                        _%g191165191209%_)
                                                 (gxc#compile-e__1
                                                  _%self191159%_
                                                  _%g191164191208%_))
                                               _%hd191173191203%_
                                               _%hd191170191195%_)
                                              (_%g191162191179%_
                                               _%g191163191182%_))))
                                      (_%g191162191179%_ _%g191163191182%_))))
                              (_%g191162191179%_ _%g191163191182%_))))
                      (_%g191162191179%_ _%g191163191182%_)))))
          (_%g191161191224%_ _%stx191160%_))))
    (define gxc#apply-define-values%
      (lambda (_%self191091%_ _%stx191092%_)
        (let* ((_%g191094191111%_
                (lambda (_%g191095191108%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g191095191108%_))))
               (_%g191093191156%_
                (lambda (_%g191095191114%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g191095191114%_))
                      (let ((_%e191098191116%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g191095191114%_))))
                        (let ((_%hd191099191119%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191098191116%_)))
                              (_%tl191100191121%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191098191116%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl191100191121%_))
                              (let ((_%e191101191124%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl191100191121%_))))
                                (let ((_%hd191102191127%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e191101191124%_)))
                                      (_%tl191103191129%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e191101191124%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl191103191129%_))
                                      (let ((_%e191104191132%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl191103191129%_))))
                                        (let ((_%hd191105191135%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e191104191132%_)))
                                              (_%tl191106191137%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e191104191132%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl191106191137%_))
                                              ((lambda (_%g191096191140%_
                                                        _%g191097191141%_)
                                                 (gxc#compile-e__1
                                                  _%self191091%_
                                                  _%g191096191140%_))
                                               _%hd191105191135%_
                                               _%hd191102191127%_)
                                              (_%g191094191111%_
                                               _%g191095191114%_))))
                                      (_%g191094191111%_ _%g191095191114%_))))
                              (_%g191094191111%_ _%g191095191114%_))))
                      (_%g191094191111%_ _%g191095191114%_)))))
          (_%g191093191156%_ _%stx191092%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self191022%_ _%stx191023%_)
        (let* ((_%g191025191042%_
                (lambda (_%g191026191039%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g191026191039%_))))
               (_%g191024191088%_
                (lambda (_%g191026191045%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g191026191045%_))
                      (let ((_%e191029191047%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g191026191045%_))))
                        (let ((_%hd191030191050%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191029191047%_)))
                              (_%tl191031191052%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191029191047%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl191031191052%_))
                              (let ((_%e191032191055%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl191031191052%_))))
                                (let ((_%hd191033191058%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e191032191055%_)))
                                      (_%tl191034191060%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e191032191055%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl191034191060%_))
                                      (let ((_%e191035191063%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl191034191060%_))))
                                        (let ((_%hd191036191066%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e191035191063%_)))
                                              (_%tl191037191068%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e191035191063%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl191037191068%_))
                                              ((lambda (_%g191027191071%_
                                                        _%g191028191072%_)
                                                 (let ((__tmp191691
                                                        (lambda ()
                                                          (gxc#compile-e__1
                                                           _%self191022%_
                                                           _%g191027191071%_)))
                                                       (__tmp191689
                                                        (let ((__tmp191690
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp191690 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp191691
                                                    gx#current-expander-phi
                                                    __tmp191689)))
                                               _%hd191036191066%_
                                               _%hd191033191058%_)
                                              (_%g191025191042%_
                                               _%g191026191045%_))))
                                      (_%g191025191042%_ _%g191026191045%_))))
                              (_%g191025191042%_ _%g191026191045%_))))
                      (_%g191025191042%_ _%g191026191045%_)))))
          (_%g191024191088%_ _%stx191023%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self190954%_ _%stx190955%_)
        (let* ((_%g190957190974%_
                (lambda (_%g190958190971%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g190958190971%_))))
               (_%g190956191019%_
                (lambda (_%g190958190977%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g190958190977%_))
                      (let ((_%e190961190979%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g190958190977%_))))
                        (let ((_%hd190962190982%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190961190979%_)))
                              (_%tl190963190984%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190961190979%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl190963190984%_))
                              (let ((_%e190964190987%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl190963190984%_))))
                                (let ((_%hd190965190990%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e190964190987%_)))
                                      (_%tl190966190992%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e190964190987%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl190966190992%_))
                                      (let ((_%e190967190995%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl190966190992%_))))
                                        (let ((_%hd190968190998%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e190967190995%_)))
                                              (_%tl190969191000%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e190967190995%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl190969191000%_))
                                              ((lambda (_%g190959191003%_
                                                        _%g190960191004%_)
                                                 (gxc#compile-e__1
                                                  _%self190954%_
                                                  _%g190959191003%_))
                                               _%hd190968190998%_
                                               _%hd190965190990%_)
                                              (_%g190957190974%_
                                               _%g190958190977%_))))
                                      (_%g190957190974%_ _%g190958190977%_))))
                              (_%g190957190974%_ _%g190958190977%_))))
                      (_%g190957190974%_ _%g190958190977%_)))))
          (_%g190956191019%_ _%stx190955%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self190840%_ _%stx190841%_)
        (let* ((_%g190843190871%_
                (lambda (_%g190844190868%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g190844190868%_))))
               (_%g190842190951%_
                (lambda (_%g190844190874%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g190844190874%_))
                      (let ((_%e190847190876%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g190844190874%_))))
                        (let ((_%hd190848190879%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190847190876%_)))
                              (_%tl190849190881%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190847190876%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl190849190881%_))
                              (let ((_g191692_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl190849190881%_
                                        '0))))
                                (begin
                                  (let ((_g191693_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g191692_)
                                               (##values-length _g191692_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g191693_ 2)))
                                        (error "Context expects 2 values"
                                               _g191693_)))
                                  (let ((_%target190850190884%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g191692_ 0)))
                                        (_%tl190852190886%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g191692_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl190852190886%_))
                                        (letrec ((_%loop190853190889%_
                                                  (lambda (_%hd190851190892%_
                                                           _%body190857190894%_
                                                           _%hd190858190895%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd190851190892%_))
                                                        (let ((_%e190854190897%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd190851190892%_))))
                  (let ((_%lp-hd190855190900%_
                         (let ()
                           (declare (not safe))
                           (##car _%e190854190897%_)))
                        (_%lp-tl190856190902%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e190854190897%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd190855190900%_))
                        (let ((_%e190861190905%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd190855190900%_))))
                          (let ((_%hd190862190908%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e190861190905%_)))
                                (_%tl190863190910%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e190861190905%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl190863190910%_))
                                (let ((_%e190864190913%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl190863190910%_))))
                                  (let ((_%hd190865190916%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e190864190913%_)))
                                        (_%tl190866190918%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e190864190913%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl190866190918%_))
                                        (_%loop190853190889%_
                                         _%lp-tl190856190902%_
                                         (cons _%hd190865190916%_
                                               _%body190857190894%_)
                                         (cons _%hd190862190908%_
                                               _%hd190858190895%_))
                                        (_%g190843190871%_
                                         _%g190844190874%_))))
                                (_%g190843190871%_ _%g190844190874%_))))
                        (_%g190843190871%_ _%g190844190874%_))))
                (let ((_%body190859190921%_ (reverse _%body190857190894%_))
                      (_%hd190860190922%_ (reverse _%hd190858190895%_)))
                  ((lambda (_%g190845190924%_ _%g190846190925%_)
                     (for-each
                      (lambda (_%g190939190941%_)
                        (gxc#compile-e__1 _%self190840%_ _%g190939190941%_))
                      (let ((__tmp191694
                             (lambda (_%g190943190946%_ _%g190944190948%_)
                               (cons _%g190943190946%_ _%g190944190948%_))))
                        (declare (not safe))
                        (foldr__0 __tmp191694 '() _%g190845190924%_))))
                   _%body190859190921%_
                   _%hd190860190922%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop190853190889%_
                                           _%target190850190884%_
                                           '()
                                           '()))
                                        (_%g190843190871%_
                                         _%g190844190874%_)))))
                              (_%g190843190871%_ _%g190844190874%_))))
                      (_%g190843190871%_ _%g190844190874%_)))))
          (_%g190842190951%_ _%stx190841%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self190697%_ _%stx190698%_)
        (let* ((_%g190700190735%_
                (lambda (_%g190701190732%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g190701190732%_))))
               (_%g190699190837%_
                (lambda (_%g190701190738%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g190701190738%_))
                      (let ((_%e190705190740%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g190701190738%_))))
                        (let ((_%hd190706190743%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190705190740%_)))
                              (_%tl190707190745%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190705190740%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl190707190745%_))
                              (let ((_%e190708190748%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl190707190745%_))))
                                (let ((_%hd190709190751%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e190708190748%_)))
                                      (_%tl190710190753%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e190708190748%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd190709190751%_))
                                      (let ((_g191695_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd190709190751%_
                                                '0))))
                                        (begin
                                          (let ((_g191696_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g191695_)
                                                       (##values-length
                                                        _g191695_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g191696_ 2)))
                                                (error "Context expects 2 values"
                                                       _g191696_)))
                                          (let ((_%target190711190756%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g191695_ 0)))
                                                (_%tl190713190758%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g191695_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl190713190758%_))
                                                (letrec ((_%loop190714190761%_
                                                          (lambda (_%hd190712190764%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr190718190766%_
                           _%hd190719190767%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd190712190764%_))
                        (let ((_%e190715190769%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd190712190764%_))))
                          (let ((_%lp-hd190716190772%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e190715190769%_)))
                                (_%lp-tl190717190774%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e190715190769%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd190716190772%_))
                                (let ((_%e190722190777%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd190716190772%_))))
                                  (let ((_%hd190723190780%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e190722190777%_)))
                                        (_%tl190724190782%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e190722190777%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl190724190782%_))
                                        (let ((_%e190725190785%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl190724190782%_))))
                                          (let ((_%hd190726190788%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e190725190785%_)))
                                                (_%tl190727190790%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e190725190785%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl190727190790%_))
                                                (_%loop190714190761%_
                                                 _%lp-tl190717190774%_
                                                 (cons _%hd190726190788%_
                                                       _%expr190718190766%_)
                                                 (cons _%hd190723190780%_
                                                       _%hd190719190767%_))
                                                (_%g190700190735%_
                                                 _%g190701190738%_))))
                                        (_%g190700190735%_
                                         _%g190701190738%_))))
                                (_%g190700190735%_ _%g190701190738%_))))
                        (let ((_%expr190720190793%_
                               (reverse _%expr190718190766%_))
                              (_%hd190721190794%_
                               (reverse _%hd190719190767%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl190710190753%_))
                              (let ((_%e190728190796%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl190710190753%_))))
                                (let ((_%hd190729190799%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e190728190796%_)))
                                      (_%tl190730190801%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e190728190796%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl190730190801%_))
                                      ((lambda (_%g190702190804%_
                                                _%g190703190805%_
                                                _%g190704190806%_)
                                         (for-each
                                          (lambda (_%g190825190827%_)
                                            (gxc#compile-e__1
                                             _%self190697%_
                                             _%g190825190827%_))
                                          (let ((__tmp191698
                                                 (lambda (_%g190829190832%_
                                                          _%g190830190834%_)
                                                   (cons _%g190829190832%_
                                                         _%g190830190834%_)))
                                                (__tmp191697
                                                 (cons _%g190702190804%_ '())))
                                            (declare (not safe))
                                            (foldr__0
                                             __tmp191698
                                             __tmp191697
                                             _%g190703190805%_))))
                                       _%hd190729190799%_
                                       _%expr190720190793%_
                                       _%hd190721190794%_)
                                      (_%g190700190735%_ _%g190701190738%_))))
                              (_%g190700190735%_ _%g190701190738%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop190714190761%_
                                                   _%target190711190756%_
                                                   '()
                                                   '()))
                                                (_%g190700190735%_
                                                 _%g190701190738%_)))))
                                      (_%g190700190735%_ _%g190701190738%_))))
                              (_%g190700190735%_ _%g190701190738%_))))
                      (_%g190700190735%_ _%g190701190738%_)))))
          (_%g190699190837%_ _%stx190698%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self190642%_ _%stx190643%_)
        (let* ((_%g190645190659%_
                (lambda (_%g190646190656%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g190646190656%_))))
               (_%g190644190694%_
                (lambda (_%g190646190662%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g190646190662%_))
                      (let ((_%e190649190664%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g190646190662%_))))
                        (let ((_%hd190650190667%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190649190664%_)))
                              (_%tl190651190669%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190649190664%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl190651190669%_))
                              (let ((_%e190652190672%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl190651190669%_))))
                                (let ((_%hd190653190675%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e190652190672%_)))
                                      (_%tl190654190677%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e190652190672%_))))
                                  ((lambda (_%g190647190680%_
                                            _%g190648190681%_)
                                     (gxc#compile-e__1
                                      _%self190642%_
                                      (last _%g190647190680%_)))
                                   _%tl190654190677%_
                                   _%hd190653190675%_)))
                              (_%g190645190659%_ _%g190646190662%_))))
                      (_%g190645190659%_ _%g190646190662%_)))))
          (_%g190644190694%_ _%stx190643%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self190574%_ _%stx190575%_)
        (let* ((_%g190577190594%_
                (lambda (_%g190578190591%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g190578190591%_))))
               (_%g190576190639%_
                (lambda (_%g190578190597%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g190578190597%_))
                      (let ((_%e190581190599%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g190578190597%_))))
                        (let ((_%hd190582190602%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190581190599%_)))
                              (_%tl190583190604%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190581190599%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl190583190604%_))
                              (let ((_%e190584190607%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl190583190604%_))))
                                (let ((_%hd190585190610%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e190584190607%_)))
                                      (_%tl190586190612%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e190584190607%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl190586190612%_))
                                      (let ((_%e190587190615%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl190586190612%_))))
                                        (let ((_%hd190588190618%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e190587190615%_)))
                                              (_%tl190589190620%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e190587190615%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl190589190620%_))
                                              ((lambda (_%g190579190623%_
                                                        _%g190580190624%_)
                                                 (gxc#compile-e__1
                                                  _%self190574%_
                                                  _%g190579190623%_))
                                               _%hd190588190618%_
                                               _%hd190585190610%_)
                                              (_%g190577190594%_
                                               _%g190578190597%_))))
                                      (_%g190577190594%_ _%g190578190597%_))))
                              (_%g190577190594%_ _%g190578190597%_))))
                      (_%g190577190594%_ _%g190578190597%_)))))
          (_%g190576190639%_ _%stx190575%_))))
    (define gxc#apply-operands
      (lambda (_%self190489%_ _%stx190490%_)
        (let* ((_%g190492190511%_
                (lambda (_%g190493190508%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g190493190508%_))))
               (_%g190491190571%_
                (lambda (_%g190493190514%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g190493190514%_))
                      (let ((_%e190495190516%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g190493190514%_))))
                        (let ((_%hd190496190519%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190495190516%_)))
                              (_%tl190497190521%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190495190516%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl190497190521%_))
                              (let ((_g191699_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl190497190521%_
                                        '0))))
                                (begin
                                  (let ((_g191700_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g191699_)
                                               (##values-length _g191699_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g191700_ 2)))
                                        (error "Context expects 2 values"
                                               _g191700_)))
                                  (let ((_%target190498190524%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g191699_ 0)))
                                        (_%tl190500190526%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g191699_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl190500190526%_))
                                        (letrec ((_%loop190501190529%_
                                                  (lambda (_%hd190499190532%_
                                                           _%rands190505190534%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd190499190532%_))
                                                        (let ((_%e190502190536%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd190499190532%_))))
                  (let ((_%lp-hd190503190539%_
                         (let ()
                           (declare (not safe))
                           (##car _%e190502190536%_)))
                        (_%lp-tl190504190541%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e190502190536%_))))
                    (_%loop190501190529%_
                     _%lp-tl190504190541%_
                     (cons _%lp-hd190503190539%_ _%rands190505190534%_))))
                (let ((_%rands190506190544%_ (reverse _%rands190505190534%_)))
                  ((lambda (_%g190494190546%_)
                     (for-each
                      (lambda (_%g190559190561%_)
                        (gxc#compile-e__1 _%self190489%_ _%g190559190561%_))
                      (let ((__tmp191701
                             (lambda (_%g190563190566%_ _%g190564190568%_)
                               (cons _%g190563190566%_ _%g190564190568%_))))
                        (declare (not safe))
                        (foldr__0 __tmp191701 '() _%g190494190546%_))))
                   _%rands190506190544%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop190501190529%_
                                           _%target190498190524%_
                                           '()))
                                        (_%g190492190511%_
                                         _%g190493190514%_)))))
                              (_%g190492190511%_ _%g190493190514%_))))
                      (_%g190492190511%_ _%g190493190514%_)))))
          (_%g190491190571%_ _%stx190490%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx190486%_ _%src-stx190487%_)
        (let ((__tmp191702
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx190487%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx190486%_ __tmp191702))))
    (define gxc#xform-wrap-apply
      (lambda (_%stx190482%_ _%src-stx190483%_ _%ctx190484%_)
        (gxc#compile-e__1
         _%ctx190484%_
         (gxc#xform-wrap-source _%stx190482%_ _%src-stx190483%_))))
    (define gxc#xform-begin%
      (lambda (_%self190437%_ _%stx190438%_)
        (let* ((_%g190440190450%_
                (lambda (_%g190441190447%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g190441190447%_))))
               (_%g190439190479%_
                (lambda (_%g190441190453%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g190441190453%_))
                      (let ((_%e190443190455%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g190441190453%_))))
                        (let ((_%hd190444190458%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190443190455%_)))
                              (_%tl190445190460%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190443190455%_))))
                          ((lambda (_%g190442190463%_)
                             (let ((_%forms190477%_
                                    (map (lambda (_%g190472190474%_)
                                           (gxc#compile-e__1
                                            _%self190437%_
                                            _%g190472190474%_))
                                         _%g190442190463%_)))
                               (gxc#xform-wrap-source
                                (cons '%#begin _%forms190477%_)
                                _%stx190438%_)))
                           _%tl190445190460%_)))
                      (_%g190440190450%_ _%g190441190453%_)))))
          (_%g190439190479%_ _%stx190438%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self190391%_ _%stx190392%_)
        (let* ((_%g190394190404%_
                (lambda (_%g190395190401%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g190395190401%_))))
               (_%g190393190434%_
                (lambda (_%g190395190407%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g190395190407%_))
                      (let ((_%e190397190409%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g190395190407%_))))
                        (let ((_%hd190398190412%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190397190409%_)))
                              (_%tl190399190414%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190397190409%_))))
                          ((lambda (_%g190396190417%_)
                             (let ((__tmp191705
                                    (lambda ()
                                      (let ((_%forms190432%_
                                             (map (lambda (_%g190427190429%_)
                                                    (gxc#compile-e__1
                                                     _%self190391%_
                                                     _%g190427190429%_))
                                                  _%g190396190417%_)))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin-syntax _%forms190432%_)
                                         _%stx190392%_))))
                                   (__tmp191703
                                    (let ((__tmp191704
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp191704 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp191705
                                gx#current-expander-phi
                                __tmp191703)))
                           _%tl190399190414%_)))
                      (_%g190394190404%_ _%g190395190407%_)))))
          (_%g190393190434%_ _%stx190392%_))))
    (define gxc#xform-module%
      (lambda (_%self190328%_ _%stx190329%_)
        (let* ((_%g190331190345%_
                (lambda (_%g190332190342%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g190332190342%_))))
               (_%g190330190388%_
                (lambda (_%g190332190348%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g190332190348%_))
                      (let ((_%e190335190350%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g190332190348%_))))
                        (let ((_%hd190336190353%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190335190350%_)))
                              (_%tl190337190355%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190335190350%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl190337190355%_))
                              (let ((_%e190338190358%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl190337190355%_))))
                                (let ((_%hd190339190361%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e190338190358%_)))
                                      (_%tl190340190363%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e190338190358%_))))
                                  ((lambda (_%g190333190366%_
                                            _%g190334190367%_)
                                     (let* ((_%ctx190380%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g190334190367%_)))
                                            (_%code190382%_
                                             (##structure-ref
                                              _%ctx190380%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code190385%_
                                             (let ((__tmp191706
                                                    (lambda ()
                                                      (gxc#compile-e__1
                                                       _%self190328%_
                                                       _%code190382%_))))
                                               (declare (not safe))
                                               (call-with-parameters__1
                                                __tmp191706
                                                gx#current-expander-context
                                                _%ctx190380%_))))
                                       (##structure-set!
                                        _%ctx190380%_
                                        _%code190385%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _%g190334190367%_
                                                    (cons _%code190385%_ '())))
                                        _%stx190329%_)))
                                   _%tl190340190363%_
                                   _%hd190339190361%_)))
                              (_%g190331190345%_ _%g190332190348%_))))
                      (_%g190331190345%_ _%g190332190348%_)))))
          (_%g190330190388%_ _%stx190329%_))))
    (define gxc#xform-define-values%
      (lambda (_%self190258%_ _%stx190259%_)
        (let* ((_%g190261190278%_
                (lambda (_%g190262190275%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g190262190275%_))))
               (_%g190260190325%_
                (lambda (_%g190262190281%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g190262190281%_))
                      (let ((_%e190265190283%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g190262190281%_))))
                        (let ((_%hd190266190286%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190265190283%_)))
                              (_%tl190267190288%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190265190283%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl190267190288%_))
                              (let ((_%e190268190291%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl190267190288%_))))
                                (let ((_%hd190269190294%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e190268190291%_)))
                                      (_%tl190270190296%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e190268190291%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl190270190296%_))
                                      (let ((_%e190271190299%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl190270190296%_))))
                                        (let ((_%hd190272190302%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e190271190299%_)))
                                              (_%tl190273190304%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e190271190299%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl190273190304%_))
                                              ((lambda (_%g190263190307%_
                                                        _%g190264190308%_)
                                                 (let ((_%expr190323%_
                                                        (gxc#compile-e__1
                                                         _%self190258%_
                                                         _%g190263190307%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons _%g190264190308%_
                                                                (cons _%expr190323%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx190259%_)))
                                               _%hd190272190302%_
                                               _%hd190269190294%_)
                                              (_%g190261190278%_
                                               _%g190262190281%_))))
                                      (_%g190261190278%_ _%g190262190281%_))))
                              (_%g190261190278%_ _%g190262190281%_))))
                      (_%g190261190278%_ _%g190262190281%_)))))
          (_%g190260190325%_ _%stx190259%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self190187%_ _%stx190188%_)
        (let* ((_%g190190190207%_
                (lambda (_%g190191190204%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g190191190204%_))))
               (_%g190189190255%_
                (lambda (_%g190191190210%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g190191190210%_))
                      (let ((_%e190194190212%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g190191190210%_))))
                        (let ((_%hd190195190215%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190194190212%_)))
                              (_%tl190196190217%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190194190212%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl190196190217%_))
                              (let ((_%e190197190220%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl190196190217%_))))
                                (let ((_%hd190198190223%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e190197190220%_)))
                                      (_%tl190199190225%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e190197190220%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl190199190225%_))
                                      (let ((_%e190200190228%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl190199190225%_))))
                                        (let ((_%hd190201190231%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e190200190228%_)))
                                              (_%tl190202190233%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e190200190228%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl190202190233%_))
                                              ((lambda (_%g190192190236%_
                                                        _%g190193190237%_)
                                                 (let ((__tmp191709
                                                        (lambda ()
                                                          (let ((_%expr190253%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#compile-e__1 _%self190187%_ _%g190192190236%_)))
                    (gxc#xform-wrap-source
                     (cons '%#define-syntax
                           (cons _%g190193190237%_ (cons _%expr190253%_ '())))
                     _%stx190188%_))))
               (__tmp191707
                (let ((__tmp191708
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp191708 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp191709
                                                    gx#current-expander-phi
                                                    __tmp191707)))
                                               _%hd190201190231%_
                                               _%hd190198190223%_)
                                              (_%g190190190207%_
                                               _%g190191190210%_))))
                                      (_%g190190190207%_ _%g190191190210%_))))
                              (_%g190190190207%_ _%g190191190210%_))))
                      (_%g190190190207%_ _%g190191190210%_)))))
          (_%g190189190255%_ _%stx190188%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self190117%_ _%stx190118%_)
        (let* ((_%g190120190137%_
                (lambda (_%g190121190134%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g190121190134%_))))
               (_%g190119190184%_
                (lambda (_%g190121190140%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g190121190140%_))
                      (let ((_%e190124190142%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g190121190140%_))))
                        (let ((_%hd190125190145%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190124190142%_)))
                              (_%tl190126190147%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190124190142%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl190126190147%_))
                              (let ((_%e190127190150%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl190126190147%_))))
                                (let ((_%hd190128190153%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e190127190150%_)))
                                      (_%tl190129190155%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e190127190150%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl190129190155%_))
                                      (let ((_%e190130190158%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl190129190155%_))))
                                        (let ((_%hd190131190161%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e190130190158%_)))
                                              (_%tl190132190163%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e190130190158%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl190132190163%_))
                                              ((lambda (_%g190122190166%_
                                                        _%g190123190167%_)
                                                 (let ((_%expr190182%_
                                                        (gxc#compile-e__1
                                                         _%self190117%_
                                                         _%g190122190166%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#begin-annotation
                                                          (cons _%g190123190167%_
                                                                (cons _%expr190182%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx190118%_)))
                                               _%hd190131190161%_
                                               _%hd190128190153%_)
                                              (_%g190120190137%_
                                               _%g190121190140%_))))
                                      (_%g190120190137%_ _%g190121190140%_))))
                              (_%g190120190137%_ _%g190121190140%_))))
                      (_%g190120190137%_ _%g190121190140%_)))))
          (_%g190119190184%_ _%stx190118%_))))
    (define gxc#xform-lambda%
      (lambda (_%self190055%_ _%stx190056%_)
        (let* ((_%g190058190072%_
                (lambda (_%g190059190069%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g190059190069%_))))
               (_%g190057190114%_
                (lambda (_%g190059190075%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g190059190075%_))
                      (let ((_%e190062190077%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g190059190075%_))))
                        (let ((_%hd190063190080%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190062190077%_)))
                              (_%tl190064190082%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190062190077%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl190064190082%_))
                              (let ((_%e190065190085%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl190064190082%_))))
                                (let ((_%hd190066190088%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e190065190085%_)))
                                      (_%tl190067190090%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e190065190085%_))))
                                  ((lambda (_%g190060190093%_
                                            _%g190061190094%_)
                                     (let ((__tmp191711
                                            (lambda ()
                                              (let ((_%body190112%_
                                                     (map (lambda (_%g190107190109%_)
                                                            (gxc#compile-e__1
                                                             _%self190055%_
                                                             _%g190107190109%_))
                                                          _%g190060190093%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#lambda
                                                       (cons _%g190061190094%_
                                                             _%body190112%_))
                                                 _%stx190056%_))))
                                           (__tmp191710
                                            (gxc#xform-let-locals
                                             _%g190061190094%_)))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp191711
                                        gxc#current-compile-local-env
                                        __tmp191710)))
                                   _%tl190067190090%_
                                   _%hd190066190088%_)))
                              (_%g190058190072%_ _%g190059190075%_))))
                      (_%g190058190072%_ _%g190059190075%_)))))
          (_%g190057190114%_ _%stx190056%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self189963%_ _%stx189964%_)
        (letrec ((_%clause-e189966%_
                  (lambda (_%clause190007%_)
                    (let* ((_%g190009190020%_
                            (lambda (_%g190010190017%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g190010190017%_))))
                           (_%g190008190052%_
                            (lambda (_%g190010190023%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g190010190023%_))
                                  (let ((_%e190013190025%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g190010190023%_))))
                                    (let ((_%hd190014190028%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e190013190025%_)))
                                          (_%tl190015190030%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e190013190025%_))))
                                      ((lambda (_%g190011190033%_
                                                _%g190012190034%_)
                                         (let ((__tmp191713
                                                (lambda ()
                                                  (let ((_%body190050%_
                                                         (map (lambda (_%g190045190047%_)
                                                                (gxc#compile-e__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%self189963%_
                         _%g190045190047%_))
                      _%g190011190033%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%g190012190034%_
                                                          _%body190050%_))))
                                               (__tmp191712
                                                (gxc#xform-let-locals
                                                 _%g190012190034%_)))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp191713
                                            gxc#current-compile-local-env
                                            __tmp191712)))
                                       _%tl190015190030%_
                                       _%hd190014190028%_)))
                                  (_%g190009190020%_ _%g190010190023%_)))))
                      (_%g190008190052%_ _%clause190007%_)))))
          (let* ((_%g189968189978%_
                  (lambda (_%g189969189975%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g189969189975%_))))
                 (_%g189967190004%_
                  (lambda (_%g189969189981%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g189969189981%_))
                        (let ((_%e189971189983%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g189969189981%_))))
                          (let ((_%hd189972189986%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e189971189983%_)))
                                (_%tl189973189988%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e189971189983%_))))
                            ((lambda (_%g189970189991%_)
                               (let ((_%clauses190002%_
                                      (map _%clause-e189966%_
                                           _%g189970189991%_)))
                                 (gxc#xform-wrap-source
                                  (cons '%#case-lambda _%clauses190002%_)
                                  _%stx189964%_)))
                             _%tl189973189988%_)))
                        (_%g189968189978%_ _%g189969189981%_)))))
            (_%g189967190004%_ _%stx189964%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self189723%_ _%stx189724%_)
        (let* ((_%g189726189759%_
                (lambda (_%g189727189756%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g189727189756%_))))
               (_%g189725189960%_
                (lambda (_%g189727189762%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g189727189762%_))
                      (let ((_%e189732189764%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g189727189762%_))))
                        (let ((_%hd189733189767%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e189732189764%_)))
                              (_%tl189734189769%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e189732189764%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl189734189769%_))
                              (let ((_%e189735189772%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl189734189769%_))))
                                (let ((_%hd189736189775%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e189735189772%_)))
                                      (_%tl189737189777%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e189735189772%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd189736189775%_))
                                      (let ((_g191714_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd189736189775%_
                                                '0))))
                                        (begin
                                          (let ((_g191715_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g191714_)
                                                       (##values-length
                                                        _g191714_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g191715_ 2)))
                                                (error "Context expects 2 values"
                                                       _g191715_)))
                                          (let ((_%target189738189780%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g191714_ 0)))
                                                (_%tl189740189782%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g191714_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl189740189782%_))
                                                (letrec ((_%loop189741189785%_
                                                          (lambda (_%hd189739189788%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr189745189790%_
                           _%hd189746189791%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd189739189788%_))
                        (let ((_%e189742189793%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd189739189788%_))))
                          (let ((_%lp-hd189743189796%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e189742189793%_)))
                                (_%lp-tl189744189798%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e189742189793%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd189743189796%_))
                                (let ((_%e189749189801%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd189743189796%_))))
                                  (let ((_%hd189750189804%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e189749189801%_)))
                                        (_%tl189751189806%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e189749189801%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl189751189806%_))
                                        (let ((_%e189752189809%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl189751189806%_))))
                                          (let ((_%hd189753189812%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e189752189809%_)))
                                                (_%tl189754189814%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e189752189809%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl189754189814%_))
                                                (_%loop189741189785%_
                                                 _%lp-tl189744189798%_
                                                 (cons _%hd189753189812%_
                                                       _%expr189745189790%_)
                                                 (cons _%hd189750189804%_
                                                       _%hd189746189791%_))
                                                (_%g189726189759%_
                                                 _%g189727189762%_))))
                                        (_%g189726189759%_
                                         _%g189727189762%_))))
                                (_%g189726189759%_ _%g189727189762%_))))
                        (let ((_%expr189747189817%_
                               (reverse _%expr189745189790%_))
                              (_%hd189748189818%_
                               (reverse _%hd189746189791%_)))
                          ((lambda (_%g189728189820%_
                                    _%g189729189821%_
                                    _%g189730189822%_
                                    _%g189731189823%_)
                             (let* ((_%g189842189858%_
                                     (lambda (_%g189843189855%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g189843189855%_))))
                                    (_%g189841189946%_
                                     (lambda (_%g189843189861%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g189843189861%_))
                                           (let ((_g191716_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g189843189861%_
                                                     '0))))
                                             (begin
                                               (let ((_g191717_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g191716_)
                                                            (##values-length
                                                             _g191716_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g191717_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g191717_)))
                                               (let ((_%target189845189863%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g191716_
                                                         0)))
                                                     (_%tl189847189865%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g191716_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl189847189865%_))
                                                     (letrec ((_%loop189848189868%_
                                                               (lambda (_%hd189846189871%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr189852189873%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd189846189871%_))
                             (let ((_%e189849189875%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd189846189871%_))))
                               (let ((_%lp-hd189850189878%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e189849189875%_)))
                                     (_%lp-tl189851189880%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e189849189875%_))))
                                 (_%loop189848189868%_
                                  _%lp-tl189851189880%_
                                  (cons _%lp-hd189850189878%_
                                        _%expr189852189873%_))))
                             (let ((_%expr189853189883%_
                                    (reverse _%expr189852189873%_)))
                               ((lambda (_%g189844189885%_)
                                  (let ((__tmp191720
                                         (lambda ()
                                           (let* ((_%g189899189906%_
                                                   (lambda (_%g189900189903%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g189900189903%_))))
                                                  (_%g189898189932%_
                                                   (lambda (_%g189900189909%_)
                                                     ((lambda (_%g189901189911%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%g189731189823%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%g189844189885%_
                                  _%g189730189822%_))
                               (let ((__tmp191721
                                      (lambda (_%g189921189925%_
                                               _%g189922189927%_
                                               _%g189923189929%_)
                                        (cons (cons _%g189922189927%_
                                                    (cons _%g189921189925%_
                                                          '()))
                                              _%g189923189929%_))))
                                 (declare (not safe))
                                 (foldr__1
                                  __tmp191721
                                  '()
                                  _%g189844189885%_
                                  _%g189730189822%_)))
                             _%g189901189911%_))
                 _%stx189724%_))
              _%g189900189909%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g189898189932%_
                                              (map (lambda (_%g189934189936%_)
                                                     (gxc#compile-e__1
                                                      _%self189723%_
                                                      _%g189934189936%_))
                                                   _%g189728189820%_)))))
                                        (__tmp191718
                                         (gxc#xform-let-locals
                                          (let ((__tmp191719
                                                 (lambda (_%g189938189941%_
                                                          _%g189939189943%_)
                                                   (cons _%g189938189941%_
                                                         _%g189939189943%_))))
                                            (declare (not safe))
                                            (foldr__0
                                             __tmp191719
                                             '()
                                             _%g189730189822%_)))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp191720
                                     gxc#current-compile-local-env
                                     __tmp191718)))
                                _%expr189853189883%_))))))
               (_%loop189848189868%_ _%target189845189863%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g189842189858%_
                                                      _%g189843189861%_)))))
                                           (_%g189842189858%_
                                            _%g189843189861%_)))))
                               (_%g189841189946%_
                                (map (lambda (_%g189948189950%_)
                                       (gxc#compile-e__1
                                        _%self189723%_
                                        _%g189948189950%_))
                                     (let ((__tmp191722
                                            (lambda (_%g189952189955%_
                                                     _%g189953189957%_)
                                              (cons _%g189952189955%_
                                                    _%g189953189957%_))))
                                       (declare (not safe))
                                       (foldr__0
                                        __tmp191722
                                        '()
                                        _%g189729189821%_))))))
                           _%tl189737189777%_
                           _%expr189747189817%_
                           _%hd189748189818%_
                           _%hd189733189767%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop189741189785%_
                                                   _%target189738189780%_
                                                   '()
                                                   '()))
                                                (_%g189726189759%_
                                                 _%g189727189762%_)))))
                                      (_%g189726189759%_ _%g189727189762%_))))
                              (_%g189726189759%_ _%g189727189762%_))))
                      (_%g189726189759%_ _%g189727189762%_)))))
          (_%g189725189960%_ _%stx189724%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self189483%_ _%stx189484%_)
        (let* ((_%g189486189519%_
                (lambda (_%g189487189516%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g189487189516%_))))
               (_%g189485189720%_
                (lambda (_%g189487189522%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g189487189522%_))
                      (let ((_%e189492189524%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g189487189522%_))))
                        (let ((_%hd189493189527%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e189492189524%_)))
                              (_%tl189494189529%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e189492189524%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl189494189529%_))
                              (let ((_%e189495189532%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl189494189529%_))))
                                (let ((_%hd189496189535%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e189495189532%_)))
                                      (_%tl189497189537%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e189495189532%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd189496189535%_))
                                      (let ((_g191723_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd189496189535%_
                                                '0))))
                                        (begin
                                          (let ((_g191724_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g191723_)
                                                       (##values-length
                                                        _g191723_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g191724_ 2)))
                                                (error "Context expects 2 values"
                                                       _g191724_)))
                                          (let ((_%target189498189540%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g191723_ 0)))
                                                (_%tl189500189542%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g191723_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl189500189542%_))
                                                (letrec ((_%loop189501189545%_
                                                          (lambda (_%hd189499189548%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr189505189550%_
                           _%hd189506189551%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd189499189548%_))
                        (let ((_%e189502189553%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd189499189548%_))))
                          (let ((_%lp-hd189503189556%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e189502189553%_)))
                                (_%lp-tl189504189558%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e189502189553%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd189503189556%_))
                                (let ((_%e189509189561%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd189503189556%_))))
                                  (let ((_%hd189510189564%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e189509189561%_)))
                                        (_%tl189511189566%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e189509189561%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl189511189566%_))
                                        (let ((_%e189512189569%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl189511189566%_))))
                                          (let ((_%hd189513189572%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e189512189569%_)))
                                                (_%tl189514189574%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e189512189569%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl189514189574%_))
                                                (_%loop189501189545%_
                                                 _%lp-tl189504189558%_
                                                 (cons _%hd189513189572%_
                                                       _%expr189505189550%_)
                                                 (cons _%hd189510189564%_
                                                       _%hd189506189551%_))
                                                (_%g189486189519%_
                                                 _%g189487189522%_))))
                                        (_%g189486189519%_
                                         _%g189487189522%_))))
                                (_%g189486189519%_ _%g189487189522%_))))
                        (let ((_%expr189507189577%_
                               (reverse _%expr189505189550%_))
                              (_%hd189508189578%_
                               (reverse _%hd189506189551%_)))
                          ((lambda (_%g189488189580%_
                                    _%g189489189581%_
                                    _%g189490189582%_
                                    _%g189491189583%_)
                             (let ((__tmp191727
                                    (lambda ()
                                      (let* ((_%g189603189619%_
                                              (lambda (_%g189604189616%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g189604189616%_))))
                                             (_%g189602189699%_
                                              (lambda (_%g189604189622%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g189604189622%_))
                                                    (let ((_g191728_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g189604189622%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g191729_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g191728_)
                             (##values-length _g191728_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g191729_ 2)))
                      (error "Context expects 2 values" _g191729_)))
                (let ((_%target189606189624%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g191728_ 0)))
                      (_%tl189608189626%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g191728_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl189608189626%_))
                      (letrec ((_%loop189609189629%_
                                (lambda (_%hd189607189632%_
                                         _%expr189613189634%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd189607189632%_))
                                      (let ((_%e189610189636%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd189607189632%_))))
                                        (let ((_%lp-hd189611189639%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e189610189636%_)))
                                              (_%lp-tl189612189641%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e189610189636%_))))
                                          (_%loop189609189629%_
                                           _%lp-tl189612189641%_
                                           (cons _%lp-hd189611189639%_
                                                 _%expr189613189634%_))))
                                      (let ((_%expr189614189644%_
                                             (reverse _%expr189613189634%_)))
                                        ((lambda (_%g189605189646%_)
                                           (let* ((_%g189660189667%_
                                                   (lambda (_%g189661189664%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g189661189664%_))))
                                                  (_%g189659189692%_
                                                   (lambda (_%g189661189670%_)
                                                     ((lambda (_%g189662189672%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%g189491189583%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%g189605189646%_
                                  _%g189490189582%_))
                               (let ((__tmp191730
                                      (lambda (_%g189681189685%_
                                               _%g189682189687%_
                                               _%g189683189689%_)
                                        (cons (cons _%g189682189687%_
                                                    (cons _%g189681189685%_
                                                          '()))
                                              _%g189683189689%_))))
                                 (declare (not safe))
                                 (foldr__1
                                  __tmp191730
                                  '()
                                  _%g189605189646%_
                                  _%g189490189582%_)))
                             _%g189662189672%_))
                 _%stx189484%_))
              _%g189661189670%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g189659189692%_
                                              (map (lambda (_%g189694189696%_)
                                                     (gxc#compile-e__1
                                                      _%self189483%_
                                                      _%g189694189696%_))
                                                   _%g189488189580%_))))
                                         _%expr189614189644%_))))))
                        (_%loop189609189629%_ _%target189606189624%_ '()))
                      (_%g189603189619%_ _%g189604189622%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g189603189619%_
                                                     _%g189604189622%_)))))
                                        (_%g189602189699%_
                                         (map (lambda (_%g189701189703%_)
                                                (gxc#compile-e__1
                                                 _%self189483%_
                                                 _%g189701189703%_))
                                              (let ((__tmp191731
                                                     (lambda (_%g189705189708%_
                                                              _%g189706189710%_)
                                                       (cons _%g189705189708%_
                                                             _%g189706189710%_))))
                                                (declare (not safe))
                                                (foldr__0
                                                 __tmp191731
                                                 '()
                                                 _%g189489189581%_)))))))
                                   (__tmp191725
                                    (gxc#xform-let-locals
                                     (let ((__tmp191726
                                            (lambda (_%g189712189715%_
                                                     _%g189713189717%_)
                                              (cons _%g189712189715%_
                                                    _%g189713189717%_))))
                                       (declare (not safe))
                                       (foldr__0
                                        __tmp191726
                                        '()
                                        _%g189490189582%_)))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp191727
                                gxc#current-compile-local-env
                                __tmp191725)))
                           _%tl189497189537%_
                           _%expr189507189577%_
                           _%hd189508189578%_
                           _%hd189493189527%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop189501189545%_
                                                   _%target189498189540%_
                                                   '()
                                                   '()))
                                                (_%g189486189519%_
                                                 _%g189487189522%_)))))
                                      (_%g189486189519%_ _%g189487189522%_))))
                              (_%g189486189519%_ _%g189487189522%_))))
                      (_%g189486189519%_ _%g189487189522%_)))))
          (_%g189485189720%_ _%stx189484%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings189350%_)
        (letrec ((_%flatten189352%_
                  (lambda (_%maybe-lst189410%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%maybe-lst189410%_))
                        (cons _%maybe-lst189410%_ '())
                        (let _%loop189412%_ ((_%rest189414%_
                                              _%maybe-lst189410%_)
                                             (_%result189415%_ '()))
                          (let* ((_%__stx191619191620%_ _%rest189414%_)
                                 (_%g189419189431%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx191619191620%_)))))
                            (let ((_%__kont191621191622%_
                                   (lambda (_%g189421189469%_
                                            _%g189422189470%_)
                                     (_%loop189412%_
                                      _%g189421189469%_
                                      (let ((__tmp191732
                                             (_%flatten189352%_
                                              _%g189422189470%_)))
                                        (declare (not safe))
                                        (foldl__0
                                         cons
                                         _%result189415%_
                                         __tmp191732)))))
                                  (_%__kont191623191624%_
                                   (lambda (_%g189426189443%_)
                                     (cons _%g189426189443%_
                                           _%result189415%_)))
                                  (_%__kont191625191626%_
                                   (lambda () _%result189415%_)))
                              (let ((_%g189417189456%_
                                     (lambda ()
                                       (let ((_%g189426189443%_
                                              _%__stx191619191620%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%g189426189443%_))
                                             (_%__kont191623191624%_
                                              _%g189426189443%_)
                                             (_%__kont191625191626%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx191619191620%_))
                                    (let ((_%e189423189461%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx191619191620%_))))
                                      (let ((_%tl189425189466%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e189423189461%_)))
                                            (_%hd189424189464%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e189423189461%_))))
                                        (_%__kont191621191622%_
                                         _%tl189425189466%_
                                         _%hd189424189464%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g189417189456%_)))))))))))
          (let _%loop189354%_ ((_%rest189356%_
                                (_%flatten189352%_ _%bindings189350%_))
                               (_%locals189357%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-local-env))))
            (let* ((_%rest189358189369%_ _%rest189356%_)
                   (_%E189362189373%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching"
                               _%rest189358189369%_
                               '([(? identifier? id) . rest])
                               '((? identifier? id))
                               '(_)))
                      '#!void)))
              (let ((_%K189365189398%_
                     (lambda (_%rest189395%_ _%id189396%_)
                       (_%loop189354%_
                        _%rest189395%_
                        (cons (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _%id189396%_))
                              _%locals189357%_))))
                    (_%K189364189387%_
                     (lambda (_%id189385%_)
                       (cons (let ()
                               (declare (not safe))
                               (gxc#identifier-symbol _%id189385%_))
                             _%locals189357%_)))
                    (_%K189363189378%_ (lambda () _%locals189357%_)))
                (let ((_%try-match189360189392%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%rest189358189369%_))
                             (let ((_%id189390%_ _%rest189358189369%_))
                               (_%K189364189387%_ _%id189390%_))
                             (_%K189363189378%_)))))
                  (if (pair? _%rest189358189369%_)
                      (let ((_%tl189367189403%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest189358189369%_)))
                            (_%hd189366189401%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest189358189369%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd189366189401%_))
                            (let ((_%id189406%_ _%hd189366189401%_)
                                  (_%rest189408%_ _%tl189367189403%_))
                              (_%K189365189398%_ _%rest189408%_ _%id189406%_))
                            (_%K189363189378%_)))
                      (_%try-match189360189392%_)))))))))
    (define gxc#xform-operands
      (lambda (_%self189302%_ _%stx189303%_)
        (let* ((_%g189305189316%_
                (lambda (_%g189306189313%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g189306189313%_))))
               (_%g189304189347%_
                (lambda (_%g189306189319%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g189306189319%_))
                      (let ((_%e189309189321%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g189306189319%_))))
                        (let ((_%hd189310189324%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e189309189321%_)))
                              (_%tl189311189326%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e189309189321%_))))
                          ((lambda (_%g189307189329%_ _%g189308189330%_)
                             (let ((_%rands189345%_
                                    (map (lambda (_%g189340189342%_)
                                           (gxc#compile-e__1
                                            _%self189302%_
                                            _%g189340189342%_))
                                         _%g189307189329%_)))
                               (gxc#xform-wrap-source
                                (cons _%g189308189330%_ _%rands189345%_)
                                _%stx189303%_)))
                           _%tl189311189326%_
                           _%hd189310189324%_)))
                      (_%g189305189316%_ _%g189306189319%_)))))
          (_%g189304189347%_ _%stx189303%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self189232%_ _%stx189233%_)
        (let* ((_%g189235189252%_
                (lambda (_%g189236189249%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g189236189249%_))))
               (_%g189234189299%_
                (lambda (_%g189236189255%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g189236189255%_))
                      (let ((_%e189239189257%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g189236189255%_))))
                        (let ((_%hd189240189260%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e189239189257%_)))
                              (_%tl189241189262%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e189239189257%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl189241189262%_))
                              (let ((_%e189242189265%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl189241189262%_))))
                                (let ((_%hd189243189268%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e189242189265%_)))
                                      (_%tl189244189270%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e189242189265%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl189244189270%_))
                                      (let ((_%e189245189273%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl189244189270%_))))
                                        (let ((_%hd189246189276%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e189245189273%_)))
                                              (_%tl189247189278%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e189245189273%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl189247189278%_))
                                              ((lambda (_%g189237189281%_
                                                        _%g189238189282%_)
                                                 (let ((_%expr189297%_
                                                        (gxc#compile-e__1
                                                         _%self189232%_
                                                         _%g189237189281%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _%g189238189282%_
                                                                (cons _%expr189297%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx189233%_)))
                                               _%hd189246189276%_
                                               _%hd189243189268%_)
                                              (_%g189235189252%_
                                               _%g189236189255%_))))
                                      (_%g189235189252%_ _%g189236189255%_))))
                              (_%g189235189252%_ _%g189236189255%_))))
                      (_%g189235189252%_ _%g189236189255%_)))))
          (_%g189234189299%_ _%stx189233%_))))))
