(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/method::timestamp 1756721296)
  (begin
    (define gxc#current-compile-method (make-parameter '#f))
    (define gxc#compile-e__0
      (lambda (_%stx146434%_)
        (let* ((_%self146436%_
                (let () (declare (not safe)) (gxc#current-compile-method)))
               (_%$e146438%_
                (let ((__tmp146656 (gxc#stx-car-e _%stx146434%_)))
                  (declare (not safe))
                  (method-ref _%self146436%_ __tmp146656))))
          (if _%$e146438%_
              ((lambda (_%method146441%_)
                 (declare (not safe))
                 (let ((_%$e146444%_ (gx#stx-source _%stx146434%_)))
                   (if _%$e146444%_
                       ((lambda (_%source146447%_)
                          (call-with-parameters__1
                           (lambda ()
                             (_%method146441%_ _%self146436%_ _%stx146434%_))
                           gxc#current-compile-context
                           (cons (cons '@ (cons _%source146447%_ '()))
                                 (let ((_%$e146451%_
                                        (gxc#current-compile-context)))
                                   (if _%$e146451%_ _%$e146451%_ '())))))
                        _%$e146444%_)
                       (_%method146441%_ _%self146436%_ _%stx146434%_))))
               _%$e146438%_)
              (let ((__tmp146658 (gxc#stx-car-e _%stx146434%_))
                    (__tmp146657
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx146434%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self146436%_
                       __tmp146658
                       __tmp146657))))))
    (define gxc#compile-e__1
      (lambda (_%self146456%_ _%stx146457%_)
        (let ((_%$e146459%_
               (let ((__tmp146659 (gxc#stx-car-e _%stx146457%_)))
                 (declare (not safe))
                 (method-ref _%self146456%_ __tmp146659))))
          (if _%$e146459%_
              ((lambda (_%method146462%_)
                 (declare (not safe))
                 (let ((_%$e146465%_ (gx#stx-source _%stx146457%_)))
                   (if _%$e146465%_
                       ((lambda (_%source146468%_)
                          (call-with-parameters__1
                           (lambda ()
                             (_%method146462%_ _%self146456%_ _%stx146457%_))
                           gxc#current-compile-context
                           (cons (cons '@ (cons _%source146468%_ '()))
                                 (let ((_%$e146472%_
                                        (gxc#current-compile-context)))
                                   (if _%$e146472%_ _%$e146472%_ '())))))
                        _%$e146465%_)
                       (_%method146462%_ _%self146456%_ _%stx146457%_))))
               _%$e146459%_)
              (let ((__tmp146661 (gxc#stx-car-e _%stx146457%_))
                    (__tmp146660
                     (let ()
                       (declare (not safe))
                       (gx#syntax->datum _%stx146457%_))))
                (declare (not safe))
                (error '"missing method"
                       _%self146456%_
                       __tmp146661
                       __tmp146660))))))
    (define gxc#compile-e
      (lambda _g146662_
        (let ((_g146663_ (let () (declare (not safe)) (##length _g146662_))))
          (cond ((let () (declare (not safe)) (##fx= _g146663_ 1))
                 (apply gxc#compile-e__0 _g146662_))
                ((let () (declare (not safe)) (##fx= _g146663_ 2))
                 (apply gxc#compile-e__1 _g146662_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-e
                  _g146662_))))))
    (define gxc#stx-car-e
      (lambda (_%stx146432%_)
        (let ((__tmp146664
               (car (let () (declare (not safe)) (gx#stx-e _%stx146432%_)))))
          (declare (not safe))
          (gx#stx-e __tmp146664))))
    (define gxc#void-method (lambda (_%self146429%_ _%stx146430%_) '#!void))
    (define gxc#false-method (lambda (_%self146426%_ _%stx146427%_) '#f))
    (define gxc#true-method (lambda (_%self146423%_ _%stx146424%_) '#t))
    (define gxc#identity-method
      (lambda (_%self146420%_ _%stx146421%_) _%stx146421%_))
    (define gxc#::void-expression::t
      (let ((__tmp146665 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-expression::t
         '::void-expression
         __tmp146665
         '()
         '()
         '#f)))
    (define gxc#::void-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-expression::t)))
    (define gxc#make-::void-expression
      (lambda _%$args146417%_
        (apply make-instance gxc#::void-expression::t _%$args146417%_)))
    (define gxc#::void-expression-bind-methods!
      (let ((__tmp146666
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
        (__make-atomic-promise __tmp146666)))
    (define gxc#::void-special-form::t
      (let ((__tmp146667 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::void-special-form::t
         '::void-special-form
         __tmp146667
         '()
         '()
         '#f)))
    (define gxc#::void-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::void-special-form::t)))
    (define gxc#make-::void-special-form
      (lambda _%$args146413%_
        (apply make-instance gxc#::void-special-form::t _%$args146413%_)))
    (define gxc#::void-special-form-bind-methods!
      (let ((__tmp146668
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
        (__make-atomic-promise __tmp146668)))
    (define gxc#::void::t
      (let ((__tmp146669
             (list gxc#::void-special-form::t gxc#::void-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::void::t '::void __tmp146669 '() '() '#f)))
    (define gxc#::void?
      (let () (declare (not safe)) (__make-class-predicate gxc#::void::t)))
    (define gxc#make-::void
      (lambda _%$args146409%_
        (apply make-instance gxc#::void::t _%$args146409%_)))
    (define gxc#::void-bind-methods!
      (let ((__tmp146670
             (lambda ()
               (force gxc#::void-special-form-bind-methods!)
               (force gxc#::void-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp146670)))
    (define gxc#::false-expression::t
      (let ((__tmp146671 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-expression::t
         '::false-expression
         __tmp146671
         '()
         '()
         '#f)))
    (define gxc#::false-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-expression::t)))
    (define gxc#make-::false-expression
      (lambda _%$args146405%_
        (apply make-instance gxc#::false-expression::t _%$args146405%_)))
    (define gxc#::false-expression-bind-methods!
      (let ((__tmp146672
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
        (__make-atomic-promise __tmp146672)))
    (define gxc#::false-special-form::t
      (let ((__tmp146673 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::false-special-form::t
         '::false-special-form
         __tmp146673
         '()
         '()
         '#f)))
    (define gxc#::false-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::false-special-form::t)))
    (define gxc#make-::false-special-form
      (lambda _%$args146401%_
        (apply make-instance gxc#::false-special-form::t _%$args146401%_)))
    (define gxc#::false-special-form-bind-methods!
      (let ((__tmp146674
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
        (__make-atomic-promise __tmp146674)))
    (define gxc#::false::t
      (let ((__tmp146675
             (list gxc#::false-special-form::t gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type 'gxc#::false::t '::false __tmp146675 '() '() '#f)))
    (define gxc#::false?
      (let () (declare (not safe)) (__make-class-predicate gxc#::false::t)))
    (define gxc#make-::false
      (lambda _%$args146397%_
        (apply make-instance gxc#::false::t _%$args146397%_)))
    (define gxc#::false-bind-methods!
      (let ((__tmp146676
             (lambda ()
               (force gxc#::false-special-form-bind-methods!)
               (force gxc#::false-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp146676)))
    (define gxc#::identity-expression::t
      (let ((__tmp146677 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-expression::t
         '::identity-expression
         __tmp146677
         '()
         '()
         '#f)))
    (define gxc#::identity-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-expression::t)))
    (define gxc#make-::identity-expression
      (lambda _%$args146393%_
        (apply make-instance gxc#::identity-expression::t _%$args146393%_)))
    (define gxc#::identity-expression-bind-methods!
      (let ((__tmp146678
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
        (__make-atomic-promise __tmp146678)))
    (define gxc#::identity-special-form::t
      (let ((__tmp146679 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity-special-form::t
         '::identity-special-form
         __tmp146679
         '()
         '()
         '#f)))
    (define gxc#::identity-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::identity-special-form::t)))
    (define gxc#make-::identity-special-form
      (lambda _%$args146389%_
        (apply make-instance gxc#::identity-special-form::t _%$args146389%_)))
    (define gxc#::identity-special-form-bind-methods!
      (let ((__tmp146680
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
        (__make-atomic-promise __tmp146680)))
    (define gxc#::identity::t
      (let ((__tmp146681
             (list gxc#::identity-special-form::t
                   gxc#::identity-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::identity::t
         '::identity
         __tmp146681
         '()
         '()
         '#f)))
    (define gxc#::identity?
      (let () (declare (not safe)) (__make-class-predicate gxc#::identity::t)))
    (define gxc#make-::identity
      (lambda _%$args146385%_
        (apply make-instance gxc#::identity::t _%$args146385%_)))
    (define gxc#::identity-bind-methods!
      (let ((__tmp146682
             (lambda ()
               (force gxc#::identity-special-form-bind-methods!)
               (force gxc#::identity-expression-bind-methods!))))
        (declare (not safe))
        (__make-atomic-promise __tmp146682)))
    (define gxc#::basic-xform-expression::t
      (let ((__tmp146683 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform-expression::t
         '::basic-xform-expression
         __tmp146683
         '()
         '()
         '#f)))
    (define gxc#::basic-xform-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform-expression::t)))
    (define gxc#make-::basic-xform-expression
      (lambda _%$args146381%_
        (apply make-instance gxc#::basic-xform-expression::t _%$args146381%_)))
    (define gxc#::basic-xform-expression-bind-methods!
      (let ((__tmp146684
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
        (__make-atomic-promise __tmp146684)))
    (define gxc#::basic-xform::t
      (let ((__tmp146685
             (list gxc#::basic-xform-expression::t gxc#::identity::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::basic-xform::t
         '::basic-xform
         __tmp146685
         '()
         '()
         '#f)))
    (define gxc#::basic-xform?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::basic-xform::t)))
    (define gxc#make-::basic-xform
      (lambda _%$args146377%_
        (apply make-instance gxc#::basic-xform::t _%$args146377%_)))
    (define gxc#::basic-xform-bind-methods!
      (let ((__tmp146686
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
        (__make-atomic-promise __tmp146686)))
    (define gxc#apply-begin%
      (lambda (_%self146333%_ _%stx146334%_)
        (let* ((_%g146336146346%_
                (lambda (_%g146337146343%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g146337146343%_))))
               (_%g146335146373%_
                (lambda (_%g146337146349%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g146337146349%_))
                      (let ((_%e146339146351%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g146337146349%_))))
                        (let ((_%hd146340146354%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e146339146351%_)))
                              (_%tl146341146356%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e146339146351%_))))
                          ((lambda (_%L146359%_)
                             (for-each
                              (lambda (_%g146368146370%_)
                                (gxc#compile-e__1
                                 _%self146333%_
                                 _%g146368146370%_))
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L146359%_))))
                           _%tl146341146356%_)))
                      (_%g146336146346%_ _%g146337146349%_)))))
          (_%g146335146373%_ _%stx146334%_))))
    (define gxc#apply-last-begin%
      (lambda (_%self146294%_ _%stx146295%_)
        (let* ((_%g146297146307%_
                (lambda (_%g146298146304%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g146298146304%_))))
               (_%g146296146330%_
                (lambda (_%g146298146310%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g146298146310%_))
                      (let ((_%e146300146312%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g146298146310%_))))
                        (let ((_%hd146301146315%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e146300146312%_)))
                              (_%tl146302146317%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e146300146312%_))))
                          ((lambda (_%L146320%_)
                             (gxc#compile-e__1
                              _%self146294%_
                              (last _%L146320%_)))
                           _%tl146302146317%_)))
                      (_%g146297146307%_ _%g146298146310%_)))))
          (_%g146296146330%_ _%stx146295%_))))
    (define gxc#apply-begin-syntax%
      (lambda (_%self146290%_ _%stx146291%_)
        (let ((__tmp146689
               (lambda () (gxc#apply-begin% _%self146290%_ _%stx146291%_)))
              (__tmp146687
               (let ((__tmp146688
                      (let () (declare (not safe)) (gx#current-expander-phi))))
                 (declare (not safe))
                 (##fx+ __tmp146688 '1))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp146689
           gx#current-expander-phi
           __tmp146687))))
    (define gxc#apply-module%
      (lambda (_%self146229%_ _%stx146230%_)
        (let* ((_%g146232146246%_
                (lambda (_%g146233146243%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g146233146243%_))))
               (_%g146231146287%_
                (lambda (_%g146233146249%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g146233146249%_))
                      (let ((_%e146236146251%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g146233146249%_))))
                        (let ((_%hd146237146254%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e146236146251%_)))
                              (_%tl146238146256%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e146236146251%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl146238146256%_))
                              (let ((_%e146239146259%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl146238146256%_))))
                                (let ((_%hd146240146262%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e146239146259%_)))
                                      (_%tl146241146264%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e146239146259%_))))
                                  ((lambda (_%L146267%_ _%L146268%_)
                                     (let* ((_%ctx146281%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L146268%_)))
                                            (_%ctx-stx146283%_
                                             (##structure-ref
                                              _%ctx146281%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp146690
                                             (lambda ()
                                               (gxc#compile-e__1
                                                _%self146229%_
                                                _%ctx-stx146283%_))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp146690
                                        gx#current-expander-context
                                        _%ctx146281%_)))
                                   _%tl146241146264%_
                                   _%hd146240146262%_)))
                              (_%g146232146246%_ _%g146233146249%_))))
                      (_%g146232146246%_ _%g146233146249%_)))))
          (_%g146231146287%_ _%stx146230%_))))
    (define gxc#apply-begin-annotation%
      (lambda (_%self146161%_ _%stx146162%_)
        (let* ((_%g146164146181%_
                (lambda (_%g146165146178%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g146165146178%_))))
               (_%g146163146226%_
                (lambda (_%g146165146184%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g146165146184%_))
                      (let ((_%e146168146186%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g146165146184%_))))
                        (let ((_%hd146169146189%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e146168146186%_)))
                              (_%tl146170146191%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e146168146186%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl146170146191%_))
                              (let ((_%e146171146194%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl146170146191%_))))
                                (let ((_%hd146172146197%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e146171146194%_)))
                                      (_%tl146173146199%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e146171146194%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl146173146199%_))
                                      (let ((_%e146174146202%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl146173146199%_))))
                                        (let ((_%hd146175146205%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e146174146202%_)))
                                              (_%tl146176146207%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e146174146202%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl146176146207%_))
                                              ((lambda (_%L146210%_
                                                        _%L146211%_)
                                                 (gxc#compile-e__1
                                                  _%self146161%_
                                                  _%L146210%_))
                                               _%hd146175146205%_
                                               _%hd146172146197%_)
                                              (_%g146164146181%_
                                               _%g146165146184%_))))
                                      (_%g146164146181%_ _%g146165146184%_))))
                              (_%g146164146181%_ _%g146165146184%_))))
                      (_%g146164146181%_ _%g146165146184%_)))))
          (_%g146163146226%_ _%stx146162%_))))
    (define gxc#apply-define-values%
      (lambda (_%self146093%_ _%stx146094%_)
        (let* ((_%g146096146113%_
                (lambda (_%g146097146110%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g146097146110%_))))
               (_%g146095146158%_
                (lambda (_%g146097146116%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g146097146116%_))
                      (let ((_%e146100146118%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g146097146116%_))))
                        (let ((_%hd146101146121%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e146100146118%_)))
                              (_%tl146102146123%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e146100146118%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl146102146123%_))
                              (let ((_%e146103146126%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl146102146123%_))))
                                (let ((_%hd146104146129%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e146103146126%_)))
                                      (_%tl146105146131%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e146103146126%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl146105146131%_))
                                      (let ((_%e146106146134%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl146105146131%_))))
                                        (let ((_%hd146107146137%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e146106146134%_)))
                                              (_%tl146108146139%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e146106146134%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl146108146139%_))
                                              ((lambda (_%L146142%_
                                                        _%L146143%_)
                                                 (gxc#compile-e__1
                                                  _%self146093%_
                                                  _%L146142%_))
                                               _%hd146107146137%_
                                               _%hd146104146129%_)
                                              (_%g146096146113%_
                                               _%g146097146116%_))))
                                      (_%g146096146113%_ _%g146097146116%_))))
                              (_%g146096146113%_ _%g146097146116%_))))
                      (_%g146096146113%_ _%g146097146116%_)))))
          (_%g146095146158%_ _%stx146094%_))))
    (define gxc#apply-define-syntax%
      (lambda (_%self146024%_ _%stx146025%_)
        (let* ((_%g146027146044%_
                (lambda (_%g146028146041%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g146028146041%_))))
               (_%g146026146090%_
                (lambda (_%g146028146047%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g146028146047%_))
                      (let ((_%e146031146049%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g146028146047%_))))
                        (let ((_%hd146032146052%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e146031146049%_)))
                              (_%tl146033146054%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e146031146049%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl146033146054%_))
                              (let ((_%e146034146057%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl146033146054%_))))
                                (let ((_%hd146035146060%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e146034146057%_)))
                                      (_%tl146036146062%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e146034146057%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl146036146062%_))
                                      (let ((_%e146037146065%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl146036146062%_))))
                                        (let ((_%hd146038146068%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e146037146065%_)))
                                              (_%tl146039146070%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e146037146065%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl146039146070%_))
                                              ((lambda (_%L146073%_
                                                        _%L146074%_)
                                                 (let ((__tmp146693
                                                        (lambda ()
                                                          (gxc#compile-e__1
                                                           _%self146024%_
                                                           _%L146073%_)))
                                                       (__tmp146691
                                                        (let ((__tmp146692
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp146692 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp146693
                                                    gx#current-expander-phi
                                                    __tmp146691)))
                                               _%hd146038146068%_
                                               _%hd146035146060%_)
                                              (_%g146027146044%_
                                               _%g146028146047%_))))
                                      (_%g146027146044%_ _%g146028146047%_))))
                              (_%g146027146044%_ _%g146028146047%_))))
                      (_%g146027146044%_ _%g146028146047%_)))))
          (_%g146026146090%_ _%stx146025%_))))
    (define gxc#apply-body-lambda%
      (lambda (_%self145956%_ _%stx145957%_)
        (let* ((_%g145959145976%_
                (lambda (_%g145960145973%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145960145973%_))))
               (_%g145958146021%_
                (lambda (_%g145960145979%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145960145979%_))
                      (let ((_%e145963145981%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145960145979%_))))
                        (let ((_%hd145964145984%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145963145981%_)))
                              (_%tl145965145986%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145963145981%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145965145986%_))
                              (let ((_%e145966145989%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145965145986%_))))
                                (let ((_%hd145967145992%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145966145989%_)))
                                      (_%tl145968145994%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145966145989%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl145968145994%_))
                                      (let ((_%e145969145997%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl145968145994%_))))
                                        (let ((_%hd145970146000%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e145969145997%_)))
                                              (_%tl145971146002%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e145969145997%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl145971146002%_))
                                              ((lambda (_%L146005%_
                                                        _%L146006%_)
                                                 (gxc#compile-e__1
                                                  _%self145956%_
                                                  _%L146005%_))
                                               _%hd145970146000%_
                                               _%hd145967145992%_)
                                              (_%g145959145976%_
                                               _%g145960145979%_))))
                                      (_%g145959145976%_ _%g145960145979%_))))
                              (_%g145959145976%_ _%g145960145979%_))))
                      (_%g145959145976%_ _%g145960145979%_)))))
          (_%g145958146021%_ _%stx145957%_))))
    (define gxc#apply-body-case-lambda%
      (lambda (_%self145838%_ _%stx145839%_)
        (let* ((_%g145841145869%_
                (lambda (_%g145842145866%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145842145866%_))))
               (_%g145840145953%_
                (lambda (_%g145842145872%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145842145872%_))
                      (let ((_%e145845145874%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145842145872%_))))
                        (let ((_%hd145846145877%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145845145874%_)))
                              (_%tl145847145879%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145845145874%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl145847145879%_))
                              (let ((_g146694_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl145847145879%_
                                        '0))))
                                (begin
                                  (let ((_g146695_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g146694_)
                                               (##values-length _g146694_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g146695_ 2)))
                                        (error "Context expects 2 values"
                                               _g146695_)))
                                  (let ((_%target145848145882%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g146694_ 0)))
                                        (_%tl145850145884%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g146694_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl145850145884%_))
                                        (letrec ((_%loop145851145887%_
                                                  (lambda (_%hd145849145890%_
                                                           _%body145855145892%_
                                                           _%hd145856145894%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd145849145890%_))
                                                        (let ((_%e145852145897%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd145849145890%_))))
                  (let ((_%lp-hd145853145900%_
                         (let ()
                           (declare (not safe))
                           (##car _%e145852145897%_)))
                        (_%lp-tl145854145902%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e145852145897%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd145853145900%_))
                        (let ((_%e145859145905%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd145853145900%_))))
                          (let ((_%hd145860145908%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145859145905%_)))
                                (_%tl145861145910%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145859145905%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl145861145910%_))
                                (let ((_%e145862145913%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl145861145910%_))))
                                  (let ((_%hd145863145916%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e145862145913%_)))
                                        (_%tl145864145918%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e145862145913%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl145864145918%_))
                                        (_%loop145851145887%_
                                         _%lp-tl145854145902%_
                                         (cons _%hd145863145916%_
                                               _%body145855145892%_)
                                         (cons _%hd145860145908%_
                                               _%hd145856145894%_))
                                        (_%g145841145869%_
                                         _%g145842145872%_))))
                                (_%g145841145869%_ _%g145842145872%_))))
                        (_%g145841145869%_ _%g145842145872%_))))
                (let ((_%body145857145921%_ (reverse _%body145855145892%_))
                      (_%hd145858145923%_ (reverse _%hd145856145894%_)))
                  ((lambda (_%L145926%_ _%L145927%_)
                     (for-each
                      (lambda (_%g145941145943%_)
                        (gxc#compile-e__1 _%self145838%_ _%g145941145943%_))
                      (let ((__tmp146696
                             (lambda (_%g145945145948%_ _%g145946145950%_)
                               (cons _%g145945145948%_ _%g145946145950%_))))
                        (declare (not safe))
                        (__foldr1 __tmp146696 '() _%L145926%_))))
                   _%body145857145921%_
                   _%hd145858145923%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop145851145887%_
                                           _%target145848145882%_
                                           '()
                                           '()))
                                        (_%g145841145869%_
                                         _%g145842145872%_)))))
                              (_%g145841145869%_ _%g145842145872%_))))
                      (_%g145841145869%_ _%g145842145872%_)))))
          (_%g145840145953%_ _%stx145839%_))))
    (define gxc#apply-body-let-values%
      (lambda (_%self145691%_ _%stx145692%_)
        (let* ((_%g145694145729%_
                (lambda (_%g145695145726%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145695145726%_))))
               (_%g145693145835%_
                (lambda (_%g145695145732%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145695145732%_))
                      (let ((_%e145699145734%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145695145732%_))))
                        (let ((_%hd145700145737%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145699145734%_)))
                              (_%tl145701145739%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145699145734%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145701145739%_))
                              (let ((_%e145702145742%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145701145739%_))))
                                (let ((_%hd145703145745%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145702145742%_)))
                                      (_%tl145704145747%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145702145742%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd145703145745%_))
                                      (let ((_g146697_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd145703145745%_
                                                '0))))
                                        (begin
                                          (let ((_g146698_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g146697_)
                                                       (##values-length
                                                        _g146697_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g146698_ 2)))
                                                (error "Context expects 2 values"
                                                       _g146698_)))
                                          (let ((_%target145705145750%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g146697_ 0)))
                                                (_%tl145707145752%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g146697_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl145707145752%_))
                                                (letrec ((_%loop145708145755%_
                                                          (lambda (_%hd145706145758%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr145712145760%_
                           _%hd145713145762%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd145706145758%_))
                        (let ((_%e145709145765%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd145706145758%_))))
                          (let ((_%lp-hd145710145768%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145709145765%_)))
                                (_%lp-tl145711145770%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145709145765%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd145710145768%_))
                                (let ((_%e145716145773%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd145710145768%_))))
                                  (let ((_%hd145717145776%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e145716145773%_)))
                                        (_%tl145718145778%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e145716145773%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl145718145778%_))
                                        (let ((_%e145719145781%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl145718145778%_))))
                                          (let ((_%hd145720145784%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e145719145781%_)))
                                                (_%tl145721145786%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e145719145781%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl145721145786%_))
                                                (_%loop145708145755%_
                                                 _%lp-tl145711145770%_
                                                 (cons _%hd145720145784%_
                                                       _%expr145712145760%_)
                                                 (cons _%hd145717145776%_
                                                       _%hd145713145762%_))
                                                (_%g145694145729%_
                                                 _%g145695145732%_))))
                                        (_%g145694145729%_
                                         _%g145695145732%_))))
                                (_%g145694145729%_ _%g145695145732%_))))
                        (let ((_%expr145714145789%_
                               (reverse _%expr145712145760%_))
                              (_%hd145715145791%_
                               (reverse _%hd145713145762%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145704145747%_))
                              (let ((_%e145722145794%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145704145747%_))))
                                (let ((_%hd145723145797%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145722145794%_)))
                                      (_%tl145724145799%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145722145794%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl145724145799%_))
                                      ((lambda (_%L145802%_
                                                _%L145803%_
                                                _%L145804%_)
                                         (for-each
                                          (lambda (_%g145823145825%_)
                                            (gxc#compile-e__1
                                             _%self145691%_
                                             _%g145823145825%_))
                                          (let ((__tmp146700
                                                 (lambda (_%g145827145830%_
                                                          _%g145828145832%_)
                                                   (cons _%g145827145830%_
                                                         _%g145828145832%_)))
                                                (__tmp146699
                                                 (cons _%L145802%_ '())))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp146700
                                             __tmp146699
                                             _%L145803%_))))
                                       _%hd145723145797%_
                                       _%expr145714145789%_
                                       _%hd145715145791%_)
                                      (_%g145694145729%_ _%g145695145732%_))))
                              (_%g145694145729%_ _%g145695145732%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop145708145755%_
                                                   _%target145705145750%_
                                                   '()
                                                   '()))
                                                (_%g145694145729%_
                                                 _%g145695145732%_)))))
                                      (_%g145694145729%_ _%g145695145732%_))))
                              (_%g145694145729%_ _%g145695145732%_))))
                      (_%g145694145729%_ _%g145695145732%_)))))
          (_%g145693145835%_ _%stx145692%_))))
    (define gxc#apply-body-last-let-values%
      (lambda (_%self145636%_ _%stx145637%_)
        (let* ((_%g145639145653%_
                (lambda (_%g145640145650%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145640145650%_))))
               (_%g145638145688%_
                (lambda (_%g145640145656%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145640145656%_))
                      (let ((_%e145643145658%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145640145656%_))))
                        (let ((_%hd145644145661%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145643145658%_)))
                              (_%tl145645145663%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145643145658%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145645145663%_))
                              (let ((_%e145646145666%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145645145663%_))))
                                (let ((_%hd145647145669%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145646145666%_)))
                                      (_%tl145648145671%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145646145666%_))))
                                  ((lambda (_%L145674%_ _%L145675%_)
                                     (gxc#compile-e__1
                                      _%self145636%_
                                      (last _%L145674%_)))
                                   _%tl145648145671%_
                                   _%hd145647145669%_)))
                              (_%g145639145653%_ _%g145640145656%_))))
                      (_%g145639145653%_ _%g145640145656%_)))))
          (_%g145638145688%_ _%stx145637%_))))
    (define gxc#apply-body-setq%
      (lambda (_%self145568%_ _%stx145569%_)
        (let* ((_%g145571145588%_
                (lambda (_%g145572145585%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145572145585%_))))
               (_%g145570145633%_
                (lambda (_%g145572145591%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145572145591%_))
                      (let ((_%e145575145593%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145572145591%_))))
                        (let ((_%hd145576145596%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145575145593%_)))
                              (_%tl145577145598%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145575145593%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145577145598%_))
                              (let ((_%e145578145601%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145577145598%_))))
                                (let ((_%hd145579145604%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145578145601%_)))
                                      (_%tl145580145606%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145578145601%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl145580145606%_))
                                      (let ((_%e145581145609%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl145580145606%_))))
                                        (let ((_%hd145582145612%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e145581145609%_)))
                                              (_%tl145583145614%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e145581145609%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl145583145614%_))
                                              ((lambda (_%L145617%_
                                                        _%L145618%_)
                                                 (gxc#compile-e__1
                                                  _%self145568%_
                                                  _%L145617%_))
                                               _%hd145582145612%_
                                               _%hd145579145604%_)
                                              (_%g145571145588%_
                                               _%g145572145591%_))))
                                      (_%g145571145588%_ _%g145572145591%_))))
                              (_%g145571145588%_ _%g145572145591%_))))
                      (_%g145571145588%_ _%g145572145591%_)))))
          (_%g145570145633%_ _%stx145569%_))))
    (define gxc#apply-operands
      (lambda (_%self145481%_ _%stx145482%_)
        (let* ((_%g145484145503%_
                (lambda (_%g145485145500%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145485145500%_))))
               (_%g145483145565%_
                (lambda (_%g145485145506%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145485145506%_))
                      (let ((_%e145487145508%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145485145506%_))))
                        (let ((_%hd145488145511%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145487145508%_)))
                              (_%tl145489145513%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145487145508%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl145489145513%_))
                              (let ((_g146701_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl145489145513%_
                                        '0))))
                                (begin
                                  (let ((_g146702_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g146701_)
                                               (##values-length _g146701_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g146702_ 2)))
                                        (error "Context expects 2 values"
                                               _g146702_)))
                                  (let ((_%target145490145516%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g146701_ 0)))
                                        (_%tl145492145518%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g146701_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl145492145518%_))
                                        (letrec ((_%loop145493145521%_
                                                  (lambda (_%hd145491145524%_
                                                           _%rands145497145526%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd145491145524%_))
                                                        (let ((_%e145494145529%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd145491145524%_))))
                  (let ((_%lp-hd145495145532%_
                         (let ()
                           (declare (not safe))
                           (##car _%e145494145529%_)))
                        (_%lp-tl145496145534%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e145494145529%_))))
                    (_%loop145493145521%_
                     _%lp-tl145496145534%_
                     (cons _%lp-hd145495145532%_ _%rands145497145526%_))))
                (let ((_%rands145498145537%_ (reverse _%rands145497145526%_)))
                  ((lambda (_%L145540%_)
                     (for-each
                      (lambda (_%g145553145555%_)
                        (gxc#compile-e__1 _%self145481%_ _%g145553145555%_))
                      (let ((__tmp146703
                             (lambda (_%g145557145560%_ _%g145558145562%_)
                               (cons _%g145557145560%_ _%g145558145562%_))))
                        (declare (not safe))
                        (__foldr1 __tmp146703 '() _%L145540%_))))
                   _%rands145498145537%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop145493145521%_
                                           _%target145490145516%_
                                           '()))
                                        (_%g145484145503%_
                                         _%g145485145506%_)))))
                              (_%g145484145503%_ _%g145485145506%_))))
                      (_%g145484145503%_ _%g145485145506%_)))))
          (_%g145483145565%_ _%stx145482%_))))
    (define gxc#xform-wrap-source
      (lambda (_%stx145478%_ _%src-stx145479%_)
        (let ((__tmp146704
               (let ()
                 (declare (not safe))
                 (gx#stx-source _%src-stx145479%_))))
          (declare (not safe))
          (gx#stx-wrap-source _%stx145478%_ __tmp146704))))
    (define gxc#xform-wrap-apply
      (lambda (_%stx145474%_ _%src-stx145475%_ _%ctx145476%_)
        (gxc#compile-e__1
         _%ctx145476%_
         (gxc#xform-wrap-source _%stx145474%_ _%src-stx145475%_))))
    (define gxc#xform-begin%
      (lambda (_%self145429%_ _%stx145430%_)
        (let* ((_%g145432145442%_
                (lambda (_%g145433145439%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145433145439%_))))
               (_%g145431145471%_
                (lambda (_%g145433145445%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145433145445%_))
                      (let ((_%e145435145447%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145433145445%_))))
                        (let ((_%hd145436145450%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145435145447%_)))
                              (_%tl145437145452%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145435145447%_))))
                          ((lambda (_%L145455%_)
                             (let ((_%forms145469%_
                                    (map (lambda (_%g145464145466%_)
                                           (gxc#compile-e__1
                                            _%self145429%_
                                            _%g145464145466%_))
                                         _%L145455%_)))
                               (gxc#xform-wrap-source
                                (cons '%#begin _%forms145469%_)
                                _%stx145430%_)))
                           _%tl145437145452%_)))
                      (_%g145432145442%_ _%g145433145445%_)))))
          (_%g145431145471%_ _%stx145430%_))))
    (define gxc#xform-begin-syntax%
      (lambda (_%self145383%_ _%stx145384%_)
        (let* ((_%g145386145396%_
                (lambda (_%g145387145393%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145387145393%_))))
               (_%g145385145426%_
                (lambda (_%g145387145399%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145387145399%_))
                      (let ((_%e145389145401%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145387145399%_))))
                        (let ((_%hd145390145404%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145389145401%_)))
                              (_%tl145391145406%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145389145401%_))))
                          ((lambda (_%L145409%_)
                             (let ((__tmp146707
                                    (lambda ()
                                      (let ((_%forms145424%_
                                             (map (lambda (_%g145419145421%_)
                                                    (gxc#compile-e__1
                                                     _%self145383%_
                                                     _%g145419145421%_))
                                                  _%L145409%_)))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin-syntax _%forms145424%_)
                                         _%stx145384%_))))
                                   (__tmp146705
                                    (let ((__tmp146706
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp146706 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp146707
                                gx#current-expander-phi
                                __tmp146705)))
                           _%tl145391145406%_)))
                      (_%g145386145396%_ _%g145387145399%_)))))
          (_%g145385145426%_ _%stx145384%_))))
    (define gxc#xform-module%
      (lambda (_%self145320%_ _%stx145321%_)
        (let* ((_%g145323145337%_
                (lambda (_%g145324145334%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145324145334%_))))
               (_%g145322145380%_
                (lambda (_%g145324145340%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145324145340%_))
                      (let ((_%e145327145342%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145324145340%_))))
                        (let ((_%hd145328145345%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145327145342%_)))
                              (_%tl145329145347%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145327145342%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145329145347%_))
                              (let ((_%e145330145350%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145329145347%_))))
                                (let ((_%hd145331145353%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145330145350%_)))
                                      (_%tl145332145355%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145330145350%_))))
                                  ((lambda (_%L145358%_ _%L145359%_)
                                     (let* ((_%ctx145372%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L145359%_)))
                                            (_%code145374%_
                                             (##structure-ref
                                              _%ctx145372%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_%code145377%_
                                             (let ((__tmp146708
                                                    (lambda ()
                                                      (gxc#compile-e__1
                                                       _%self145320%_
                                                       _%code145374%_))))
                                               (declare (not safe))
                                               (call-with-parameters__1
                                                __tmp146708
                                                gx#current-expander-context
                                                _%ctx145372%_))))
                                       (##structure-set!
                                        _%ctx145372%_
                                        _%code145377%_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _%L145359%_
                                                    (cons _%code145377%_ '())))
                                        _%stx145321%_)))
                                   _%tl145332145355%_
                                   _%hd145331145353%_)))
                              (_%g145323145337%_ _%g145324145340%_))))
                      (_%g145323145337%_ _%g145324145340%_)))))
          (_%g145322145380%_ _%stx145321%_))))
    (define gxc#xform-define-values%
      (lambda (_%self145250%_ _%stx145251%_)
        (let* ((_%g145253145270%_
                (lambda (_%g145254145267%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145254145267%_))))
               (_%g145252145317%_
                (lambda (_%g145254145273%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145254145273%_))
                      (let ((_%e145257145275%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145254145273%_))))
                        (let ((_%hd145258145278%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145257145275%_)))
                              (_%tl145259145280%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145257145275%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145259145280%_))
                              (let ((_%e145260145283%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145259145280%_))))
                                (let ((_%hd145261145286%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145260145283%_)))
                                      (_%tl145262145288%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145260145283%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl145262145288%_))
                                      (let ((_%e145263145291%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl145262145288%_))))
                                        (let ((_%hd145264145294%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e145263145291%_)))
                                              (_%tl145265145296%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e145263145291%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl145265145296%_))
                                              ((lambda (_%L145299%_
                                                        _%L145300%_)
                                                 (let ((_%expr145315%_
                                                        (gxc#compile-e__1
                                                         _%self145250%_
                                                         _%L145299%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons _%L145300%_
                                                                (cons _%expr145315%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx145251%_)))
                                               _%hd145264145294%_
                                               _%hd145261145286%_)
                                              (_%g145253145270%_
                                               _%g145254145273%_))))
                                      (_%g145253145270%_ _%g145254145273%_))))
                              (_%g145253145270%_ _%g145254145273%_))))
                      (_%g145253145270%_ _%g145254145273%_)))))
          (_%g145252145317%_ _%stx145251%_))))
    (define gxc#xform-define-syntax%
      (lambda (_%self145179%_ _%stx145180%_)
        (let* ((_%g145182145199%_
                (lambda (_%g145183145196%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145183145196%_))))
               (_%g145181145247%_
                (lambda (_%g145183145202%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145183145202%_))
                      (let ((_%e145186145204%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145183145202%_))))
                        (let ((_%hd145187145207%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145186145204%_)))
                              (_%tl145188145209%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145186145204%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145188145209%_))
                              (let ((_%e145189145212%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145188145209%_))))
                                (let ((_%hd145190145215%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145189145212%_)))
                                      (_%tl145191145217%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145189145212%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl145191145217%_))
                                      (let ((_%e145192145220%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl145191145217%_))))
                                        (let ((_%hd145193145223%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e145192145220%_)))
                                              (_%tl145194145225%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e145192145220%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl145194145225%_))
                                              ((lambda (_%L145228%_
                                                        _%L145229%_)
                                                 (let ((__tmp146711
                                                        (lambda ()
                                                          (let ((_%expr145245%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#compile-e__1 _%self145179%_ _%L145228%_)))
                    (gxc#xform-wrap-source
                     (cons '%#define-syntax
                           (cons _%L145229%_ (cons _%expr145245%_ '())))
                     _%stx145180%_))))
               (__tmp146709
                (let ((__tmp146710
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-phi))))
                  (declare (not safe))
                  (##fx+ __tmp146710 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp146711
                                                    gx#current-expander-phi
                                                    __tmp146709)))
                                               _%hd145193145223%_
                                               _%hd145190145215%_)
                                              (_%g145182145199%_
                                               _%g145183145202%_))))
                                      (_%g145182145199%_ _%g145183145202%_))))
                              (_%g145182145199%_ _%g145183145202%_))))
                      (_%g145182145199%_ _%g145183145202%_)))))
          (_%g145181145247%_ _%stx145180%_))))
    (define gxc#xform-begin-annotation%
      (lambda (_%self145109%_ _%stx145110%_)
        (let* ((_%g145112145129%_
                (lambda (_%g145113145126%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145113145126%_))))
               (_%g145111145176%_
                (lambda (_%g145113145132%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145113145132%_))
                      (let ((_%e145116145134%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145113145132%_))))
                        (let ((_%hd145117145137%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145116145134%_)))
                              (_%tl145118145139%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145116145134%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145118145139%_))
                              (let ((_%e145119145142%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145118145139%_))))
                                (let ((_%hd145120145145%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145119145142%_)))
                                      (_%tl145121145147%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145119145142%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl145121145147%_))
                                      (let ((_%e145122145150%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl145121145147%_))))
                                        (let ((_%hd145123145153%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e145122145150%_)))
                                              (_%tl145124145155%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e145122145150%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl145124145155%_))
                                              ((lambda (_%L145158%_
                                                        _%L145159%_)
                                                 (let ((_%expr145174%_
                                                        (gxc#compile-e__1
                                                         _%self145109%_
                                                         _%L145158%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#begin-annotation
                                                          (cons _%L145159%_
                                                                (cons _%expr145174%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx145110%_)))
                                               _%hd145123145153%_
                                               _%hd145120145145%_)
                                              (_%g145112145129%_
                                               _%g145113145132%_))))
                                      (_%g145112145129%_ _%g145113145132%_))))
                              (_%g145112145129%_ _%g145113145132%_))))
                      (_%g145112145129%_ _%g145113145132%_)))))
          (_%g145111145176%_ _%stx145110%_))))
    (define gxc#xform-lambda%
      (lambda (_%self145047%_ _%stx145048%_)
        (let* ((_%g145050145064%_
                (lambda (_%g145051145061%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145051145061%_))))
               (_%g145049145106%_
                (lambda (_%g145051145067%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145051145067%_))
                      (let ((_%e145054145069%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145051145067%_))))
                        (let ((_%hd145055145072%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145054145069%_)))
                              (_%tl145056145074%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145054145069%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145056145074%_))
                              (let ((_%e145057145077%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145056145074%_))))
                                (let ((_%hd145058145080%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145057145077%_)))
                                      (_%tl145059145082%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145057145077%_))))
                                  ((lambda (_%L145085%_ _%L145086%_)
                                     (let ((__tmp146713
                                            (lambda ()
                                              (let ((_%body145104%_
                                                     (map (lambda (_%g145099145101%_)
                                                            (gxc#compile-e__1
                                                             _%self145047%_
                                                             _%g145099145101%_))
                                                          _%L145085%_)))
                                                (gxc#xform-wrap-source
                                                 (cons '%#lambda
                                                       (cons _%L145086%_
                                                             _%body145104%_))
                                                 _%stx145048%_))))
                                           (__tmp146712
                                            (gxc#xform-let-locals
                                             _%L145086%_)))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp146713
                                        gxc#current-compile-local-env
                                        __tmp146712)))
                                   _%tl145059145082%_
                                   _%hd145058145080%_)))
                              (_%g145050145064%_ _%g145051145067%_))))
                      (_%g145050145064%_ _%g145051145067%_)))))
          (_%g145049145106%_ _%stx145048%_))))
    (define gxc#xform-case-lambda%
      (lambda (_%self144955%_ _%stx144956%_)
        (letrec ((_%clause-e144958%_
                  (lambda (_%clause144999%_)
                    (let* ((_%g145001145012%_
                            (lambda (_%g145002145009%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g145002145009%_))))
                           (_%g145000145044%_
                            (lambda (_%g145002145015%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g145002145015%_))
                                  (let ((_%e145005145017%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g145002145015%_))))
                                    (let ((_%hd145006145020%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e145005145017%_)))
                                          (_%tl145007145022%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e145005145017%_))))
                                      ((lambda (_%L145025%_ _%L145026%_)
                                         (let ((__tmp146715
                                                (lambda ()
                                                  (let ((_%body145042%_
                                                         (map (lambda (_%g145037145039%_)
                                                                (gxc#compile-e__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%self144955%_
                         _%g145037145039%_))
                      _%L145025%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%L145026%_
                                                          _%body145042%_))))
                                               (__tmp146714
                                                (gxc#xform-let-locals
                                                 _%L145026%_)))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp146715
                                            gxc#current-compile-local-env
                                            __tmp146714)))
                                       _%tl145007145022%_
                                       _%hd145006145020%_)))
                                  (_%g145001145012%_ _%g145002145015%_)))))
                      (_%g145000145044%_ _%clause144999%_)))))
          (let* ((_%g144960144970%_
                  (lambda (_%g144961144967%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g144961144967%_))))
                 (_%g144959144996%_
                  (lambda (_%g144961144973%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g144961144973%_))
                        (let ((_%e144963144975%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g144961144973%_))))
                          (let ((_%hd144964144978%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144963144975%_)))
                                (_%tl144965144980%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144963144975%_))))
                            ((lambda (_%L144983%_)
                               (let ((_%clauses144994%_
                                      (map _%clause-e144958%_ _%L144983%_)))
                                 (gxc#xform-wrap-source
                                  (cons '%#case-lambda _%clauses144994%_)
                                  _%stx144956%_)))
                             _%tl144965144980%_)))
                        (_%g144960144970%_ _%g144961144973%_)))))
            (_%g144959144996%_ _%stx144956%_)))))
    (define gxc#xform-let-values%
      (lambda (_%self144709%_ _%stx144710%_)
        (let* ((_%g144712144745%_
                (lambda (_%g144713144742%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144713144742%_))))
               (_%g144711144952%_
                (lambda (_%g144713144748%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144713144748%_))
                      (let ((_%e144718144750%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144713144748%_))))
                        (let ((_%hd144719144753%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144718144750%_)))
                              (_%tl144720144755%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144718144750%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl144720144755%_))
                              (let ((_%e144721144758%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl144720144755%_))))
                                (let ((_%hd144722144761%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144721144758%_)))
                                      (_%tl144723144763%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144721144758%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd144722144761%_))
                                      (let ((_g146716_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd144722144761%_
                                                '0))))
                                        (begin
                                          (let ((_g146717_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g146716_)
                                                       (##values-length
                                                        _g146716_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g146717_ 2)))
                                                (error "Context expects 2 values"
                                                       _g146717_)))
                                          (let ((_%target144724144766%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g146716_ 0)))
                                                (_%tl144726144768%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g146716_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl144726144768%_))
                                                (letrec ((_%loop144727144771%_
                                                          (lambda (_%hd144725144774%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr144731144776%_
                           _%hd144732144778%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd144725144774%_))
                        (let ((_%e144728144781%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd144725144774%_))))
                          (let ((_%lp-hd144729144784%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144728144781%_)))
                                (_%lp-tl144730144786%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144728144781%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd144729144784%_))
                                (let ((_%e144735144789%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd144729144784%_))))
                                  (let ((_%hd144736144792%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e144735144789%_)))
                                        (_%tl144737144794%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e144735144789%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl144737144794%_))
                                        (let ((_%e144738144797%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl144737144794%_))))
                                          (let ((_%hd144739144800%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e144738144797%_)))
                                                (_%tl144740144802%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e144738144797%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl144740144802%_))
                                                (_%loop144727144771%_
                                                 _%lp-tl144730144786%_
                                                 (cons _%hd144739144800%_
                                                       _%expr144731144776%_)
                                                 (cons _%hd144736144792%_
                                                       _%hd144732144778%_))
                                                (_%g144712144745%_
                                                 _%g144713144748%_))))
                                        (_%g144712144745%_
                                         _%g144713144748%_))))
                                (_%g144712144745%_ _%g144713144748%_))))
                        (let ((_%expr144733144805%_
                               (reverse _%expr144731144776%_))
                              (_%hd144734144807%_
                               (reverse _%hd144732144778%_)))
                          ((lambda (_%L144810%_
                                    _%L144811%_
                                    _%L144812%_
                                    _%L144813%_)
                             (let* ((_%g144832144848%_
                                     (lambda (_%g144833144845%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g144833144845%_))))
                                    (_%g144831144938%_
                                     (lambda (_%g144833144851%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _%g144833144851%_))
                                           (let ((_g146718_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _%g144833144851%_
                                                     '0))))
                                             (begin
                                               (let ((_g146719_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g146718_)
                                                            (##values-length
                                                             _g146718_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g146719_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g146719_)))
                                               (let ((_%target144835144853%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g146718_
                                                         0)))
                                                     (_%tl144837144855%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g146718_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl144837144855%_))
                                                     (letrec ((_%loop144838144858%_
                                                               (lambda (_%hd144836144861%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%expr144842144863%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd144836144861%_))
                             (let ((_%e144839144866%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%hd144836144861%_))))
                               (let ((_%lp-hd144840144869%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e144839144866%_)))
                                     (_%lp-tl144841144871%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e144839144866%_))))
                                 (_%loop144838144858%_
                                  _%lp-tl144841144871%_
                                  (cons _%lp-hd144840144869%_
                                        _%expr144842144863%_))))
                             (let ((_%expr144843144874%_
                                    (reverse _%expr144842144863%_)))
                               ((lambda (_%L144877%_)
                                  (let ((__tmp146722
                                         (lambda ()
                                           (let* ((_%g144891144898%_
                                                   (lambda (_%g144892144895%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g144892144895%_))))
                                                  (_%g144890144924%_
                                                   (lambda (_%g144892144901%_)
                                                     ((lambda (_%L144903%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L144813%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L144877%_
                                  _%L144812%_))
                               (let ((__tmp146723
                                      (lambda (_%g144913144917%_
                                               _%g144914144919%_
                                               _%g144915144921%_)
                                        (cons (cons _%g144914144919%_
                                                    (cons _%g144913144917%_
                                                          '()))
                                              _%g144915144921%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp146723
                                  '()
                                  _%L144877%_
                                  _%L144812%_)))
                             _%L144903%_))
                 _%stx144710%_))
              _%g144892144901%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g144890144924%_
                                              (map (lambda (_%g144926144928%_)
                                                     (gxc#compile-e__1
                                                      _%self144709%_
                                                      _%g144926144928%_))
                                                   _%L144810%_)))))
                                        (__tmp146720
                                         (gxc#xform-let-locals
                                          (let ((__tmp146721
                                                 (lambda (_%g144930144933%_
                                                          _%g144931144935%_)
                                                   (cons _%g144930144933%_
                                                         _%g144931144935%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp146721
                                             '()
                                             _%L144812%_)))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp146722
                                     gxc#current-compile-local-env
                                     __tmp146720)))
                                _%expr144843144874%_))))))
               (_%loop144838144858%_ _%target144835144853%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g144832144848%_
                                                      _%g144833144851%_)))))
                                           (_%g144832144848%_
                                            _%g144833144851%_)))))
                               (_%g144831144938%_
                                (map (lambda (_%g144940144942%_)
                                       (gxc#compile-e__1
                                        _%self144709%_
                                        _%g144940144942%_))
                                     (let ((__tmp146724
                                            (lambda (_%g144944144947%_
                                                     _%g144945144949%_)
                                              (cons _%g144944144947%_
                                                    _%g144945144949%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp146724
                                        '()
                                        _%L144811%_))))))
                           _%tl144723144763%_
                           _%expr144733144805%_
                           _%hd144734144807%_
                           _%hd144719144753%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop144727144771%_
                                                   _%target144724144766%_
                                                   '()
                                                   '()))
                                                (_%g144712144745%_
                                                 _%g144713144748%_)))))
                                      (_%g144712144745%_ _%g144713144748%_))))
                              (_%g144712144745%_ _%g144713144748%_))))
                      (_%g144712144745%_ _%g144713144748%_)))))
          (_%g144711144952%_ _%stx144710%_))))
    (define gxc#xform-letrec-values%
      (lambda (_%self144463%_ _%stx144464%_)
        (let* ((_%g144466144499%_
                (lambda (_%g144467144496%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144467144496%_))))
               (_%g144465144706%_
                (lambda (_%g144467144502%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144467144502%_))
                      (let ((_%e144472144504%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144467144502%_))))
                        (let ((_%hd144473144507%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144472144504%_)))
                              (_%tl144474144509%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144472144504%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl144474144509%_))
                              (let ((_%e144475144512%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl144474144509%_))))
                                (let ((_%hd144476144515%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144475144512%_)))
                                      (_%tl144477144517%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144475144512%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd144476144515%_))
                                      (let ((_g146725_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd144476144515%_
                                                '0))))
                                        (begin
                                          (let ((_g146726_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g146725_)
                                                       (##values-length
                                                        _g146725_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g146726_ 2)))
                                                (error "Context expects 2 values"
                                                       _g146726_)))
                                          (let ((_%target144478144520%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g146725_ 0)))
                                                (_%tl144480144522%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g146725_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl144480144522%_))
                                                (letrec ((_%loop144481144525%_
                                                          (lambda (_%hd144479144528%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr144485144530%_
                           _%hd144486144532%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd144479144528%_))
                        (let ((_%e144482144535%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd144479144528%_))))
                          (let ((_%lp-hd144483144538%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144482144535%_)))
                                (_%lp-tl144484144540%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144482144535%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd144483144538%_))
                                (let ((_%e144489144543%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd144483144538%_))))
                                  (let ((_%hd144490144546%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e144489144543%_)))
                                        (_%tl144491144548%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e144489144543%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl144491144548%_))
                                        (let ((_%e144492144551%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl144491144548%_))))
                                          (let ((_%hd144493144554%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e144492144551%_)))
                                                (_%tl144494144556%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e144492144551%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl144494144556%_))
                                                (_%loop144481144525%_
                                                 _%lp-tl144484144540%_
                                                 (cons _%hd144493144554%_
                                                       _%expr144485144530%_)
                                                 (cons _%hd144490144546%_
                                                       _%hd144486144532%_))
                                                (_%g144466144499%_
                                                 _%g144467144502%_))))
                                        (_%g144466144499%_
                                         _%g144467144502%_))))
                                (_%g144466144499%_ _%g144467144502%_))))
                        (let ((_%expr144487144559%_
                               (reverse _%expr144485144530%_))
                              (_%hd144488144561%_
                               (reverse _%hd144486144532%_)))
                          ((lambda (_%L144564%_
                                    _%L144565%_
                                    _%L144566%_
                                    _%L144567%_)
                             (let ((__tmp146729
                                    (lambda ()
                                      (let* ((_%g144587144603%_
                                              (lambda (_%g144588144600%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g144588144600%_))))
                                             (_%g144586144685%_
                                              (lambda (_%g144588144606%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%g144588144606%_))
                                                    (let ((_g146730_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%g144588144606%_
                                                              '0))))
                                                      (begin
                                                        (let ((_g146731_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g146730_)
                             (##values-length _g146730_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g146731_ 2)))
                      (error "Context expects 2 values" _g146731_)))
                (let ((_%target144590144608%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g146730_ 0)))
                      (_%tl144592144610%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g146730_ 1))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl144592144610%_))
                      (letrec ((_%loop144593144613%_
                                (lambda (_%hd144591144616%_
                                         _%expr144597144618%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd144591144616%_))
                                      (let ((_%e144594144621%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd144591144616%_))))
                                        (let ((_%lp-hd144595144624%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e144594144621%_)))
                                              (_%lp-tl144596144626%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e144594144621%_))))
                                          (_%loop144593144613%_
                                           _%lp-tl144596144626%_
                                           (cons _%lp-hd144595144624%_
                                                 _%expr144597144618%_))))
                                      (let ((_%expr144598144629%_
                                             (reverse _%expr144597144618%_)))
                                        ((lambda (_%L144632%_)
                                           (let* ((_%g144646144653%_
                                                   (lambda (_%g144647144650%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g144647144650%_))))
                                                  (_%g144645144678%_
                                                   (lambda (_%g144647144656%_)
                                                     ((lambda (_%L144658%_)
                                                        (gxc#xform-wrap-source
                                                         (cons _%L144567%_
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-check-splice-targets
                                  _%L144632%_
                                  _%L144566%_))
                               (let ((__tmp146732
                                      (lambda (_%g144667144671%_
                                               _%g144668144673%_
                                               _%g144669144675%_)
                                        (cons (cons _%g144668144673%_
                                                    (cons _%g144667144671%_
                                                          '()))
                                              _%g144669144675%_))))
                                 (declare (not safe))
                                 (__foldr2
                                  __tmp146732
                                  '()
                                  _%L144632%_
                                  _%L144566%_)))
                             _%L144658%_))
                 _%stx144464%_))
              _%g144647144656%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g144645144678%_
                                              (map (lambda (_%g144680144682%_)
                                                     (gxc#compile-e__1
                                                      _%self144463%_
                                                      _%g144680144682%_))
                                                   _%L144564%_))))
                                         _%expr144598144629%_))))))
                        (_%loop144593144613%_ _%target144590144608%_ '()))
                      (_%g144587144603%_ _%g144588144606%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g144587144603%_
                                                     _%g144588144606%_)))))
                                        (_%g144586144685%_
                                         (map (lambda (_%g144687144689%_)
                                                (gxc#compile-e__1
                                                 _%self144463%_
                                                 _%g144687144689%_))
                                              (let ((__tmp146733
                                                     (lambda (_%g144691144694%_
                                                              _%g144692144696%_)
                                                       (cons _%g144691144694%_
                                                             _%g144692144696%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp146733
                                                 '()
                                                 _%L144565%_)))))))
                                   (__tmp146727
                                    (gxc#xform-let-locals
                                     (let ((__tmp146728
                                            (lambda (_%g144698144701%_
                                                     _%g144699144703%_)
                                              (cons _%g144698144701%_
                                                    _%g144699144703%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp146728
                                        '()
                                        _%L144566%_)))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp146729
                                gxc#current-compile-local-env
                                __tmp146727)))
                           _%tl144477144517%_
                           _%expr144487144559%_
                           _%hd144488144561%_
                           _%hd144473144507%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop144481144525%_
                                                   _%target144478144520%_
                                                   '()
                                                   '()))
                                                (_%g144466144499%_
                                                 _%g144467144502%_)))))
                                      (_%g144466144499%_ _%g144467144502%_))))
                              (_%g144466144499%_ _%g144467144502%_))))
                      (_%g144466144499%_ _%g144467144502%_)))))
          (_%g144465144706%_ _%stx144464%_))))
    (define gxc#xform-let-locals
      (lambda (_%bindings144330%_)
        (letrec ((_%flatten144332%_
                  (lambda (_%maybe-lst144390%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%maybe-lst144390%_))
                        (cons _%maybe-lst144390%_ '())
                        (let _%loop144392%_ ((_%rest144394%_
                                              _%maybe-lst144390%_)
                                             (_%result144395%_ '()))
                          (let* ((_%__stx146621146622%_ _%rest144394%_)
                                 (_%g144399144411%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%__stx146621146622%_)))))
                            (let ((_%__kont146623146624%_
                                   (lambda (_%L144449%_ _%L144450%_)
                                     (_%loop144392%_
                                      _%L144449%_
                                      (let ((__tmp146734
                                             (_%flatten144332%_ _%L144450%_)))
                                        (declare (not safe))
                                        (__foldl1
                                         cons
                                         _%result144395%_
                                         __tmp146734)))))
                                  (_%__kont146625146626%_
                                   (lambda (_%L144423%_)
                                     (cons _%L144423%_ _%result144395%_)))
                                  (_%__kont146627146628%_
                                   (lambda () _%result144395%_)))
                              (let ((_%g144397144436%_
                                     (lambda ()
                                       (let ((_%L144423%_
                                              _%__stx146621146622%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L144423%_))
                                             (_%__kont146625146626%_
                                              _%L144423%_)
                                             (_%__kont146627146628%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%__stx146621146622%_))
                                    (let ((_%e144403144441%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e
                                              _%__stx146621146622%_))))
                                      (let ((_%tl144405144446%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e144403144441%_)))
                                            (_%hd144404144444%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e144403144441%_))))
                                        (_%__kont146623146624%_
                                         _%tl144405144446%_
                                         _%hd144404144444%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g144397144436%_)))))))))))
          (let _%loop144334%_ ((_%rest144336%_
                                (_%flatten144332%_ _%bindings144330%_))
                               (_%locals144337%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-local-env))))
            (let* ((_%rest144338144349%_ _%rest144336%_)
                   (_%E144342144353%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"No clause matching"
                               _%rest144338144349%_
                               '([(? identifier? id) . rest])
                               '((? identifier? id))
                               '(_)))
                      '#!void)))
              (let ((_%K144345144378%_
                     (lambda (_%rest144375%_ _%id144376%_)
                       (_%loop144334%_
                        _%rest144375%_
                        (cons (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _%id144376%_))
                              _%locals144337%_))))
                    (_%K144344144367%_
                     (lambda (_%id144365%_)
                       (cons (let ()
                               (declare (not safe))
                               (gxc#identifier-symbol _%id144365%_))
                             _%locals144337%_)))
                    (_%K144343144358%_ (lambda () _%locals144337%_)))
                (let ((_%try-match144340144372%_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%rest144338144349%_))
                             (let ((_%id144370%_ _%rest144338144349%_))
                               (_%K144344144367%_ _%id144370%_))
                             (_%K144343144358%_)))))
                  (if (pair? _%rest144338144349%_)
                      (let ((_%tl144347144383%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest144338144349%_)))
                            (_%hd144346144381%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest144338144349%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd144346144381%_))
                            (let ((_%id144386%_ _%hd144346144381%_)
                                  (_%rest144388%_ _%tl144347144383%_))
                              (_%K144345144378%_ _%rest144388%_ _%id144386%_))
                            (_%K144343144358%_)))
                      (_%try-match144340144372%_)))))))))
    (define gxc#xform-operands
      (lambda (_%self144282%_ _%stx144283%_)
        (let* ((_%g144285144296%_
                (lambda (_%g144286144293%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144286144293%_))))
               (_%g144284144327%_
                (lambda (_%g144286144299%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144286144299%_))
                      (let ((_%e144289144301%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144286144299%_))))
                        (let ((_%hd144290144304%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144289144301%_)))
                              (_%tl144291144306%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144289144301%_))))
                          ((lambda (_%L144309%_ _%L144310%_)
                             (let ((_%rands144325%_
                                    (map (lambda (_%g144320144322%_)
                                           (gxc#compile-e__1
                                            _%self144282%_
                                            _%g144320144322%_))
                                         _%L144309%_)))
                               (gxc#xform-wrap-source
                                (cons _%L144310%_ _%rands144325%_)
                                _%stx144283%_)))
                           _%tl144291144306%_
                           _%hd144290144304%_)))
                      (_%g144285144296%_ _%g144286144299%_)))))
          (_%g144284144327%_ _%stx144283%_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_%self144212%_ _%stx144213%_)
        (let* ((_%g144215144232%_
                (lambda (_%g144216144229%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144216144229%_))))
               (_%g144214144279%_
                (lambda (_%g144216144235%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144216144235%_))
                      (let ((_%e144219144237%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144216144235%_))))
                        (let ((_%hd144220144240%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144219144237%_)))
                              (_%tl144221144242%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144219144237%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl144221144242%_))
                              (let ((_%e144222144245%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl144221144242%_))))
                                (let ((_%hd144223144248%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144222144245%_)))
                                      (_%tl144224144250%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144222144245%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl144224144250%_))
                                      (let ((_%e144225144253%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl144224144250%_))))
                                        (let ((_%hd144226144256%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e144225144253%_)))
                                              (_%tl144227144258%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e144225144253%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl144227144258%_))
                                              ((lambda (_%L144261%_
                                                        _%L144262%_)
                                                 (let ((_%expr144277%_
                                                        (gxc#compile-e__1
                                                         _%self144212%_
                                                         _%L144261%_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _%L144262%_
                                                                (cons _%expr144277%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%stx144213%_)))
                                               _%hd144226144256%_
                                               _%hd144223144248%_)
                                              (_%g144215144232%_
                                               _%g144216144235%_))))
                                      (_%g144215144232%_ _%g144216144235%_))))
                              (_%g144215144232%_ _%g144216144235%_))))
                      (_%g144215144232%_ _%g144216144235%_)))))
          (_%g144214144279%_ _%stx144213%_))))))
