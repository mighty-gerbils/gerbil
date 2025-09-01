(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1756715353)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx146436%_)
        (let* ((_%self146438%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e146440%_
                (let ((__tmp146658 (gxc#stx-car-e _%stx146436%_)))
                  (declare (not safe))
                  (method-ref _%self146438%_ __tmp146658))))
          (if _%$e146440%_
              ((lambda (_%method146443%_)
                 (declare (not safe))
                 (let ((_%$e146446%_ (gx#stx-source _%stx146436%_)))
                   (if _%$e146446%_
                       ((lambda (_%source146449%_)
                          (call-with-parameters__1
                           (lambda ()
                             (_%method146443%_ _%self146438%_ _%stx146436%_))
                           gxc#current-compile-context
                           (cons (cons '@ (cons _%source146449%_ '()))
                                 (let ((_%$e146453%_
                                        (gxc#current-compile-context)))
                                   (if _%$e146453%_ _%$e146453%_ '())))))
                        _%$e146446%_)
                       (_%method146443%_ _%self146438%_ _%stx146436%_))))
               _%$e146440%_)
              (let ((__tmp146660 (gxc#stx-car-e _%stx146436%_))
                    (__tmp146659
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx146436%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self146438%_
                       __tmp146660
                       __tmp146659))))))
    (define gxc#compile-e__1
      (lambda (_%self146458%_ _%stx146459%_)
        (let ((_%$e146461%_
               (let ((__tmp146661 (gxc#stx-car-e _%stx146459%_)))
                 (declare (not safe))
                 (method-ref _%self146458%_ __tmp146661))))
          (if _%$e146461%_
              ((lambda (_%method146464%_)
                 (declare (not safe))
                 (let ((_%$e146467%_ (gx#stx-source _%stx146459%_)))
                   (if _%$e146467%_
                       ((lambda (_%source146470%_)
                          (call-with-parameters__1
                           (lambda ()
                             (_%method146464%_ _%self146458%_ _%stx146459%_))
                           gxc#current-compile-context
                           (cons (cons '@ (cons _%source146470%_ '()))
                                 (let ((_%$e146474%_
                                        (gxc#current-compile-context)))
                                   (if _%$e146474%_ _%$e146474%_ '())))))
                        _%$e146467%_)
                       (_%method146464%_ _%self146458%_ _%stx146459%_))))
               _%$e146461%_)
              (let ((__tmp146663 (gxc#stx-car-e _%stx146459%_))
                    (__tmp146662
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx146459%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self146458%_
                       __tmp146663
                       __tmp146662))))))
    (define gxc#compile-e
      (lambda _g146664_
        (let ((_g146665_ (let () (declare (not safe)) (##length _g146664_))))
          (cond ((let () (declare (not safe)) (##fx= _g146665_ 1))
                 (apply gxc#compile-e__0 _g146664_))
                ((let () (declare (not safe)) (##fx= _g146665_ 2))
                 (apply gxc#compile-e__1 _g146664_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g146664_))))))
    (define gxc#stx-car-e
      (lambda (_%stx146434%_)
        (let ((__tmp146666
               (car (let () (declare (not safe)) (gx#stx-e _%stx146434%_)))))
          (declare (not safe))
          (gx#stx-e __tmp146666))))
    (define gxc#void-method (lambda (_%self146431%_ _%stx146432%_) '#!void))
    (define gxc#false-method (lambda (_%self146428%_ _%stx146429%_) '#f))
    (define gxc#true-method (lambda (_%self146425%_ _%stx146426%_) '#t))
    (define gxc#identity-method
      (lambda (_%self146422%_ _%stx146423%_) _%stx146423%_))
    (define gxc#::void-expression::t
      (let ((__tmp146667 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp146667
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args146419%_
        (apply make-instance gxc#::void-expression::t _%$args146419%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp146668
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
        (__make-atomic-promise __tmp146668)))
    (define gxc#::void-special-form::t
      (let ((__tmp146669 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp146669
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args146415%_
        (apply make-instance gxc#::void-special-form::t _%$args146415%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp146670
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
        (__make-atomic-promise __tmp146670)))
    (define gxc#::void::t
      (let ((__tmp146671
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp146671 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args146411%_
        (apply make-instance gxc#::void::t _%$args146411%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp146672
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp146672)))
    (define gxc#::false-expression::t
      (let ((__tmp146673 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp146673
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args146407%_
        (apply make-instance gxc#::false-expression::t _%$args146407%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp146674
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
        (__make-atomic-promise __tmp146674)))
    (define gxc#::false-special-form::t
      (let ((__tmp146675 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp146675
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args146403%_
        (apply make-instance gxc#::false-special-form::t _%$args146403%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp146676
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
        (__make-atomic-promise __tmp146676)))
    (define gxc#::false::t
      (let ((__tmp146677
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp146677 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args146399%_
        (apply make-instance gxc#::false::t _%$args146399%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp146678
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp146678)))
    (define gxc#::identity-expression::t
      (let ((__tmp146679 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp146679
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args146395%_
        (apply make-instance gxc#::identity-expression::t _%$args146395%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp146680
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
        (__make-atomic-promise __tmp146680)))
    (define gxc#::identity-special-form::t
      (let ((__tmp146681 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp146681
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args146391%_
        (apply make-instance gxc#::identity-special-form::t _%$args146391%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp146682
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
        (__make-atomic-promise __tmp146682)))
    (define gxc#::identity::t
      (let ((__tmp146683
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp146683
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args146387%_
        (apply make-instance gxc#::identity::t _%$args146387%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp146684
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp146684)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp146685 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp146685
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args146383%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args146383%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp146686
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
        (__make-atomic-promise __tmp146686)))
    (define gxc#::basic-xform::t
      (let ((__tmp146687
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp146687
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args146379%_
        (apply make-instance gxc#::basic-xform::t _%$args146379%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp146688
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
        (__make-atomic-promise __tmp146688)))
    (define gxc#apply-begin%
      (lambda (_%self146335%_ _%stx146336%_)
        (let* ((_%g146338146348%_
                (lambda (_%g146339146345%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g146339146345%_))))
               (_%g146337146375%_
                (lambda (_%g146339146351%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g146339146351%_))
                      (let ((_%e146341146353%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g146339146351%_))))
                        (let ((_%hd146342146356%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e146341146353%_)))
                              (_%tl146343146358%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e146341146353%_))))
                          ((lambda (_%L146361%_)
                             (for-each
                              (lambda (_%g146370146372%_)
                                (gxc#compile-e__1
                                 _%self146335%_
                                 _%g146370146372%_))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L146361%_))))
                           _%tl146343146358%_)))
                      (_%g146338146348%_ _%g146339146351%_)))))
          (_%g146337146375%_ _%stx146336%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self146296%_ _%stx146297%_)
        (let* ((_%g146299146309%_
                (lambda (_%g146300146306%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g146300146306%_))))
               (_%g146298146332%_
                (lambda (_%g146300146312%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g146300146312%_))
                      (let ((_%e146302146314%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g146300146312%_))))
                        (let ((_%hd146303146317%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e146302146314%_)))
                              (_%tl146304146319%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e146302146314%_))))
                          ((lambda (_%L146322%_)
                             (gxc#compile-e__1
                              _%self146296%_
                              (last _%L146322%_)))
                           _%tl146304146319%_)))
                      (_%g146299146309%_ _%g146300146312%_)))))
          (_%g146298146332%_ _%stx146297%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self146292%_ _%stx146293%_)
        (let ((__tmp146691
               (lambda () (gxc#apply-begin% _%self146292%_ _%stx146293%_)))
              (__tmp146689
               (let ((__tmp146690
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp146690 '1))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp146691
           gx#current-expander-phi
           __tmp146689))))
    (define gxc#apply-module%
      (lambda (_%self146231%_ _%stx146232%_)
        (let* ((_%g146234146248%_
                (lambda (_%g146235146245%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g146235146245%_))))
               (_%g146233146289%_
                (lambda (_%g146235146251%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g146235146251%_))
                      (let ((_%e146238146253%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g146235146251%_))))
                        (let ((_%hd146239146256%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e146238146253%_)))
                              (_%tl146240146258%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e146238146253%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl146240146258%_))
                              (let ((_%e146241146261%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl146240146258%_))))
                                (let ((_%hd146242146264%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e146241146261%_)))
                                      (_%tl146243146266%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e146241146261%_))))
                                  ((lambda (_%L146269%_ _%L146270%_)
                                     (let* ((_%ctx146283%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L146270%_)))
                                            (_%ctx-stx146285%_
                                             (##structure-ref
                                              _%ctx146283%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp146692
                                             (lambda ()
                                               (gxc#compile-e__1
                                                _%self146231%_
                                                _%ctx-stx146285%_))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp146692
                                        gx#current-expander-context
                                        _%ctx146283%_)))
                                   _%tl146243146266%_
                                   _%hd146242146264%_)))
                              (_%g146234146248%_ _%g146235146251%_))))
                      (_%g146234146248%_ _%g146235146251%_)))))
          (_%g146233146289%_ _%stx146232%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self146163%_ _%stx146164%_)
        (let* ((_%g146166146183%_
                (lambda (_%g146167146180%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g146167146180%_))))
               (_%g146165146228%_
                (lambda (_%g146167146186%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g146167146186%_))
                      (let ((_%e146170146188%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g146167146186%_))))
                        (let ((_%hd146171146191%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e146170146188%_)))
                              (_%tl146172146193%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e146170146188%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl146172146193%_))
                              (let ((_%e146173146196%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl146172146193%_))))
                                (let ((_%hd146174146199%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e146173146196%_)))
                                      (_%tl146175146201%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e146173146196%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl146175146201%_))
                                      (let ((_%e146176146204%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl146175146201%_))))
                                        (let ((_%hd146177146207%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e146176146204%_)))
                                              (_%tl146178146209%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e146176146204%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl146178146209%_))
                                              ((lambda (_%L146212%_
                                                        _%L146213%_)
                                                 (gxc#compile-e__1
                                                  _%self146163%_
                                                  _%L146212%_))
                                               _%hd146177146207%_
                                               _%hd146174146199%_)
                                              (_%g146166146183%_
                                               _%g146167146186%_))))
                                      (_%g146166146183%_ _%g146167146186%_))))
                              (_%g146166146183%_ _%g146167146186%_))))
                      (_%g146166146183%_ _%g146167146186%_)))))
          (_%g146165146228%_ _%stx146164%_))))
    (define gxc#apply-define-values%
      (lambda (_%self146095%_ _%stx146096%_)
        (let* ((_%g146098146115%_
                (lambda (_%g146099146112%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g146099146112%_))))
               (_%g146097146160%_
                (lambda (_%g146099146118%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g146099146118%_))
                      (let ((_%e146102146120%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g146099146118%_))))
                        (let ((_%hd146103146123%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e146102146120%_)))
                              (_%tl146104146125%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e146102146120%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl146104146125%_))
                              (let ((_%e146105146128%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl146104146125%_))))
                                (let ((_%hd146106146131%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e146105146128%_)))
                                      (_%tl146107146133%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e146105146128%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl146107146133%_))
                                      (let ((_%e146108146136%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl146107146133%_))))
                                        (let ((_%hd146109146139%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e146108146136%_)))
                                              (_%tl146110146141%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e146108146136%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl146110146141%_))
                                              ((lambda (_%L146144%_
                                                        _%L146145%_)
                                                 (gxc#compile-e__1
                                                  _%self146095%_
                                                  _%L146144%_))
                                               _%hd146109146139%_
                                               _%hd146106146131%_)
                                              (_%g146098146115%_
                                               _%g146099146118%_))))
                                      (_%g146098146115%_ _%g146099146118%_))))
                              (_%g146098146115%_ _%g146099146118%_))))
                      (_%g146098146115%_ _%g146099146118%_)))))
          (_%g146097146160%_ _%stx146096%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self146026%_ _%stx146027%_)
        (let* ((_%g146029146046%_
                (lambda (_%g146030146043%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g146030146043%_))))
               (_%g146028146092%_
                (lambda (_%g146030146049%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g146030146049%_))
                      (let ((_%e146033146051%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g146030146049%_))))
                        (let ((_%hd146034146054%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e146033146051%_)))
                              (_%tl146035146056%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e146033146051%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl146035146056%_))
                              (let ((_%e146036146059%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl146035146056%_))))
                                (let ((_%hd146037146062%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e146036146059%_)))
                                      (_%tl146038146064%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e146036146059%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl146038146064%_))
                                      (let ((_%e146039146067%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl146038146064%_))))
                                        (let ((_%hd146040146070%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e146039146067%_)))
                                              (_%tl146041146072%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e146039146067%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl146041146072%_))
                                              ((lambda (_%L146075%_
                                                        _%L146076%_)
                                                 (let ((__tmp146695
                                                        (lambda ()
                                                          (gxc#compile-e__1
                                                           _%self146026%_
                                                           _%L146075%_)))
                                                       (__tmp146693
                                                        (let ((__tmp146694
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp146694 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp146695
                                                    gx#current-expander-phi
                                                    __tmp146693)))
                                               _%hd146040146070%_
                                               _%hd146037146062%_)
                                              (_%g146029146046%_
                                               _%g146030146049%_))))
                                      (_%g146029146046%_ _%g146030146049%_))))
                              (_%g146029146046%_ _%g146030146049%_))))
                      (_%g146029146046%_ _%g146030146049%_)))))
          (_%g146028146092%_ _%stx146027%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self145958%_ _%stx145959%_)
        (let* ((_%g145961145978%_
                (lambda (_%g145962145975%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145962145975%_))))
               (_%g145960146023%_
                (lambda (_%g145962145981%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145962145981%_))
                      (let ((_%e145965145983%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145962145981%_))))
                        (let ((_%hd145966145986%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145965145983%_)))
                              (_%tl145967145988%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145965145983%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145967145988%_))
                              (let ((_%e145968145991%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145967145988%_))))
                                (let ((_%hd145969145994%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145968145991%_)))
                                      (_%tl145970145996%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145968145991%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl145970145996%_))
                                      (let ((_%e145971145999%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl145970145996%_))))
                                        (let ((_%hd145972146002%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e145971145999%_)))
                                              (_%tl145973146004%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e145971145999%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl145973146004%_))
                                              ((lambda (_%L146007%_
                                                        _%L146008%_)
                                                 (gxc#compile-e__1
                                                  _%self145958%_
                                                  _%L146007%_))
                                               _%hd145972146002%_
                                               _%hd145969145994%_)
                                              (_%g145961145978%_
                                               _%g145962145981%_))))
                                      (_%g145961145978%_ _%g145962145981%_))))
                              (_%g145961145978%_ _%g145962145981%_))))
                      (_%g145961145978%_ _%g145962145981%_)))))
          (_%g145960146023%_ _%stx145959%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self145840%_ _%stx145841%_)
        (let* ((_%g145843145871%_
                (lambda (_%g145844145868%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145844145868%_))))
               (_%g145842145955%_
                (lambda (_%g145844145874%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145844145874%_))
                      (let ((_%e145847145876%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145844145874%_))))
                        (let ((_%hd145848145879%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145847145876%_)))
                              (_%tl145849145881%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145847145876%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl145849145881%_))
                              (let ((_g146696_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl145849145881%_
                                        '0))))
                                (begin
                                  (let ((_g146697_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g146696_)
                                               (##values-length _g146696_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g146697_ 2)))
                                        (error "Context expects 2 values"
                                               _g146697_)))
                                  (let ((_%target145850145884%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g146696_ 0)))
                                        (_%tl145852145886%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g146696_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl145852145886%_))
                                        (letrec ((_%loop145853145889%_
                                                  (lambda (_%hd145851145892%_
                                                           _%body145857145894%_
                                                           _%hd145858145896%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd145851145892%_))
                                                        (let ((_%e145854145899%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd145851145892%_))))
                  (let ((_%lp-hd145855145902%_
                         (let ()
                           (declare (not safe))
                           (##car _%e145854145899%_)))
                        (_%lp-tl145856145904%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e145854145899%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd145855145902%_))
                        (let ((_%e145861145907%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd145855145902%_))))
                          (let ((_%hd145862145910%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145861145907%_)))
                                (_%tl145863145912%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145861145907%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl145863145912%_))
                                (let ((_%e145864145915%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl145863145912%_))))
                                  (let ((_%hd145865145918%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e145864145915%_)))
                                        (_%tl145866145920%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e145864145915%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl145866145920%_))
                                        (_%loop145853145889%_
                                         _%lp-tl145856145904%_
                                         (cons _%hd145865145918%_
                                               _%body145857145894%_)
                                         (cons _%hd145862145910%_
                                               _%hd145858145896%_))
                                        (_%g145843145871%_
                                         _%g145844145874%_))))
                                (_%g145843145871%_ _%g145844145874%_))))
                        (_%g145843145871%_ _%g145844145874%_))))
                (let ((_%body145859145923%_ (reverse _%body145857145894%_))
                      (_%hd145860145925%_ (reverse _%hd145858145896%_)))
                  ((lambda (_%L145928%_ _%L145929%_)
                     (for-each
                      (lambda (_%g145943145945%_)
                        (gxc#compile-e__1 _%self145840%_ _%g145943145945%_))
                      (let ((__tmp146698
                             (lambda (_%g145947145950%_ _%g145948145952%_)
                               (cons _%g145947145950%_ _%g145948145952%_))))
                        (declare (not safe))
                        (__foldr1 __tmp146698 '() _%L145928%_))))
                   _%body145859145923%_
                   _%hd145860145925%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop145853145889%_
                                           _%target145850145884%_
                                           '()
                                           '()))
                                        (_%g145843145871%_
                                         _%g145844145874%_)))))
                              (_%g145843145871%_ _%g145844145874%_))))
                      (_%g145843145871%_ _%g145844145874%_)))))
          (_%g145842145955%_ _%stx145841%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self145693%_ _%stx145694%_)
        (let* ((_%g145696145731%_
                (lambda (_%g145697145728%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145697145728%_))))
               (_%g145695145837%_
                (lambda (_%g145697145734%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145697145734%_))
                      (let ((_%e145701145736%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145697145734%_))))
                        (let ((_%hd145702145739%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145701145736%_)))
                              (_%tl145703145741%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145701145736%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145703145741%_))
                              (let ((_%e145704145744%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145703145741%_))))
                                (let ((_%hd145705145747%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145704145744%_)))
                                      (_%tl145706145749%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145704145744%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd145705145747%_))
                                      (let ((_g146699_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd145705145747%_
                                                '0))))
                                        (begin
                                          (let ((_g146700_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g146699_)
                                                       (##values-length
                                                        _g146699_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g146700_ 2)))
                                                (error "Context expects 2 values"
                                                       _g146700_)))
                                          (let ((_%target145707145752%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g146699_ 0)))
                                                (_%tl145709145754%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g146699_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl145709145754%_))
                                                (letrec ((_%loop145710145757%_
                                                          (lambda (_%hd145708145760%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr145714145762%_
                           _%hd145715145764%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd145708145760%_))
                        (let ((_%e145711145767%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd145708145760%_))))
                          (let ((_%lp-hd145712145770%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145711145767%_)))
                                (_%lp-tl145713145772%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145711145767%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd145712145770%_))
                                (let ((_%e145718145775%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd145712145770%_))))
                                  (let ((_%hd145719145778%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e145718145775%_)))
                                        (_%tl145720145780%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e145718145775%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl145720145780%_))
                                        (let ((_%e145721145783%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl145720145780%_))))
                                          (let ((_%hd145722145786%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e145721145783%_)))
                                                (_%tl145723145788%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e145721145783%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl145723145788%_))
                                                (_%loop145710145757%_
                                                 _%lp-tl145713145772%_
                                                 (cons _%hd145722145786%_
                                                       _%expr145714145762%_)
                                                 (cons _%hd145719145778%_
                                                       _%hd145715145764%_))
                                                (_%g145696145731%_
                                                 _%g145697145734%_))))
                                        (_%g145696145731%_
                                         _%g145697145734%_))))
                                (_%g145696145731%_ _%g145697145734%_))))
                        (let ((_%expr145716145791%_
                               (reverse _%expr145714145762%_))
                              (_%hd145717145793%_
                               (reverse _%hd145715145764%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145706145749%_))
                              (let ((_%e145724145796%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145706145749%_))))
                                (let ((_%hd145725145799%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145724145796%_)))
                                      (_%tl145726145801%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145724145796%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl145726145801%_))
                                      ((lambda (_%L145804%_
                                                _%L145805%_
                                                _%L145806%_)
                                         (for-each
                                          (lambda (_%g145825145827%_)
                                            (gxc#compile-e__1
                                             _%self145693%_
                                             _%g145825145827%_))
                                          (let ((__tmp146702
                                                 (lambda (_%g145829145832%_
                                                          _%g145830145834%_)
                                                   (cons _%g145829145832%_
                                                         _%g145830145834%_)))
                                                (__tmp146701
                                                 (cons _%L145804%_ '())))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp146702
                                             __tmp146701
                                             _%L145805%_))))
                                       _%hd145725145799%_
                                       _%expr145716145791%_
                                       _%hd145717145793%_)
                                      (_%g145696145731%_ _%g145697145734%_))))
                              (_%g145696145731%_ _%g145697145734%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop145710145757%_
                                                   _%target145707145752%_
                                                   '()
                                                   '()))
                                                (_%g145696145731%_
                                                 _%g145697145734%_)))))
                                      (_%g145696145731%_ _%g145697145734%_))))
                              (_%g145696145731%_ _%g145697145734%_))))
                      (_%g145696145731%_ _%g145697145734%_)))))
          (_%g145695145837%_ _%stx145694%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self145638%_ _%stx145639%_)
        (let* ((_%g145641145655%_
                (lambda (_%g145642145652%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145642145652%_))))
               (_%g145640145690%_
                (lambda (_%g145642145658%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145642145658%_))
                      (let ((_%e145645145660%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145642145658%_))))
                        (let ((_%hd145646145663%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145645145660%_)))
                              (_%tl145647145665%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145645145660%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145647145665%_))
                              (let ((_%e145648145668%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145647145665%_))))
                                (let ((_%hd145649145671%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145648145668%_)))
                                      (_%tl145650145673%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145648145668%_))))
                                  ((lambda (_%L145676%_ _%L145677%_)
                                     (gxc#compile-e__1
                                      _%self145638%_
                                      (last _%L145676%_)))
                                   _%tl145650145673%_
                                   _%hd145649145671%_)))
                              (_%g145641145655%_ _%g145642145658%_))))
                      (_%g145641145655%_ _%g145642145658%_)))))
          (_%g145640145690%_ _%stx145639%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self145570%_ _%stx145571%_)
        (let* ((_%g145573145590%_
                (lambda (_%g145574145587%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145574145587%_))))
               (_%g145572145635%_
                (lambda (_%g145574145593%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145574145593%_))
                      (let ((_%e145577145595%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145574145593%_))))
                        (let ((_%hd145578145598%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145577145595%_)))
                              (_%tl145579145600%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145577145595%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145579145600%_))
                              (let ((_%e145580145603%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145579145600%_))))
                                (let ((_%hd145581145606%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145580145603%_)))
                                      (_%tl145582145608%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145580145603%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl145582145608%_))
                                      (let ((_%e145583145611%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl145582145608%_))))
                                        (let ((_%hd145584145614%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e145583145611%_)))
                                              (_%tl145585145616%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e145583145611%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl145585145616%_))
                                              ((lambda (_%L145619%_
                                                        _%L145620%_)
                                                 (gxc#compile-e__1
                                                  _%self145570%_
                                                  _%L145619%_))
                                               _%hd145584145614%_
                                               _%hd145581145606%_)
                                              (_%g145573145590%_
                                               _%g145574145593%_))))
                                      (_%g145573145590%_ _%g145574145593%_))))
                              (_%g145573145590%_ _%g145574145593%_))))
                      (_%g145573145590%_ _%g145574145593%_)))))
          (_%g145572145635%_ _%stx145571%_))))
    (define gxc#apply-operands
      (lambda (_%self145483%_ _%stx145484%_)
        (let* ((_%g145486145505%_
                (lambda (_%g145487145502%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145487145502%_))))
               (_%g145485145567%_
                (lambda (_%g145487145508%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145487145508%_))
                      (let ((_%e145489145510%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145487145508%_))))
                        (let ((_%hd145490145513%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145489145510%_)))
                              (_%tl145491145515%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145489145510%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl145491145515%_))
                              (let ((_g146703_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl145491145515%_
                                        '0))))
                                (begin
                                  (let ((_g146704_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g146703_)
                                               (##values-length _g146703_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g146704_ 2)))
                                        (error "Context expects 2 values"
                                               _g146704_)))
                                  (let ((_%target145492145518%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g146703_ 0)))
                                        (_%tl145494145520%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g146703_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl145494145520%_))
                                        (letrec ((_%loop145495145523%_
                                                  (lambda (_%hd145493145526%_
                                                           _%rands145499145528%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd145493145526%_))
                                                        (let ((_%e145496145531%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd145493145526%_))))
                  (let ((_%lp-hd145497145534%_
                         (let ()
                           (declare (not safe))
                           (##car _%e145496145531%_)))
                        (_%lp-tl145498145536%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e145496145531%_))))
                    (_%loop145495145523%_
                     _%lp-tl145498145536%_
                     (cons _%lp-hd145497145534%_ _%rands145499145528%_))))
                (let ((_%rands145500145539%_ (reverse _%rands145499145528%_)))
                  ((lambda (_%L145542%_)
                     (for-each
                      (lambda (_%g145555145557%_)
                        (gxc#compile-e__1 _%self145483%_ _%g145555145557%_))
                      (let ((__tmp146705
                             (lambda (_%g145559145562%_ _%g145560145564%_)
                               (cons _%g145559145562%_ _%g145560145564%_))))
                        (declare (not safe))
                        (__foldr1 __tmp146705 '() _%L145542%_))))
                   _%rands145500145539%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop145495145523%_
                                           _%target145492145518%_
                                           '()))
                                        (_%g145486145505%_
                                         _%g145487145508%_)))))
                              (_%g145486145505%_ _%g145487145508%_))))
                      (_%g145486145505%_ _%g145487145508%_)))))
          (_%g145485145567%_ _%stx145484%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx145480%_ _%src-stx145481%_)
        (let ((__tmp146706
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx145481%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx145480%_ __tmp146706))))
    (define gxc#xform-wrap-apply
      (lambda (_%stx145476%_ _%src-stx145477%_ _%ctx145478%_)
        (gxc#compile-e__1
         _%ctx145478%_
         (gxc#xform-wrap-source _%stx145476%_ _%src-stx145477%_))))
    (define gxc#xform-begin%
      (lambda (_%self145431%_ _%stx145432%_)
        (let* ((_%g145434145444%_
                (lambda (_%g145435145441%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145435145441%_))))
               (_%g145433145473%_
                (lambda (_%g145435145447%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145435145447%_))
                      (let ((_%e145437145449%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145435145447%_))))
                        (let ((_%hd145438145452%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145437145449%_)))
                              (_%tl145439145454%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145437145449%_))))
                          ((lambda (_%L145457%_)
                             (let ((_%forms145471%_
                                    (map (lambda (_%g145466145468%_)
                                           (gxc#compile-e__1
                                            _%self145431%_
                                            _%g145466145468%_))
                                         _%L145457%_)))
                               (gxc#xform-wrap-source
                                (cons '%#begin _%forms145471%_)
                                _%stx145432%_)))
                           _%tl145439145454%_)))
                      (_%g145434145444%_ _%g145435145447%_)))))
          (_%g145433145473%_ _%stx145432%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self145385%_ _%stx145386%_)
        (let* ((_%g145388145398%_
                (lambda (_%g145389145395%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145389145395%_))))
               (_%g145387145428%_
                (lambda (_%g145389145401%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145389145401%_))
                      (let ((_%e145391145403%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145389145401%_))))
                        (let ((_%hd145392145406%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145391145403%_)))
                              (_%tl145393145408%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145391145403%_))))
                          ((lambda (_%L145411%_)
                             (let ((__tmp146709
                                    (lambda ()
                                      (let ((_%forms145426%_
                                             (map (lambda (_%g145421145423%_)
                                                    (gxc#compile-e__1
                                                     _%self145385%_
                                                     _%g145421145423%_))
                                                  _%L145411%_)))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin-syntax _%forms145426%_)
                                         _%stx145386%_))))
                                   (__tmp146707
                                    (let ((__tmp146708
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp146708 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp146709
                                gx#current-expander-phi
                                __tmp146707)))
                           _%tl145393145408%_)))
                      (_%g145388145398%_ _%g145389145401%_)))))
          (_%g145387145428%_ _%stx145386%_))))
    (define gxc#xform-module%
      (lambda (_%self145322%_ _%stx145323%_)
        (let* ((_%g145325145339%_
                (lambda (_%g145326145336%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145326145336%_))))
               (_%g145324145382%_
                (lambda (_%g145326145342%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145326145342%_))
                      (let ((_%e145329145344%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145326145342%_))))
                        (let ((_%hd145330145347%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145329145344%_)))
                              (_%tl145331145349%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145329145344%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145331145349%_))
                              (let ((_%e145332145352%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145331145349%_))))
                                (let ((_%hd145333145355%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145332145352%_)))
                                      (_%tl145334145357%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145332145352%_))))
                                  ((lambda (_%L145360%_ _%L145361%_)
                                     (let* ((_%ctx145374%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L145361%_)))
                                            (_%code145376%_
                                             (##structure-ref
                                              _%ctx145374%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code145379%_
                                             (let ((__tmp146710
                                                    (lambda ()
                                                      (gxc#compile-e__1
                                                       _%self145322%_
                                                       _%code145376%_))))
                                               (declare (not safe))
                                               (call-with-parameters__1
                                                __tmp146710
                                                gx#current-expander-context
                                                _%ctx145374%_))))
                                       (##structure-set!
                                        _%ctx145374%_
                                        _%code145379%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _%L145361%_
                                                    (cons _%code145379%_ '())))
                                        _%stx145323%_)))
                                   _%tl145334145357%_
                                   _%hd145333145355%_)))
                              (_%g145325145339%_ _%g145326145342%_))))
                      (_%g145325145339%_ _%g145326145342%_)))))
          (_%g145324145382%_ _%stx145323%_))))
    (define gxc#xform-define-values%
      (lambda (_%self145252%_ _%stx145253%_)
        (let* ((_%g145255145272%_
                (lambda (_%g145256145269%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145256145269%_))))
               (_%g145254145319%_
                (lambda (_%g145256145275%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145256145275%_))
                      (let ((_%e145259145277%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145256145275%_))))
                        (let ((_%hd145260145280%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145259145277%_)))
                              (_%tl145261145282%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145259145277%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145261145282%_))
                              (let ((_%e145262145285%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145261145282%_))))
                                (let ((_%hd145263145288%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145262145285%_)))
                                      (_%tl145264145290%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145262145285%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl145264145290%_))
                                      (let ((_%e145265145293%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl145264145290%_))))
                                        (let ((_%hd145266145296%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e145265145293%_)))
                                              (_%tl145267145298%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e145265145293%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl145267145298%_))
                                              ((lambda (_%L145301%_
                                                        _%L145302%_)
                                                 (let ((_%expr145317%_
                                                        (gxc#compile-e__1
                                                         _%self145252%_
                                                         _%L145301%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons _%L145302%_
                                                                (cons _%expr145317%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx145253%_)))
                                               _%hd145266145296%_
                                               _%hd145263145288%_)
                                              (_%g145255145272%_
                                               _%g145256145275%_))))
                                      (_%g145255145272%_ _%g145256145275%_))))
                              (_%g145255145272%_ _%g145256145275%_))))
                      (_%g145255145272%_ _%g145256145275%_)))))
          (_%g145254145319%_ _%stx145253%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self145181%_ _%stx145182%_)
        (let* ((_%g145184145201%_
                (lambda (_%g145185145198%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145185145198%_))))
               (_%g145183145249%_
                (lambda (_%g145185145204%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145185145204%_))
                      (let ((_%e145188145206%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145185145204%_))))
                        (let ((_%hd145189145209%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145188145206%_)))
                              (_%tl145190145211%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145188145206%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145190145211%_))
                              (let ((_%e145191145214%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145190145211%_))))
                                (let ((_%hd145192145217%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145191145214%_)))
                                      (_%tl145193145219%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145191145214%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl145193145219%_))
                                      (let ((_%e145194145222%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl145193145219%_))))
                                        (let ((_%hd145195145225%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e145194145222%_)))
                                              (_%tl145196145227%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e145194145222%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl145196145227%_))
                                              ((lambda (_%L145230%_
                                                        _%L145231%_)
                                                 (let ((__tmp146713
                                                        (lambda ()
                                                          (let ((_%expr145247%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#compile-e__1 _%self145181%_ _%L145230%_)))
                    (gxc#xform-wrap-source
                     (cons '%#define-syntax
                           (cons _%L145231%_ (cons _%expr145247%_ '())))
                     _%stx145182%_))))
               (__tmp146711
                (let ((__tmp146712
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp146712 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp146713
                                                    gx#current-expander-phi
                                                    __tmp146711)))
                                               _%hd145195145225%_
                                               _%hd145192145217%_)
                                              (_%g145184145201%_
                                               _%g145185145204%_))))
                                      (_%g145184145201%_ _%g145185145204%_))))
                              (_%g145184145201%_ _%g145185145204%_))))
                      (_%g145184145201%_ _%g145185145204%_)))))
          (_%g145183145249%_ _%stx145182%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self145111%_ _%stx145112%_)
        (let* ((_%g145114145131%_
                (lambda (_%g145115145128%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145115145128%_))))
               (_%g145113145178%_
                (lambda (_%g145115145134%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145115145134%_))
                      (let ((_%e145118145136%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145115145134%_))))
                        (let ((_%hd145119145139%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145118145136%_)))
                              (_%tl145120145141%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145118145136%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145120145141%_))
                              (let ((_%e145121145144%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145120145141%_))))
                                (let ((_%hd145122145147%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145121145144%_)))
                                      (_%tl145123145149%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145121145144%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl145123145149%_))
                                      (let ((_%e145124145152%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl145123145149%_))))
                                        (let ((_%hd145125145155%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e145124145152%_)))
                                              (_%tl145126145157%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e145124145152%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl145126145157%_))
                                              ((lambda (_%L145160%_
                                                        _%L145161%_)
                                                 (let ((_%expr145176%_
                                                        (gxc#compile-e__1
                                                         _%self145111%_
                                                         _%L145160%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#begin-annotation
                                                          (cons _%L145161%_
                                                                (cons _%expr145176%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx145112%_)))
                                               _%hd145125145155%_
                                               _%hd145122145147%_)
                                              (_%g145114145131%_
                                               _%g145115145134%_))))
                                      (_%g145114145131%_ _%g145115145134%_))))
                              (_%g145114145131%_ _%g145115145134%_))))
                      (_%g145114145131%_ _%g145115145134%_)))))
          (_%g145113145178%_ _%stx145112%_))))
    (define gxc#xform-lambda%
      (lambda (_%self145049%_ _%stx145050%_)
        (let* ((_%g145052145066%_
                (lambda (_%g145053145063%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145053145063%_))))
               (_%g145051145108%_
                (lambda (_%g145053145069%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145053145069%_))
                      (let ((_%e145056145071%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145053145069%_))))
                        (let ((_%hd145057145074%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145056145071%_)))
                              (_%tl145058145076%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145056145071%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145058145076%_))
                              (let ((_%e145059145079%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145058145076%_))))
                                (let ((_%hd145060145082%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145059145079%_)))
                                      (_%tl145061145084%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145059145079%_))))
                                  ((lambda (_%L145087%_ _%L145088%_)
                                     (let ((__tmp146715
                                            (lambda ()
                                              (let ((_%body145106%_
                                                     (map (lambda (_%g145101145103%_)
                                                            (gxc#compile-e__1
                                                             _%self145049%_
                                                             _%g145101145103%_))
                                                          _%L145087%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#lambda
                                                       (cons _%L145088%_
                                                             _%body145106%_))
                                                 _%stx145050%_))))
                                           (__tmp146714
                                            (gxc#xform-let-locals
                                             _%L145088%_)))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp146715
                                        gxc#current-compile-local-env
                                        __tmp146714)))
                                   _%tl145061145084%_
                                   _%hd145060145082%_)))
                              (_%g145052145066%_ _%g145053145069%_))))
                      (_%g145052145066%_ _%g145053145069%_)))))
          (_%g145051145108%_ _%stx145050%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self144957%_ _%stx144958%_)
        (letrec ((_%clause-e144960%_
                  (lambda (_%clause145001%_)
                    (let* ((_%g145003145014%_
                            (lambda (_%g145004145011%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g145004145011%_))))
                           (_%g145002145046%_
                            (lambda (_%g145004145017%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g145004145017%_))
                                  (let ((_%e145007145019%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g145004145017%_))))
                                    (let ((_%hd145008145022%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e145007145019%_)))
                                          (_%tl145009145024%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e145007145019%_))))
                                      ((lambda (_%L145027%_ _%L145028%_)
                                         (let ((__tmp146717
                                                (lambda ()
                                                  (let ((_%body145044%_
                                                         (map (lambda (_%g145039145041%_)
                                                                (gxc#compile-e__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%self144957%_
                         _%g145039145041%_))
                      _%L145027%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%L145028%_
                                                          _%body145044%_))))
                                               (__tmp146716
                                                (gxc#xform-let-locals
                                                 _%L145028%_)))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp146717
                                            gxc#current-compile-local-env
                                            __tmp146716)))
                                       _%tl145009145024%_
                                       _%hd145008145022%_)))
                                  (_%g145003145014%_ _%g145004145017%_)))))
                      (_%g145002145046%_ _%clause145001%_)))))
          (let* ((_%g144962144972%_
                  (lambda (_%g144963144969%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g144963144969%_))))
                 (_%g144961144998%_
                  (lambda (_%g144963144975%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g144963144975%_))
                        (let ((_%e144965144977%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g144963144975%_))))
                          (let ((_%hd144966144980%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144965144977%_)))
                                (_%tl144967144982%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144965144977%_))))
                            ((lambda (_%L144985%_)
                               (let ((_%clauses144996%_
                                      (map _%clause-e144960%_ _%L144985%_)))
                                 (gxc#xform-wrap-source
                                  (cons '%#case-lambda _%clauses144996%_)
                                  _%stx144958%_)))
                             _%tl144967144982%_)))
                        (_%g144962144972%_ _%g144963144975%_)))))
            (_%g144961144998%_ _%stx144958%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self144711%_ _%stx144712%_)
        (let* ((_%g144714144747%_
                (lambda (_%g144715144744%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144715144744%_))))
               (_%g144713144954%_
                (lambda (_%g144715144750%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144715144750%_))
                      (let ((_%e144720144752%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144715144750%_))))
                        (let ((_%hd144721144755%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144720144752%_)))
                              (_%tl144722144757%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144720144752%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl144722144757%_))
                              (let ((_%e144723144760%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl144722144757%_))))
                                (let ((_%hd144724144763%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144723144760%_)))
                                      (_%tl144725144765%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144723144760%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd144724144763%_))
                                      (let ((_g146718_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd144724144763%_
                                                '0))))
                                        (begin
                                          (let ((_g146719_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g146718_)
                                                       (##values-length
                                                        _g146718_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g146719_ 2)))
                                                (error "Context expects 2 values"
                                                       _g146719_)))
                                          (let ((_%target144726144768%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g146718_ 0)))
                                                (_%tl144728144770%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g146718_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl144728144770%_))
                                                (letrec ((_%loop144729144773%_
                                                          (lambda (_%hd144727144776%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr144733144778%_
                           _%hd144734144780%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd144727144776%_))
                        (let ((_%e144730144783%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd144727144776%_))))
                          (let ((_%lp-hd144731144786%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144730144783%_)))
                                (_%lp-tl144732144788%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144730144783%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd144731144786%_))
                                (let ((_%e144737144791%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd144731144786%_))))
                                  (let ((_%hd144738144794%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e144737144791%_)))
                                        (_%tl144739144796%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e144737144791%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl144739144796%_))
                                        (let ((_%e144740144799%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl144739144796%_))))
                                          (let ((_%hd144741144802%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e144740144799%_)))
                                                (_%tl144742144804%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e144740144799%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl144742144804%_))
                                                (_%loop144729144773%_
                                                 _%lp-tl144732144788%_
                                                 (cons _%hd144741144802%_
                                                       _%expr144733144778%_)
                                                 (cons _%hd144738144794%_
                                                       _%hd144734144780%_))
                                                (_%g144714144747%_
                                                 _%g144715144750%_))))
                                        (_%g144714144747%_
                                         _%g144715144750%_))))
                                (_%g144714144747%_ _%g144715144750%_))))
                        (let ((_%expr144735144807%_
                               (reverse _%expr144733144778%_))
                              (_%hd144736144809%_
                               (reverse _%hd144734144780%_)))
                          ((lambda (_%L144812%_
                                    _%L144813%_
                                    _%L144814%_
                                    _%L144815%_)
                             (let* ((_%g144834144850%_
                                     (lambda (_%g144835144847%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g144835144847%_))))
                                    (_%g144833144940%_
                                     (lambda (_%g144835144853%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g144835144853%_))
                                           (let ((_g146720_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g144835144853%_
                                                     '0))))
                                             (begin
                                               (let ((_g146721_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g146720_)
                                                            (##values-length
                                                             _g146720_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g146721_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g146721_)))
                                               (let ((_%target144837144855%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g146720_
                                                         0)))
                                                     (_%tl144839144857%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g146720_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl144839144857%_))
                                                     (letrec ((_%loop144840144860%_
                                                               (lambda (_%hd144838144863%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr144844144865%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd144838144863%_))
                             (let ((_%e144841144868%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd144838144863%_))))
                               (let ((_%lp-hd144842144871%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e144841144868%_)))
                                     (_%lp-tl144843144873%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e144841144868%_))))
                                 (_%loop144840144860%_
                                  _%lp-tl144843144873%_
                                  (cons _%lp-hd144842144871%_
                                        _%expr144844144865%_))))
                             (let ((_%expr144845144876%_
                                    (reverse _%expr144844144865%_)))
                               ((lambda (_%L144879%_)
                                  (let ((__tmp146724
                                         (lambda ()
                                           (let* ((_%g144893144900%_
                                                   (lambda (_%g144894144897%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g144894144897%_))))
                                                  (_%g144892144926%_
                                                   (lambda (_%g144894144903%_)
                                                     ((lambda (_%L144905%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L144815%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L144879%_
                                  _%L144814%_))
                               (let ((__tmp146725
                                      (lambda (_%g144915144919%_
                                               _%g144916144921%_
                                               _%g144917144923%_)
                                        (cons (cons _%g144916144921%_
                                                    (cons _%g144915144919%_
                                                          '()))
                                              _%g144917144923%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp146725
                                  '()
                                  _%L144879%_
                                  _%L144814%_)))
                             _%L144905%_))
                 _%stx144712%_))
              _%g144894144903%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g144892144926%_
                                              (map (lambda (_%g144928144930%_)
                                                     (gxc#compile-e__1
                                                      _%self144711%_
                                                      _%g144928144930%_))
                                                   _%L144812%_)))))
                                        (__tmp146722
                                         (gxc#xform-let-locals
                                          (let ((__tmp146723
                                                 (lambda (_%g144932144935%_
                                                          _%g144933144937%_)
                                                   (cons _%g144932144935%_
                                                         _%g144933144937%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp146723
                                             '()
                                             _%L144814%_)))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp146724
                                     gxc#current-compile-local-env
                                     __tmp146722)))
                                _%expr144845144876%_))))))
               (_%loop144840144860%_ _%target144837144855%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g144834144850%_
                                                      _%g144835144853%_)))))
                                           (_%g144834144850%_
                                            _%g144835144853%_)))))
                               (_%g144833144940%_
                                (map (lambda (_%g144942144944%_)
                                       (gxc#compile-e__1
                                        _%self144711%_
                                        _%g144942144944%_))
                                     (let ((__tmp146726
                                            (lambda (_%g144946144949%_
                                                     _%g144947144951%_)
                                              (cons _%g144946144949%_
                                                    _%g144947144951%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp146726
                                        '()
                                        _%L144813%_))))))
                           _%tl144725144765%_
                           _%expr144735144807%_
                           _%hd144736144809%_
                           _%hd144721144755%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop144729144773%_
                                                   _%target144726144768%_
                                                   '()
                                                   '()))
                                                (_%g144714144747%_
                                                 _%g144715144750%_)))))
                                      (_%g144714144747%_ _%g144715144750%_))))
                              (_%g144714144747%_ _%g144715144750%_))))
                      (_%g144714144747%_ _%g144715144750%_)))))
          (_%g144713144954%_ _%stx144712%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self144465%_ _%stx144466%_)
        (let* ((_%g144468144501%_
                (lambda (_%g144469144498%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144469144498%_))))
               (_%g144467144708%_
                (lambda (_%g144469144504%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144469144504%_))
                      (let ((_%e144474144506%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144469144504%_))))
                        (let ((_%hd144475144509%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144474144506%_)))
                              (_%tl144476144511%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144474144506%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl144476144511%_))
                              (let ((_%e144477144514%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl144476144511%_))))
                                (let ((_%hd144478144517%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144477144514%_)))
                                      (_%tl144479144519%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144477144514%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd144478144517%_))
                                      (let ((_g146727_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd144478144517%_
                                                '0))))
                                        (begin
                                          (let ((_g146728_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g146727_)
                                                       (##values-length
                                                        _g146727_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g146728_ 2)))
                                                (error "Context expects 2 values"
                                                       _g146728_)))
                                          (let ((_%target144480144522%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g146727_ 0)))
                                                (_%tl144482144524%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g146727_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl144482144524%_))
                                                (letrec ((_%loop144483144527%_
                                                          (lambda (_%hd144481144530%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr144487144532%_
                           _%hd144488144534%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd144481144530%_))
                        (let ((_%e144484144537%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd144481144530%_))))
                          (let ((_%lp-hd144485144540%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144484144537%_)))
                                (_%lp-tl144486144542%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144484144537%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd144485144540%_))
                                (let ((_%e144491144545%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd144485144540%_))))
                                  (let ((_%hd144492144548%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e144491144545%_)))
                                        (_%tl144493144550%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e144491144545%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl144493144550%_))
                                        (let ((_%e144494144553%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl144493144550%_))))
                                          (let ((_%hd144495144556%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e144494144553%_)))
                                                (_%tl144496144558%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e144494144553%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl144496144558%_))
                                                (_%loop144483144527%_
                                                 _%lp-tl144486144542%_
                                                 (cons _%hd144495144556%_
                                                       _%expr144487144532%_)
                                                 (cons _%hd144492144548%_
                                                       _%hd144488144534%_))
                                                (_%g144468144501%_
                                                 _%g144469144504%_))))
                                        (_%g144468144501%_
                                         _%g144469144504%_))))
                                (_%g144468144501%_ _%g144469144504%_))))
                        (let ((_%expr144489144561%_
                               (reverse _%expr144487144532%_))
                              (_%hd144490144563%_
                               (reverse _%hd144488144534%_)))
                          ((lambda (_%L144566%_
                                    _%L144567%_
                                    _%L144568%_
                                    _%L144569%_)
                             (let ((__tmp146731
                                    (lambda ()
                                      (let* ((_%g144589144605%_
                                              (lambda (_%g144590144602%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g144590144602%_))))
                                             (_%g144588144687%_
                                              (lambda (_%g144590144608%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g144590144608%_))
                                                    (let ((_g146732_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g144590144608%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g146733_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g146732_)
                             (##values-length _g146732_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g146733_ 2)))
                      (error "Context expects 2 values" _g146733_)))
                (let ((_%target144592144610%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g146732_ 0)))
                      (_%tl144594144612%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g146732_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl144594144612%_))
                      (letrec ((_%loop144595144615%_
                                (lambda (_%hd144593144618%_
                                         _%expr144599144620%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd144593144618%_))
                                      (let ((_%e144596144623%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd144593144618%_))))
                                        (let ((_%lp-hd144597144626%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e144596144623%_)))
                                              (_%lp-tl144598144628%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e144596144623%_))))
                                          (_%loop144595144615%_
                                           _%lp-tl144598144628%_
                                           (cons _%lp-hd144597144626%_
                                                 _%expr144599144620%_))))
                                      (let ((_%expr144600144631%_
                                             (reverse _%expr144599144620%_)))
                                        ((lambda (_%L144634%_)
                                           (let* ((_%g144648144655%_
                                                   (lambda (_%g144649144652%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g144649144652%_))))
                                                  (_%g144647144680%_
                                                   (lambda (_%g144649144658%_)
                                                     ((lambda (_%L144660%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L144569%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L144634%_
                                  _%L144568%_))
                               (let ((__tmp146734
                                      (lambda (_%g144669144673%_
                                               _%g144670144675%_
                                               _%g144671144677%_)
                                        (cons (cons _%g144670144675%_
                                                    (cons _%g144669144673%_
                                                          '()))
                                              _%g144671144677%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp146734
                                  '()
                                  _%L144634%_
                                  _%L144568%_)))
                             _%L144660%_))
                 _%stx144466%_))
              _%g144649144658%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g144647144680%_
                                              (map (lambda (_%g144682144684%_)
                                                     (gxc#compile-e__1
                                                      _%self144465%_
                                                      _%g144682144684%_))
                                                   _%L144566%_))))
                                         _%expr144600144631%_))))))
                        (_%loop144595144615%_ _%target144592144610%_ '()))
                      (_%g144589144605%_ _%g144590144608%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g144589144605%_
                                                     _%g144590144608%_)))))
                                        (_%g144588144687%_
                                         (map (lambda (_%g144689144691%_)
                                                (gxc#compile-e__1
                                                 _%self144465%_
                                                 _%g144689144691%_))
                                              (let ((__tmp146735
                                                     (lambda (_%g144693144696%_
                                                              _%g144694144698%_)
                                                       (cons _%g144693144696%_
                                                             _%g144694144698%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp146735
                                                 '()
                                                 _%L144567%_)))))))
                                   (__tmp146729
                                    (gxc#xform-let-locals
                                     (let ((__tmp146730
                                            (lambda (_%g144700144703%_
                                                     _%g144701144705%_)
                                              (cons _%g144700144703%_
                                                    _%g144701144705%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp146730
                                        '()
                                        _%L144568%_)))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp146731
                                gxc#current-compile-local-env
                                __tmp146729)))
                           _%tl144479144519%_
                           _%expr144489144561%_
                           _%hd144490144563%_
                           _%hd144475144509%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop144483144527%_
                                                   _%target144480144522%_
                                                   '()
                                                   '()))
                                                (_%g144468144501%_
                                                 _%g144469144504%_)))))
                                      (_%g144468144501%_ _%g144469144504%_))))
                              (_%g144468144501%_ _%g144469144504%_))))
                      (_%g144468144501%_ _%g144469144504%_)))))
          (_%g144467144708%_ _%stx144466%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings144332%_)
        (letrec ((_%flatten144334%_
                  (lambda (_%maybe-lst144392%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%maybe-lst144392%_))
                        (cons _%maybe-lst144392%_ '())
                        (let _%loop144394%_ ((_%rest144396%_
                                              _%maybe-lst144392%_)
                                             (_%result144397%_ '()))
                          (let* ((_%__stx146623146624%_ _%rest144396%_)
                                 (_%g144401144413%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx146623146624%_)))))
                            (let ((_%__kont146625146626%_
                                   (lambda (_%L144451%_ _%L144452%_)
                                     (_%loop144394%_
                                      _%L144451%_
                                      (let ((__tmp146736
                                             (_%flatten144334%_ _%L144452%_)))
                                        (declare (not safe))
                                        (__foldl1
                                         cons
                                         _%result144397%_
                                         __tmp146736)))))
                                  (_%__kont146627146628%_
                                   (lambda (_%L144425%_)
                                     (cons _%L144425%_ _%result144397%_)))
                                  (_%__kont146629146630%_
                                   (lambda () _%result144397%_)))
                              (let ((_%g144399144438%_
                                     (lambda ()
                                       (let ((_%L144425%_
                                              _%__stx146623146624%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L144425%_))
                                             (_%__kont146627146628%_
                                              _%L144425%_)
                                             (_%__kont146629146630%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx146623146624%_))
                                    (let ((_%e144405144443%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx146623146624%_))))
                                      (let ((_%tl144407144448%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e144405144443%_)))
                                            (_%hd144406144446%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e144405144443%_))))
                                        (_%__kont146625146626%_
                                         _%tl144407144448%_
                                         _%hd144406144446%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g144399144438%_)))))))))))
          (let _%loop144336%_ ((_%rest144338%_
                                (_%flatten144334%_ _%bindings144332%_))
                               (_%locals144339%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-local-env))))
            (let* ((_%rest144340144351%_ _%rest144338%_)
                   (_%E144344144355%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching"
                               _%rest144340144351%_
                               '([(? identifier? id) . rest])
                               '((? identifier? id))
                               '(_)))
                      '#!void)))
              (let ((_%K144347144380%_
                     (lambda (_%rest144377%_ _%id144378%_)
                       (_%loop144336%_
                        _%rest144377%_
                        (cons (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _%id144378%_))
                              _%locals144339%_))))
                    (_%K144346144369%_
                     (lambda (_%id144367%_)
                       (cons (let ()
                               (declare (not safe))
                               (gxc#identifier-symbol _%id144367%_))
                             _%locals144339%_)))
                    (_%K144345144360%_ (lambda () _%locals144339%_)))
                (let ((_%try-match144342144374%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%rest144340144351%_))
                             (let ((_%id144372%_ _%rest144340144351%_))
                               (_%K144346144369%_ _%id144372%_))
                             (_%K144345144360%_)))))
                  (if (pair? _%rest144340144351%_)
                      (let ((_%tl144349144385%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest144340144351%_)))
                            (_%hd144348144383%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest144340144351%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd144348144383%_))
                            (let ((_%id144388%_ _%hd144348144383%_)
                                  (_%rest144390%_ _%tl144349144385%_))
                              (_%K144347144380%_ _%rest144390%_ _%id144388%_))
                            (_%K144345144360%_)))
                      (_%try-match144342144374%_)))))))))
    (define gxc#xform-operands
      (lambda (_%self144284%_ _%stx144285%_)
        (let* ((_%g144287144298%_
                (lambda (_%g144288144295%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144288144295%_))))
               (_%g144286144329%_
                (lambda (_%g144288144301%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144288144301%_))
                      (let ((_%e144291144303%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144288144301%_))))
                        (let ((_%hd144292144306%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144291144303%_)))
                              (_%tl144293144308%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144291144303%_))))
                          ((lambda (_%L144311%_ _%L144312%_)
                             (let ((_%rands144327%_
                                    (map (lambda (_%g144322144324%_)
                                           (gxc#compile-e__1
                                            _%self144284%_
                                            _%g144322144324%_))
                                         _%L144311%_)))
                               (gxc#xform-wrap-source
                                (cons _%L144312%_ _%rands144327%_)
                                _%stx144285%_)))
                           _%tl144293144308%_
                           _%hd144292144306%_)))
                      (_%g144287144298%_ _%g144288144301%_)))))
          (_%g144286144329%_ _%stx144285%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self144214%_ _%stx144215%_)
        (let* ((_%g144217144234%_
                (lambda (_%g144218144231%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144218144231%_))))
               (_%g144216144281%_
                (lambda (_%g144218144237%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144218144237%_))
                      (let ((_%e144221144239%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144218144237%_))))
                        (let ((_%hd144222144242%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144221144239%_)))
                              (_%tl144223144244%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144221144239%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl144223144244%_))
                              (let ((_%e144224144247%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl144223144244%_))))
                                (let ((_%hd144225144250%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144224144247%_)))
                                      (_%tl144226144252%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144224144247%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl144226144252%_))
                                      (let ((_%e144227144255%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl144226144252%_))))
                                        (let ((_%hd144228144258%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e144227144255%_)))
                                              (_%tl144229144260%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e144227144255%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl144229144260%_))
                                              ((lambda (_%L144263%_
                                                        _%L144264%_)
                                                 (let ((_%expr144279%_
                                                        (gxc#compile-e__1
                                                         _%self144214%_
                                                         _%L144263%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _%L144264%_
                                                                (cons _%expr144279%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx144215%_)))
                                               _%hd144228144258%_
                                               _%hd144225144250%_)
                                              (_%g144217144234%_
                                               _%g144218144237%_))))
                                      (_%g144217144234%_ _%g144218144237%_))))
                              (_%g144217144234%_ _%g144218144237%_))))
                      (_%g144217144234%_ _%g144218144237%_)))))
          (_%g144216144281%_ _%stx144215%_))))))
